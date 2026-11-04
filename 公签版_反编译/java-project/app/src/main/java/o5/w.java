package o5;

import a2.k1;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class w extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public volatile byte[] f11636a;

    /* renamed from: b, reason: collision with root package name */
    public int f11637b;

    /* renamed from: c, reason: collision with root package name */
    public int f11638c;

    /* renamed from: d, reason: collision with root package name */
    public int f11639d;

    /* renamed from: e, reason: collision with root package name */
    public int f11640e;

    /* renamed from: f, reason: collision with root package name */
    public final k1 f11641f;

    public w(InputStream inputStream, k1 k1Var) {
        super(inputStream);
        this.f11639d = -1;
        this.f11641f = k1Var;
        this.f11636a = (byte[]) k1Var.e(byte[].class, 65536);
    }

    public static void J() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public final synchronized void A() {
        if (this.f11636a != null) {
            this.f11641f.i(this.f11636a);
            this.f11636a = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f11636a == null || inputStream == null) {
            J();
            throw null;
        }
        return (this.f11637b - this.f11640e) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f11636a != null) {
            this.f11641f.i(this.f11636a);
            this.f11636a = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i10) {
        this.f11638c = Math.max(this.f11638c, i10);
        this.f11639d = this.f11640e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    public final int r(InputStream inputStream, byte[] bArr) throws IOException {
        int i10 = this.f11639d;
        if (i10 != -1) {
            int i11 = this.f11640e - i10;
            int i12 = this.f11638c;
            if (i11 < i12) {
                if (i10 == 0 && i12 > bArr.length && this.f11637b == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i12) {
                        i12 = length;
                    }
                    byte[] bArr2 = (byte[]) this.f11641f.e(byte[].class, i12);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f11636a = bArr2;
                    this.f11641f.i(bArr);
                    bArr = bArr2;
                } else if (i10 > 0) {
                    System.arraycopy(bArr, i10, bArr, 0, bArr.length - i10);
                }
                int i13 = this.f11640e - this.f11639d;
                this.f11640e = i13;
                this.f11639d = 0;
                this.f11637b = 0;
                int i14 = inputStream.read(bArr, i13, bArr.length - i13);
                int i15 = this.f11640e;
                if (i14 > 0) {
                    i15 += i14;
                }
                this.f11637b = i15;
                return i14;
            }
        }
        int i16 = inputStream.read(bArr);
        if (i16 > 0) {
            this.f11639d = -1;
            this.f11640e = 0;
            this.f11637b = i16;
        }
        return i16;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        byte[] bArr = this.f11636a;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            J();
            throw null;
        }
        if (this.f11640e >= this.f11637b && r(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.f11636a && (bArr = this.f11636a) == null) {
            J();
            throw null;
        }
        int i10 = this.f11637b;
        int i11 = this.f11640e;
        if (i10 - i11 <= 0) {
            return -1;
        }
        this.f11640e = i11 + 1;
        return bArr[i11] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (this.f11636a == null) {
            throw new IOException("Stream is closed");
        }
        int i10 = this.f11639d;
        if (-1 == i10) {
            throw new ch.a("Mark has been invalidated, pos: " + this.f11640e + " markLimit: " + this.f11638c);
        }
        this.f11640e = i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j10) {
        if (j10 < 1) {
            return 0L;
        }
        byte[] bArr = this.f11636a;
        if (bArr == null) {
            J();
            throw null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream == null) {
            J();
            throw null;
        }
        int i10 = this.f11637b;
        int i11 = this.f11640e;
        if (i10 - i11 >= j10) {
            this.f11640e = (int) (i11 + j10);
            return j10;
        }
        long j11 = i10 - i11;
        this.f11640e = i10;
        if (this.f11639d == -1 || j10 > this.f11638c) {
            long jSkip = inputStream.skip(j10 - j11);
            if (jSkip > 0) {
                this.f11639d = -1;
            }
            return j11 + jSkip;
        }
        if (r(inputStream, bArr) == -1) {
            return j11;
        }
        int i12 = this.f11637b;
        int i13 = this.f11640e;
        if (i12 - i13 >= j10 - j11) {
            this.f11640e = (int) ((i13 + j10) - j11);
            return j10;
        }
        long j12 = (j11 + i12) - i13;
        this.f11640e = i12;
        return j12;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i10, int i11) {
        int i12;
        int i13;
        byte[] bArr2 = this.f11636a;
        if (bArr2 == null) {
            J();
            throw null;
        }
        if (i11 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i14 = this.f11640e;
            int i15 = this.f11637b;
            if (i14 < i15) {
                int i16 = i15 - i14;
                if (i16 >= i11) {
                    i16 = i11;
                }
                System.arraycopy(bArr2, i14, bArr, i10, i16);
                this.f11640e += i16;
                if (i16 == i11 || inputStream.available() == 0) {
                    return i16;
                }
                i10 += i16;
                i12 = i11 - i16;
            } else {
                i12 = i11;
            }
            while (true) {
                if (this.f11639d == -1 && i12 >= bArr2.length) {
                    i13 = inputStream.read(bArr, i10, i12);
                    if (i13 == -1) {
                        return i12 != i11 ? i11 - i12 : -1;
                    }
                } else {
                    if (r(inputStream, bArr2) == -1) {
                        return i12 != i11 ? i11 - i12 : -1;
                    }
                    if (bArr2 != this.f11636a && (bArr2 = this.f11636a) == null) {
                        J();
                        throw null;
                    }
                    int i17 = this.f11637b;
                    int i18 = this.f11640e;
                    i13 = i17 - i18;
                    if (i13 >= i12) {
                        i13 = i12;
                    }
                    System.arraycopy(bArr2, i18, bArr, i10, i13);
                    this.f11640e += i13;
                }
                i12 -= i13;
                if (i12 == 0) {
                    return i11;
                }
                if (inputStream.available() == 0) {
                    return i11 - i12;
                }
                i10 += i13;
            }
        } else {
            J();
            throw null;
        }
    }
}
