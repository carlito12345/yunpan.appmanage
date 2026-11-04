package n2;

import a9.o;
import java.math.RoundingMode;
import l2.b0;
import l2.d0;
import l2.j0;
import u1.f0;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final d f11277a;

    /* renamed from: b, reason: collision with root package name */
    public final j0 f11278b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11279c;

    /* renamed from: d, reason: collision with root package name */
    public final int f11280d;

    /* renamed from: e, reason: collision with root package name */
    public final long f11281e;

    /* renamed from: f, reason: collision with root package name */
    public int f11282f;

    /* renamed from: g, reason: collision with root package name */
    public int f11283g;

    /* renamed from: h, reason: collision with root package name */
    public int f11284h;

    /* renamed from: i, reason: collision with root package name */
    public int f11285i;

    /* renamed from: j, reason: collision with root package name */
    public int f11286j;

    /* renamed from: k, reason: collision with root package name */
    public int f11287k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public long[] f11288m;

    /* renamed from: n, reason: collision with root package name */
    public int[] f11289n;

    public e(int i10, d dVar, j0 j0Var) {
        this.f11277a = dVar;
        int iA = dVar.a();
        boolean z = true;
        if (iA != 1 && iA != 2) {
            z = false;
        }
        o.k(z);
        int i11 = (((i10 % 10) + 48) << 8) | ((i10 / 10) + 48);
        this.f11279c = (iA == 2 ? 1667497984 : 1651965952) | i11;
        int i12 = dVar.f11274d;
        long j10 = dVar.f11272b * 1000000;
        long j11 = dVar.f11273c;
        String str = f0.f15206a;
        this.f11281e = f0.M(i12, j10, j11, RoundingMode.DOWN);
        this.f11278b = j0Var;
        this.f11280d = iA == 2 ? i11 | 1650720768 : -1;
        this.l = -1L;
        this.f11288m = new long[512];
        this.f11289n = new int[512];
        this.f11282f = i12;
    }

    public final d0 a(int i10) {
        return new d0(((this.f11281e * 1) / this.f11282f) * this.f11289n[i10], this.f11288m[i10]);
    }

    public final b0 b(long j10) {
        if (this.f11287k == 0) {
            d0 d0Var = new d0(0L, this.l);
            return new b0(d0Var, d0Var);
        }
        int i10 = (int) (j10 / ((this.f11281e * 1) / this.f11282f));
        int iC = f0.c(this.f11289n, i10, true, true);
        if (this.f11289n[iC] == i10) {
            d0 d0VarA = a(iC);
            return new b0(d0VarA, d0VarA);
        }
        d0 d0VarA2 = a(iC);
        int i11 = iC + 1;
        return i11 < this.f11288m.length ? new b0(d0VarA2, a(i11)) : new b0(d0VarA2, d0VarA2);
    }
}
