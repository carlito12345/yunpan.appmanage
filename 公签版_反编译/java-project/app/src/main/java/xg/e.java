package xg;

import java.io.FilterInputStream;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class e extends h {
    public e(InputStream inputStream) {
        super(inputStream);
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((FilterInputStream) this).in = f.f18479a;
    }
}
