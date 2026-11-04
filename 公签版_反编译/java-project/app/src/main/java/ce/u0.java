package ce;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;

/* loaded from: classes.dex */
public class u0 extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f3194a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3195b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3196c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3197d;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f3198e;

    /* renamed from: f, reason: collision with root package name */
    public final t0 f3199f;

    public u0(String str) {
        this(new t0(str), 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static IOException A(r0 r0Var) {
        Throwable th2 = r0Var.f3161b;
        r0 r0Var2 = r0Var;
        if (th2 instanceof ee.c) {
            ee.c cVar = (ee.c) th2;
            th2 = cVar.f4957a;
            r0Var2 = cVar;
        }
        if (!(th2 instanceof InterruptedException)) {
            return r0Var2;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException(th2.getMessage());
        interruptedIOException.initCause(th2);
        return interruptedIOException;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        t0 t0Var = this.f3199f;
        if (t0Var.r != 16) {
            return 0;
        }
        try {
            w0 w0Var = (w0) t0Var;
            t0Var.z(32, w0Var.D & 16711680, 128, 0);
            t1 t1Var = new t1(t0Var.f3188p, t0Var.f3189q);
            n nVar = new n(1);
            w0Var.F(t1Var, nVar);
            int i10 = nVar.M0;
            if (i10 != 1 && i10 != 4) {
                return nVar.N0;
            }
            t0Var.f3190s = false;
            return 0;
        } catch (r0 e7) {
            throw A(e7);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            this.f3199f.b();
            this.f3198e = null;
        } catch (r0 e7) {
            throw A(e7);
        }
    }

    public final int r(int i10, int i11, byte[] bArr) throws IOException {
        int i12;
        int i13;
        long j10;
        if (i11 <= 0) {
            return 0;
        }
        long j11 = this.f3194a;
        if (this.f3198e == null) {
            throw new IOException("Bad file descriptor");
        }
        int i14 = this.f3197d;
        t0 t0Var = this.f3199f;
        t0Var.z(this.f3196c, i14, 128, 0);
        de.d dVar = t0.f3173x;
        if (de.d.f4630b >= 4) {
            t0.f3173x.getClass();
        }
        e0 e0Var = new e0(bArr, i10);
        do {
            i12 = this.f3195b;
            if (i11 <= i12) {
                i12 = i11;
            }
            de.d dVar2 = t0.f3173x;
            if (de.d.f4630b >= 4) {
                t0.f3173x.getClass();
            }
            try {
                d0 d0Var = new d0(t0Var.f3189q, i12, this.f3194a);
                if (t0Var.r == 16) {
                    d0Var.K = 1024;
                    d0Var.H = 1024;
                    d0Var.I = 1024;
                }
                t0Var.F(d0Var, e0Var);
                i13 = e0Var.I;
                if (i13 > 0) {
                    j10 = this.f3194a + i13;
                    this.f3194a = j10;
                    i11 -= i13;
                    e0Var.G += i13;
                    if (i11 <= 0) {
                        break;
                    }
                } else {
                    long j12 = this.f3194a - j11;
                    if (j12 <= 0) {
                        j12 = -1;
                    }
                    return (int) j12;
                }
            } catch (r0 e7) {
                if (t0Var.r == 16 && e7.f3160a == -1073741493) {
                    return -1;
                }
                throw A(e7);
            }
        } while (i13 == i12);
        return (int) (j10 - j11);
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.f3198e, 0, 1) == -1) {
            return -1;
        }
        return this.f3198e[0] & 255;
    }

    @Override // java.io.InputStream
    public final long skip(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        this.f3194a += j10;
        return j10;
    }

    public u0(t0 t0Var, int i10) throws r0 {
        this.f3198e = new byte[1];
        this.f3199f = t0Var;
        this.f3196c = i10 & 65535;
        int i11 = 65535 & (i10 >>> 16);
        this.f3197d = i11;
        if (t0Var.r != 16) {
            t0Var.z(i10, i11, 128, 0);
            this.f3196c = i10 & 65455;
        } else {
            t0Var.c();
        }
        b1 b1Var = t0Var.f3187n.f3035f.f3233h;
        this.f3195b = Math.min(b1Var.A - 70, b1Var.f3024w.f2996b - 70);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        return r(i10, i11, bArr);
    }
}
