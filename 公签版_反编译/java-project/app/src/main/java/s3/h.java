package s3;

import android.util.Pair;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.util.Arrays;
import java.util.Collections;
import l2.j0;
import u1.f0;

/* loaded from: classes.dex */
public final class h implements f {
    public static final double[] r = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a, reason: collision with root package name */
    public String f14079a;

    /* renamed from: b, reason: collision with root package name */
    public j0 f14080b;

    /* renamed from: c, reason: collision with root package name */
    public final a0 f14081c;

    /* renamed from: d, reason: collision with root package name */
    public final String f14082d;

    /* renamed from: e, reason: collision with root package name */
    public final u1.q f14083e;

    /* renamed from: f, reason: collision with root package name */
    public final t f14084f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean[] f14085g = new boolean[4];

    /* renamed from: h, reason: collision with root package name */
    public final g f14086h = new g();

    /* renamed from: i, reason: collision with root package name */
    public long f14087i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14088j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f14089k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public long f14090m;

    /* renamed from: n, reason: collision with root package name */
    public long f14091n;

    /* renamed from: o, reason: collision with root package name */
    public long f14092o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f14093p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f14094q;

    public h(a0 a0Var, String str) {
        this.f14081c = a0Var;
        this.f14082d = str;
        if (a0Var != null) {
            this.f14084f = new t(CarSettingID.Recv.BCM_RAINSTORM_MODE_REQ);
            this.f14083e = new u1.q();
        } else {
            this.f14084f = null;
            this.f14083e = null;
        }
        this.f14090m = -9223372036854775807L;
        this.f14092o = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x01a4  */
    @Override // s3.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(u1.q qVar) {
        g gVar;
        t tVar;
        int i10;
        int i11;
        int i12;
        boolean z;
        int i13;
        float f10;
        long j10;
        float f11;
        int i14;
        char c7 = 4;
        this.f14080b.getClass();
        int i15 = qVar.f15267b;
        int i16 = qVar.f15268c;
        byte[] bArr = qVar.f15266a;
        this.f14087i += qVar.a();
        this.f14080b.a(qVar.a(), qVar);
        while (true) {
            int iC = v1.o.c(bArr, i15, i16, this.f14085g);
            gVar = this.f14086h;
            tVar = this.f14084f;
            if (iC == i16) {
                break;
            }
            int i17 = iC + 3;
            int i18 = qVar.f15266a[i17] & 255;
            int i19 = iC - i15;
            if (this.f14089k) {
                i10 = i16;
                i11 = i17;
                i12 = i15;
            } else {
                if (i19 > 0) {
                    gVar.a(i15, iC, bArr);
                }
                int i20 = i19 < 0 ? -i19 : 0;
                if (gVar.f14075a) {
                    int i21 = gVar.f14076b - i20;
                    gVar.f14076b = i21;
                    if (gVar.f14077c == 0 && i18 == 181) {
                        gVar.f14077c = i21;
                        i10 = i16;
                        i11 = i17;
                        i12 = i15;
                    } else {
                        gVar.f14075a = false;
                        String str = this.f14079a;
                        str.getClass();
                        byte[] bArrCopyOf = Arrays.copyOf(gVar.f14078d, gVar.f14076b);
                        int i22 = bArrCopyOf[c7] & 255;
                        byte b10 = bArrCopyOf[5];
                        i11 = i17;
                        i10 = i16;
                        int i23 = ((b10 & 255) >> 4) | (i22 << 4);
                        int i24 = ((b10 & 15) << 8) | (bArrCopyOf[6] & 255);
                        int i25 = (bArrCopyOf[7] & 240) >> 4;
                        if (i25 != 2) {
                            if (i25 == 3) {
                                f11 = i24 * 16;
                                i14 = i23 * 9;
                            } else if (i25 != 4) {
                                f10 = 1.0f;
                            } else {
                                f11 = i24 * 121;
                                i14 = i23 * 100;
                            }
                            f10 = f11 / i14;
                        } else {
                            f10 = (i24 * 4) / (i23 * 3);
                        }
                        r1.o oVar = new r1.o();
                        oVar.f13480a = str;
                        oVar.f13491m = r1.e0.l(this.f14082d);
                        oVar.f13492n = r1.e0.l("video/mpeg2");
                        oVar.f13498u = i23;
                        oVar.f13499v = i24;
                        oVar.A = f10;
                        oVar.f13495q = Collections.singletonList(bArrCopyOf);
                        r1.p pVar = new r1.p(oVar);
                        int i26 = (bArrCopyOf[7] & 15) - 1;
                        if (i26 < 0 || i26 >= 8) {
                            i12 = i15;
                            j10 = 0;
                        } else {
                            double d10 = r[i26];
                            byte b11 = bArrCopyOf[gVar.f14077c + 9];
                            int i27 = (b11 & 96) >> 5;
                            int i28 = b11 & 31;
                            if (i27 != i28) {
                                double d11 = i27;
                                Double.isNaN(d11);
                                i12 = i15;
                                double d12 = i28 + 1;
                                Double.isNaN(d12);
                                d10 *= (d11 + 1.0d) / d12;
                            } else {
                                i12 = i15;
                            }
                            j10 = (long) (1000000.0d / d10);
                        }
                        Pair pairCreate = Pair.create(pVar, Long.valueOf(j10));
                        this.f14080b.g((r1.p) pairCreate.first);
                        this.l = ((Long) pairCreate.second).longValue();
                        this.f14089k = true;
                    }
                } else {
                    i10 = i16;
                    i11 = i17;
                    i12 = i15;
                    if (i18 == 179) {
                        gVar.f14075a = true;
                    }
                }
                gVar.a(0, 3, g.f14074e);
            }
            if (tVar == null) {
                z = true;
            } else {
                if (i19 > 0) {
                    tVar.a(i12, iC, bArr);
                    i13 = 0;
                } else {
                    i13 = -i19;
                }
                if (tVar.b(i13)) {
                    int iP = v1.o.p(tVar.f14246d, (byte[]) tVar.f14247e);
                    String str2 = f0.f15206a;
                    byte[] bArr2 = (byte[]) tVar.f14247e;
                    u1.q qVar2 = this.f14083e;
                    qVar2.M(iP, bArr2);
                    this.f14081c.a(this.f14092o, qVar2);
                }
                if (i18 == 178) {
                    z = true;
                    if (qVar.f15266a[iC + 2] == 1) {
                        tVar.e(i18);
                    }
                }
            }
            if (i18 == 0 || i18 == 179) {
                int i29 = i10 - iC;
                if (this.f14094q && this.f14089k) {
                    long j11 = this.f14092o;
                    if (j11 != -9223372036854775807L) {
                        this.f14080b.b(j11, this.f14093p ? 1 : 0, ((int) (this.f14087i - this.f14091n)) - i29, i29, null);
                    }
                }
                if (!this.f14088j || this.f14094q) {
                    this.f14091n = this.f14087i - i29;
                    long j12 = this.f14090m;
                    if (j12 == -9223372036854775807L) {
                        long j13 = this.f14092o;
                        j12 = j13 != -9223372036854775807L ? j13 + this.l : -9223372036854775807L;
                    }
                    this.f14092o = j12;
                    this.f14093p = false;
                    this.f14090m = -9223372036854775807L;
                    this.f14088j = true;
                }
                this.f14094q = i18 == 0;
            } else if (i18 == 184) {
                this.f14093p = z;
            }
            i16 = i10;
            i15 = i11;
            c7 = 4;
        }
        if (!this.f14089k) {
            gVar.a(i15, i16, bArr);
        }
        if (tVar != null) {
            tVar.a(i15, i16, bArr);
        }
    }

    @Override // s3.f
    public final void b() {
        v1.o.b(this.f14085g);
        g gVar = this.f14086h;
        gVar.f14075a = false;
        gVar.f14076b = 0;
        gVar.f14077c = 0;
        t tVar = this.f14084f;
        if (tVar != null) {
            tVar.d();
        }
        this.f14087i = 0L;
        this.f14088j = false;
        this.f14090m = -9223372036854775807L;
        this.f14092o = -9223372036854775807L;
    }

    @Override // s3.f
    public final void c(boolean z) {
        this.f14080b.getClass();
        if (z) {
            boolean z4 = this.f14093p;
            this.f14080b.b(this.f14092o, z4 ? 1 : 0, (int) (this.f14087i - this.f14091n), 0, null);
        }
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        this.f14090m = j10;
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        d0Var.m();
        d0Var.n();
        this.f14079a = (String) d0Var.f14066f;
        d0Var.n();
        this.f14080b = qVar.z(d0Var.f14064d, 2);
        a0 a0Var = this.f14081c;
        if (a0Var != null) {
            a0Var.b(qVar, d0Var);
        }
    }
}
