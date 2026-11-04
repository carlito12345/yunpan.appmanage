package t3;

import java.math.RoundingMode;
import l2.b0;
import l2.c0;
import l2.d0;
import u1.f0;

/* loaded from: classes.dex */
public final class g implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final e f14751a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14752b;

    /* renamed from: c, reason: collision with root package name */
    public final long f14753c;

    /* renamed from: d, reason: collision with root package name */
    public final long f14754d;

    /* renamed from: e, reason: collision with root package name */
    public final long f14755e;

    public g(e eVar, int i10, long j10, long j11) {
        this.f14751a = eVar;
        this.f14752b = i10;
        this.f14753c = j10;
        long j12 = (j11 - j10) / eVar.f14747d;
        this.f14754d = j12;
        this.f14755e = i(j12);
    }

    @Override // l2.c0
    public final boolean c() {
        return true;
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        e eVar = this.f14751a;
        long j11 = this.f14754d;
        long jH = f0.h((eVar.f14746c * j10) / (this.f14752b * 1000000), 0L, j11 - 1);
        long j12 = this.f14753c;
        long jI = i(jH);
        d0 d0Var = new d0(jI, (eVar.f14747d * jH) + j12);
        if (jI >= j10 || jH == j11 - 1) {
            return new b0(d0Var, d0Var);
        }
        long j13 = jH + 1;
        return new b0(d0Var, new d0(i(j13), (eVar.f14747d * j13) + j12));
    }

    @Override // l2.c0
    public final long h() {
        return this.f14755e;
    }

    public final long i(long j10) {
        long j11 = j10 * this.f14752b;
        long j12 = this.f14751a.f14746c;
        String str = f0.f15206a;
        return f0.M(j11, 1000000L, j12, RoundingMode.DOWN);
    }
}
