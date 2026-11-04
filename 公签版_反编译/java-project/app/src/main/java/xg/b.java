package xg;

import java.io.FilterInputStream;
import java.io.IOException;
import tb.v;

/* loaded from: classes.dex */
public final class b extends h {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f18466i = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f18467d;

    /* renamed from: e, reason: collision with root package name */
    public long f18468e;

    /* renamed from: f, reason: collision with root package name */
    public final long f18469f;

    /* renamed from: g, reason: collision with root package name */
    public final v f18470g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f18471h;

    /* JADX WARN: Illegal instructions before constructor call */
    public b(a aVar) {
        tg.b bVar = (tg.b) aVar.f15098b;
        if (bVar == null) {
            throw new IllegalStateException("origin == null");
        }
        super(bVar.N0(aVar.Q0()), aVar);
        this.f18467d = 0L;
        this.f18469f = aVar.f18463e;
        this.f18471h = aVar.f18465g;
        this.f18470g = aVar.f18464f;
    }

    public final synchronized long J() {
        return this.f18467d;
    }

    public final boolean K() {
        long j10 = this.f18469f;
        return j10 >= 0 && J() >= j10;
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        if (!K()) {
            return ((FilterInputStream) this).in.available();
        }
        J();
        this.f18470g.getClass();
        return 0;
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f18471h) {
            super.close();
        }
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
        ((FilterInputStream) this).in.mark(i10);
        this.f18468e = this.f18467d;
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return ((FilterInputStream) this).in.markSupported();
    }

    @Override // xg.h
    public final synchronized void r(int i10) {
        if (i10 != -1) {
            try {
                this.f18467d += i10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        super.r(i10);
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (!K()) {
            return super.read();
        }
        J();
        this.f18470g.getClass();
        return -1;
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        ((FilterInputStream) this).in.reset();
        this.f18467d = this.f18468e;
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j10) {
        long jSkip;
        long j11 = this.f18469f;
        if (j11 >= 0) {
            j10 = Math.min(j10, j11 - J());
        }
        jSkip = super.skip(j10);
        this.f18467d += jSkip;
        return jSkip;
    }

    public final String toString() {
        return ((FilterInputStream) this).in.toString();
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // xg.h, java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        if (K()) {
            J();
            this.f18470g.getClass();
            return -1;
        }
        long jMin = i11;
        long j10 = this.f18469f;
        if (j10 >= 0) {
            jMin = Math.min(jMin, j10 - J());
        }
        return super.read(bArr, i10, (int) jMin);
    }
}
