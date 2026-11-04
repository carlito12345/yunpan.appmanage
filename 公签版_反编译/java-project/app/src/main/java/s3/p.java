package s3;

import com.hsae.autosdk.core.NoConst;
import java.util.Collections;
import l2.j0;
import u1.f0;

/* loaded from: classes.dex */
public final class p implements f {

    /* renamed from: a, reason: collision with root package name */
    public final a0 f14178a;

    /* renamed from: b, reason: collision with root package name */
    public String f14179b;

    /* renamed from: c, reason: collision with root package name */
    public j0 f14180c;

    /* renamed from: d, reason: collision with root package name */
    public o f14181d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14182e;
    public long l;

    /* renamed from: f, reason: collision with root package name */
    public final boolean[] f14183f = new boolean[3];

    /* renamed from: g, reason: collision with root package name */
    public final t f14184g = new t(32);

    /* renamed from: h, reason: collision with root package name */
    public final t f14185h = new t(33);

    /* renamed from: i, reason: collision with root package name */
    public final t f14186i = new t(34);

    /* renamed from: j, reason: collision with root package name */
    public final t f14187j = new t(39);

    /* renamed from: k, reason: collision with root package name */
    public final t f14188k = new t(40);

    /* renamed from: m, reason: collision with root package name */
    public long f14189m = -9223372036854775807L;

    /* renamed from: n, reason: collision with root package name */
    public final u1.q f14190n = new u1.q();

    public p(a0 a0Var) {
        this.f14178a = a0Var;
    }

    @Override // s3.f
    public final void a(u1.q qVar) {
        int i10;
        int i11;
        this.f14180c.getClass();
        String str = f0.f15206a;
        while (qVar.a() > 0) {
            int i12 = qVar.f15267b;
            int i13 = qVar.f15268c;
            byte[] bArr = qVar.f15266a;
            this.l += qVar.a();
            this.f14180c.a(qVar.a(), qVar);
            while (i12 < i13) {
                int iC = v1.o.c(bArr, i12, i13, this.f14183f);
                if (iC == i13) {
                    g(i12, i13, bArr);
                    return;
                }
                int i14 = (bArr[iC + 3] & NoConst.ESCAPE_0X7E) >> 1;
                if (iC <= 0 || bArr[iC - 1] != 0) {
                    i10 = iC;
                    i11 = 3;
                } else {
                    i10 = iC - 1;
                    i11 = 4;
                }
                int i15 = i10 - i12;
                if (i15 > 0) {
                    g(i12, i10, bArr);
                }
                int i16 = i13 - i10;
                long j10 = this.l - i16;
                f(i16, i15 < 0 ? -i15 : 0, j10, this.f14189m);
                h(i16, i14, j10, this.f14189m);
                i12 = i10 + i11;
            }
        }
    }

    @Override // s3.f
    public final void b() {
        this.l = 0L;
        this.f14189m = -9223372036854775807L;
        v1.o.b(this.f14183f);
        this.f14184g.d();
        this.f14185h.d();
        this.f14186i.d();
        this.f14187j.d();
        this.f14188k.d();
        this.f14178a.f13993d.d(0);
        o oVar = this.f14181d;
        if (oVar != null) {
            oVar.f14171f = false;
            oVar.f14172g = false;
            oVar.f14173h = false;
            oVar.f14174i = false;
            oVar.f14175j = false;
        }
    }

    @Override // s3.f
    public final void c(boolean z) {
        this.f14180c.getClass();
        String str = f0.f15206a;
        if (z) {
            this.f14178a.f13993d.d(0);
            f(0, 0, this.l, this.f14189m);
            h(0, 48, this.l, this.f14189m);
        }
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        this.f14189m = j10;
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        d0Var.m();
        d0Var.n();
        this.f14179b = (String) d0Var.f14066f;
        d0Var.n();
        j0 j0VarZ = qVar.z(d0Var.f14064d, 2);
        this.f14180c = j0VarZ;
        this.f14181d = new o(j0VarZ);
        this.f14178a.b(qVar, d0Var);
    }

