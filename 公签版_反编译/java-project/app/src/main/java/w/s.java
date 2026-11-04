package w;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: b, reason: collision with root package name */
    public static final PorterDuff.Mode f17249b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c, reason: collision with root package name */
    public static s f17250c;

    /* renamed from: a, reason: collision with root package name */
    public p2 f17251a;

    public static synchronized s a() {
        try {
            if (f17250c == null) {
                d();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f17250c;
    }

    public static synchronized PorterDuffColorFilter c(int i10, PorterDuff.Mode mode) {
        return p2.h(i10, mode);
    }

    public static synchronized void d() {
        if (f17250c == null) {
            s sVar = new s();
            f17250c = sVar;
            sVar.f17251a = p2.d();
            f17250c.f17251a.m(new ba.i(3));
        }
    }

    public static void e(Drawable drawable, d3 d3Var, int[] iArr) {
        PorterDuff.Mode mode = p2.f17189h;
        int[] state = drawable.getState();
        int[] iArr2 = n1.f17160a;
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z = d3Var.f17050d;
            if (z || d3Var.f17049c) {
                PorterDuffColorFilter porterDuffColorFilterH = null;
                ColorStateList colorStateList = z ? d3Var.f17047a : null;
                PorterDuff.Mode mode2 = d3Var.f17049c ? d3Var.f17048b : p2.f17189h;
                if (colorStateList != null && mode2 != null) {
                    porterDuffColorFilterH = p2.h(colorStateList.getColorForState(iArr, 0), mode2);
                }
                drawable.setColorFilter(porterDuffColorFilterH);
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    public final synchronized Drawable b(Context context, int i10) {
        return this.f17251a.f(context, i10);
    }
}
