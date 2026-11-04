package x0;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public class c2 extends b2 {

    /* renamed from: m, reason: collision with root package name */
    public p0.c f17974m;

    public c2(j2 j2Var, WindowInsets windowInsets) {
        super(j2Var, windowInsets);
        this.f17974m = null;
    }

    @Override // x0.g2
    public j2 b() {
        return j2.h(null, this.f17965c.consumeStableInsets());
    }

    @Override // x0.g2
    public j2 c() {
        return j2.h(null, this.f17965c.consumeSystemWindowInsets());
    }

    @Override // x0.g2
    public final p0.c h() {
        if (this.f17974m == null) {
            this.f17974m = p0.c.b(this.f17965c.getStableInsetLeft(), this.f17965c.getStableInsetTop(), this.f17965c.getStableInsetRight(), this.f17965c.getStableInsetBottom());
        }
        return this.f17974m;
    }

    @Override // x0.g2
    public boolean m() {
        return this.f17965c.isConsumed();
    }

    @Override // x0.g2
    public void q(p0.c cVar) {
        this.f17974m = cVar;
    }
}
