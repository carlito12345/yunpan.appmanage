package s1;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final int f13935a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13936b;

    /* renamed from: c, reason: collision with root package name */
    public final float f13937c;

    /* renamed from: d, reason: collision with root package name */
    public final float f13938d;

    /* renamed from: e, reason: collision with root package name */
    public final float f13939e;

    /* renamed from: f, reason: collision with root package name */
    public final int f13940f;

    /* renamed from: g, reason: collision with root package name */
    public final int f13941g;

    /* renamed from: h, reason: collision with root package name */
    public final int f13942h;

    /* renamed from: i, reason: collision with root package name */
    public final o f13943i;

    /* renamed from: j, reason: collision with root package name */
    public int f13944j;

    /* renamed from: k, reason: collision with root package name */
    public int f13945k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f13946m;

    /* renamed from: n, reason: collision with root package name */
    public int f13947n;

    /* renamed from: o, reason: collision with root package name */
    public int f13948o;

    /* renamed from: p, reason: collision with root package name */
    public int f13949p;

    /* renamed from: q, reason: collision with root package name */
    public double f13950q;

    public q(int i10, int i11, float f10, float f11, int i12, boolean z) {
        this.f13935a = i10;
        this.f13936b = i11;
        this.f13937c = f10;
        this.f13938d = f11;
        this.f13939e = i10 / i12;
        this.f13940f = i10 / 400;
        int i13 = i10 / 65;
        this.f13941g = i13;
        this.f13942h = i13 * 2;
        this.f13943i = z ? new n(this) : new p(this);
    }

    public final void a(int i10, int i11) {
        o oVar = this.f13943i;
        oVar.h(i11);
        Object objF = oVar.f();
        int i12 = this.f13936b;
        System.arraycopy(objF, i10 * i12, oVar.g(), this.f13945k * i12, i12 * i11);
        this.f13945k += i11;
    }

    public final void b() {
        int i10;
        int iQ;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        long j10;
        long j11;
        int i17 = this.f13945k;
        float f10 = this.f13937c;
        float f11 = this.f13938d;
        double d10 = f10 / f11;
        float f12 = this.f13939e * f11;
        o oVar = this.f13943i;
        int i18 = this.f13935a;
        int i19 = this.f13936b;
        int i20 = 1;
        if (d10 > 1.0000100135803223d || d10 < 0.9999899864196777d) {
            int i21 = this.f13944j;
            int i22 = this.f13942h;
            if (i21 >= i22) {
                int i23 = 0;
                while (true) {
                    int i24 = this.f13948o;
                    if (i24 > 0) {
                        int iMin = Math.min(i22, i24);
                        a(i23, iMin);
                        this.f13948o -= iMin;
                        i23 += iMin;
                        i10 = i22;
                        i11 = i21;
                    } else {
                        int i25 = i18 > 4000 ? i18 / 4000 : 1;
                        int i26 = this.f13941g;
                        int i27 = this.f13940f;
                        if (i19 == i20 && i25 == i20) {
                            iQ = oVar.d(i23, i27, i26);
                            i10 = i22;
                        } else {
                            oVar.c(i23, i25);
                            i10 = i22;
                            int iQ2 = oVar.q(i27 / i25, i26 / i25);
                            if (i25 != i20) {
                                int i28 = iQ2 * i25;
                                int i29 = i25 * 4;
                                int i30 = i28 - i29;
                                int i31 = i28 + i29;
                                if (i30 >= i27) {
                                    i27 = i30;
                                }
                                if (i31 <= i26) {
                                    i26 = i31;
                                }
                                if (i19 == i20) {
                                    iQ = oVar.d(i23, i27, i26);
                                } else {
                                    oVar.c(i23, i20);
                                    iQ = oVar.q(i27, i26);
                                }
                            } else {
                                iQ = iQ2;
                            }
                        }
                        int i32 = oVar.i() ? this.f13949p : iQ;
                        oVar.e();
                        this.f13949p = iQ;
                        if (d10 > 1.0d) {
                            if (d10 >= 2.0d) {
                                double d11 = i32;
                                Double.isNaN(d10);
                                Double.isNaN(d11);
                                i13 = i21;
                                double d12 = (d11 / (d10 - 1.0d)) + this.f13950q;
                                int iRound = (int) Math.round(d12);
                                double d13 = iRound;
                                Double.isNaN(d13);
                                this.f13950q = d12 - d13;
                                i14 = iRound;
                            } else {
                                i13 = i21;
                                double d14 = i32;
                                Double.isNaN(d10);
                                Double.isNaN(d14);
                                Double.isNaN(d10);
                                double d15 = (((2.0d - d10) * d14) / (d10 - 1.0d)) + this.f13950q;
                                int iRound2 = (int) Math.round(d15);
                                this.f13948o = iRound2;
                                double d16 = iRound2;
                                Double.isNaN(d16);
                                this.f13950q = d15 - d16;
                                i14 = i32;
                            }
                            oVar.h(i14);
                            int i33 = i23;
                            int i34 = i14;
                            i11 = i13;
                            oVar.k(i14, this.f13936b, this.f13945k, i33, i23 + i32);
                            this.f13945k += i34;
                            i23 = i32 + i34 + i33;
                        } else {
                            int i35 = i23;
                            i11 = i21;
                            if (d10 < 0.5d) {
                                double d17 = i32;
                                Double.isNaN(d17);
                                Double.isNaN(d10);
                                Double.isNaN(d10);
                                double d18 = ((d17 * d10) / (1.0d - d10)) + this.f13950q;
                                int iRound3 = (int) Math.round(d18);
                                double d19 = iRound3;
                                Double.isNaN(d19);
                                this.f13950q = d18 - d19;
                                i12 = iRound3;
                            } else {
                                double d20 = i32;
                                Double.isNaN(d10);
                                Double.isNaN(d20);
                                Double.isNaN(d10);
                                double d21 = ((((2.0d * d10) - 1.0d) * d20) / (1.0d - d10)) + this.f13950q;
                                int iRound4 = (int) Math.round(d21);
                                this.f13948o = iRound4;
                                double d22 = iRound4;
                                Double.isNaN(d22);
                                this.f13950q = d21 - d22;
                                i12 = i32;
                            }
                            int i36 = i32 + i12;
                            oVar.h(i36);
                            System.arraycopy(oVar.f(), i35 * i19, oVar.g(), this.f13945k * i19, i32 * i19);
                            oVar.k(i12, this.f13936b, this.f13945k + i32, i35 + i32, i35);
                            this.f13945k += i36;
                            i23 = i35 + i12;
                        }
                    }
                    if (i23 + i10 > i11) {
                        break;
                    }
                    i21 = i11;
                    i22 = i10;
                    i20 = 1;
                }
                int i37 = this.f13944j - i23;
                System.arraycopy(oVar.f(), i23 * i19, oVar.f(), 0, i37 * i19);
                this.f13944j = i37;
            }
        } else {
            a(0, this.f13944j);
            this.f13944j = 0;
        }
        if (f12 == 1.0f || this.f13945k == i17) {
            return;
        }
        long j12 = (long) (i18 / f12);
        long j13 = i18;
        while (j12 != 0 && j13 != 0 && j12 % 2 == 0 && j13 % 2 == 0) {
            j12 /= 2;
            j13 /= 2;
        }
        int i38 = this.f13945k - i17;
        oVar.m(i38);
        System.arraycopy(oVar.g(), i17 * i19, oVar.j(), this.l * i19, i38 * i19);
        this.f13945k = i17;
        this.l += i38;
        int i39 = 0;
        while (true) {
            i15 = this.l - 1;
            if (i39 >= i15) {
                break;
            }
            while (true) {
                i16 = this.f13946m + 1;
                j10 = i16;
                long j14 = j10 * j12;
                j11 = this.f13947n;
                if (j14 <= j11 * j13) {
                    break;
                }
                oVar.h(1);
                oVar.a(i39, j13, j12);
                this.f13947n++;
                this.f13945k++;
            }
            this.f13946m = i16;
            if (j10 == j13) {
                this.f13946m = 0;
                a9.o.t(j11 == j12);
                this.f13947n = 0;
            }
            i39++;
        }
        if (i15 == 0) {
            return;
        }
        System.arraycopy(oVar.j(), i15 * i19, oVar.j(), 0, (this.l - i15) * i19);
        this.l -= i15;
    }
}
