package s3;

/* loaded from: classes.dex */
public final class u implements e0 {

    /* renamed from: a, reason: collision with root package name */
    public final f f14248a;

    /* renamed from: b, reason: collision with root package name */
    public final j3.f f14249b = new j3.f(new byte[10], 10);

    /* renamed from: c, reason: collision with root package name */
    public int f14250c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f14251d;

    /* renamed from: e, reason: collision with root package name */
    public u1.d0 f14252e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14253f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14254g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f14255h;

    /* renamed from: i, reason: collision with root package name */
    public int f14256i;

    /* renamed from: j, reason: collision with root package name */
    public int f14257j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f14258k;
    public long l;

    public u(f fVar) {
        this.f14248a = fVar;
    }

    @Override // s3.e0
    public final void a(int i10, u1.q qVar) {
        int i11;
        this.f14252e.getClass();
        int i12 = i10 & 1;
        f fVar = this.f14248a;
        int i13 = 2;
        int i14 = -1;
        boolean z = false;
        int i15 = 3;
        if (i12 != 0) {
            int i16 = this.f14250c;
            if (i16 != 0 && i16 != 1) {
                if (i16 == 2) {
                    u1.a.p("Unexpected start indicator reading extended header");
                } else {
                    if (i16 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.f14257j != -1) {
                        u1.a.p("Unexpected start indicator: expected " + this.f14257j + " more bytes");
                    }
                    fVar.c(qVar.f15268c == 0);
                }
            }
            this.f14250c = 1;
            this.f14251d = 0;
        }
        int i17 = i10;
        while (qVar.a() > 0) {
            int i18 = this.f14250c;
            if (i18 != 0) {
                j3.f fVar2 = this.f14249b;
                if (i18 != 1) {
                    if (i18 == i13) {
                        if (d(qVar, fVar2.f9720b, Math.min(10, this.f14256i)) && d(qVar, null, this.f14256i)) {
                            fVar2.m(z ? 1 : 0);
                            this.l = -9223372036854775807L;
                            if (this.f14253f) {
                                fVar2.o(4);
                                fVar2.o(1);
                                fVar2.o(1);
                                long jG = (fVar2.g(15) << 15) | (fVar2.g(i15) << 30) | fVar2.g(15);
                                fVar2.o(1);
                                if (!this.f14255h && this.f14254g) {
                                    fVar2.o(4);
                                    fVar2.o(1);
                                    fVar2.o(1);
                                    fVar2.o(1);
                                    this.f14252e.b((fVar2.g(15) << 15) | (fVar2.g(i15) << 30) | fVar2.g(15));
                                    this.f14255h = true;
                                }
                                this.l = this.f14252e.b(jG);
                            }
                            i17 |= this.f14258k ? 4 : 0;
                            fVar.d(i17, this.l);
                            this.f14250c = 3;
                            this.f14251d = 0;
                            i13 = 2;
                            i14 = -1;
                            z = false;
                            i15 = 3;
                        }
                    } else {
                        if (i18 != i15) {
                            throw new IllegalStateException();
                        }
                        int iA = qVar.a();
                        int i19 = this.f14257j;
                        int i20 = i19 == i14 ? 0 : iA - i19;
                        if (i20 > 0) {
                            iA -= i20;
                            qVar.N(qVar.f15267b + iA);
                        }
                        fVar.a(qVar);
                        int i21 = this.f14257j;
                        if (i21 != i14) {
                            int i22 = i21 - iA;
                            this.f14257j = i22;
                            if (i22 == 0) {
                                fVar.c(z);
                                this.f14250c = 1;
                                this.f14251d = z ? 1 : 0;
                            }
                        }
                    }
                } else if (d(qVar, fVar2.f9720b, 9)) {
                    fVar2.m(0);
                    int iG = fVar2.g(24);
                    if (iG != 1) {
                        org.bouncycastle.jcajce.provider.digest.a.o(iG, "Unexpected start code prefix: ");
                        this.f14257j = -1;
                        i14 = -1;
                        i11 = 0;
                    } else {
                        fVar2.o(8);
                        int iG2 = fVar2.g(16);
                        fVar2.o(5);
                        this.f14258k = fVar2.f();
                        fVar2.o(2);
                        this.f14253f = fVar2.f();
                        this.f14254g = fVar2.f();
                        fVar2.o(6);
                        int iG3 = fVar2.g(8);
                        this.f14256i = iG3;
                        if (iG2 == 0) {
                            this.f14257j = -1;
                        } else {
                            int i23 = (iG2 - 3) - iG3;
                            this.f14257j = i23;
                            if (i23 < 0) {
                                u1.a.p("Found negative packet payload size: " + this.f14257j);
                                i14 = -1;
                                this.f14257j = -1;
                            }
                            i11 = 2;
                        }
                        i14 = -1;
                        i11 = 2;
                    }
                    this.f14250c = i11;
                    z = false;
                    this.f14251d = 0;
                } else {
                    i14 = -1;
                    z = false;
                }
            } else {
                qVar.P(qVar.a());
            }
            i13 = 2;
            i15 = 3;
        }
    }

    @Override // s3.e0
    public final void b() {
        this.f14250c = 0;
        this.f14251d = 0;
        this.f14255h = false;
        this.f14248a.b();
    }

    @Override // s3.e0
    public final void c(u1.d0 d0Var, l2.q qVar, d0 d0Var2) {
        this.f14252e = d0Var;
        this.f14248a.e(qVar, d0Var2);
    }

    public final boolean d(u1.q qVar, byte[] bArr, int i10) {
        int iMin = Math.min(qVar.a(), i10 - this.f14251d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            qVar.P(iMin);
        } else {
            qVar.l(this.f14251d, iMin, bArr);
        }
        int i11 = this.f14251d + iMin;
        this.f14251d = i11;
        return i11 == i10;
    }
}
