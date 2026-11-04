package w;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i3 implements v.x {

    /* renamed from: a, reason: collision with root package name */
    public v.k f17105a;

    /* renamed from: b, reason: collision with root package name */
    public v.m f17106b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Toolbar f17107c;

    public i3(Toolbar toolbar) {
        this.f17107c = toolbar;
    }

    @Override // v.x
    public final boolean d() {
        return false;
    }

    @Override // v.x
    public final boolean e(v.m mVar) {
        Toolbar toolbar = this.f17107c;
        toolbar.c();
        ViewParent parent = toolbar.f993h.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f993h);
            }
            toolbar.addView(toolbar.f993h);
        }
        View actionView = mVar.getActionView();
        toolbar.f994i = actionView;
        this.f17106b = mVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f994i);
            }
            j3 j3Var = new j3();
            j3Var.f17132a = (toolbar.f998n & 112) | 8388611;
            j3Var.f17133b = 2;
            toolbar.f994i.setLayoutParams(j3Var);
            toolbar.addView(toolbar.f994i);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((j3) childAt.getLayoutParams()).f17133b != 2 && childAt != toolbar.f986a) {
                toolbar.removeViewAt(childCount);
                toolbar.G.add(childAt);
            }
        }
        toolbar.requestLayout();
        mVar.E = true;
        mVar.f16269n.p(false);
        KeyEvent.Callback callback = toolbar.f994i;
        if (callback instanceof u.b) {
            ((u.b) callback).d();
        }
        toolbar.v();
        return true;
    }

    @Override // v.x
    public final void f(Context context, v.k kVar) {
        v.m mVar;
        v.k kVar2 = this.f17105a;
        if (kVar2 != null && (mVar = this.f17106b) != null) {
            kVar2.d(mVar);
        }
        this.f17105a = kVar;
    }

    @Override // v.x
    public final void g() {
        if (this.f17106b != null) {
            v.k kVar = this.f17105a;
            if (kVar != null) {
                int size = kVar.f16238f.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (this.f17105a.getItem(i10) == this.f17106b) {
                        return;
                    }
                }
            }
            i(this.f17106b);
        }
    }

    @Override // v.x
    public final boolean i(v.m mVar) {
        Toolbar toolbar = this.f17107c;
        KeyEvent.Callback callback = toolbar.f994i;
        if (callback instanceof u.b) {
            ((u.b) callback).e();
        }
        toolbar.removeView(toolbar.f994i);
        toolbar.removeView(toolbar.f993h);
        toolbar.f994i = null;
        ArrayList arrayList = toolbar.G;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.f17106b = null;
        toolbar.requestLayout();
        mVar.E = false;
        mVar.f16269n.p(false);
        toolbar.v();
        return true;
    }

    @Override // v.x
    public final boolean j(v.d0 d0Var) {
        return false;
    }

    @Override // v.x
    public final void a(v.k kVar, boolean z) {
    }
}
