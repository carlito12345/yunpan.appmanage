package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.Iterator;
import net.engio.mbassy.listener.MessageHandler;
import org.simpleframework.xml.strategy.Name;
import x0.j2;

/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1157a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1158b;

    /* renamed from: c, reason: collision with root package name */
    public View.OnApplyWindowInsetsListener f1159c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1160d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        String str;
        super(context, attributeSet, 0);
        ue.d.e(context, "context");
        this.f1157a = new ArrayList();
        this.f1158b = new ArrayList();
        this.f1160d = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k1.a.f10016b, 0, 0);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(0);
                str = "android:name";
            } else {
                str = Name.LABEL;
            }
            typedArrayObtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + '\"');
        }
    }

    public final void a(View view) {
        if (this.f1158b.contains(view)) {
            this.f1157a.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        ue.d.e(view, "child");
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof Fragment ? (Fragment) tag : null) != null) {
            super.addView(view, i10, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        ue.d.e(windowInsets, "insets");
        j2 j2VarH = j2.h(null, windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f1159c;
        j2 j2VarH2 = onApplyWindowInsetsListener != null ? j2.h(null, n0.a(onApplyWindowInsetsListener, this, windowInsets)) : x0.b1.q(this, j2VarH);
        ue.d.d(j2VarH2, "if (applyWindowInsetsLis…, insetsCompat)\n        }");
        if (!j2VarH2.f18006a.m()) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                x0.b1.b(getChildAt(i10), j2VarH2);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        ue.d.e(canvas, "canvas");
        if (this.f1160d) {
            Iterator it = this.f1157a.iterator();
            while (it.hasNext()) {
                super.drawChild(canvas, (View) it.next(), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j10) {
        ue.d.e(canvas, "canvas");
        ue.d.e(view, "child");
        if (this.f1160d) {
            ArrayList arrayList = this.f1157a;
            if (!arrayList.isEmpty() && arrayList.contains(view)) {
                return false;
            }
        }
        return super.drawChild(canvas, view, j10);
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        ue.d.e(view, "view");
        this.f1158b.remove(view);
        if (this.f1157a.remove(view)) {
            this.f1160d = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends Fragment> F getFragment() {
        j0 j0Var;
        Fragment fragment;
        d1 d1VarP;
        View view = this;
        while (true) {
            j0Var = null;
            if (view == null) {
                fragment = null;
                break;
            }
            Object tag = view.getTag(R.id.fragment_container_view_tag);
            fragment = tag instanceof Fragment ? (Fragment) tag : null;
            if (fragment != null) {
                break;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        if (fragment == null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                if (context instanceof j0) {
                    j0Var = (j0) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (j0Var == null) {
                throw new IllegalStateException("View " + this + " is not within a subclass of FragmentActivity.");
            }
            d1VarP = j0Var.p();
        } else {
            if (!fragment.isAdded()) {
                throw new IllegalStateException("The Fragment " + fragment + " that owns View " + this + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
            }
            d1VarP = fragment.getChildFragmentManager();
        }
        return (F) d1VarP.B(getId());
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        ue.d.e(windowInsets, "insets");
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                super.removeAllViewsInLayout();
                return;
            } else {
                View childAt = getChildAt(childCount);
                ue.d.d(childAt, "view");
                a(childAt);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        ue.d.e(view, "view");
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i10) {
        View childAt = getChildAt(i10);
        ue.d.d(childAt, "view");
        a(childAt);
        super.removeViewAt(i10);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        ue.d.e(view, "view");
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i10, int i11) {
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            View childAt = getChildAt(i13);
            ue.d.d(childAt, "view");
            a(childAt);
        }
        super.removeViews(i10, i11);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i10, int i11) {
        int i12 = i10 + i11;
        for (int i13 = i10; i13 < i12; i13++) {
            View childAt = getChildAt(i13);
            ue.d.d(childAt, "view");
            a(childAt);
        }
        super.removeViewsInLayout(i10, i11);
    }

    public final void setDrawDisappearingViewsLast(boolean z) {
        this.f1160d = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT >= 18) {
            throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
        }
        super.setLayoutTransition(layoutTransition);
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        ue.d.e(onApplyWindowInsetsListener, MessageHandler.Properties.Listener);
        this.f1159c = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        ue.d.e(view, "view");
        if (view.getParent() == this) {
            this.f1158b.add(view);
        }
        super.startViewTransition(view);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentContainerView(Context context, AttributeSet attributeSet, d1 d1Var) {
        View view;
        super(context, attributeSet);
        ue.d.e(context, "context");
        ue.d.e(attributeSet, "attrs");
        ue.d.e(d1Var, "fm");
        this.f1157a = new ArrayList();
        this.f1158b = new ArrayList();
        this.f1160d = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k1.a.f10016b, 0, 0);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(0) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(1);
        typedArrayObtainStyledAttributes.recycle();
        int id2 = getId();
        Fragment fragmentB = d1Var.B(id2);
        if (classAttribute != null && fragmentB == null) {
            if (id2 == -1) {
                throw new IllegalStateException(g.b.A("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
            }
            w0 w0VarE = d1Var.E();
            context.getClassLoader();
            Fragment fragmentInstantiate = Fragment.instantiate(w0VarE.f1416a.f1246t.f1360b, classAttribute, null);
            ue.d.d(fragmentInstantiate, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            fragmentInstantiate.mFragmentId = id2;
            fragmentInstantiate.mContainerId = id2;
            fragmentInstantiate.mTag = string;
            fragmentInstantiate.mFragmentManager = d1Var;
            fragmentInstantiate.mHost = d1Var.f1246t;
            fragmentInstantiate.onInflate(context, attributeSet, (Bundle) null);
            a aVar = new a(d1Var);
            aVar.f1174o = true;
            fragmentInstantiate.mContainer = this;
            aVar.f(getId(), fragmentInstantiate, string, 1);
            if (!aVar.f1167g) {
                aVar.f1175p.z(aVar, true);
            } else {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
        }
        Iterator it = d1Var.f1231c.d().iterator();
        while (it.hasNext()) {
            k1 k1Var = (k1) it.next();
            Fragment fragment = k1Var.f1320c;
            if (fragment.mContainerId == getId() && (view = fragment.mView) != null && view.getParent() == null) {
                fragment.mContainer = this;
                k1Var.a();
            }
        }
    }
}
