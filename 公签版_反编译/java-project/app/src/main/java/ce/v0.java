package ce;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class v0 extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final t0 f3200a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3201b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3202c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3203d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3204e;

    /* renamed from: f, reason: collision with root package name */
    public long f3205f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f3206g = new byte[1];

    /* renamed from: h, reason: collision with root package name */
    public final n0 f3207h;

    /* renamed from: i, reason: collision with root package name */
    public final o0 f3208i;

    /* renamed from: j, reason: collision with root package name */
    public final m0 f3209j;

    /* renamed from: k, reason: collision with root package name */
    public final p0 f3210k;

    public v0(t0 t0Var, int i10) throws r0 {
        this.f3200a = t0Var;
        this.f3202c = i10;
        this.f3203d = (i10 >>> 16) & 65535;
        if ((t0Var instanceof w0) && t0Var.f3188p.startsWith("\\pipe\\")) {
            t0Var.f3188p = t0Var.f3188p.substring(5);
            t0Var.F(new v1("\\pipe" + t0Var.f3188p), new s1(1));
        }
        t0Var.z(i10, this.f3203d | 2, 128, 0);
        this.f3202c &= -81;
        b1 b1Var = t0Var.f3187n.f3035f.f3233h;
        this.f3204e = b1Var.z - 70;
        boolean zQ = b1Var.q(16);
        this.f3201b = zQ;
        if (zQ) {
            this.f3207h = new n0();
            this.f3208i = new o0();
        } else {
            this.f3209j = new m0();
            this.f3210k = new p0();
        }
    }

    public final void A(int i10, int i11, int i12, byte[] bArr) {
        if (i11 <= 0) {
            return;
        }
        if (this.f3206g == null) {
            throw new IOException("Bad file descriptor");
        }
        r();
        de.d dVar = t0.f3173x;
        int i13 = de.d.f4630b;
        t0 t0Var = this.f3200a;
        if (i13 >= 4) {
            de.d dVar2 = t0.f3173x;
            int i14 = t0Var.f3189q;
            dVar2.getClass();
        }
        do {
            int i15 = this.f3204e;
            if (i11 <= i15) {
                i15 = i11;
            }
            if (this.f3201b) {
                int i16 = t0Var.f3189q;
                long j10 = this.f3205f;
                n0 n0Var = this.f3207h;
                n0Var.F = i16;
                n0Var.M = j10;
                n0Var.G = i11 - i15;
                n0Var.L = bArr;
                n0Var.K = i10;
                n0Var.H = i15;
                n0Var.f3132y = null;
                if ((i12 & 1) != 0) {
                    n0Var.F = i16;
                    n0Var.M = j10;
                    n0Var.G = i11;
                    n0Var.L = bArr;
                    n0Var.K = i10;
                    n0Var.H = i15;
                    n0Var.f3132y = null;
                    n0Var.O = 8;
                } else {
                    n0Var.O = 0;
                }
                o0 o0Var = this.f3208i;
                t0Var.F(n0Var, o0Var);
                long j11 = this.f3205f;
                long j12 = o0Var.F;
                this.f3205f = j11 + j12;
                i11 = (int) (i11 - j12);
                i10 = (int) (i10 + j12);
            } else {
                int i17 = t0Var.f3189q;
                long j13 = this.f3205f;
                m0 m0Var = this.f3209j;
                m0Var.C = i17;
                m0Var.E = (int) (4294967295L & j13);
                m0Var.F = i11 - i15;
                m0Var.H = bArr;
                m0Var.G = i10;
                m0Var.D = i15;
                m0Var.f3132y = null;
                p0 p0Var = this.f3210k;
                long j14 = p0Var.C;
                this.f3205f = j13 + j14;
                i11 = (int) (i11 - j14);
                i10 = (int) (i10 + j14);
                t0Var.F(m0Var, p0Var);
            }
        } while (i11 > 0);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3200a.b();
        this.f3206g = null;
    }

    public final void r() {
        t0 t0Var = this.f3200a;
        if (t0Var.v()) {
            return;
        }
        t0Var.z(this.f3202c, this.f3203d | 2, 128, 0);
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        byte[] bArr = this.f3206g;
        bArr[0] = (byte) i10;
        write(bArr, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        t0 t0Var = this.f3200a;
        if (!t0Var.v() && (t0Var instanceof w0)) {
            t0Var.F(new v1("\\pipe" + t0Var.f3188p), new s1(1));
        }
        A(i10, i11, 0, bArr);
    }
}
