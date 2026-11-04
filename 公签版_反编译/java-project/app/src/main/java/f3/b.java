package f3;

import r1.f0;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final int f5458a;

    /* renamed from: b, reason: collision with root package name */
    public int f5459b;

    /* renamed from: c, reason: collision with root package name */
    public int f5460c;

    /* renamed from: d, reason: collision with root package name */
    public long f5461d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f5462e;

    /* renamed from: f, reason: collision with root package name */
    public final u1.q f5463f;

    /* renamed from: g, reason: collision with root package name */
    public final u1.q f5464g;

    /* renamed from: h, reason: collision with root package name */
    public int f5465h;

    /* renamed from: i, reason: collision with root package name */
    public int f5466i;

    public b(u1.q qVar, u1.q qVar2, boolean z) throws f0 {
        this.f5464g = qVar;
        this.f5463f = qVar2;
        this.f5462e = z;
        qVar2.O(12);
        this.f5458a = qVar2.F();
        qVar.O(12);
        this.f5466i = qVar.F();
        l2.b.b("first_chunk must be 1", qVar.o() == 1);
        this.f5459b = -1;
    }

    public final boolean a() {
        int i10 = this.f5459b + 1;
        this.f5459b = i10;
        if (i10 == this.f5458a) {
            return false;
        }
        boolean z = this.f5462e;
        u1.q qVar = this.f5463f;
        this.f5461d = z ? qVar.H() : qVar.D();
        if (this.f5459b == this.f5465h) {
            u1.q qVar2 = this.f5464g;
            this.f5460c = qVar2.F();
            qVar2.P(4);
            int i11 = this.f5466i - 1;
            this.f5466i = i11;
            this.f5465h = i11 > 0 ? qVar2.F() - 1 : -1;
        }
        return true;
    }
}
