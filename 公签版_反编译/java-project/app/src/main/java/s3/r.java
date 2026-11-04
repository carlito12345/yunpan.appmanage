package s3;

import l2.j0;

/* loaded from: classes.dex */
public final class r implements f {

    /* renamed from: a, reason: collision with root package name */
    public final u1.q f14211a;

    /* renamed from: b, reason: collision with root package name */
    public final l2.a0 f14212b;

    /* renamed from: c, reason: collision with root package name */
    public final String f14213c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14214d;

    /* renamed from: e, reason: collision with root package name */
    public final String f14215e;

    /* renamed from: f, reason: collision with root package name */
    public j0 f14216f;

    /* renamed from: g, reason: collision with root package name */
    public String f14217g;

    /* renamed from: h, reason: collision with root package name */
    public int f14218h = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f14219i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14220j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f14221k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public int f14222m;

    /* renamed from: n, reason: collision with root package name */
    public long f14223n;

    public r(String str, int i10, String str2) {
        u1.q qVar = new u1.q(4);
        this.f14211a = qVar;
        qVar.f15266a[0] = -1;
        this.f14212b = new l2.a0();
        this.f14223n = -9223372036854775807L;
        this.f14213c = str;
        this.f14214d = i10;
        this.f14215e = str2;
    }

    @Override // s3.f
    public final void a(u1.q qVar) {
        this.f14216f.getClass();
        while (qVar.a() > 0) {
            int i10 = this.f14218h;
            u1.q qVar2 = this.f14211a;
            if (i10 == 0) {
                byte[] bArr = qVar.f15266a;
                int i11 = qVar.f15267b;
                int i12 = qVar.f15268c;
                while (true) {
                    if (i11 >= i12) {
                        qVar.O(i12);
                        break;
                    }
                    byte b10 = bArr[i11];
                    boolean z = (b10 & 255) == 255;
                    boolean z4 = this.f14221k && (b10 & 224) == 224;
                    this.f14221k = z;
                    if (z4) {
                        qVar.O(i11 + 1);
                        this.f14221k = false;
                        qVar2.f15266a[1] = bArr[i11];
                        this.f14219i = 2;
                        this.f14218h = 1;
                        break;
                    }
                    i11++;
                }
            } else if (i10 == 1) {
                int iMin = Math.min(qVar.a(), 4 - this.f14219i);
                qVar.l(this.f14219i, iMin, qVar2.f15266a);
                int i13 = this.f14219i + iMin;
                this.f14219i = i13;
                if (i13 >= 4) {
                    qVar2.O(0);
                    int iO = qVar2.o();
                    l2.a0 a0Var = this.f14212b;
                    if (a0Var.a(iO)) {
                        this.f14222m = a0Var.f10392b;
                        if (!this.f14220j) {
                            this.l = (a0Var.f10396f * 1000000) / a0Var.f10393c;
                            r1.o oVar = new r1.o();
                            oVar.f13480a = this.f14217g;
                            oVar.f13491m = r1.e0.l(this.f14215e);
                            oVar.f13492n = r1.e0.l((String) a0Var.f10397g);
                            oVar.f13493o = 4096;
                            oVar.F = a0Var.f10394d;
                            oVar.G = a0Var.f10393c;
                            oVar.f13483d = this.f14213c;
                            oVar.f13485f = this.f14214d;
                            this.f14216f.g(new r1.p(oVar));
                            this.f14220j = true;
                        }
                        qVar2.O(0);
                        this.f14216f.a(4, qVar2);
                        this.f14218h = 2;
                    } else {
                        this.f14219i = 0;
                        this.f14218h = 1;
                    }
                }
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException();
                }
                int iMin2 = Math.min(qVar.a(), this.f14222m - this.f14219i);
                this.f14216f.a(iMin2, qVar);
                int i14 = this.f14219i + iMin2;
                this.f14219i = i14;
                if (i14 >= this.f14222m) {
                    a9.o.t(this.f14223n != -9223372036854775807L);
                    this.f14216f.b(this.f14223n, 1, this.f14222m, 0, null);
                    this.f14223n += this.l;
                    this.f14219i = 0;
                    this.f14218h = 0;
                }
            }
        }
    }

    @Override // s3.f
    public final void b() {
        this.f14218h = 0;
        this.f14219i = 0;
        this.f14221k = false;
        this.f14223n = -9223372036854775807L;
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        this.f14223n = j10;
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        d0Var.m();
        d0Var.n();
        this.f14217g = (String) d0Var.f14066f;
        d0Var.n();
        this.f14216f = qVar.z(d0Var.f14064d, 1);
    }

    @Override // s3.f
    public final void c(boolean z) {
    }
}
