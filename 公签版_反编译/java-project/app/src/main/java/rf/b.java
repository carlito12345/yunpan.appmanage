package rf;

import java.io.StringWriter;

/* loaded from: classes.dex */
public abstract class b extends c {
    @Override // rf.c
    public final int a(int i10, StringWriter stringWriter, String str) {
        return b(Character.codePointAt(str, i10), stringWriter) ? 1 : 0;
    }

    public abstract boolean b(int i10, StringWriter stringWriter);
}
