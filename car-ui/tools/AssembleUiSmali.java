import java.io.File;
import java.util.TreeSet;
import brut.androlib.src.SmaliBuilder;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.writer.builder.DexBuilder;
import com.android.tools.smali.dexlib2.writer.io.FileDataStore;

class AssembleUiSmali {
    public static void main(String[] args) throws Exception {
        SmaliBuilder source = new SmaliBuilder(new File(args[0]), 17);
        DexBuilder dex = new DexBuilder(new Opcodes(17, -1));
        for (String file : new TreeSet<String>(source.mSmaliDir.getDirectory().getFiles(true))) {
            source.buildFile(file, dex);
        }
        dex.writeTo(new FileDataStore(new File(args[1])));
    }
}
