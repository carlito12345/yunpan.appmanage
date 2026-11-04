package i3;

import ha.p7;
import java.util.List;

/* loaded from: classes.dex */
public final class c extends x1.h implements d {

    /* renamed from: e, reason: collision with root package name */
    public d f8491e;

    /* renamed from: f, reason: collision with root package name */
    public long f8492f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f8493g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f8494h;

    public c() {
    }

    @Override // i3.d
    public final int d(long j10) {
        d dVar = this.f8491e;
        dVar.getClass();
        return dVar.d(j10 - this.f8492f);
    }

    @Override // i3.d
    public final long e(int i10) {
        d dVar = this.f8491e;
        dVar.getClass();
        return dVar.e(i10) + this.f8492f;
    }

    @Override // x1.h
    public final void g() {
        this.f567b = 0;
        this.f18092c = 0L;
        this.f18093d = false;
        this.f8491e = null;
    }

    @Override // i3.d
    public final List h(long j10) {
        d dVar = this.f8491e;
        dVar.getClass();
        return dVar.h(j10 - this.f8492f);
    }

    @Override // x1.h
    public final void i() {
        switch (this.f8493g) {
            case 0:
                ((g2.b) this.f8494h).o(this);
                break;
            default:
                p7 p7Var = (p7) this.f8494h;
                p7Var.getClass();
                j3.i iVar = (j3.i) p7Var.f7577b;
                iVar.getClass();
                g();
                iVar.f9735b.add(this);
                break;
        }
    }

    @Override // i3.d
    public final int j() {
        d dVar = this.f8491e;
        dVar.getClass();
        return dVar.j();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(g2.b bVar) {
        this();
        this.f8493g = 0;
        this.f8494h = bVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(p7 p7Var) {
        this();
        this.f8493g = 1;
        this.f8494h = p7Var;
    }
}
