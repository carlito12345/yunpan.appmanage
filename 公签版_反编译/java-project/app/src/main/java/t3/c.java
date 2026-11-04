package t3;

import f2.u0;
import java.math.RoundingMode;
import l2.j0;
import l2.l;
import r1.e0;
import r1.f0;
import r1.o;
import r1.p;

/* loaded from: classes.dex */
public final class c implements b {

    /* renamed from: a, reason: collision with root package name */
    public final u0 f14729a;

    /* renamed from: b, reason: collision with root package name */
    public final j0 f14730b;

    /* renamed from: c, reason: collision with root package name */
    public final e f14731c;

    /* renamed from: d, reason: collision with root package name */
    public final p f14732d;

    /* renamed from: e, reason: collision with root package name */
    public final int f14733e;

    /* renamed from: f, reason: collision with root package name */
    public long f14734f;

    /* renamed from: g, reason: collision with root package name */
    public int f14735g;

    /* renamed from: h, reason: collision with root package name */
    public long f14736h;

    public c(u0 u0Var, j0 j0Var, e eVar, String str, int i10) throws f0 {
        this.f14729a = u0Var;
        this.f14730b = j0Var;
        this.f14731c = eVar;
        int i11 = eVar.f14748e;
        int i12 = eVar.f14745b;
        int i13 = (i11 * i12) / 8;
        int i14 = eVar.f14747d;
        if (i14 != i13) {
            throw f0.a(null, "Expected block size: " + i13 + "; got: " + i14);
        }
        int i15 = eVar.f14746c;
        int i16 = i15 * i13;
        int i17 = i16 * 8;
        int iMax = Math.max(i13, i16 / 10);
        this.f14733e = iMax;
        o oVar = new o();
        oVar.f13491m = e0.l("audio/wav");
        oVar.f13492n = e0.l(str);
        oVar.f13487h = i17;
        oVar.f13488i = i17;
        oVar.f13493o = iMax;
        oVar.F = i12;
        oVar.G = i15;
        oVar.H = i10;
        this.f14732d = new p(oVar);
    }

    @Override // t3.b
    public final boolean a(l lVar, long j10) {
        int i10;
        int i11;
        long j11 = j10;
        while (j11 > 0 && (i10 = this.f14735g) < (i11 = this.f14733e)) {
            int iE = this.f14730b.e(lVar, (int) Math.min(i11 - i10, j11), true);
            if (iE == -1) {
                j11 = 0;
            } else {
                this.f14735g += iE;
                j11 -= iE;
            }
        }
        e eVar = this.f14731c;
        int i12 = this.f14735g;
        int i13 = eVar.f14747d;
        int i14 = i12 / i13;
        if (i14 > 0) {
            long j12 = this.f14734f;
            long j13 = this.f14736h;
            long j14 = eVar.f14746c;
            String str = u1.f0.f15206a;
            long jM = j12 + u1.f0.M(j13, 1000000L, j14, RoundingMode.DOWN);
            int i15 = i14 * i13;
            int i16 = this.f14735g - i15;
            this.f14730b.b(jM, 1, i15, i16, null);
            this.f14736h += i14;
            this.f14735g = i16;
        }
        return j11 <= 0;
    }

    @Override // t3.b
    public final void b(long j10) {
        this.f14734f = j10;
        this.f14735g = 0;
        this.f14736h = 0L;
    }

    @Override // t3.b
    public final void c(int i10, long j10) {
        g gVar = new g(this.f14731c, 1, i10, j10);
        this.f14729a.s(gVar);
        j0 j0Var = this.f14730b;
        j0Var.g(this.f14732d);
        j0Var.d(gVar.f14755e);
    }
}
