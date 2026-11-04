package zf;

import ag.m;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public abstract class b extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final i f19548a;

    /* renamed from: b, reason: collision with root package name */
    public final tf.d f19549b;

    public b(i iVar, m mVar, char[] cArr, boolean z) {
        this.f19548a = iVar;
        this.f19549b = A(mVar, cArr, z);
    }

    public abstract tf.d A(m mVar, char[] cArr, boolean z);

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f19548a.getClass();
    }

    public void r() {
        this.f19548a.f19558c = true;
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        this.f19548a.write(i10);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f19548a.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f19549b.d(i10, i11, bArr);
        this.f19548a.write(bArr, i10, i11);
    }
}
