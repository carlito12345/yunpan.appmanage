package q;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import x0.b1;

/* loaded from: classes.dex */
public final class k0 extends com.bumptech.glide.d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f12848e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ m0 f12849f;

    public /* synthetic */ k0(m0 m0Var, int i10) {
        this.f12848e = i10;
        this.f12849f = m0Var;
    }

    @Override // x0.m1
    public final void c() {
        View view;
        switch (this.f12848e) {
            case 0:
                m0 m0Var = this.f12849f;
                if (m0Var.f12877p && (view = m0Var.f12870h) != null) {
                    view.setTranslationY(0.0f);
                    m0Var.f12867e.setTranslationY(0.0f);
                }
                m0Var.f12867e.setVisibility(8);
                m0Var.f12867e.setTransitioning(false);
                m0Var.f12880t = null;
                kf.d dVar = m0Var.l;
                if (dVar != null) {
                    dVar.F(m0Var.f12873k);
                    m0Var.f12873k = null;
                    m0Var.l = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = m0Var.f12866d;
                if (actionBarOverlayLayout != null) {
                    b1.v(actionBarOverlayLayout);
                    break;
                }
                break;
            default:
                m0 m0Var2 = this.f12849f;
                m0Var2.f12880t = null;
                m0Var2.f12867e.requestLayout();
                break;
        }
    }
}
