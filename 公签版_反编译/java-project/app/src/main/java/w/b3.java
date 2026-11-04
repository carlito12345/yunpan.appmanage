package w;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

/* loaded from: classes.dex */
public abstract class b3 {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f17030a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f17031b = {-16842910};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f17032c = {R.attr.state_focused};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f17033d = {R.attr.state_pressed};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f17034e = {R.attr.state_checked};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f17035f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f17036g = new int[1];

    public static void a(View view, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(p.a.f12524j);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(117)) {
                view.getClass().toString();
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static int b(Context context, int i10) {
        ColorStateList colorStateListD = d(context, i10);
        if (colorStateListD != null && colorStateListD.isStateful()) {
            return colorStateListD.getColorForState(f17031b, colorStateListD.getDefaultColor());
        }
        ThreadLocal threadLocal = f17030a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true);
        float f10 = typedValue.getFloat();
        return p0.a.d(c(context, i10), Math.round(Color.alpha(r4) * f10));
    }

    public static int c(Context context, int i10) {
        int[] iArr = f17036g;
        iArr[0] = i10;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return typedArrayObtainStyledAttributes.getColor(0, 0);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static ColorStateList d(Context context, int i10) {
        ColorStateList colorStateList;
        int resourceId;
        int[] iArr = f17036g;
        iArr[0] = i10;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0 || (colorStateList = n0.g.d(context, resourceId)) == null) {
                colorStateList = typedArrayObtainStyledAttributes.getColorStateList(0);
            }
            return colorStateList;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }
}
