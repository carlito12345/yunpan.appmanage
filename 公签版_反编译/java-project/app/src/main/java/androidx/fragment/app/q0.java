package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final class q0 implements LayoutInflater.Factory2 {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f1369a;

    public q0(d1 d1Var) {
        this.f1369a = d1Var;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        k1 k1VarF;
        boolean zEquals = FragmentContainerView.class.getName().equals(str);
        d1 d1Var = this.f1369a;
        if (zEquals) {
            return new FragmentContainerView(context, attributeSet, d1Var);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, Name.LABEL);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k1.a.f10015a);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        String string = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue != null) {
            try {
                zIsAssignableFrom = Fragment.class.isAssignableFrom(w0.a(context.getClassLoader(), attributeValue));
            } catch (ClassNotFoundException unused) {
                zIsAssignableFrom = false;
            }
            if (zIsAssignableFrom) {
                int id2 = view != null ? view.getId() : 0;
                if (id2 == -1 && resourceId == -1 && string == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                Fragment fragmentB = resourceId != -1 ? d1Var.B(resourceId) : null;
                if (fragmentB == null && string != null) {
                    fragmentB = d1Var.C(string);
                }
                if (fragmentB == null && id2 != -1) {
                    fragmentB = d1Var.B(id2);
                }
                if (fragmentB == null) {
                    w0 w0VarE = d1Var.E();
                    context.getClassLoader();
                    fragmentB = Fragment.instantiate(w0VarE.f1416a.f1246t.f1360b, attributeValue, null);
                    fragmentB.mFromLayout = true;
                    fragmentB.mFragmentId = resourceId != 0 ? resourceId : id2;
                    fragmentB.mContainerId = id2;
                    fragmentB.mTag = string;
                    fragmentB.mInLayout = true;
                    fragmentB.mFragmentManager = d1Var;
                    o0 o0Var = d1Var.f1246t;
                    fragmentB.mHost = o0Var;
                    fragmentB.onInflate((Context) o0Var.f1360b, attributeSet, fragmentB.mSavedFragmentState);
                    k1VarF = d1Var.a(fragmentB);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        fragmentB.toString();
                        Integer.toHexString(resourceId);
                    }
                } else {
                    if (fragmentB.mInLayout) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id2) + " with another fragment for " + attributeValue);
                    }
                    fragmentB.mInLayout = true;
                    fragmentB.mFragmentManager = d1Var;
                    o0 o0Var2 = d1Var.f1246t;
                    fragmentB.mHost = o0Var2;
                    fragmentB.onInflate((Context) o0Var2.f1360b, attributeSet, fragmentB.mSavedFragmentState);
                    k1VarF = d1Var.f(fragmentB);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        fragmentB.toString();
                        Integer.toHexString(resourceId);
                    }
                }
                ViewGroup viewGroup = (ViewGroup) view;
                l1.c cVar = l1.d.f10386a;
                l1.d.b(new l1.a(fragmentB, viewGroup, 1));
                l1.d.a(fragmentB).getClass();
                fragmentB.mContainer = viewGroup;
                k1VarF.i();
                k1VarF.h();
                View view2 = fragmentB.mView;
                if (view2 == null) {
                    throw new IllegalStateException(g.b.A("Fragment ", attributeValue, " did not create a view."));
                }
                if (resourceId != 0) {
                    view2.setId(resourceId);
                }
                if (fragmentB.mView.getTag() == null) {
                    fragmentB.mView.setTag(string);
                }
                fragmentB.mView.addOnAttachStateChangeListener(new p0(this, k1VarF));
                return fragmentB.mView;
            }
        }
        return null;
    }
}
