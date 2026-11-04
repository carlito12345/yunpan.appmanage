package yh;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public final class q extends p {

    /* renamed from: a, reason: collision with root package name */
    public final OutputStream f19253a;

    public q(OutputStream outputStream) {
        this.f19253a = outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f19253a.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.f19253a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i10) throws IOException {
        this.f19253a.write(i10);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        this.f19253a.write(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f19253a.write(bArr, i10, i11);
    }
}
