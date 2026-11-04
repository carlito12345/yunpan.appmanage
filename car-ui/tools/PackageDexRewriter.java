import com.android.tools.smali.dexlib2.*;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.*;
import com.android.tools.smali.dexlib2.iface.instruction.*;
import com.android.tools.smali.dexlib2.iface.reference.*;
import com.android.tools.smali.dexlib2.iface.value.*;
import com.android.tools.smali.dexlib2.immutable.*;
import com.android.tools.smali.dexlib2.immutable.instruction.*;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableStringReference;
import com.android.tools.smali.dexlib2.immutable.value.ImmutableStringEncodedValue;
import com.android.tools.smali.dexlib2.rewriter.*;
import com.android.tools.smali.dexlib2.writer.pool.DexPool;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;

/** Rewrite identity literals; keep Java/JNI namespaces and original-edition comparisons. */
public final class PackageDexRewriter {
    static String oldId,newId;static final Map<String,String> ids=new LinkedHashMap<>();
    static final Set<String> changed=new TreeSet<>(),comparisons=new TreeSet<>();
    static final Set<String> declaredClasses=new HashSet<>();
    static Pattern token,uri;static String quoted(String s){return Matcher.quoteReplacement(s);}
    static String literal(String value){
        if(ids.containsKey(value))return ids.get(value);
        if((value.startsWith(oldId+".ACTION_")||value.startsWith(oldId+".action."))&&!declaredClasses.contains(value))return newId+value.substring(oldId.length());
        Matcher m=uri.matcher(value);StringBuffer out=new StringBuffer();while(m.find())m.appendReplacement(out,quoted("content://"+ids.get(m.group(1))));m.appendTail(out);value=out.toString();
        value=value.replace("android.resource://"+oldId+"/","android.resource://"+newId+"/").replace("package:"+oldId,"package:"+newId);
        value=value.replace(oldId+"/.",newId+"/"+oldId+".").replace(oldId+"/"+oldId+".",newId+"/"+oldId+".");
        value=value.replace("/"+oldId+"/","/"+newId+"/").replace("/."+oldId,"/."+newId);
        if(value.equals("."+oldId))return "."+newId;
        return token.matcher(value).replaceAll(quoted(newId));
    }
    static int[] registers(Instruction i){
        if(i instanceof FiveRegisterInstruction){FiveRegisterInstruction v=(FiveRegisterInstruction)i;return Arrays.copyOf(new int[]{v.getRegisterC(),v.getRegisterD(),v.getRegisterE(),v.getRegisterF(),v.getRegisterG()},v.getRegisterCount());}
        if(i instanceof RegisterRangeInstruction){RegisterRangeInstruction v=(RegisterRangeInstruction)i;int[] r=new int[v.getRegisterCount()];for(int j=0;j<r.length;j++)r[j]=v.getStartRegister()+j;return r;}
        return new int[0];
    }
    static boolean originalEditionComparison(List<Instruction> list,int position,int register){
        Set<Integer> aliases=new HashSet<>();aliases.add(register);
        for(int p=position+1;p<list.size()&&!aliases.isEmpty();p++){
            Instruction i=list.get(p);
            if(i instanceof ReferenceInstruction&&((ReferenceInstruction)i).getReference() instanceof MethodReference){
                MethodReference method=(MethodReference)((ReferenceInstruction)i).getReference();boolean uses=false;for(int r:registers(i))if(aliases.contains(r))uses=true;
                if(uses&&method.getDefiningClass().equals("Ljava/lang/String;")&&method.getName().equals("equals"))return true;
                if(uses&&(method.getDefiningClass().equals("Landroid/content/pm/PackageManager;")||method.getName().equals("getIdentifier")))return false;
            }
            if(i instanceof TwoRegisterInstruction&&i.getOpcode().name().startsWith("MOVE_OBJECT")){
                TwoRegisterInstruction move=(TwoRegisterInstruction)i;boolean carries=aliases.contains(move.getRegisterB());aliases.remove(move.getRegisterA());if(carries)aliases.add(move.getRegisterA());
            }else if(i.getOpcode().setsRegister()&&i instanceof OneRegisterInstruction)aliases.remove(((OneRegisterInstruction)i).getRegisterA());
        }
        return false;
    }
    static String key(Method m){return m.getDefiningClass()+"->"+m.getName()+m.getParameterTypes()+m.getReturnType();}
    static Method rewrite(Method original,Method mapped){
        MethodImplementation body=original.getImplementation();if(body==null)return mapped;
        List<Instruction> list=new ArrayList<>();for(Instruction i:body.getInstructions())list.add(i);
        List<Instruction> result=new ArrayList<>();
        for(int p=0;p<list.size();p++){
            Instruction i=list.get(p);
            if((i.getOpcode()==Opcode.CONST_STRING||i.getOpcode()==Opcode.CONST_STRING_JUMBO)&&i instanceof ReferenceInstruction){
                String value=((StringReference)((ReferenceInstruction)i).getReference()).getString();int register=((OneRegisterInstruction)i).getRegisterA();
                if(value.equals(oldId)&&originalEditionComparison(list,p,register))comparisons.add(key(original)+"#"+p);
                else{
                    String replacement=literal(value);
                    if(!replacement.equals(value)){changed.add(key(original)+"#"+p);ImmutableStringReference ref=new ImmutableStringReference(replacement);i=i.getOpcode()==Opcode.CONST_STRING?new ImmutableInstruction21c(Opcode.CONST_STRING,register,ref):new ImmutableInstruction31c(Opcode.CONST_STRING_JUMBO,register,ref);}
                }
            }
            result.add(i);
        }
        return new ImmutableMethod(mapped.getDefiningClass(),mapped.getName(),mapped.getParameters(),mapped.getReturnType(),mapped.getAccessFlags(),mapped.getAnnotations(),mapped.getHiddenApiRestrictions(),new ImmutableMethodImplementation(body.getRegisterCount(),result,body.getTryBlocks(),body.getDebugItems()));
    }
    static Set<String> symbols(DexFile dex){Set<String> result=new TreeSet<>();for(ClassDef c:dex.getClasses()){result.add(c.getType());for(Method m:c.getMethods())result.add("M:"+key(m));for(Field f:c.getFields())result.add("F:"+f.getDefiningClass()+"->"+f.getName()+":"+f.getType());}return result;}
    public static void main(String[] args)throws Exception{
        oldId=args[2];newId=args[3];for(String line:Files.readAllLines(Paths.get(args[4]),StandardCharsets.UTF_8)){String[] pair=line.split("\t",-1);ids.put(new String(Base64.getDecoder().decode(pair[0]),StandardCharsets.UTF_8),new String(Base64.getDecoder().decode(pair[1]),StandardCharsets.UTF_8));}
        MultiDexContainer<? extends DexBackedDexFile> container=DexFileFactory.loadDexContainer(new File(args[5]),null);
        for(String name:container.getDexEntryNames())for(ClassDef c:container.getEntry(name).getDexFile().getClasses())declaredClasses.add(c.getType().substring(1,c.getType().length()-1).replace('/','.'));
        token=Pattern.compile("(?<![A-Za-z0-9_./])"+Pattern.quote(oldId)+"(?![A-Za-z0-9_.])");
        List<String> keys=new ArrayList<>(ids.keySet());keys.sort(Comparator.comparingInt(String::length).reversed());uri=Pattern.compile("content://("+String.join("|",keys.stream().map(Pattern::quote).toArray(String[]::new))+")(?=[/?#]|$)");
        DexBackedDexFile before=DexFileFactory.loadDexFile(new File(args[0]),null);Set<String> originalSymbols=symbols(before);
        for(ClassDef c:before.getClasses()){String dotted=c.getType().substring(1,c.getType().length()-1).replace('/','.');if(ids.containsKey(dotted))throw new IllegalArgumentException("Identity collides with a real Java class: "+dotted);}
        DexRewriter rewriter=new DexRewriter(new RewriterModule(){
            @Override public Rewriter<Method> getMethodRewriter(final Rewriters r){return new MethodRewriter(r){@Override public Method rewrite(Method m){return PackageDexRewriter.rewrite(m,super.rewrite(m));}};}
            @Override public Rewriter<EncodedValue> getEncodedValueRewriter(final Rewriters r){return new EncodedValueRewriter(r){@Override public EncodedValue rewrite(EncodedValue value){if(value instanceof StringEncodedValue){String s=((StringEncodedValue)value).getValue(),replacement=literal(s);if(!s.equals(replacement)){changed.add("encoded:"+s);return new ImmutableStringEncodedValue(replacement);}}return super.rewrite(value);}};}
        });
        DexPool.writeTo(args[1],rewriter.getDexFileRewriter().rewrite(before));DexBackedDexFile after=DexFileFactory.loadDexFile(new File(args[1]),null);
        if(!originalSymbols.equals(symbols(after)))throw new IllegalStateException("Class/method/field symbols changed");
        // Native libgj's original default must remain old, so variants receive --package=<current ID>.
        for(String site:comparisons)System.out.println("ORIGINAL_EDITION_COMPARISON\t"+site);
        System.out.println("CLASSES\t"+after.getClasses().size());System.out.println("CHANGED_SITES\t"+changed.size());System.out.println("COMPARISONS_PRESERVED\t"+comparisons.size());System.out.println("SYMBOLS_PRESERVED\ttrue");
    }
}