    public final void f(int i10, int i11, long j10, long j11) {
        o oVar = this.f14181d;
        boolean z = this.f14182e;
        if (oVar.f14175j && oVar.f14172g) {
            oVar.f14177m = oVar.f14168c;
            oVar.f14175j = false;
        } else if (oVar.f14173h || oVar.f14172g) {
            if (z && oVar.f14174i) {
                oVar.a(i10 + ((int) (j10 - oVar.f14167b)));
            }
            oVar.f14176k = oVar.f14167b;
            oVar.l = oVar.f14170e;
            oVar.f14177m = oVar.f14168c;
            oVar.f14174i = true;
        }
        boolean z4 = this.f14182e;
        b5.i iVar = this.f14178a.f13993d;
        if (!z4) {
            t tVar = this.f14184g;
            tVar.b(i11);
            t tVar2 = this.f14185h;
            tVar2.b(i11);
            t tVar3 = this.f14186i;
            tVar3.b(i11);
            if (tVar.f14245c && tVar2.f14245c && tVar3.f14245c) {
                String str = this.f14179b;
                int i12 = tVar.f14246d;
                byte[] bArr = new byte[tVar2.f14246d + i12 + tVar3.f14246d];
                System.arraycopy((byte[]) tVar.f14247e, 0, bArr, 0, i12);
                System.arraycopy((byte[]) tVar2.f14247e, 0, bArr, tVar.f14246d, tVar2.f14246d);
                System.arraycopy((byte[]) tVar3.f14247e, 0, bArr, tVar.f14246d + tVar2.f14246d, tVar3.f14246d);
                String strA = null;
                v1.k kVarK = v1.o.k((byte[]) tVar2.f14247e, 3, tVar2.f14246d, null);
                v1.h hVar = kVarK.f16353b;
                if (hVar != null) {
                    strA = u1.c.a(hVar.f16339a, hVar.f16341c, hVar.f16342d, hVar.f16343e, hVar.f16340b, hVar.f16344f);
                }
                r1.o oVar2 = new r1.o();
                oVar2.f13480a = str;
                oVar2.f13491m = r1.e0.l("video/mp2t");
                oVar2.f13492n = r1.e0.l("video/hevc");
                oVar2.f13489j = strA;
                oVar2.f13498u = kVarK.f16356e;
                oVar2.f13499v = kVarK.f16357f;
                oVar2.f13500w = kVarK.f16358g;
                oVar2.f13501x = kVarK.f16359h;
                oVar2.D = new r1.g(kVarK.f16362k, kVarK.l, kVarK.f16363m, null, kVarK.f16354c + 8, kVarK.f16355d + 8);
                oVar2.A = kVarK.f16360i;
                oVar2.f13494p = kVarK.f16361j;
                oVar2.E = kVarK.f16352a + 1;
                oVar2.f13495q = Collections.singletonList(bArr);
                r1.p pVar = new r1.p(oVar2);
                this.f14180c.g(pVar);
                int i13 = pVar.f13525q;
                a9.o.t(i13 != -1);
                iVar.n(i13);
                this.f14182e = true;
            }
        }
        t tVar4 = this.f14187j;
        boolean zB = tVar4.b(i11);
        u1.q qVar = this.f14190n;
        if (zB) {
            qVar.M(v1.o.p(tVar4.f14246d, (byte[]) tVar4.f14247e), (byte[]) tVar4.f14247e);
            qVar.P(5);
            iVar.a(j11, qVar);
        }
        t tVar5 = this.f14188k;
        if (tVar5.b(i11)) {
            qVar.M(v1.o.p(tVar5.f14246d, (byte[]) tVar5.f14247e), (byte[]) tVar5.f14247e);
            qVar.P(5);
            iVar.a(j11, qVar);
        }
    }

    public final void g(int i10, int i11, byte[] bArr) {
        o oVar = this.f14181d;
        if (oVar.f14171f) {
            int i12 = oVar.f14169d;
            int i13 = (i10 + 2) - i12;
            if (i13 < i11) {
                oVar.f14172g = (bArr[i13] & 128) != 0;
                oVar.f14171f = false;
            } else {
                oVar.f14169d = (i11 - i10) + i12;
            }
        }
        if (!this.f14182e) {
            this.f14184g.a(i10, i11, bArr);
            this.f14185h.a(i10, i11, bArr);
            this.f14186i.a(i10, i11, bArr);
        }
        this.f14187j.a(i10, i11, bArr);
        this.f14188k.a(i10, i11, bArr);
    }

    public final void h(int i10, int i11, long j10, long j11) {
        o oVar = this.f14181d;
        boolean z = this.f14182e;
        oVar.f14172g = false;
        oVar.f14173h = false;
        oVar.f14170e = j11;
        oVar.f14169d = 0;
        oVar.f14167b = j10;
        if (i11 >= 32 && i11 != 40) {
            if (oVar.f14174i && !oVar.f14175j) {
                if (z) {
                    oVar.a(i10);
                }
                oVar.f14174i = false;
            }
            if ((32 <= i11 && i11 <= 35) || i11 == 39) {
                oVar.f14173h = !oVar.f14175j;
                oVar.f14175j = true;
            }
        }
        boolean z4 = i11 >= 16 && i11 <= 21;
        oVar.f14168c = z4;
        oVar.f14171f = z4 || i11 <= 9;
        if (!this.f14182e) {
            this.f14184g.e(i11);
            this.f14185h.e(i11);
            this.f14186i.e(i11);
        }
        this.f14187j.e(i11);
        this.f14188k.e(i11);
    }
}
