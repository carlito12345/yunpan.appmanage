package a6;

import java.io.FilterInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class n extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public int f441a;

    public n(f fVar) {
        super(fVar);
        this.f441a = Integer.MIN_VALUE;
    }

    public final void A(long j10) {
        int i10 = this.f441a;
        if (i10 == Integer.MIN_VALUE || j10 == -1) {
            return;
        }
        this.f441a = (int) (i10 - j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i10 = this.f441a;
        return i10 == Integer.MIN_VALUE ? super.available() : Math.min(i10, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
        super.mark(i10);
        this.f441a = i10;
    }

    public final long r(long j10) {
        int i10 = this.f441a;
        if (i10 == 0) {
            return -1L;
        }
        return (i10 == Integer.MIN_VALUE || j10 <= ((long) i10)) ? j10 : i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (r(1L) == -1) {
            return -1;
        }
        int i10 = super.read();
        A(1L);
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        super.reset();
        this.f441a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jR = r(j10);
        if (jR == -1) {
            return 0L;
        }
        long jSkip = super.skip(jR);
        A(jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int iR = (int) r(i11);
        if (iR == -1) {
            return -1;
        }
        int i12 = super.read(bArr, i10, iR);
        A(i12);
        return i12;
    }
}
