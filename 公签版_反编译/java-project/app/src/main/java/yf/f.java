package yf;

import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public final class f extends mg.a {

    /* renamed from: a, reason: collision with root package name */
    public final g f19168a;

    public f(File file) {
        this.f19168a = new g(file, eg.c.e(file));
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        g gVar = this.f19168a;
        if (gVar != null) {
            gVar.close();
        }
    }

    @Override // mg.a
    public final void r(ag.f fVar) throws IOException {
        this.f19168a.seek(fVar.f678y);
    }

    @Override // java.io.InputStream
    public final int read() {
        return this.f19168a.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return this.f19168a.read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        return this.f19168a.read(bArr, i10, i11);
    }
}
