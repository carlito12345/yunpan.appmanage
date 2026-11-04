package qh;

/* loaded from: classes3.dex */
public class j0 extends r0 {

    /* renamed from: d, reason: collision with root package name */
    public final kf.d f13291d;

    public j0() {
        super(5);
        this.f13291d = new kf.d(12, false);
    }

    @Override // qh.r0
    public final void g() {
        this.f13339b = -1;
        this.f13340c = -1;
        this.f13291d.reset();
    }

    public String toString() {
        return this.f13291d.R();
    }

    public j0(j0 j0Var) {
        super(5);
        kf.d dVar = new kf.d(12, false);
        this.f13291d = dVar;
        this.f13339b = j0Var.f13339b;
        this.f13340c = j0Var.f13340c;
        String strR = j0Var.f13291d.R();
        dVar.reset();
        dVar.f10286b = strR;
    }
}
