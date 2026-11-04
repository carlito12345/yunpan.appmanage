package zf;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public abstract class c extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final b f19550a;

    public c(b bVar) {
        this.f19550a = bVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f19550a.close();
    }

    public void r() {
        this.f19550a.r();
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10});
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f19550a.write(bArr, i10, i11);
    }
}
