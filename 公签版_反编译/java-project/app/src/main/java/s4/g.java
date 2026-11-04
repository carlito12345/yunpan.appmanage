package s4;

/* loaded from: classes.dex */
public final class g extends l {

    /* renamed from: e, reason: collision with root package name */
    public final x4.a f14303e;

    /* renamed from: f, reason: collision with root package name */
    public int f14304f;

    /* renamed from: g, reason: collision with root package name */
    public int f14305g;

    public g(j jVar, w4.p pVar, w4.l lVar, x4.a aVar) {
        super(jVar, pVar, lVar);
        if (aVar == null) {
            throw new NullPointerException("constant == null");
        }
        this.f14303e = aVar;
        this.f14304f = -1;
        this.f14305g = -1;
    }

    @Override // s4.h
    public final String a() {
        return this.f14303e.a();
    }

    @Override // s4.h
    public final String c() {
        if (this.f14304f < 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder(20);
        sb2.append(this.f14303e.d());
        sb2.append('@');
        int i10 = this.f14304f;
        if (i10 < 65536) {
            sb2.append(qf.c.e0(i10));
        } else {
            sb2.append(qf.c.f0(i10));
        }
        return sb2.toString();
    }

    @Override // s4.h
    public final String d() {
        x4.a aVar = this.f14303e;
        return aVar instanceof x4.t ? ((x4.t) aVar).e() : aVar.a();
    }

    @Override // s4.h
    public final h i(j jVar) {
        g gVar = new g(jVar, this.f14308c, this.f14309d, this.f14303e);
        int i10 = this.f14304f;
        if (i10 >= 0) {
            gVar.o(i10);
        }
        int i11 = this.f14305g;
        if (i11 >= 0) {
            gVar.n(i11);
        }
        return gVar;
    }

    @Override // s4.h
    public final h k(w4.l lVar) {
        g gVar = new g(this.f14307b, this.f14308c, lVar, this.f14303e);
        int i10 = this.f14304f;
        if (i10 >= 0) {
            gVar.o(i10);
        }
        int i11 = this.f14305g;
        if (i11 >= 0) {
            gVar.n(i11);
        }
        return gVar;
    }

    public final int m() {
        int i10 = this.f14304f;
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalStateException("index not yet set for " + this.f14303e);
    }

    public final void n(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("index < 0");
        }
        if (this.f14305g >= 0) {
            throw new IllegalStateException("class index already set");
        }
        this.f14305g = i10;
    }

    public final void o(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("index < 0");
        }
        if (this.f14304f >= 0) {
            throw new IllegalStateException("index already set");
        }
        this.f14304f = i10;
    }
}
