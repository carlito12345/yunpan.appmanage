package w;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.TypedValue;
import android.widget.TextView;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* loaded from: classes.dex */
public final class i1 {
    public static final RectF l = new RectF();

    /* renamed from: m, reason: collision with root package name */
    public static final ConcurrentHashMap f17093m = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public int f17094a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f17095b = false;

    /* renamed from: c, reason: collision with root package name */
    public float f17096c = -1.0f;

    /* renamed from: d, reason: collision with root package name */
    public float f17097d = -1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f17098e = -1.0f;

    /* renamed from: f, reason: collision with root package name */
    public int[] f17099f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public boolean f17100g = false;

    /* renamed from: h, reason: collision with root package name */
    public TextPaint f17101h;

    /* renamed from: i, reason: collision with root package name */
    public final TextView f17102i;

    /* renamed from: j, reason: collision with root package name */
    public final Context f17103j;

    /* renamed from: k, reason: collision with root package name */
    public final h1 f17104k;

    static {
        new ConcurrentHashMap();
    }

    public i1(TextView textView) {
        this.f17102i = textView;
        this.f17103j = textView.getContext();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            this.f17104k = new g1();
        } else if (i10 >= 23) {
            this.f17104k = new f1();
        } else {
            this.f17104k = new h1();
        }
    }

    public static int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            if (i10 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i10)) < 0) {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i11 = 0; i11 < size; i11++) {
            iArr2[i11] = ((Integer) arrayList.get(i11)).intValue();
        }
        return iArr2;
    }

    public static Method d(String str) throws SecurityException {
        try {
            ConcurrentHashMap concurrentHashMap = f17093m;
            Method declaredMethod = (Method) concurrentHashMap.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, null)) != null) {
                declaredMethod.setAccessible(true);
                concurrentHashMap.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Object e(String str, Object obj, Object obj2) {
        try {
            return d(str).invoke(obj, null);
        } catch (Exception unused) {
            return obj2;
        }
    }

    public final void a() {
        if (f()) {
            if (this.f17095b) {
                if (this.f17102i.getMeasuredHeight() <= 0 || this.f17102i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f17104k.b(this.f17102i) ? 1048576 : (this.f17102i.getMeasuredWidth() - this.f17102i.getTotalPaddingLeft()) - this.f17102i.getTotalPaddingRight();
                int height = (this.f17102i.getHeight() - this.f17102i.getCompoundPaddingBottom()) - this.f17102i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = l;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float fC = c(rectF);
                        if (fC != this.f17102i.getTextSize()) {
                            g(fC, 0);
                        }
                    } finally {
                    }
                }
            }
            this.f17095b = true;
        }
    }

    public final int c(RectF rectF) {
        int i10;
        StaticLayout staticLayoutA;
        CharSequence transformation;
        int length = this.f17099f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i11 = length - 1;
        int i12 = 1;
        int i13 = 0;
        while (i12 <= i11) {
            int i14 = (i12 + i11) / 2;
            int i15 = this.f17099f[i14];
            TextView textView = this.f17102i;
            CharSequence text = textView.getText();
            TransformationMethod transformationMethod = textView.getTransformationMethod();
            if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, textView)) != null) {
                text = transformation;
            }
            int i16 = Build.VERSION.SDK_INT;
            int iB = c1.b(textView);
            TextPaint textPaint = this.f17101h;
            if (textPaint == null) {
                this.f17101h = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.f17101h.set(textView.getPaint());
            this.f17101h.setTextSize(i15);
            Layout.Alignment alignment = (Layout.Alignment) e("getLayoutAlignment", textView, Layout.Alignment.ALIGN_NORMAL);
            int iRound = Math.round(rectF.right);
            if (i16 >= 23) {
                i10 = iB;
                staticLayoutA = e1.a(text, alignment, iRound, iB, this.f17102i, this.f17101h, this.f17104k);
            } else {
                i10 = iB;
                staticLayoutA = c1.a(text, alignment, iRound, textView, this.f17101h);
            }
            if ((i10 == -1 || (staticLayoutA.getLineCount() <= i10 && staticLayoutA.getLineEnd(staticLayoutA.getLineCount() - 1) == text.length())) && staticLayoutA.getHeight() <= rectF.bottom) {
                int i17 = i14 + 1;
                i13 = i12;
                i12 = i17;
            } else {
                i13 = i14 - 1;
                i11 = i13;
            }
        }
        return this.f17099f[i13];
    }

    public final boolean f() {
        return j() && this.f17094a != 0;
    }

    public final void g(float f10, int i10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Context context = this.f17103j;
        float fApplyDimension = TypedValue.applyDimension(i10, f10, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        TextView textView = this.f17102i;
        if (fApplyDimension != textView.getPaint().getTextSize()) {
            textView.getPaint().setTextSize(fApplyDimension);
            boolean zA = Build.VERSION.SDK_INT >= 18 ? d1.a(textView) : false;
            if (textView.getLayout() != null) {
                this.f17095b = false;
                try {
                    Method methodD = d("nullLayouts");
                    if (methodD != null) {
                        methodD.invoke(textView, null);
                    }
                } catch (Exception unused) {
                }
                if (zA) {
                    textView.forceLayout();
                } else {
                    textView.requestLayout();
                }
                textView.invalidate();
            }
        }
    }

    public final boolean h() {
        if (j() && this.f17094a == 1) {
            if (!this.f17100g || this.f17099f.length == 0) {
                int iFloor = ((int) Math.floor((this.f17098e - this.f17097d) / this.f17096c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i10 = 0; i10 < iFloor; i10++) {
                    iArr[i10] = Math.round((i10 * this.f17096c) + this.f17097d);
                }
                this.f17099f = b(iArr);
            }
            this.f17095b = true;
        } else {
            this.f17095b = false;
        }
        return this.f17095b;
    }

    public final boolean i() {
        boolean z = this.f17099f.length > 0;
        this.f17100g = z;
        if (z) {
            this.f17094a = 1;
            this.f17097d = r0[0];
            this.f17098e = r0[r1 - 1];
            this.f17096c = -1.0f;
        }
        return z;
    }

    public final boolean j() {
        return !(this.f17102i instanceof u);
    }

    public final void k(float f10, float f11, float f12) {
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f10 + "px) is less or equal to (0px)");
        }
        if (f11 <= f10) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f11 + "px) is less or equal to minimum auto-size text size (" + f10 + "px)");
        }
        if (f12 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f12 + "px) is less or equal to (0px)");
        }
        this.f17094a = 1;
        this.f17097d = f10;
        this.f17098e = f11;
        this.f17096c = f12;
        this.f17100g = false;
    }
}
