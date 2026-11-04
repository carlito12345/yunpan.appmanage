package androidx.fragment.app;

import java.io.Writer;

/* loaded from: classes.dex */
public final class x1 extends Writer {

    /* renamed from: a, reason: collision with root package name */
    public final StringBuilder f1424a = new StringBuilder(128);

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        r();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        r();
    }

    public final void r() {
        StringBuilder sb2 = this.f1424a;
        if (sb2.length() > 0) {
            sb2.toString();
            sb2.delete(0, sb2.length());
        }
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            char c7 = cArr[i10 + i12];
            if (c7 == '\n') {
                r();
            } else {
                this.f1424a.append(c7);
            }
        }
    }
}
