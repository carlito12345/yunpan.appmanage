package x0;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public class e2 extends d2 {

    /* renamed from: n, reason: collision with root package name */
    public p0.c f17978n;

    /* renamed from: o, reason: collision with root package name */
    public p0.c f17979o;

    /* renamed from: p, reason: collision with root package name */
    public p0.c f17980p;

    public e2(j2 j2Var, WindowInsets windowInsets) {
        super(j2Var, windowInsets);
        this.f17978n = null;
        this.f17979o = null;
        this.f17980p = null;
    }

    @Override // x0.g2
    public p0.c g() {
        if (this.f17979o == null) {
            this.f17979o = p0.c.c(this.f17965c.getMandatorySystemGestureInsets());
        }
        return this.f17979o;
    }

    @Override // x0.g2
    public p0.c i() {
        if (this.f17978n == null) {
            this.f17978n = p0.c.c(this.f17965c.getSystemGestureInsets());
        }
        return this.f17978n;
    }

    @Override // x0.g2
    public p0.c k() {
        if (this.f17980p == null) {
            this.f17980p = p0.c.c(this.f17965c.getTappableElementInsets());
        }
        return this.f17980p;
    }

    @Override // x0.b2, x0.g2
    public j2 l(int i10, int i11, int i12, int i13) {
        return j2.h(null, this.f17965c.inset(i10, i11, i12, i13));
    }

    @Override // x0.c2, x0.g2
    public void q(p0.c cVar) {
    }
}
