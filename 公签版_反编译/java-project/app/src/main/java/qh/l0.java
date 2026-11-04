package qh;

/* loaded from: classes3.dex */
public final class l0 extends r0 {

    /* renamed from: d, reason: collision with root package name */
    public final kf.d f13325d;

    /* renamed from: e, reason: collision with root package name */
    public String f13326e;

    /* renamed from: f, reason: collision with root package name */
    public final kf.d f13327f;

    /* renamed from: g, reason: collision with root package name */
    public final kf.d f13328g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13329h;

    public l0() {
        super(1);
        int i10 = 12;
        boolean z = false;
        this.f13325d = new kf.d(i10, z);
        this.f13326e = null;
        this.f13327f = new kf.d(i10, z);
        this.f13328g = new kf.d(i10, z);
        this.f13329h = false;
    }

    @Override // qh.r0
    public final void g() {
        this.f13339b = -1;
        this.f13340c = -1;
        this.f13325d.reset();
        this.f13326e = null;
        this.f13327f.reset();
        this.f13328g.reset();
        this.f13329h = false;
    }

    public final String toString() {
        return "<!doctype " + this.f13325d.R() + ">";
    }
}
