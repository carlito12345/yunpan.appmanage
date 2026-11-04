package h4;

import android.view.View;

/* loaded from: classes.dex */
public class f0 extends gf.g {

    /* renamed from: f, reason: collision with root package name */
    public static boolean f6433f = true;

    public f0() {
        super(27);
    }

    @Override // gf.g
    public float C(View view) {
        if (f6433f) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                f6433f = false;
            }
        }
        return view.getAlpha();
    }

    @Override // gf.g
    public void H(View view, float f10) {
        if (f6433f) {
            try {
                view.setTransitionAlpha(f10);
                return;
            } catch (NoSuchMethodError unused) {
                f6433f = false;
            }
        }
        view.setAlpha(f10);
    }

    @Override // gf.g
    public final void F(View view) {
    }

    @Override // gf.g
    public final void y(View view) {
    }
}
