import com.android.tools.smali.baksmali.BaksmaliOptions;
import com.android.tools.smali.baksmali.Adaptors.ClassDefinition;
import com.android.tools.smali.baksmali.formatter.BaksmaliWriter;
import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.MultiDexContainer;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.ExceptionHandler;
import com.android.tools.smali.dexlib2.base.BaseTryBlock;
import java.io.File;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;

public class CompareDex {
    static String withoutTryLabels(String text) {
        return normalizeDefaults(text).lines().filter(line -> !line.isBlank()
            && !line.trim().matches(":try_(?:start|end)_[0-9a-f]+")
            && !line.stripLeading().startsWith(".catch ")
            && !line.stripLeading().startsWith(".catchall "))
            .collect(java.util.stream.Collectors.joining("\n"));
    }
    static Map<String, String> exceptions(ClassDef cls) {
        Map<String, String> result = new TreeMap<>();
        var methods = new ArrayList<Method>();
        for (Object method : cls.getDirectMethods()) methods.add((Method) method);
        for (Object method : cls.getVirtualMethods()) methods.add((Method) method);
        for (Method method : methods) {
            String key = method.getName() + method.getParameterTypes() + method.getReturnType();
            var implementation = method.getImplementation();
            StringBuilder ranges = new StringBuilder();
            int start = -1, end = -1;
            String previousHandlers = null;
            if (implementation != null) for (Object item : implementation.getTryBlocks()) {
                BaseTryBlock block = (BaseTryBlock) item;
                StringBuilder handlers = new StringBuilder();
                for (Object handlerItem : block.getExceptionHandlers()) {
                    ExceptionHandler handler = (ExceptionHandler) handlerItem;
                    handlers.append(handler.getExceptionType()).append('@').append(handler.getHandlerCodeAddress()).append(';');
                }
                String current = handlers.toString();
                if (end == block.getStartCodeAddress() && current.equals(previousHandlers)) {
                    end += block.getCodeUnitCount();
                } else {
                    if (start >= 0) ranges.append(start).append(':').append(end).append(':').append(previousHandlers).append('\n');
                    start = block.getStartCodeAddress();
                    end = start + block.getCodeUnitCount();
                    previousHandlers = current;
                }
            }
            if (start >= 0) ranges.append(start).append(':').append(end).append(':').append(previousHandlers).append('\n');
            result.put(key, ranges.toString());
        }
        return result;
    }
    static String normalizeDefaults(String text) {
        var pattern = Pattern.compile("(?m)^(\\.field [^\\n]*\\bstatic\\b[^\\n]*:)([^\\s]+) = ([^\\n]+)$");
        return pattern.matcher(text).replaceAll(match -> {
            String type = match.group(2), value = match.group(3);
            boolean isDefault = ((type.startsWith("L") || type.startsWith("[")) && value.equals("null"))
                || (type.equals("Z") && value.equals("false"))
                || ("BCSI".contains(type) && type.length() == 1 && value.matches("0x0[tTsS]?"))
                || (type.equals("J") && value.equals("0x0L"))
                || (type.equals("F") && value.equals("0.0f"))
                || (type.equals("D") && value.equals("0.0"));
            return java.util.regex.Matcher.quoteReplacement(isDefault ? match.group(1) + type : match.group());
        });
    }
    static Map<String, ClassDef> classes(DexBackedDexFile dex) {
        Map<String, ClassDef> result = new TreeMap<>();
        for (int i = 0; i < dex.classCount; i++) {
            ClassDef cls = (ClassDef) dex.classSection.get(i);
            if (result.put(cls.getType(), cls) != null) throw new AssertionError("Duplicate class");
        }
        return result;
    }
    static String render(ClassDef cls) throws Exception {
        BaksmaliOptions options = new BaksmaliOptions();
        options.debugInfo = false;
        options.sequentialLabels = true;
        options.localsDirective = true;
        StringWriter text = new StringWriter();
        BaksmaliWriter writer = new BaksmaliWriter(text);
        new ClassDefinition(options, cls).writeTo(writer);
        writer.flush();
        return text.toString();
    }
    public static void main(String[] args) throws Exception {
        if (!normalizeDefaults(".field public static x:Z = false").equals(".field public static x:Z")
            || !normalizeDefaults(".field public static x:Z = true").endsWith(" = true")
            || !normalizeDefaults(".field public static x:F = -0.0f").endsWith(" = -0.0f")
            || !normalizeDefaults(".field public x:Z = false").endsWith(" = false")) {
            throw new AssertionError("Default-field normalization self-check failed");
        }
        if (!withoutTryLabels(":try_start_a\n    return-void\n:try_end_a\n:catchall_0")
                .equals("    return-void\n:catchall_0")) {
            throw new AssertionError("Hexadecimal try-label normalization self-check failed");
        }
        MultiDexContainer before = DexFileFactory.loadDexContainer(new File(args[0]), null);
        MultiDexContainer after = DexFileFactory.loadDexContainer(new File(args[1]), null);
        var differences = new ArrayList<String>();
        var representations = new ArrayList<String>();
        var tryRepresentations = new ArrayList<String>();
        int total = 0;
        for (Object item : before.getDexEntryNames()) {
            String name = (String) item;
            Map<String, ClassDef> a = classes(before.getEntry(name).getDexFile());
            Map<String, ClassDef> b = classes(after.getEntry(name).getDexFile());
            if (!a.keySet().equals(b.keySet())) throw new AssertionError("Class set differs: " + name);
            for (var entry : a.entrySet()) {
                String left = render(entry.getValue());
                String right = render(b.get(entry.getKey()));
                if (!left.equals(right) && normalizeDefaults(left).equals(normalizeDefaults(right))) {
                    representations.add(name + " " + entry.getKey());
                } else if (!left.equals(right) && withoutTryLabels(left).equals(withoutTryLabels(right))
                    && exceptions(entry.getValue()).equals(exceptions(b.get(entry.getKey())))) {
                    tryRepresentations.add(name + " " + entry.getKey());
                } else if (!left.equals(right)) {
                    differences.add(name + " " + entry.getKey());
                    if (differences.size() <= 3) {
                        Path folder = Path.of(args[2]).resolve("dex-differences");
                        Files.createDirectories(folder);
                        Files.writeString(folder.resolve(differences.size() + "-original.smali"), left, StandardCharsets.UTF_8);
                        Files.writeString(folder.resolve(differences.size() + "-rebuilt.smali"), right, StandardCharsets.UTF_8);
                    }
                }
                total++;
            }
            System.out.println(name + ": " + a.size() + " classes checked");
        }
        Files.write(Path.of(args[2]).resolve("dex-differences.txt"), differences, StandardCharsets.UTF_8);
        Files.write(Path.of(args[2]).resolve("dex-representation-differences.txt"), representations, StandardCharsets.UTF_8);
        Files.write(Path.of(args[2]).resolve("dex-equivalent-try-layouts.txt"), tryRepresentations, StandardCharsets.UTF_8);
        String report = "{\"classes_checked\":" + total + ",\"normalized_smali_differences\":" + differences.size()
            + ",\"representation_only_default_field_classes\":" + representations.size()
            + ",\"equivalent_try_block_layout_classes\":" + tryRepresentations.size()
            + ",\"debug_info_compared\":false,\"runtime_tested\":false}";
        Files.writeString(Path.of(args[2]).resolve("dex-comparison.json"), report, StandardCharsets.UTF_8);
        System.out.println(report);
    }
}
