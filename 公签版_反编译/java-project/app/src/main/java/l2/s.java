package l2;

/* loaded from: classes.dex */
public class s implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10514a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10515b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10516c;

    public /* synthetic */ s(int i10, long j10, Object obj) {
        this.f10514a = i10;
        this.f10516c = obj;
        this.f10515b = j10;
    }

    @Override // l2.c0
    public final boolean c() {
        switch (this.f10514a) {
            case 0:
                return true;
            case 1:
                return false;
            default:
                return true;
        }
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        switch (this.f10514a) {
        }
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        switch (this.f10514a) {
            case 0:
                t tVar = (t) this.f10516c;
                tVar.f10527k.getClass();
                kf.d dVar = tVar.f10527k;
                long[] jArr = (long[]) dVar.f10286b;
                int iD = u1.f0.d(jArr, u1.f0.h((tVar.f10521e * j10) / 1000000, 0L, tVar.f10526j - 1), false);
                long j11 = iD == -1 ? 0L : jArr[iD];
                long[] jArr2 = (long[]) dVar.f10287c;
                long j12 = iD != -1 ? jArr2[iD] : 0L;
                int i10 = tVar.f10521e;
                long j13 = (j11 * 1000000) / i10;
                long j14 = this.f10515b;
                d0 d0Var = new d0(j13, j12 + j14);
                if (j13 == j10 || iD == jArr.length - 1) {
                    return new b0(d0Var, d0Var);
                }
                int i11 = iD + 1;
                return new b0(d0Var, new d0((jArr[i11] * 1000000) / i10, j14 + jArr2[i11]));
            case 1:
                return (b0) this.f10516c;
            default:
                n2.b bVar = (n2.b) this.f10516c;
                b0 b0VarB = bVar.f11261i[0].b(j10);
                int i12 = 1;
                while (true) {
                    n2.e[] eVarArr = bVar.f11261i;
                    if (i12 >= eVarArr.length) {
                        return b0VarB;
                    }
                    b0 b0VarB2 = eVarArr[i12].b(j10);
                    if (b0VarB2.f10421a.f10443b < b0VarB.f10421a.f10443b) {
                        b0VarB = b0VarB2;
                    }
                    i12++;
                }
        }
    }

    @Override // l2.c0
    public final long h() {
        switch (this.f10514a) {
        }
        return this.f10515b;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s(long j10) {
        this(j10, 0L);
        this.f10514a = 1;
    }

    public s(long j10, long j11) {
        this.f10514a = 1;
        this.f10515b = j10;
        d0 d0Var = j11 == 0 ? d0.f10441c : new d0(0L, j11);
        this.f10516c = new b0(d0Var, d0Var);
    }
}
