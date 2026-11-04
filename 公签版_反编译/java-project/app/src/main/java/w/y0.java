package w;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class y0 {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f17304a;

    /* renamed from: b, reason: collision with root package name */
    public d3 f17305b;

    /* renamed from: c, reason: collision with root package name */
    public d3 f17306c;

    /* renamed from: d, reason: collision with root package name */
    public d3 f17307d;

    /* renamed from: e, reason: collision with root package name */
    public d3 f17308e;

    /* renamed from: f, reason: collision with root package name */
    public d3 f17309f;

    /* renamed from: g, reason: collision with root package name */
    public d3 f17310g;

    /* renamed from: h, reason: collision with root package name */
    public d3 f17311h;

    /* renamed from: i, reason: collision with root package name */
    public final i1 f17312i;

    /* renamed from: j, reason: collision with root package name */
    public int f17313j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f17314k = -1;
    public Typeface l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f17315m;

    public y0(TextView textView) {
        this.f17304a = textView;
        this.f17312i = new i1(textView);
    }

    public static d3 c(Context context, s sVar, int i10) {
        ColorStateList colorStateListI;
        synchronized (sVar) {
            colorStateListI = sVar.f17251a.i(context, i10);
        }
        if (colorStateListI == null) {
            return null;
        }
        d3 d3Var = new d3();
        d3Var.f17050d = true;
        d3Var.f17047a = colorStateListI;
        return d3Var;
    }

    public static void h(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i10 >= 30) {
            a1.b.a(editorInfo, text);
            return;
        }
        text.getClass();
        if (i10 >= 30) {
            a1.b.a(editorInfo, text);
            return;
        }
        int i11 = editorInfo.initialSelStart;
        int i12 = editorInfo.initialSelEnd;
        int i13 = i11 > i12 ? i12 : i11;
        if (i11 <= i12) {
            i11 = i12;
        }
        int length = text.length();
        if (i13 < 0 || i11 > length) {
            a1.c.a(editorInfo, null, 0, 0);
            return;
        }
        int i14 = editorInfo.inputType & 4095;
        if (i14 == 129 || i14 == 225 || i14 == 18) {
            a1.c.a(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            a1.c.a(editorInfo, text, i13, i11);
            return;
        }
        int i15 = i11 - i13;
        int i16 = i15 > 1024 ? 0 : i15;
        int length2 = text.length() - i11;
        int i17 = 2048 - i16;
        double d10 = i17;
        Double.isNaN(d10);
        int iMin = Math.min(length2, i17 - Math.min(i13, (int) (d10 * 0.8d)));
        int iMin2 = Math.min(i13, i17 - iMin);
        int i18 = i13 - iMin2;
        if (Character.isLowSurrogate(text.charAt(i18))) {
            i18++;
            iMin2--;
        }
        if (Character.isHighSurrogate(text.charAt((i11 + iMin) - 1))) {
            iMin--;
        }
        int i19 = iMin2 + i16;
        a1.c.a(editorInfo, i16 != i15 ? TextUtils.concat(text.subSequence(i18, i18 + iMin2), text.subSequence(i11, iMin + i11)) : text.subSequence(i18, i19 + iMin + i18), iMin2, i19);
    }

    public final void a(Drawable drawable, d3 d3Var) {
        if (drawable == null || d3Var == null) {
            return;
        }
        s.e(drawable, d3Var, this.f17304a.getDrawableState());
    }

    public final void b() {
        d3 d3Var = this.f17305b;
        TextView textView = this.f17304a;
        if (d3Var != null || this.f17306c != null || this.f17307d != null || this.f17308e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.f17305b);
            a(compoundDrawables[1], this.f17306c);
            a(compoundDrawables[2], this.f17307d);
            a(compoundDrawables[3], this.f17308e);
        }
        if (this.f17309f == null && this.f17310g == null) {
            return;
        }
        Drawable[] drawableArrA = t0.a(textView);
        a(drawableArrA[0], this.f17309f);
        a(drawableArrA[2], this.f17310g);
    }

    public final ColorStateList d() {
        d3 d3Var = this.f17311h;
        if (d3Var != null) {
            return d3Var.f17047a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        d3 d3Var = this.f17311h;
        if (d3Var != null) {
            return d3Var.f17048b;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f(AttributeSet attributeSet, int i10) {
        String string;
        String string2;
        boolean z;
        boolean z4;
        ColorStateList colorStateListD;
        ColorStateList colorStateListD2;
        ColorStateList colorStateListD3;
        boolean z10;
        s sVar;
        int i11;
        Paint.FontMetricsInt fontMetricsInt;
        ColorStateList colorStateList;
        int resourceId;
        int i12;
        int resourceId2;
        int i13;
        int i14;
        int i15;
        TextView textView = this.f17304a;
        Context context = textView.getContext();
        s sVarA = s.a();
        int[] iArr = p.a.f12522h;
        s4.a aVarJ = s4.a.j(context, attributeSet, iArr, i10);
        x0.b1.w(textView, textView.getContext(), iArr, attributeSet, (TypedArray) aVarJ.f14294c, i10);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        int resourceId3 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            this.f17305b = c(context, sVarA, typedArray.getResourceId(3, 0));
        }
        if (typedArray.hasValue(1)) {
            this.f17306c = c(context, sVarA, typedArray.getResourceId(1, 0));
        }
        if (typedArray.hasValue(4)) {
            this.f17307d = c(context, sVarA, typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(2)) {
            this.f17308e = c(context, sVarA, typedArray.getResourceId(2, 0));
        }
        int i16 = Build.VERSION.SDK_INT;
        if (typedArray.hasValue(5)) {
            this.f17309f = c(context, sVarA, typedArray.getResourceId(5, 0));
        }
        if (typedArray.hasValue(6)) {
            this.f17310g = c(context, sVarA, typedArray.getResourceId(6, 0));
        }
        aVarJ.r();
        boolean z11 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = p.a.f12535w;
        if (resourceId3 != -1) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId3, iArr2);
            s4.a aVar = new s4.a(context, typedArrayObtainStyledAttributes);
            if (z11 || !typedArrayObtainStyledAttributes.hasValue(14)) {
                z = false;
                z4 = false;
            } else {
                z = typedArrayObtainStyledAttributes.getBoolean(14, false);
                z4 = true;
            }
            n(context, aVar);
            if (i16 < 23) {
                if (typedArrayObtainStyledAttributes.hasValue(3)) {
                    colorStateListD = aVar.d(3);
                    i14 = 4;
                } else {
                    i14 = 4;
                    colorStateListD = null;
                }
                if (typedArrayObtainStyledAttributes.hasValue(i14)) {
                    colorStateListD2 = aVar.d(i14);
                    i15 = 5;
                } else {
                    i15 = 5;
                    colorStateListD2 = null;
                }
                colorStateListD3 = typedArrayObtainStyledAttributes.hasValue(i15) ? aVar.d(i15) : null;
                if (typedArrayObtainStyledAttributes.hasValue(15)) {
                    i13 = 26;
                    string2 = null;
                } else {
                    string2 = typedArrayObtainStyledAttributes.getString(15);
                    i13 = 26;
                }
                string = (i16 >= i13 || !typedArrayObtainStyledAttributes.hasValue(13)) ? null : typedArrayObtainStyledAttributes.getString(13);
                aVar.r();
            } else {
                colorStateListD = null;
                colorStateListD2 = null;
            }
            if (typedArrayObtainStyledAttributes.hasValue(15)) {
            }
            if (i16 >= i13) {
                aVar.r();
            }
        } else {
            string = null;
            string2 = null;
            z = false;
            z4 = false;
            colorStateListD = null;
            colorStateListD2 = null;
            colorStateListD3 = null;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i10, 0);
        s4.a aVar2 = new s4.a(context, typedArrayObtainStyledAttributes2);
        if (z11 || !typedArrayObtainStyledAttributes2.hasValue(14)) {
            z10 = z;
        } else {
            z10 = typedArrayObtainStyledAttributes2.getBoolean(14, false);
            z4 = true;
        }
        if (i16 < 23) {
            if (typedArrayObtainStyledAttributes2.hasValue(3)) {
                colorStateListD = aVar2.d(3);
            }
            if (typedArrayObtainStyledAttributes2.hasValue(4)) {
                colorStateListD2 = aVar2.d(4);
            }
            if (typedArrayObtainStyledAttributes2.hasValue(5)) {
                colorStateListD3 = aVar2.d(5);
            }
        }
        ColorStateList colorStateList2 = colorStateListD;
        ColorStateList colorStateList3 = colorStateListD2;
        ColorStateList colorStateList4 = colorStateListD3;
        if (typedArrayObtainStyledAttributes2.hasValue(15)) {
            string2 = typedArrayObtainStyledAttributes2.getString(15);
        }
        if (i16 >= 26 && typedArrayObtainStyledAttributes2.hasValue(13)) {
            string = typedArrayObtainStyledAttributes2.getString(13);
        }
        if (i16 < 28 || !typedArrayObtainStyledAttributes2.hasValue(0)) {
            sVar = sVarA;
        } else {
            sVar = sVarA;
            if (typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, -1) == 0) {
                textView.setTextSize(0, 0.0f);
            }
        }
        n(context, aVar2);
        aVar2.r();
        if (colorStateList2 != null) {
            textView.setTextColor(colorStateList2);
        }
        if (colorStateList3 != null) {
            textView.setHintTextColor(colorStateList3);
        }
        if (colorStateList4 != null) {
            textView.setLinkTextColor(colorStateList4);
        }
        if (!z11 && z4) {
            textView.setAllCaps(z10);
        }
        Typeface typeface = this.l;
        if (typeface != null) {
            if (this.f17314k == -1) {
                textView.setTypeface(typeface, this.f17313j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (string != null) {
            w0.d(textView, string);
        }
        if (string2 == null) {
            i11 = 0;
        } else {
            if (i16 >= 24) {
                v0.b(textView, v0.a(string2));
            } else if (i16 >= 21) {
                i11 = 0;
                t0.c(textView, u0.a(string2.split(",")[0]));
            }
            i11 = 0;
        }
        int[] iArr3 = p.a.f12523i;
        i1 i1Var = this.f17312i;
        Context context2 = i1Var.f17103j;
        TypedArray typedArrayObtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, iArr3, i10, i11);
        TextView textView2 = i1Var.f17102i;
        x0.b1.w(textView2, textView2.getContext(), iArr3, attributeSet, typedArrayObtainStyledAttributes3, i10);
        if (typedArrayObtainStyledAttributes3.hasValue(5)) {
            i1Var.f17094a = typedArrayObtainStyledAttributes3.getInt(5, 0);
        }
        float dimension = typedArrayObtainStyledAttributes3.hasValue(4) ? typedArrayObtainStyledAttributes3.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes3.hasValue(2) ? typedArrayObtainStyledAttributes3.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes3.hasValue(1) ? typedArrayObtainStyledAttributes3.getDimension(1, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes3.hasValue(3) && (resourceId2 = typedArrayObtainStyledAttributes3.getResourceId(3, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes3.getResources().obtainTypedArray(resourceId2);
            int length = typedArrayObtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i17 = 0; i17 < length; i17++) {
                    iArr4[i17] = typedArrayObtainTypedArray.getDimensionPixelSize(i17, -1);
                }
                i1Var.f17099f = i1.b(iArr4);
                i1Var.i();
            }
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes3.recycle();
        if (!i1Var.j()) {
            i1Var.f17094a = 0;
        } else if (i1Var.f17094a == 1) {
            if (!i1Var.f17100g) {
                DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    i12 = 2;
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                } else {
                    i12 = 2;
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(i12, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                i1Var.k(dimension2, dimension3, dimension);
            }
            i1Var.h();
        }
        if (u3.f17279b && i1Var.f17094a != 0) {
            int[] iArr5 = i1Var.f17099f;
            if (iArr5.length > 0) {
                if (w0.a(textView) != -1.0f) {
                    w0.b(textView, Math.round(i1Var.f17097d), Math.round(i1Var.f17098e), Math.round(i1Var.f17096c), 0);
                } else {
                    w0.c(textView, iArr5, 0);
                }
            }
        }
        TypedArray typedArrayObtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr3);
        int resourceId4 = typedArrayObtainStyledAttributes4.getResourceId(8, -1);
        s sVar2 = sVar;
        Drawable drawableB = resourceId4 != -1 ? sVar2.b(context, resourceId4) : null;
        int resourceId5 = typedArrayObtainStyledAttributes4.getResourceId(13, -1);
        Drawable drawableB2 = resourceId5 != -1 ? sVar2.b(context, resourceId5) : null;
        int resourceId6 = typedArrayObtainStyledAttributes4.getResourceId(9, -1);
        Drawable drawableB3 = resourceId6 != -1 ? sVar2.b(context, resourceId6) : null;
        int resourceId7 = typedArrayObtainStyledAttributes4.getResourceId(6, -1);
        Drawable drawableB4 = resourceId7 != -1 ? sVar2.b(context, resourceId7) : null;
        int resourceId8 = typedArrayObtainStyledAttributes4.getResourceId(10, -1);
        Drawable drawableB5 = resourceId8 != -1 ? sVar2.b(context, resourceId8) : null;
        int resourceId9 = typedArrayObtainStyledAttributes4.getResourceId(7, -1);
        Drawable drawableB6 = resourceId9 != -1 ? sVar2.b(context, resourceId9) : null;
        if (drawableB5 != null || drawableB6 != null) {
            Drawable[] drawableArrA = t0.a(textView);
            if (drawableB5 == null) {
                drawableB5 = drawableArrA[0];
            }
            if (drawableB2 == null) {
                drawableB2 = drawableArrA[1];
            }
            if (drawableB6 == null) {
                drawableB6 = drawableArrA[2];
            }
            if (drawableB4 == null) {
                drawableB4 = drawableArrA[3];
            }
            t0.b(textView, drawableB5, drawableB2, drawableB6, drawableB4);
        } else if (drawableB != null || drawableB2 != null || drawableB3 != null || drawableB4 != null) {
            Drawable[] drawableArrA2 = t0.a(textView);
            Drawable drawable = drawableArrA2[0];
            if (drawable == null && drawableArrA2[2] == null) {
                Drawable[] compoundDrawables = textView.getCompoundDrawables();
                if (drawableB == null) {
                    drawableB = compoundDrawables[0];
                }
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawables[1];
                }
                if (drawableB3 == null) {
                    drawableB3 = compoundDrawables[2];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawables[3];
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(drawableB, drawableB2, drawableB3, drawableB4);
            } else {
                if (drawableB2 == null) {
                    drawableB2 = drawableArrA2[1];
                }
                Drawable drawable2 = drawableArrA2[2];
                if (drawableB4 == null) {
                    drawableB4 = drawableArrA2[3];
                }
                t0.b(textView, drawable, drawableB2, drawable2, drawableB4);
            }
        }
        if (typedArrayObtainStyledAttributes4.hasValue(11)) {
            if (!typedArrayObtainStyledAttributes4.hasValue(11) || (resourceId = typedArrayObtainStyledAttributes4.getResourceId(11, 0)) == 0 || (colorStateList = n0.g.d(context, resourceId)) == null) {
                colorStateList = typedArrayObtainStyledAttributes4.getColorStateList(11);
            }
            if (Build.VERSION.SDK_INT >= 24) {
                b1.r.f(textView, colorStateList);
            } else if (textView instanceof b1.x) {
                ((b1.x) textView).setSupportCompoundDrawablesTintList(colorStateList);
            }
        }
        if (typedArrayObtainStyledAttributes4.hasValue(12)) {
            fontMetricsInt = null;
            PorterDuff.Mode modeB = n1.b(typedArrayObtainStyledAttributes4.getInt(12, -1), null);
            if (Build.VERSION.SDK_INT >= 24) {
                b1.r.g(textView, modeB);
            } else if (textView instanceof b1.x) {
                ((b1.x) textView).setSupportCompoundDrawablesTintMode(modeB);
            }
        } else {
            fontMetricsInt = null;
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes4.getDimensionPixelSize(15, -1);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(18, -1);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(19, -1);
        typedArrayObtainStyledAttributes4.recycle();
        if (dimensionPixelSize != -1) {
            d.b.m0(textView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != -1) {
            d.b.n0(textView, dimensionPixelSize2);
        }
        if (dimensionPixelSize3 != -1) {
            s1.g.k(dimensionPixelSize3);
            if (dimensionPixelSize3 != textView.getPaint().getFontMetricsInt(fontMetricsInt)) {
                textView.setLineSpacing(dimensionPixelSize3 - r1, 1.0f);
            }
        }
    }

    public final void g(Context context, int i10) {
        String string;
        ColorStateList colorStateListD;
        ColorStateList colorStateListD2;
        ColorStateList colorStateListD3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i10, p.a.f12535w);
        s4.a aVar = new s4.a(context, typedArrayObtainStyledAttributes);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(14);
        TextView textView = this.f17304a;
        if (zHasValue) {
            textView.setAllCaps(typedArrayObtainStyledAttributes.getBoolean(14, false));
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 23) {
            if (typedArrayObtainStyledAttributes.hasValue(3) && (colorStateListD3 = aVar.d(3)) != null) {
                textView.setTextColor(colorStateListD3);
            }
            if (typedArrayObtainStyledAttributes.hasValue(5) && (colorStateListD2 = aVar.d(5)) != null) {
                textView.setLinkTextColor(colorStateListD2);
            }
            if (typedArrayObtainStyledAttributes.hasValue(4) && (colorStateListD = aVar.d(4)) != null) {
                textView.setHintTextColor(colorStateListD);
            }
        }
        if (typedArrayObtainStyledAttributes.hasValue(0) && typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        n(context, aVar);
        if (i11 >= 26 && typedArrayObtainStyledAttributes.hasValue(13) && (string = typedArrayObtainStyledAttributes.getString(13)) != null) {
            w0.d(textView, string);
        }
        aVar.r();
        Typeface typeface = this.l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f17313j);
        }
    }

    public final void i(int i10, int i11, int i12, int i13) {
        i1 i1Var = this.f17312i;
        if (i1Var.j()) {
            DisplayMetrics displayMetrics = i1Var.f17103j.getResources().getDisplayMetrics();
            i1Var.k(TypedValue.applyDimension(i13, i10, displayMetrics), TypedValue.applyDimension(i13, i11, displayMetrics), TypedValue.applyDimension(i13, i12, displayMetrics));
            if (i1Var.h()) {
                i1Var.a();
            }
        }
    }

    public final void j(int[] iArr, int i10) {
        i1 i1Var = this.f17312i;
        if (i1Var.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i10 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = i1Var.f17103j.getResources().getDisplayMetrics();
                    for (int i11 = 0; i11 < length; i11++) {
                        iArrCopyOf[i11] = Math.round(TypedValue.applyDimension(i10, iArr[i11], displayMetrics));
                    }
                }
                i1Var.f17099f = i1.b(iArrCopyOf);
                if (!i1Var.i()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                i1Var.f17100g = false;
            }
            if (i1Var.h()) {
                i1Var.a();
            }
        }
    }

    public final void k(int i10) {
        i1 i1Var = this.f17312i;
        if (i1Var.j()) {
            if (i10 == 0) {
                i1Var.f17094a = 0;
                i1Var.f17097d = -1.0f;
                i1Var.f17098e = -1.0f;
                i1Var.f17096c = -1.0f;
                i1Var.f17099f = new int[0];
                i1Var.f17095b = false;
                return;
            }
            if (i10 != 1) {
                throw new IllegalArgumentException(da.b.a(i10, "Unknown auto-size text type: "));
            }
            DisplayMetrics displayMetrics = i1Var.f17103j.getResources().getDisplayMetrics();
            i1Var.k(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (i1Var.h()) {
                i1Var.a();
            }
        }
    }

    public final void l(ColorStateList colorStateList) {
        if (this.f17311h == null) {
            this.f17311h = new d3();
        }
        d3 d3Var = this.f17311h;
        d3Var.f17047a = colorStateList;
        d3Var.f17050d = colorStateList != null;
        this.f17305b = d3Var;
        this.f17306c = d3Var;
        this.f17307d = d3Var;
        this.f17308e = d3Var;
        this.f17309f = d3Var;
        this.f17310g = d3Var;
    }

    public final void m(PorterDuff.Mode mode) {
        if (this.f17311h == null) {
            this.f17311h = new d3();
        }
        d3 d3Var = this.f17311h;
        d3Var.f17048b = mode;
        d3Var.f17049c = mode != null;
        this.f17305b = d3Var;
        this.f17306c = d3Var;
        this.f17307d = d3Var;
        this.f17308e = d3Var;
        this.f17309f = d3Var;
        this.f17310g = d3Var;
    }

    public final void n(Context context, s4.a aVar) {
        String string;
        int i10 = this.f17313j;
        TypedArray typedArray = (TypedArray) aVar.f14294c;
        this.f17313j = typedArray.getInt(2, i10);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 28) {
            int i12 = typedArray.getInt(11, -1);
            this.f17314k = i12;
            if (i12 != -1) {
                this.f17313j &= 2;
            }
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.f17315m = false;
                int i13 = typedArray.getInt(1, 1);
                if (i13 == 1) {
                    this.l = Typeface.SANS_SERIF;
                    return;
                } else if (i13 == 2) {
                    this.l = Typeface.SERIF;
                    return;
                } else {
                    if (i13 != 3) {
                        return;
                    }
                    this.l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.l = null;
        int i14 = typedArray.hasValue(12) ? 12 : 10;
        int i15 = this.f17314k;
        int i16 = this.f17313j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceG = aVar.g(i14, this.f17313j, new s0(this, i15, i16, new WeakReference(this.f17304a)));
                if (typefaceG != null) {
                    if (i11 < 28 || this.f17314k == -1) {
                        this.l = typefaceG;
                    } else {
                        this.l = x0.a(Typeface.create(typefaceG, 0), this.f17314k, (this.f17313j & 2) != 0);
                    }
                }
                this.f17315m = this.l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l != null || (string = typedArray.getString(i14)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f17314k == -1) {
            this.l = Typeface.create(string, this.f17313j);
        } else {
            this.l = x0.a(Typeface.create(string, 0), this.f17314k, (this.f17313j & 2) != 0);
        }
    }
}
