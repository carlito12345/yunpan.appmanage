package v7;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class h extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f16651a;

    /* renamed from: b, reason: collision with root package name */
    public long f16652b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(InputStream inputStream) {
        super(inputStream);
        inputStream.getClass();
        this.f16652b = -1L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
        ((FilterInputStream) this).in.mark(i10);
        this.f16652b = this.f16651a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i10 = ((FilterInputStream) this).in.read();
        if (i10 != -1) {
            this.f16651a++;
        }
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f16652b == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.f16651a = this.f16652b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(j10);
        this.f16651a += jSkip;
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = ((FilterInputStream) this).in.read(bArr, i10, i11);
        if (i12 != -1) {
            this.f16651a += i12;
        }
        return i12;
    }
}
