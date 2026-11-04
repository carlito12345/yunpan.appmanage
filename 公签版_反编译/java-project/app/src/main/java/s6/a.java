package s6;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.datepicker.m;
import x0.b1;

/* loaded from: classes.dex */
public abstract class a extends k0.a {

    /* renamed from: a, reason: collision with root package name */
    public m f14456a;

    public a() {
    }

    @Override // k0.a
    public boolean g(CoordinatorLayout coordinatorLayout, View view, int i10) {
        r(coordinatorLayout, view, i10);
        if (this.f14456a == null) {
            this.f14456a = new m(view);
        }
        m mVar = this.f14456a;
        View view2 = mVar.f3577a;
        mVar.f3578b = view2.getTop();
        mVar.f3579c = view2.getLeft();
        m mVar2 = this.f14456a;
        View view3 = mVar2.f3577a;
        b1.p(0 - (view3.getTop() - mVar2.f3578b), view3);
        b1.o(0 - (view3.getLeft() - mVar2.f3579c), view3);
        return true;
    }

    public void r(CoordinatorLayout coordinatorLayout, View view, int i10) {
        coordinatorLayout.p(i10, view);
    }

    public a(int i10) {
        super(0);
    }
}
