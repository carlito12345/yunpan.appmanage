package bi;

import io.github.rosemoe.sora.widget.CodeEditor;
import j$.util.Objects;

/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public int f2818a;

    /* renamed from: b, reason: collision with root package name */
    public Object f2819b;

    public a() {
    }

    public abstract byte[] a();

    public abstract void b(byte[] bArr, int i10, int i11);

    public a(int i10) {
        if (i10 < 1 || i10 > 256) {
            throw new IllegalArgumentException(da.b.a(i10, "Invalid distance: "));
        }
        this.f2818a = i10;
        this.f2819b = new byte[i10];
    }

    public a(CodeEditor codeEditor) {
        System.currentTimeMillis();
        Objects.requireNonNull(codeEditor);
        this.f2819b = codeEditor;
        this.f2818a = 0;
    }
}
