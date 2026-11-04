package e3;

import l2.b0;
import l2.d0;
import u1.f0;

/* loaded from: classes.dex */
public final class j implements i {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f4754a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f4755b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4756c;

    /* renamed from: d, reason: collision with root package name */
    public final long f4757d;

    /* renamed from: e, reason: collision with root package name */
    public final long f4758e;

    /* renamed from: f, reason: collision with root package name */
    public final int f4759f;

    public j(long[] jArr, long[] jArr2, long j10, long j11, long j12, int i10) {
        this.f4754a = jArr;
        this.f4755b = jArr2;
        this.f4756c = j10;
        this.f4757d = j11;
        this.f4758e = j12;
        this.f4759f = i10;
    }

    @Override // e3.i
    public final long a() {
        return this.f4758e;
    }

    @Override // e3.i
    public final long b() {
        return this.f4757d;
    }

    @Override // l2.c0
    public final boolean c() {
        return true;
    }

    @Override // e3.i
    public final long d(long j10) {
        return this.f4754a[f0.d(this.f4755b, j10, true)];
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        long[] jArr = this.f4754a;
        int iD = f0.d(jArr, j10, true);
        long j11 = jArr[iD];
        long[] jArr2 = this.f4755b;
        d0 d0Var = new d0(j11, jArr2[iD]);
        if (j11 >= j10 || iD == jArr.length - 1) {
            return new b0(d0Var, d0Var);
        }
        int i10 = iD + 1;
        return new b0(d0Var, new d0(jArr[i10], jArr2[i10]));
    }

    @Override // e3.i
    public final int g() {
        return this.f4759f;
    }

    @Override // l2.c0
    public final long h() {
        return this.f4756c;
    }
}
