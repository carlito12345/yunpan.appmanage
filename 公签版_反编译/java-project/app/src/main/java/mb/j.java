package mb;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final g f11079a;

    /* renamed from: b, reason: collision with root package name */
    public final a f11080b;

    /* renamed from: c, reason: collision with root package name */
    public b f11081c;

    /* renamed from: d, reason: collision with root package name */
    public b f11082d;

    /* renamed from: e, reason: collision with root package name */
    public b f11083e;

    /* renamed from: f, reason: collision with root package name */
    public b f11084f;

    /* renamed from: g, reason: collision with root package name */
    public b f11085g;

    public j(g gVar) {
        this.f11079a = gVar;
        this.f11080b = new a(gVar);
        b bVar = new b();
        bVar.f11058c = 0;
        bVar.f11057b = 0;
        bVar.f11056a = 0;
        this.f11081c = bVar;
        b bVar2 = new b();
        bVar2.f11058c = 0;
        bVar2.f11057b = 0;
        bVar2.f11056a = 0;
        this.f11082d = bVar2;
    }

    public final boolean a() {
        return this.f11081c.f11056a != this.f11082d.f11056a;
    }
}
