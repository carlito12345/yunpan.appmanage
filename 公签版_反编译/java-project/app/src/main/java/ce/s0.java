package ce;

/* loaded from: classes.dex */
public final class s0 extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f3162a;

    /* renamed from: b, reason: collision with root package name */
    public int f3163b;

    /* renamed from: c, reason: collision with root package name */
    public long f3164c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3165d;

    /* renamed from: e, reason: collision with root package name */
    public t0 f3166e;

    /* renamed from: f, reason: collision with root package name */
    public r0 f3167f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f3168g;

    /* renamed from: h, reason: collision with root package name */
    public final n0 f3169h;

    /* renamed from: i, reason: collision with root package name */
    public final m0 f3170i;

    /* renamed from: j, reason: collision with root package name */
    public final q f3171j;

    public s0(t0 t0Var) throws r0 {
        super("JCIFS-WriterThread");
        this.f3167f = null;
        boolean zQ = t0Var.f3187n.f3035f.f3233h.q(16);
        this.f3168g = zQ;
        if (zQ) {
            this.f3169h = new n0();
            this.f3171j = new o0();
        } else {
            this.f3170i = new m0();
            this.f3171j = new p0();
        }
        this.f3165d = false;
    }

    public final synchronized void a(byte[] bArr, int i10, t0 t0Var, long j10) {
        this.f3162a = bArr;
        this.f3163b = i10;
        this.f3166e = t0Var;
        this.f3164c = j10;
        this.f3165d = false;
        notify();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        synchronized (this) {
            while (true) {
                try {
                    try {
                        notify();
                        this.f3165d = true;
                        while (this.f3165d) {
                            wait();
                        }
                        int i10 = this.f3163b;
                        if (i10 == -1) {
                            return;
                        }
                        if (this.f3168g) {
                            n0 n0Var = this.f3169h;
                            t0 t0Var = this.f3166e;
                            int i11 = t0Var.f3189q;
                            long j10 = this.f3164c;
                            byte[] bArr = this.f3162a;
                            n0Var.F = i11;
                            n0Var.M = j10;
                            n0Var.G = i10;
                            n0Var.L = bArr;
                            n0Var.K = 0;
                            n0Var.H = i10;
                            n0Var.f3132y = null;
                            t0Var.F(n0Var, this.f3171j);
                        } else {
                            m0 m0Var = this.f3170i;
                            t0 t0Var2 = this.f3166e;
                            int i12 = t0Var2.f3189q;
                            long j11 = this.f3164c;
                            byte[] bArr2 = this.f3162a;
                            m0Var.C = i12;
                            m0Var.E = (int) (j11 & 4294967295L);
                            m0Var.F = i10;
                            m0Var.H = bArr2;
                            m0Var.G = 0;
                            m0Var.D = i10;
                            m0Var.f3132y = null;
                            t0Var2.F(m0Var, this.f3171j);
                        }
                    } catch (r0 e7) {
                        this.f3167f = e7;
                        notify();
                        return;
                    } catch (Exception e10) {
                        this.f3167f = new r0("WriterThread", e10);
                        notify();
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
