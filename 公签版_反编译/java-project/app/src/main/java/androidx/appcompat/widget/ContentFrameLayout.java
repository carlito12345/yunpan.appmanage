package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import q.a0;
import q.p;
import v.k;
import w.e;
import w.j;
import w.k1;
import w.l1;
import w.n3;

/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public TypedValue f963a;

    /* renamed from: b, reason: collision with root package name */
    public TypedValue f964b;

    /* renamed from: c, reason: collision with root package name */
    public TypedValue f965c;

    /* renamed from: d, reason: collision with root package name */
    public TypedValue f966d;

    /* renamed from: e, reason: collision with root package name */
    public TypedValue f967e;

    /* renamed from: f, reason: collision with root package name */
    public TypedValue f968f;

    /* renamed from: g, reason: collision with root package name */
    public final Rect f969g;

    /* renamed from: h, reason: collision with root package name */
    public k1 f970h;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f969g = new Rect();
    }

    public final void a(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f967e == null) {
            this.f967e = new TypedValue();
        }
        return this.f967e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f968f == null) {
            this.f968f = new TypedValue();
        }
        return this.f968f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f965c == null) {
            this.f965c = new TypedValue();
        }
        return this.f965c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f966d == null) {
            this.f966d = new TypedValue();
        }
        return this.f966d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f963a == null) {
            this.f963a = new TypedValue();
        }
        return this.f963a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f964b == null) {
            this.f964b = new TypedValue();
        }
        return this.f964b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        k1 k1Var = this.f970h;
        if (k1Var != null) {
            k1Var.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        j jVar;
        super.onDetachedFromWindow();
        k1 k1Var = this.f970h;
        if (k1Var != null) {
            a0 a0Var = ((p) k1Var).f12890b;
            l1 l1Var = a0Var.f12772s;
            if (l1Var != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) l1Var;
                actionBarOverlayLayout.k();
                ActionMenuView actionMenuView = ((n3) actionBarOverlayLayout.f934e).f17162a.f986a;
                if (actionMenuView != null && (jVar = actionMenuView.f954v) != null) {
                    jVar.h();
                    e eVar = jVar.f17125v;
                    if (eVar != null && eVar.b()) {
                        eVar.f16298i.dismiss();
                    }
                }
            }
            if (a0Var.f12778y != null) {
                a0Var.l.getDecorView().removeCallbacks(a0Var.z);
                if (a0Var.f12778y.isShowing()) {
                    try {
                        a0Var.f12778y.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                a0Var.f12778y = null;
            }
            x0.l1 l1Var2 = a0Var.A;
            if (l1Var2 != null) {
                l1Var2.b();
            }
            k kVar = a0Var.y(0).f12909h;
            if (kVar != null) {
                kVar.c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00de  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i10, int i11) {
        int iMakeMeasureSpec;
        boolean z;
        int iMakeMeasureSpec2;
        int i12;
        int i13;
        float fraction;
        int i14;
        int i15;
        float fraction2;
        int i16;
        int i17;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z4 = true;
        boolean z10 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        Rect rect = this.f969g;
        if (mode != Integer.MIN_VALUE) {
            iMakeMeasureSpec = i10;
            z = false;
        } else {
            TypedValue typedValue = z10 ? this.f966d : this.f965c;
            if (typedValue != null && (i16 = typedValue.type) != 0) {
                if (i16 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else if (i16 == 6) {
                    int i18 = displayMetrics.widthPixels;
                    fraction3 = typedValue.getFraction(i18, i18);
                } else {
                    i17 = 0;
                    if (i17 <= 0) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i17 - (rect.left + rect.right), View.MeasureSpec.getSize(i10)), 1073741824);
                        z = true;
                    }
                }
                i17 = (int) fraction3;
                if (i17 <= 0) {
                }
            }
        }
        if (mode2 != Integer.MIN_VALUE) {
            iMakeMeasureSpec2 = i11;
        } else {
            TypedValue typedValue2 = z10 ? this.f967e : this.f968f;
            if (typedValue2 != null && (i14 = typedValue2.type) != 0) {
                if (i14 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else if (i14 == 6) {
                    int i19 = displayMetrics.heightPixels;
                    fraction2 = typedValue2.getFraction(i19, i19);
                } else {
                    i15 = 0;
                    if (i15 <= 0) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i15 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i11)), 1073741824);
                    }
                }
                i15 = (int) fraction2;
                if (i15 <= 0) {
                }
            }
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (z || mode != Integer.MIN_VALUE) {
            z4 = false;
        } else {
            TypedValue typedValue3 = z10 ? this.f964b : this.f963a;
            if (typedValue3 != null && (i12 = typedValue3.type) != 0) {
                if (i12 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else if (i12 == 6) {
                    int i20 = displayMetrics.widthPixels;
                    fraction = typedValue3.getFraction(i20, i20);
                } else {
                    i13 = 0;
                    if (i13 > 0) {
                        i13 -= rect.left + rect.right;
                    }
                    if (measuredWidth >= i13) {
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                    }
                }
                i13 = (int) fraction;
                if (i13 > 0) {
                }
                if (measuredWidth >= i13) {
                }
            }
        }
        if (z4) {
            super.onMeasure(iMakeMeasureSpec3, iMakeMeasureSpec2);
        }
    }

    public void setAttachListener(k1 k1Var) {
        this.f970h = k1Var;
    }
}
