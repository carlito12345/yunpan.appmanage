package qh;

/* loaded from: classes3.dex */
public final class k0 extends r0 {

    /* renamed from: d, reason: collision with root package name */
    public final kf.d f13292d;

    public k0() {
        super(4);
        this.f13292d = new kf.d(12, false);
    }

    @Override // qh.r0
    public final void g() {
        this.f13339b = -1;
        this.f13340c = -1;
        this.f13292d.reset();
    }

    public final void h(char c7) {
        this.f13292d.m(c7);
    }

    public final String toString() {
        return "<!--" + this.f13292d.R() + "-->";
    }
}
