package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import i0.j;
import i0.n;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import x0.b1;

/* loaded from: classes.dex */
class ClockFaceView extends e implements d {
    public final Rect A;
    public final SparseArray B;
    public final c C;
    public final int[] D;
    public final float[] E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final String[] K;
    public float L;
    public final ColorStateList M;

    /* renamed from: x, reason: collision with root package name */
    public final ClockHandView f3713x;

    /* renamed from: y, reason: collision with root package name */
    public final Rect f3714y;
    public final RectF z;

    public ClockFaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3714y = new Rect();
        this.z = new RectF();
        this.A = new Rect();
        SparseArray sparseArray = new SparseArray();
        this.B = sparseArray;
        this.E = new float[]{0.0f, 0.9f, 1.0f};
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q6.a.f13034e, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        Resources resources = getResources();
        ColorStateList colorStateListW = com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 1);
        this.M = colorStateListW;
        LayoutInflater.from(context).inflate(R.layout.material_clockface_view, (ViewGroup) this, true);
        ClockHandView clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        this.f3713x = clockHandView;
        this.F = resources.getDimensionPixelSize(R.dimen.material_clock_hand_padding);
        int colorForState = colorStateListW.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListW.getDefaultColor());
        this.D = new int[]{colorForState, colorForState, colorStateListW.getDefaultColor()};
        clockHandView.f3717c.add(this);
        int defaultColor = n0.g.d(context, R.color.material_timepicker_clockface).getDefaultColor();
        ColorStateList colorStateListW2 = com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 0);
        setBackgroundColor(colorStateListW2 != null ? colorStateListW2.getDefaultColor() : defaultColor);
        getViewTreeObserver().addOnPreDrawListener(new b(this));
        setFocusable(true);
        typedArrayObtainStyledAttributes.recycle();
        this.C = new c(this);
        String[] strArr = new String[12];
        Arrays.fill(strArr, "");
        this.K = strArr;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int size = sparseArray.size();
        boolean z = false;
        for (int i10 = 0; i10 < Math.max(this.K.length, size); i10++) {
            TextView textView = (TextView) sparseArray.get(i10);
            if (i10 >= this.K.length) {
                removeView(textView);
                sparseArray.remove(i10);
            } else {
                if (textView == null) {
                    textView = (TextView) layoutInflaterFrom.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i10, textView);
                    addView(textView);
                }
                textView.setText(this.K[i10]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i10));
                int i11 = (i10 / 12) + 1;
                textView.setTag(R.id.material_clock_level, Integer.valueOf(i11));
                z = i11 > 1 ? true : z;
                b1.x(textView, this.C);
                textView.setTextColor(this.M);
            }
        }
        ClockHandView clockHandView2 = this.f3713x;
        if (clockHandView2.f3716b && !z) {
            clockHandView2.f3726m = 1;
        }
        clockHandView2.f3716b = z;
        clockHandView2.invalidate();
        this.G = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_height);
        this.H = resources.getDimensionPixelSize(R.dimen.material_time_picker_minimum_screen_width);
        this.I = resources.getDimensionPixelSize(R.dimen.material_clock_size);
    }

    @Override // com.google.android.material.timepicker.e
    public final void k() throws IllegalAccessException, NoSuchMethodException, Resources.NotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        n nVar = new n();
        nVar.b(this);
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getId() != R.id.circle_center && !"skip".equals(childAt.getTag())) {
                int i11 = (Integer) childAt.getTag(R.id.material_clock_level);
                if (i11 == null) {
                    i11 = 1;
                }
                if (!map.containsKey(i11)) {
                    map.put(i11, new ArrayList());
                }
                ((List) map.get(i11)).add(childAt);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            List list = (List) entry.getValue();
            int iRound = ((Integer) entry.getKey()).intValue() == 2 ? Math.round(this.f3733v * 0.66f) : this.f3733v;
            Iterator it = list.iterator();
            float size = 0.0f;
            while (it.hasNext()) {
                int id2 = ((View) it.next()).getId();
                HashMap map2 = nVar.f8391c;
                if (!map2.containsKey(Integer.valueOf(id2))) {
                    map2.put(Integer.valueOf(id2), new i0.i());
                }
                j jVar = ((i0.i) map2.get(Integer.valueOf(id2))).f8317d;
                jVar.z = R.id.circle_center;
                jVar.A = iRound;
                jVar.B = size;
                size += 360.0f / list.size();
            }
        }
        nVar.a(this);
        setConstraintSet(null);
        requestLayout();
        int i12 = 0;
        while (true) {
            SparseArray sparseArray = this.B;
            if (i12 >= sparseArray.size()) {
                return;
            }
            ((TextView) sparseArray.get(i12)).setVisibility(0);
            i12++;
        }
    }

    public final void l() {
        SparseArray sparseArray;
        RectF rectF;
        Rect rect;
        RectF rectF2 = this.f3713x.f3721g;
        float f10 = Float.MAX_VALUE;
        TextView textView = null;
        int i10 = 0;
        while (true) {
            sparseArray = this.B;
            int size = sparseArray.size();
            rectF = this.z;
            rect = this.f3714y;
            if (i10 >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i10);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(rectF2);
                float fHeight = rectF.height() * rectF.width();
                if (fHeight < f10) {
                    textView = textView2;
                    f10 = fHeight;
                }
            }
            i10++;
        }
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            TextView textView3 = (TextView) sparseArray.get(i11);
            if (textView3 != null) {
                textView3.setSelected(textView3 == textView);
                textView3.getHitRect(rect);
                rectF.set(rect);
                textView3.getLineBounds(0, this.A);
                rectF.inset(r8.left, r8.top);
                textView3.getPaint().setShader(!RectF.intersects(rectF2, rectF) ? null : new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.D, this.E, Shader.TileMode.CLAMP));
                textView3.invalidate();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        kh.h hVarB = kh.h.b(1, this.K.length, 1, false);
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityNodeInfo.setCollectionInfo(vb.b.c(hVarB.f10353a));
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        l();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i10, int i11) throws IllegalAccessException, Resources.NotFoundException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMax = (int) (this.I / Math.max(Math.max(this.G / displayMetrics.heightPixels, this.H / displayMetrics.widthPixels), 1.0f));
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
        setMeasuredDimension(iMax, iMax);
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
    }
}
