package x0;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.yunpan.appmanage.R;
import java.util.List;
import ua.i8;

/* loaded from: classes.dex */
public final class r1 extends u1 {

    /* renamed from: e, reason: collision with root package name */
    public static final Interpolator f18043e = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);

    /* renamed from: f, reason: collision with root package name */
    public static final m1.a f18044f = new m1.a(0);

    /* renamed from: g, reason: collision with root package name */
    public static final DecelerateInterpolator f18045g = new DecelerateInterpolator();

    public r1(int i10, Interpolator interpolator, long j10) {
        super(i10, interpolator, j10);
    }

    public static void e(View view) {
        g gVarJ = j(view);
        if (gVarJ != null) {
            ((View) gVarJ.f17986e).setTranslationY(0.0f);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                e(viewGroup.getChildAt(i10));
            }
        }
    }

    public static void f(View view, WindowInsets windowInsets, boolean z) {
        g gVarJ = j(view);
        if (gVarJ != null) {
            gVarJ.f17983b = windowInsets;
            if (!z) {
                View view2 = (View) gVarJ.f17986e;
                int[] iArr = (int[]) gVarJ.f17987f;
                view2.getLocationOnScreen(iArr);
                z = true;
                gVarJ.f17984c = iArr[1];
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                f(viewGroup.getChildAt(i10), windowInsets, z);
            }
        }
    }

    public static void g(View view, j2 j2Var, List list) {
        g gVarJ = j(view);
        if (gVarJ != null) {
            gVarJ.e(j2Var, list);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                g(viewGroup.getChildAt(i10), j2Var, list);
            }
        }
    }

    public static void h(View view, i8 i8Var) {
        g gVarJ = j(view);
        if (gVarJ != null) {
            View view2 = (View) gVarJ.f17986e;
            int[] iArr = (int[]) gVarJ.f17987f;
            view2.getLocationOnScreen(iArr);
            int i10 = gVarJ.f17984c - iArr[1];
            gVarJ.f17985d = i10;
            view2.setTranslationY(i10);
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i11 = 0; i11 < viewGroup.getChildCount(); i11++) {
                h(viewGroup.getChildAt(i11), i8Var);
            }
        }
    }

    public static WindowInsets i(View view, WindowInsets windowInsets) {
        return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
    }

    public static g j(View view) {
        Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
        if (tag instanceof q1) {
            return ((q1) tag).f18041a;
        }
        return null;
    }
}
