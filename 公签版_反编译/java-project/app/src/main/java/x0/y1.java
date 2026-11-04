package x0;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public class y1 extends a2 {

    /* renamed from: c, reason: collision with root package name */
    public final WindowInsets.Builder f18072c;

    public y1() {
        this.f18072c = new WindowInsets.Builder();
    }

    @Override // x0.a2
    public j2 b() {
        a();
        j2 j2VarH = j2.h(null, this.f18072c.build());
        j2VarH.f18006a.o(this.f17952b);
        return j2VarH;
    }

    @Override // x0.a2
    public void d(p0.c cVar) {
        this.f18072c.setMandatorySystemGestureInsets(cVar.d());
    }

    @Override // x0.a2
    public void e(p0.c cVar) {
        this.f18072c.setStableInsets(cVar.d());
    }

    @Override // x0.a2
    public void f(p0.c cVar) {
        this.f18072c.setSystemGestureInsets(cVar.d());
    }

    @Override // x0.a2
    public void g(p0.c cVar) {
        this.f18072c.setSystemWindowInsets(cVar.d());
    }

    @Override // x0.a2
    public void h(p0.c cVar) {
        this.f18072c.setTappableElementInsets(cVar.d());
    }

    public y1(j2 j2Var) {
        WindowInsets.Builder builder;
        super(j2Var);
        WindowInsets windowInsetsG = j2Var.g();
        if (windowInsetsG != null) {
            builder = new WindowInsets.Builder(windowInsetsG);
        } else {
            builder = new WindowInsets.Builder();
        }
        this.f18072c = builder;
    }
}
