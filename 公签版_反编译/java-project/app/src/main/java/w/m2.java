package w;

import android.content.Context;
import android.os.Build;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class m2 extends g2 implements h2 {
    public static final Method G;
    public ua.i1 F;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                G = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    public m2(Context context, int i10) {
        super(context, null, i10);
    }

    @Override // w.h2
    public final void c(v.k kVar, v.m mVar) {
        ua.i1 i1Var = this.F;
        if (i1Var != null) {
            i1Var.c(kVar, mVar);
        }
    }

    @Override // w.h2
    public final void m(v.k kVar, v.m mVar) {
        ua.i1 i1Var = this.F;
        if (i1Var != null) {
            i1Var.m(kVar, mVar);
        }
    }

    @Override // w.g2
    public final t1 p(Context context, boolean z) {
        l2 l2Var = new l2(context, z);
        l2Var.setHoverListener(this);
        return l2Var;
    }
}
