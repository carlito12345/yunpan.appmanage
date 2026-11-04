package h4;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import x0.b1;

/* loaded from: classes.dex */
public final class g extends t {
    public static final androidx.leanback.widget.a0 A;
    public static final androidx.leanback.widget.a0 B;
    public static final androidx.leanback.widget.a0 C;
    public static final androidx.leanback.widget.a0 D;
    public static final androidx.leanback.widget.a0 E;
    public static final String[] z = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    static {
        new c();
        A = new androidx.leanback.widget.a0(4);
        B = new androidx.leanback.widget.a0(5);
        C = new androidx.leanback.widget.a0(6);
        D = new androidx.leanback.widget.a0(7);
        E = new androidx.leanback.widget.a0(8);
    }

    public static void H(a0 a0Var) {
        View view = a0Var.f6414b;
        if (!b1.m(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        HashMap map = a0Var.f6413a;
        map.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        map.put("android:changeBounds:parent", a0Var.f6414b.getParent());
    }

    @Override // h4.t
    public final void d(a0 a0Var) {
        H(a0Var);
    }

    @Override // h4.t
    public final void g(a0 a0Var) {
        H(a0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // h4.t
    public final Animator k(ViewGroup viewGroup, a0 a0Var, a0 a0Var2) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i10;
        g gVar;
        ObjectAnimator objectAnimatorO;
        if (a0Var == null || a0Var2 == null) {
            return null;
        }
        HashMap map = a0Var.f6413a;
        HashMap map2 = a0Var2.f6413a;
        ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        Rect rect = (Rect) map.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) map2.get("android:changeBounds:bounds");
        int i11 = rect.left;
        int i12 = rect2.left;
        int i13 = rect.top;
        int i14 = rect2.top;
        int i15 = rect.right;
        int i16 = rect2.right;
        int i17 = rect.bottom;
        int i18 = rect2.bottom;
        int i19 = i15 - i11;
        int i20 = i17 - i13;
        int i21 = i16 - i12;
        int i22 = i18 - i14;
        Rect rect3 = (Rect) map.get("android:changeBounds:clip");
        Rect rect4 = (Rect) map2.get("android:changeBounds:clip");
        if ((i19 == 0 || i20 == 0) && (i21 == 0 || i22 == 0)) {
            i10 = 0;
        } else {
            i10 = (i11 == i12 && i13 == i14) ? 0 : 1;
            if (i15 != i16 || i17 != i18) {
                i10++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i10++;
        }
        if (i10 <= 0) {
            return null;
        }
        View view = a0Var2.f6414b;
        d0.a(view, i11, i13, i15, i17);
        if (i10 != 2) {
            gVar = this;
            if (i11 == i12 && i13 == i14) {
                gVar.f6502v.getClass();
                objectAnimatorO = s1.g.O(view, C, m7.e.i(i15, i17, i16, i18));
            } else {
                gVar.f6502v.getClass();
                objectAnimatorO = s1.g.O(view, D, m7.e.i(i11, i13, i12, i14));
            }
        } else if (i19 == i21 && i20 == i22) {
            gVar = this;
            gVar.f6502v.getClass();
            objectAnimatorO = s1.g.O(view, E, m7.e.i(i11, i13, i12, i14));
        } else {
            gVar = this;
            f fVar = new f(view);
            gVar.f6502v.getClass();
            ObjectAnimator objectAnimatorO2 = s1.g.O(fVar, A, m7.e.i(i11, i13, i12, i14));
            gVar.f6502v.getClass();
            ObjectAnimator objectAnimatorO3 = s1.g.O(fVar, B, m7.e.i(i15, i17, i16, i18));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorO2, objectAnimatorO3);
            animatorSet.addListener(new d(fVar));
            objectAnimatorO = animatorSet;
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            android.support.v4.media.session.b.I(viewGroup4, true);
            gVar.a(new e(viewGroup4));
        }
        return objectAnimatorO;
    }

    @Override // h4.t
    public final String[] p() {
        return z;
    }
}
