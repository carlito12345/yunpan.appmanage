package y9;

import java.io.InputStream;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public final class g extends InputStream {

    /* renamed from: f, reason: collision with root package name */
    public final Object f19014f = new Object();

    /* renamed from: g, reason: collision with root package name */
    public final Object f19015g = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue f19010b = new LinkedBlockingQueue();

    /* renamed from: d, reason: collision with root package name */
    public int f19012d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f19013e = 0;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f19011c = null;

    /* renamed from: a, reason: collision with root package name */
    public boolean f19009a = true;

    @Override // java.io.InputStream
    public final int available() {
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f19009a = false;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    public final void r() {
        if (this.f19012d >= this.f19013e) {
            synchronized (this.f19014f) {
                while (true) {
                    if (this.f19012d >= this.f19013e) {
                        if (!this.f19010b.isEmpty()) {
                            try {
                                this.f19011c = (byte[]) this.f19010b.take();
                            } catch (InterruptedException e7) {
                                e7.printStackTrace();
                            }
                            byte[] bArr = this.f19011c;
                            if (bArr == null) {
                                this.f19012d = 0;
                                this.f19013e = 0;
                                break;
                            } else {
                                this.f19012d = 0;
                                this.f19013e = bArr.length;
                            }
                        } else {
                            this.f19012d = 0;
                            this.f19013e = 0;
                            return;
                        }
                    } else {
                        break;
                    }
                }
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        int i10 = -1;
        if (!this.f19009a) {
            return -1;
        }
        synchronized (this.f19015g) {
            try {
                r();
                int i11 = this.f19012d;
                if (i11 < this.f19013e) {
                    byte[] bArr = this.f19011c;
                    this.f19012d = i11 + 1;
                    i10 = bArr[i11] & 255;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10;
    }

    @Override // java.io.InputStream
    public final long skip(long j10) {
        long j11;
        synchronized (this.f19015g) {
            try {
                r();
                int i10 = this.f19013e - this.f19012d;
                if (j10 < 0) {
                    j10 = 0;
                }
                j11 = 0;
                while (j10 > 0 && i10 > 0) {
                    long jMin = Math.min(i10, j10);
                    this.f19012d = (int) (this.f19012d + jMin);
                    j10 -= jMin;
                    j11 += jMin;
                    r();
                    i10 = this.f19013e - this.f19012d;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j11;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i10, int i11) {
        bArr.getClass();
        if (i10 >= 0 && i11 >= 0 && i11 <= bArr.length - i10) {
            int iMin = -1;
            if (!this.f19009a) {
                return -1;
            }
            synchronized (this.f19015g) {
                try {
                    r();
                    int i12 = this.f19013e - this.f19012d;
                    if (i12 > 0) {
                        iMin = Math.min(i12, i11);
                        System.arraycopy(this.f19011c, this.f19012d, bArr, i10, iMin);
                        this.f19012d += iMin;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return iMin;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.io.InputStream
    public final void reset() {
    }

    @Override // java.io.InputStream
    public final void mark(int i10) {
    }
}
