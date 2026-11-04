package l2;

/* loaded from: classes.dex */
public final class y implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final sb.e f10547a;

    /* renamed from: b, reason: collision with root package name */
    public final sb.e f10548b;

    /* renamed from: c, reason: collision with root package name */
    public long f10549c;

    public y(long j10, long[] jArr, long[] jArr2) {
        a9.o.k(jArr.length == jArr2.length);
        int length = jArr2.length;
        if (length <= 0 || jArr2[0] <= 0) {
            this.f10547a = new sb.e(length);
            this.f10548b = new sb.e(length);
        } else {
            int i10 = length + 1;
            sb.e eVar = new sb.e(i10);
            this.f10547a = eVar;
            sb.e eVar2 = new sb.e(i10);
            this.f10548b = eVar2;
            eVar.a(0L);
            eVar2.a(0L);
        }
        this.f10547a.b(jArr);
        this.f10548b.b(jArr2);
        this.f10549c = j10;
    }

    @Override // l2.c0
    public final boolean c() {
        return this.f10548b.f14472b > 0;
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        sb.e eVar = this.f10548b;
        if (eVar.f14472b == 0) {
            d0 d0Var = d0.f10441c;
            return new b0(d0Var, d0Var);
        }
        int iB = u1.f0.b(eVar, j10);
        long jC = eVar.c(iB);
        sb.e eVar2 = this.f10547a;
        d0 d0Var2 = new d0(jC, eVar2.c(iB));
        if (jC == j10 || iB == eVar.f14472b - 1) {
            return new b0(d0Var2, d0Var2);
        }
        int i10 = iB + 1;
        return new b0(d0Var2, new d0(eVar.c(i10), eVar2.c(i10)));
    }

    @Override // l2.c0
    public final long h() {
        return this.f10549c;
    }

    public final void i(long j10, long j11) {
        sb.e eVar = this.f10548b;
        int i10 = eVar.f14472b;
        sb.e eVar2 = this.f10547a;
        if (i10 == 0 && j10 > 0) {
            eVar2.a(0L);
            eVar.a(0L);
        }
        eVar2.a(j11);
        eVar.a(j10);
    }
}
