package k7;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f10182a;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f10183b;

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f10184c;

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f10185d;

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f10186e;

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f10187f;

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f10188g;

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f10189h;

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f10190i;

    /* renamed from: j, reason: collision with root package name */
    public static final int[] f10191j;

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f10192k;

    static {
        f10182a = Build.VERSION.SDK_INT >= 21;
        f10183b = new int[]{R.attr.state_pressed};
        f10184c = new int[]{R.attr.state_hovered, R.attr.state_focused};
        f10185d = new int[]{R.attr.state_focused};
        f10186e = new int[]{R.attr.state_hovered};
        f10187f = new int[]{R.attr.state_selected, R.attr.state_pressed};
        f10188g = new int[]{R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
        f10189h = new int[]{R.attr.state_selected, R.attr.state_focused};
        f10190i = new int[]{R.attr.state_selected, R.attr.state_hovered};
        f10191j = new int[]{R.attr.state_selected};
        f10192k = new int[]{R.attr.state_enabled, R.attr.state_pressed};
    }

    public static int a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f10182a ? p0.a.d(colorForState, Math.min(Color.alpha(colorForState) * 2, 255)) : colorForState;
    }

    public static ColorStateList b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 22 && i10 <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0) {
            Color.alpha(colorStateList.getColorForState(f10192k, 0));
        }
        return colorStateList;
    }

    public static boolean c(int[] iArr) {
        boolean z = false;
        boolean z4 = false;
        for (int i10 : iArr) {
            if (i10 == 16842910) {
                z = true;
            } else if (i10 == 16842908 || i10 == 16842919 || i10 == 16843623) {
                z4 = true;
            }
        }
        return z && z4;
    }
}
