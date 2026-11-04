package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.google.android.material.internal.CheckableImageButton;
import g7.b;
import g7.l;
import h4.i;
import h4.x;
import h5.d0;
import ha.aa;
import ha.db;
import ha.jd;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import m7.f;
import m7.g;
import m7.j;
import q7.a0;
import q7.b0;
import q7.e;
import q7.h;
import q7.n;
import q7.p;
import q7.t;
import q7.w;
import q7.y;
import q7.z;
import s7.a;
import v0.k;
import w.b1;
import w.n1;
import w.s;
import x0.j0;
import x0.k0;
import x0.s0;

/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: r1, reason: collision with root package name */
    public static final int[][] f3671r1 = {new int[]{R.attr.state_pressed}, new int[0]};
    public ColorStateList A;
    public ColorStateList B;
    public ColorStateList C;
    public ColorStateList D;
    public boolean E;
    public CharSequence F;
    public boolean G;
    public g H;
    public g I;
    public StateListDrawable K;
    public boolean L;
    public g M;
    public int M0;
    public g N;
    public int N0;
    public j O;
    public final Rect O0;
    public boolean P;
    public final Rect P0;
    public final RectF Q0;
    public final int R;
    public Typeface R0;
    public int S;
    public ColorDrawable S0;
    public int T;
    public int T0;
    public final LinkedHashSet U0;
    public int V;
    public ColorDrawable V0;
    public int W0;
    public Drawable X0;
    public ColorStateList Y0;
    public ColorStateList Z0;

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f3672a;

    /* renamed from: a1, reason: collision with root package name */
    public int f3673a1;

    /* renamed from: b, reason: collision with root package name */
    public final y f3674b;

    /* renamed from: b1, reason: collision with root package name */
    public int f3675b1;

    /* renamed from: c, reason: collision with root package name */
    public final p f3676c;

    /* renamed from: c1, reason: collision with root package name */
    public int f3677c1;

    /* renamed from: d, reason: collision with root package name */
    public EditText f3678d;

    /* renamed from: d1, reason: collision with root package name */
    public ColorStateList f3679d1;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f3680e;

    /* renamed from: e1, reason: collision with root package name */
    public int f3681e1;

    /* renamed from: f, reason: collision with root package name */
    public int f3682f;

    /* renamed from: f1, reason: collision with root package name */
    public int f3683f1;

    /* renamed from: g, reason: collision with root package name */
    public int f3684g;
    public int g1;

    /* renamed from: h, reason: collision with root package name */
    public int f3685h;

    /* renamed from: h0, reason: collision with root package name */
    public int f3686h0;

    /* renamed from: h1, reason: collision with root package name */
    public int f3687h1;

    /* renamed from: i, reason: collision with root package name */
    public int f3688i;

    /* renamed from: i1, reason: collision with root package name */
    public int f3689i1;

    /* renamed from: j, reason: collision with root package name */
    public final t f3690j;

    /* renamed from: j1, reason: collision with root package name */
    public boolean f3691j1;

    /* renamed from: k, reason: collision with root package name */
    public boolean f3692k;

    /* renamed from: k1, reason: collision with root package name */
    public final b f3693k1;
    public int l;

    /* renamed from: l1, reason: collision with root package name */
    public boolean f3694l1;

    /* renamed from: m, reason: collision with root package name */
    public boolean f3695m;

    /* renamed from: m1, reason: collision with root package name */
    public boolean f3696m1;

    /* renamed from: n, reason: collision with root package name */
    public a0 f3697n;

    /* renamed from: n1, reason: collision with root package name */
    public ValueAnimator f3698n1;

    /* renamed from: o1, reason: collision with root package name */
    public boolean f3699o1;

    /* renamed from: p, reason: collision with root package name */
    public b1 f3700p;

    /* renamed from: p1, reason: collision with root package name */
    public boolean f3701p1;

    /* renamed from: q, reason: collision with root package name */
    public int f3702q;

    /* renamed from: q1, reason: collision with root package name */
    public boolean f3703q1;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public CharSequence f3704s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f3705t;

    /* renamed from: t0, reason: collision with root package name */
    public int f3706t0;

    /* renamed from: v, reason: collision with root package name */
    public b1 f3707v;

    /* renamed from: w, reason: collision with root package name */
    public ColorStateList f3708w;

    /* renamed from: x, reason: collision with root package name */
    public int f3709x;

    /* renamed from: y, reason: collision with root package name */
    public i f3710y;
    public i z;

    public TextInputLayout(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(a.a(context, attributeSet, com.yunpan.appmanage.R.attr.textInputStyle, com.yunpan.appmanage.R.style.Widget_Design_TextInputLayout), attributeSet, com.yunpan.appmanage.R.attr.textInputStyle);
        this.f3682f = -1;
        this.f3684g = -1;
        this.f3685h = -1;
        this.f3688i = -1;
        this.f3690j = new t(this);
        this.f3697n = new jd(17);
        this.O0 = new Rect();
        this.P0 = new Rect();
        this.Q0 = new RectF();
        this.U0 = new LinkedHashSet();
        b bVar = new b(this);
        this.f3693k1 = bVar;
        this.f3703q1 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f3672a = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = r6.a.f13710a;
        bVar.S = linearInterpolator;
        bVar.i(false);
        bVar.R = linearInterpolator;
        bVar.i(false);
        if (bVar.f6071g != 8388659) {
            bVar.f6071g = 8388659;
            bVar.i(false);
        }
        int[] iArr = q6.a.C;
        l.a(context2, attributeSet, com.yunpan.appmanage.R.attr.textInputStyle, com.yunpan.appmanage.R.style.Widget_Design_TextInputLayout);
        l.b(context2, attributeSet, iArr, com.yunpan.appmanage.R.attr.textInputStyle, com.yunpan.appmanage.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 49);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.yunpan.appmanage.R.attr.textInputStyle, com.yunpan.appmanage.R.style.Widget_Design_TextInputLayout);
        s4.a aVar = new s4.a(context2, typedArrayObtainStyledAttributes);
        y yVar = new y(this, aVar);
        this.f3674b = yVar;
        this.E = typedArrayObtainStyledAttributes.getBoolean(48, true);
        setHint(typedArrayObtainStyledAttributes.getText(4));
        this.f3696m1 = typedArrayObtainStyledAttributes.getBoolean(47, true);
        this.f3694l1 = typedArrayObtainStyledAttributes.getBoolean(42, true);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            setMinEms(typedArrayObtainStyledAttributes.getInt(6, -1));
        } else if (typedArrayObtainStyledAttributes.hasValue(3)) {
            setMinWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(3, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            setMaxEms(typedArrayObtainStyledAttributes.getInt(5, -1));
        } else if (typedArrayObtainStyledAttributes.hasValue(2)) {
            setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.O = new j(j.b(context2, attributeSet, com.yunpan.appmanage.R.attr.textInputStyle, com.yunpan.appmanage.R.style.Widget_Design_TextInputLayout));
        this.R = context2.getResources().getDimensionPixelOffset(com.yunpan.appmanage.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.T = typedArrayObtainStyledAttributes.getDimensionPixelOffset(9, 0);
        this.f3686h0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(com.yunpan.appmanage.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.f3706t0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(com.yunpan.appmanage.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.V = this.f3686h0;
        float dimension = typedArrayObtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = typedArrayObtainStyledAttributes.getDimension(11, -1.0f);
        j jVar = this.O;
        jVar.getClass();
        ff.b bVar2 = new ff.b(jVar);
        if (dimension >= 0.0f) {
            bVar2.f5806e = new m7.a(dimension);
        }
        if (dimension2 >= 0.0f) {
            bVar2.f5807f = new m7.a(dimension2);
        }
        if (dimension3 >= 0.0f) {
            bVar2.f5808g = new m7.a(dimension3);
        }
        if (dimension4 >= 0.0f) {
            bVar2.f5809h = new m7.a(dimension4);
        }
        this.O = new j(bVar2);
        ColorStateList colorStateListX = c.x(context2, aVar, 7);
        if (colorStateListX != null) {
            int defaultColor = colorStateListX.getDefaultColor();
            this.f3681e1 = defaultColor;
            this.N0 = defaultColor;
            if (colorStateListX.isStateful()) {
                this.f3683f1 = colorStateListX.getColorForState(new int[]{-16842910}, -1);
                this.g1 = colorStateListX.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.f3687h1 = colorStateListX.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.g1 = this.f3681e1;
                ColorStateList colorStateListD = n0.g.d(context2, com.yunpan.appmanage.R.color.mtrl_filled_background_color);
                this.f3683f1 = colorStateListD.getColorForState(new int[]{-16842910}, -1);
                this.f3687h1 = colorStateListD.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.N0 = 0;
            this.f3681e1 = 0;
            this.f3683f1 = 0;
            this.g1 = 0;
            this.f3687h1 = 0;
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            ColorStateList colorStateListD2 = aVar.d(1);
            this.Z0 = colorStateListD2;
            this.Y0 = colorStateListD2;
        }
        ColorStateList colorStateListX2 = c.x(context2, aVar, 14);
        this.f3677c1 = typedArrayObtainStyledAttributes.getColor(14, 0);
        this.f3673a1 = n0.g.c(context2, com.yunpan.appmanage.R.color.mtrl_textinput_default_box_stroke_color);
        this.f3689i1 = n0.g.c(context2, com.yunpan.appmanage.R.color.mtrl_textinput_disabled_color);
        this.f3675b1 = n0.g.c(context2, com.yunpan.appmanage.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListX2 != null) {
            setBoxStrokeColorStateList(colorStateListX2);
        }
        if (typedArrayObtainStyledAttributes.hasValue(15)) {
            setBoxStrokeErrorColor(c.x(context2, aVar, 15));
        }
        if (typedArrayObtainStyledAttributes.getResourceId(49, -1) != -1) {
            setHintTextAppearance(typedArrayObtainStyledAttributes.getResourceId(49, 0));
        }
        this.C = aVar.d(24);
        this.D = aVar.d(25);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(40, 0);
        CharSequence text = typedArrayObtainStyledAttributes.getText(35);
        int i10 = typedArrayObtainStyledAttributes.getInt(34, 1);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(36, false);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(45, 0);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(44, false);
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(43);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(57, 0);
        CharSequence text3 = typedArrayObtainStyledAttributes.getText(56);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(18, false);
        setCounterMaxLength(typedArrayObtainStyledAttributes.getInt(19, -1));
        this.r = typedArrayObtainStyledAttributes.getResourceId(22, 0);
        this.f3702q = typedArrayObtainStyledAttributes.getResourceId(20, 0);
        setBoxBackgroundMode(typedArrayObtainStyledAttributes.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i10);
        setCounterOverflowTextAppearance(this.f3702q);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.r);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (typedArrayObtainStyledAttributes.hasValue(41)) {
            setErrorTextColor(aVar.d(41));
        }
        if (typedArrayObtainStyledAttributes.hasValue(46)) {
            setHelperTextColor(aVar.d(46));
        }
        if (typedArrayObtainStyledAttributes.hasValue(50)) {
            setHintTextColor(aVar.d(50));
        }
        if (typedArrayObtainStyledAttributes.hasValue(23)) {
            setCounterTextColor(aVar.d(23));
        }
        if (typedArrayObtainStyledAttributes.hasValue(21)) {
            setCounterOverflowTextColor(aVar.d(21));
        }
        if (typedArrayObtainStyledAttributes.hasValue(58)) {
            setPlaceholderTextColor(aVar.d(58));
        }
        p pVar = new p(this, aVar);
        this.f3676c = pVar;
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(0, true);
        aVar.r();
        x0.b1.B(this, 2);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26 && i11 >= 26) {
            s0.m(this, 1);
        }
        frameLayout.addView(yVar);
        frameLayout.addView(pVar);
        addView(frameLayout);
        setEnabled(z11);
        setHelperTextEnabled(z4);
        setErrorEnabled(z);
        setCounterEnabled(z10);
        setHelperText(text2);
    }

    private Drawable getEditTextBoxBackground() {
        Drawable layerDrawable;
        LayerDrawable layerDrawable2;
        EditText editText = this.f3678d;
        if (!(editText instanceof AutoCompleteTextView) || p000if.a.Z(editText)) {
            return this.H;
        }
        int iS = d.s(com.yunpan.appmanage.R.attr.colorControlHighlight, this.f3678d);
        int i10 = this.S;
        int[][] iArr = f3671r1;
        if (i10 != 2) {
            if (i10 != 1) {
                return null;
            }
            g gVar = this.H;
            int i11 = this.N0;
            int[] iArr2 = {d.K(iS, 0.1f, i11), i11};
            if (Build.VERSION.SDK_INT >= 21) {
                layerDrawable = new RippleDrawable(new ColorStateList(iArr, iArr2), gVar, gVar);
            } else {
                g gVar2 = new g(gVar.f10920a.f10904a);
                gVar2.k(new ColorStateList(iArr, iArr2));
                layerDrawable = new LayerDrawable(new Drawable[]{gVar, gVar2});
            }
            return layerDrawable;
        }
        Context context = getContext();
        g gVar3 = this.H;
        TypedValue typedValueF = android.support.v4.media.session.b.F(context, "TextInputLayout", com.yunpan.appmanage.R.attr.colorSurface);
        int i12 = typedValueF.resourceId;
        int iC = i12 != 0 ? n0.g.c(context, i12) : typedValueF.data;
        g gVar4 = new g(gVar3.f10920a.f10904a);
        int iK = d.K(iS, 0.1f, iC);
        gVar4.k(new ColorStateList(iArr, new int[]{iK, 0}));
        if (Build.VERSION.SDK_INT >= 21) {
            gVar4.setTint(iC);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iK, iC});
            g gVar5 = new g(gVar3.f10920a.f10904a);
            gVar5.setTint(-1);
            layerDrawable2 = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, gVar4, gVar5), gVar3});
        } else {
            layerDrawable2 = new LayerDrawable(new Drawable[]{gVar4, gVar3});
        }
        return layerDrawable2;
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.K == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.K = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.K.addState(new int[0], f(false));
        }
        return this.K;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.I == null) {
            this.I = f(true);
        }
        return this.I;
    }

    public static void k(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                k((ViewGroup) childAt, z);
            }
        }
    }

    private void setEditText(EditText editText) throws Resources.NotFoundException {
        if (this.f3678d != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() != 3) {
            boolean z = editText instanceof TextInputEditText;
        }
        this.f3678d = editText;
        int i10 = this.f3682f;
        if (i10 != -1) {
            setMinEms(i10);
        } else {
            setMinWidth(this.f3685h);
        }
        int i11 = this.f3684g;
        if (i11 != -1) {
            setMaxEms(i11);
        } else {
            setMaxWidth(this.f3688i);
        }
        this.L = false;
        i();
        setTextInputAccessibilityDelegate(new z(this));
        Typeface typeface = this.f3678d.getTypeface();
        b bVar = this.f3693k1;
        bVar.n(typeface);
        float textSize = this.f3678d.getTextSize();
        if (bVar.f6073h != textSize) {
            bVar.f6073h = textSize;
            bVar.i(false);
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 21) {
            float letterSpacing = this.f3678d.getLetterSpacing();
            if (bVar.Y != letterSpacing) {
                bVar.Y = letterSpacing;
                bVar.i(false);
            }
        }
        int gravity = this.f3678d.getGravity();
        int i13 = (gravity & (-113)) | 48;
        if (bVar.f6071g != i13) {
            bVar.f6071g = i13;
            bVar.i(false);
        }
        if (bVar.f6069f != gravity) {
            bVar.f6069f = gravity;
            bVar.i(false);
        }
        this.f3678d.addTextChangedListener(new aa(this, 2));
        if (this.Y0 == null) {
            this.Y0 = this.f3678d.getHintTextColors();
        }
        if (this.E) {
            if (TextUtils.isEmpty(this.F)) {
                CharSequence hint = this.f3678d.getHint();
                this.f3680e = hint;
                setHint(hint);
                this.f3678d.setHint((CharSequence) null);
            }
            this.G = true;
        }
        if (i12 >= 29) {
            p();
        }
        if (this.f3700p != null) {
            n(this.f3678d.getText());
        }
        r();
        this.f3690j.b();
        this.f3674b.bringToFront();
        p pVar = this.f3676c;
        pVar.bringToFront();
        Iterator it = this.U0.iterator();
        while (it.hasNext()) {
            ((n) it.next()).a(this);
        }
        pVar.m();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        u(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.F)) {
            return;
        }
        this.F = charSequence;
        b bVar = this.f3693k1;
        if (charSequence == null || !TextUtils.equals(bVar.A, charSequence)) {
            bVar.A = charSequence;
            bVar.B = null;
            Bitmap bitmap = bVar.F;
            if (bitmap != null) {
                bitmap.recycle();
                bVar.F = null;
            }
            bVar.i(false);
        }
        if (this.f3691j1) {
            return;
        }
        j();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.f3705t == z) {
            return;
        }
        if (z) {
            b1 b1Var = this.f3707v;
            if (b1Var != null) {
                this.f3672a.addView(b1Var);
                this.f3707v.setVisibility(0);
            }
        } else {
            b1 b1Var2 = this.f3707v;
            if (b1Var2 != null) {
                b1Var2.setVisibility(8);
            }
            this.f3707v = null;
        }
        this.f3705t = z;
    }

    public final void a(float f10) {
        int i10 = 1;
        b bVar = this.f3693k1;
        if (bVar.f6061b == f10) {
            return;
        }
        if (this.f3698n1 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f3698n1 = valueAnimator;
            valueAnimator.setInterpolator(d.c0(getContext(), com.yunpan.appmanage.R.attr.motionEasingEmphasizedInterpolator, r6.a.f13711b));
            this.f3698n1.setDuration(d.b0(getContext(), com.yunpan.appmanage.R.attr.motionDurationMedium4, 167));
            this.f3698n1.addUpdateListener(new p7.b(i10, this));
        }
        this.f3698n1.setFloatValues(bVar.f6061b, f10);
        this.f3698n1.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) throws Resources.NotFoundException {
        if (!(view instanceof EditText)) {
            super.addView(view, i10, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f3672a;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        t();
        setEditText((EditText) view);
    }

    public final void b() {
        int i10;
        int i11;
        g gVar = this.H;
        if (gVar == null) {
            return;
        }
        j jVar = gVar.f10920a.f10904a;
        j jVar2 = this.O;
        if (jVar != jVar2) {
            gVar.setShapeAppearanceModel(jVar2);
        }
        if (this.S == 2 && (i10 = this.V) > -1 && (i11 = this.M0) != 0) {
            g gVar2 = this.H;
            gVar2.f10920a.f10913j = i10;
            gVar2.invalidateSelf();
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(i11);
            f fVar = gVar2.f10920a;
            if (fVar.f10907d != colorStateListValueOf) {
                fVar.f10907d = colorStateListValueOf;
                gVar2.onStateChange(gVar2.getState());
            }
        }
        int iB = this.N0;
        if (this.S == 1) {
            iB = p0.a.b(this.N0, d.t(getContext(), com.yunpan.appmanage.R.attr.colorSurface, 0));
        }
        this.N0 = iB;
        this.H.k(ColorStateList.valueOf(iB));
        g gVar3 = this.M;
        if (gVar3 != null && this.N != null) {
            if (this.V > -1 && this.M0 != 0) {
                gVar3.k(this.f3678d.isFocused() ? ColorStateList.valueOf(this.f3673a1) : ColorStateList.valueOf(this.M0));
                this.N.k(ColorStateList.valueOf(this.M0));
            }
            invalidate();
        }
        s();
    }

    public final int c() {
        float fE;
        if (!this.E) {
            return 0;
        }
        int i10 = this.S;
        b bVar = this.f3693k1;
        if (i10 == 0) {
            fE = bVar.e();
        } else {
            if (i10 != 2) {
                return 0;
            }
            fE = bVar.e() / 2.0f;
        }
        return (int) fE;
    }

    public final i d() {
        i iVar = new i();
        iVar.f6487c = d.b0(getContext(), com.yunpan.appmanage.R.attr.motionDurationShort2, 87);
        iVar.f6488d = d.c0(getContext(), com.yunpan.appmanage.R.attr.motionEasingLinearInterpolator, r6.a.f13710a);
        return iVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i10) {
        EditText editText = this.f3678d;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i10);
            return;
        }
        if (this.f3680e != null) {
            boolean z = this.G;
            this.G = false;
            CharSequence hint = editText.getHint();
            this.f3678d.setHint(this.f3680e);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i10);
                return;
            } finally {
                this.f3678d.setHint(hint);
                this.G = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i10);
        onProvideAutofillVirtualStructure(viewStructure, i10);
        FrameLayout frameLayout = this.f3672a;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i11 = 0; i11 < frameLayout.getChildCount(); i11++) {
            View childAt = frameLayout.getChildAt(i11);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i11);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i10);
            if (childAt == this.f3678d) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.f3701p1 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f3701p1 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        g gVar;
        super.draw(canvas);
        boolean z = this.E;
        b bVar = this.f3693k1;
        if (z) {
            bVar.getClass();
            int iSave = canvas.save();
            if (bVar.B != null) {
                RectF rectF = bVar.f6067e;
                if (rectF.width() > 0.0f && rectF.height() > 0.0f) {
                    TextPaint textPaint = bVar.P;
                    textPaint.setTextSize(bVar.I);
                    float f10 = bVar.f6081p;
                    float f11 = bVar.f6082q;
                    boolean z4 = bVar.E && bVar.F != null;
                    float f12 = bVar.H;
                    if (f12 != 1.0f) {
                        canvas.scale(f12, f12, f10, f11);
                    }
                    if (z4) {
                        canvas.drawBitmap(bVar.F, f10, f11, bVar.G);
                        canvas.restoreToCount(iSave);
                    } else {
                        if (bVar.f6070f0 <= 1 || bVar.C || bVar.E) {
                            canvas.translate(f10, f11);
                            bVar.f6060a0.draw(canvas);
                        } else {
                            float lineStart = bVar.f6081p - bVar.f6060a0.getLineStart(0);
                            int alpha = textPaint.getAlpha();
                            canvas.translate(lineStart, f11);
                            float f13 = alpha;
                            textPaint.setAlpha((int) (bVar.f6066d0 * f13));
                            int i10 = Build.VERSION.SDK_INT;
                            if (i10 >= 31) {
                                float f14 = bVar.J;
                                float f15 = bVar.K;
                                float f16 = bVar.L;
                                int i11 = bVar.M;
                                textPaint.setShadowLayer(f14, f15, f16, p0.a.d(i11, (textPaint.getAlpha() * Color.alpha(i11)) / 255));
                            }
                            bVar.f6060a0.draw(canvas);
                            textPaint.setAlpha((int) (bVar.f6064c0 * f13));
                            if (i10 >= 31) {
                                float f17 = bVar.J;
                                float f18 = bVar.K;
                                float f19 = bVar.L;
                                int i12 = bVar.M;
                                textPaint.setShadowLayer(f17, f18, f19, p0.a.d(i12, (Color.alpha(i12) * textPaint.getAlpha()) / 255));
                            }
                            int lineBaseline = bVar.f6060a0.getLineBaseline(0);
                            CharSequence charSequence = bVar.f6068e0;
                            float f20 = lineBaseline;
                            canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f20, textPaint);
                            if (i10 >= 31) {
                                textPaint.setShadowLayer(bVar.J, bVar.K, bVar.L, bVar.M);
                            }
                            String strTrim = bVar.f6068e0.toString().trim();
                            if (strTrim.endsWith("…")) {
                                strTrim = android.support.v4.media.session.a.l(1, 0, strTrim);
                            }
                            String str = strTrim;
                            textPaint.setAlpha(alpha);
                            canvas.drawText(str, 0, Math.min(bVar.f6060a0.getLineEnd(0), str.length()), 0.0f, f20, (Paint) textPaint);
                        }
                        canvas.restoreToCount(iSave);
                    }
                }
            }
        }
        if (this.N == null || (gVar = this.M) == null) {
            return;
        }
        gVar.draw(canvas);
        if (this.f3678d.isFocused()) {
            Rect bounds = this.N.getBounds();
            Rect bounds2 = this.M.getBounds();
            float f21 = bVar.f6061b;
            int iCenterX = bounds2.centerX();
            bounds.left = r6.a.c(iCenterX, f21, bounds2.left);
            bounds.right = r6.a.c(iCenterX, f21, bounds2.right);
            this.N.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void drawableStateChanged() throws Resources.NotFoundException {
        boolean z;
        ColorStateList colorStateList;
        if (this.f3699o1) {
            return;
        }
        this.f3699o1 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        b bVar = this.f3693k1;
        if (bVar != null) {
            bVar.N = drawableState;
            ColorStateList colorStateList2 = bVar.f6077k;
            if ((colorStateList2 == null || !colorStateList2.isStateful()) && ((colorStateList = bVar.f6076j) == null || !colorStateList.isStateful())) {
                z = false;
            } else {
                bVar.i(false);
                z = true;
            }
        }
        if (this.f3678d != null) {
            u(x0.b1.m(this) && isEnabled(), false);
        }
        r();
        x();
        if (z) {
            invalidate();
        }
        this.f3699o1 = false;
    }

    public final boolean e() {
        return this.E && !TextUtils.isEmpty(this.F) && (this.H instanceof h);
    }

    public final g f(boolean z) throws Resources.NotFoundException {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(com.yunpan.appmanage.R.dimen.mtrl_shape_corner_size_small_component);
        float f10 = z ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f3678d;
        float popupElevation = editText instanceof w ? ((w) editText).getPopupElevation() : getResources().getDimensionPixelOffset(com.yunpan.appmanage.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(com.yunpan.appmanage.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        ff.b bVar = new ff.b(1);
        bVar.f5806e = new m7.a(f10);
        bVar.f5807f = new m7.a(f10);
        bVar.f5809h = new m7.a(dimensionPixelOffset);
        bVar.f5808g = new m7.a(dimensionPixelOffset);
        j jVar = new j(bVar);
        EditText editText2 = this.f3678d;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof w ? ((w) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = g.f10919y;
            TypedValue typedValueF = android.support.v4.media.session.b.F(context, g.class.getSimpleName(), com.yunpan.appmanage.R.attr.colorSurface);
            int i10 = typedValueF.resourceId;
            dropDownBackgroundTintList = ColorStateList.valueOf(i10 != 0 ? n0.g.c(context, i10) : typedValueF.data);
        }
        g gVar = new g();
        gVar.i(context);
        gVar.k(dropDownBackgroundTintList);
        gVar.j(popupElevation);
        gVar.setShapeAppearanceModel(jVar);
        f fVar = gVar.f10920a;
        if (fVar.f10910g == null) {
            fVar.f10910g = new Rect();
        }
        gVar.f10920a.f10910g.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        gVar.invalidateSelf();
        return gVar;
    }

    public final int g(int i10, boolean z) {
        return ((z || getPrefixText() == null) ? (!z || getSuffixText() == null) ? this.f3678d.getCompoundPaddingLeft() : this.f3676c.c() : this.f3674b.a()) + i10;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f3678d;
        if (editText == null) {
            return super.getBaseline();
        }
        return c() + getPaddingTop() + editText.getBaseline();
    }

    public g getBoxBackground() {
        int i10 = this.S;
        if (i10 == 1 || i10 == 2) {
            return this.H;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.N0;
    }

    public int getBoxBackgroundMode() {
        return this.S;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.T;
    }

    public float getBoxCornerRadiusBottomEnd() {
        boolean zF = l.f(this);
        RectF rectF = this.Q0;
        return zF ? this.O.f10948h.a(rectF) : this.O.f10947g.a(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        boolean zF = l.f(this);
        RectF rectF = this.Q0;
        return zF ? this.O.f10947g.a(rectF) : this.O.f10948h.a(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        boolean zF = l.f(this);
        RectF rectF = this.Q0;
        return zF ? this.O.f10945e.a(rectF) : this.O.f10946f.a(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        boolean zF = l.f(this);
        RectF rectF = this.Q0;
        return zF ? this.O.f10946f.a(rectF) : this.O.f10945e.a(rectF);
    }

    public int getBoxStrokeColor() {
        return this.f3677c1;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f3679d1;
    }

    public int getBoxStrokeWidth() {
        return this.f3686h0;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f3706t0;
    }

    public int getCounterMaxLength() {
        return this.l;
    }

    public CharSequence getCounterOverflowDescription() {
        b1 b1Var;
        if (this.f3692k && this.f3695m && (b1Var = this.f3700p) != null) {
            return b1Var.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.B;
    }

    public ColorStateList getCounterTextColor() {
        return this.A;
    }

    public ColorStateList getCursorColor() {
        return this.C;
    }

    public ColorStateList getCursorErrorColor() {
        return this.D;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.Y0;
    }

    public EditText getEditText() {
        return this.f3678d;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f3676c.f13097g.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f3676c.f13097g.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.f3676c.f13102m;
    }

    public int getEndIconMode() {
        return this.f3676c.f13099i;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.f3676c.f13103n;
    }

    public CheckableImageButton getEndIconView() {
        return this.f3676c.f13097g;
    }

    public CharSequence getError() {
        t tVar = this.f3690j;
        if (tVar.f13136q) {
            return tVar.f13135p;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f3690j.f13138t;
    }

    public CharSequence getErrorContentDescription() {
        return this.f3690j.f13137s;
    }

    public int getErrorCurrentTextColors() {
        b1 b1Var = this.f3690j.r;
        if (b1Var != null) {
            return b1Var.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.f3676c.f13093c.getDrawable();
    }

    public CharSequence getHelperText() {
        t tVar = this.f3690j;
        if (tVar.f13142x) {
            return tVar.f13141w;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        b1 b1Var = this.f3690j.f13143y;
        if (b1Var != null) {
            return b1Var.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.E) {
            return this.F;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.f3693k1.e();
    }

    public final int getHintCurrentCollapsedTextColor() {
        b bVar = this.f3693k1;
        return bVar.f(bVar.f6077k);
    }

    public ColorStateList getHintTextColor() {
        return this.Z0;
    }

    public a0 getLengthCounter() {
        return this.f3697n;
    }

    public int getMaxEms() {
        return this.f3684g;
    }

    public int getMaxWidth() {
        return this.f3688i;
    }

    public int getMinEms() {
        return this.f3682f;
    }

    public int getMinWidth() {
        return this.f3685h;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f3676c.f13097g.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f3676c.f13097g.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.f3705t) {
            return this.f3704s;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f3709x;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f3708w;
    }

    public CharSequence getPrefixText() {
        return this.f3674b.f13161c;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f3674b.f13160b.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f3674b.f13160b;
    }

    public j getShapeAppearanceModel() {
        return this.O;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f3674b.f13162d.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f3674b.f13162d.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.f3674b.f13165g;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.f3674b.f13166h;
    }

    public CharSequence getSuffixText() {
        return this.f3676c.f13105q;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f3676c.r.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f3676c.r;
    }

    public Typeface getTypeface() {
        return this.R0;
    }

    public final int h(int i10, boolean z) {
        return i10 - ((z || getSuffixText() == null) ? (!z || getPrefixText() == null) ? this.f3678d.getCompoundPaddingRight() : this.f3674b.a() : this.f3676c.c());
    }

    public final void i() throws Resources.NotFoundException {
        int i10 = this.S;
        if (i10 == 0) {
            this.H = null;
            this.M = null;
            this.N = null;
        } else if (i10 == 1) {
            this.H = new g(this.O);
            this.M = new g();
            this.N = new g();
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException(android.support.v4.media.session.a.s(new StringBuilder(), this.S, " is illegal; only @BoxBackgroundMode constants are supported."));
            }
            if (!this.E || (this.H instanceof h)) {
                this.H = new g(this.O);
            } else {
                j jVar = this.O;
                int i11 = h.A;
                if (jVar == null) {
                    jVar = new j();
                }
                e eVar = new e(jVar, new RectF());
                this.H = Build.VERSION.SDK_INT >= 18 ? new q7.g(eVar) : new q7.f(eVar);
            }
            this.M = null;
            this.N = null;
        }
        s();
        x();
        if (this.S == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.T = getResources().getDimensionPixelSize(com.yunpan.appmanage.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (c.K(getContext())) {
                this.T = getResources().getDimensionPixelSize(com.yunpan.appmanage.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.f3678d != null && this.S == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText = this.f3678d;
                WeakHashMap weakHashMap = x0.b1.f17953a;
                k0.k(editText, k0.f(editText), getResources().getDimensionPixelSize(com.yunpan.appmanage.R.dimen.material_filled_edittext_font_2_0_padding_top), k0.e(this.f3678d), getResources().getDimensionPixelSize(com.yunpan.appmanage.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (c.K(getContext())) {
                EditText editText2 = this.f3678d;
                WeakHashMap weakHashMap2 = x0.b1.f17953a;
                k0.k(editText2, k0.f(editText2), getResources().getDimensionPixelSize(com.yunpan.appmanage.R.dimen.material_filled_edittext_font_1_3_padding_top), k0.e(this.f3678d), getResources().getDimensionPixelSize(com.yunpan.appmanage.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.S != 0) {
            t();
        }
        EditText editText3 = this.f3678d;
        if (editText3 instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText3;
            if (Build.VERSION.SDK_INT < 21 || autoCompleteTextView.getDropDownBackground() != null) {
                return;
            }
            int i12 = this.S;
            if (i12 == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
            } else if (i12 == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j() {
        float f10;
        float f11;
        float f12;
        RectF rectF;
        float f13;
        int i10;
        int i11;
        if (e()) {
            int width = this.f3678d.getWidth();
            int gravity = this.f3678d.getGravity();
            b bVar = this.f3693k1;
            boolean zB = bVar.b(bVar.A);
            bVar.C = zB;
            Rect rect = bVar.f6065d;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (zB) {
                        i11 = rect.left;
                        f12 = i11;
                    } else {
                        f10 = rect.right;
                        f11 = bVar.f6062b0;
                    }
                } else if (zB) {
                    f10 = rect.right;
                    f11 = bVar.f6062b0;
                } else {
                    i11 = rect.left;
                    f12 = i11;
                }
                float fMax = Math.max(f12, rect.left);
                rectF = this.Q0;
                rectF.left = fMax;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f13 = (width / 2.0f) + (bVar.f6062b0 / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (bVar.C) {
                        f13 = fMax + bVar.f6062b0;
                    } else {
                        i10 = rect.right;
                        f13 = i10;
                    }
                } else if (bVar.C) {
                    i10 = rect.right;
                    f13 = i10;
                } else {
                    f13 = bVar.f6062b0 + fMax;
                }
                rectF.right = Math.min(f13, rect.right);
                rectF.bottom = bVar.e() + rect.top;
                if (rectF.width() > 0.0f || rectF.height() <= 0.0f) {
                }
                float f14 = rectF.left;
                float f15 = this.R;
                rectF.left = f14 - f15;
                rectF.right += f15;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.V);
                h hVar = (h) this.H;
                hVar.getClass();
                hVar.o(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f10 = width / 2.0f;
            f11 = bVar.f6062b0 / 2.0f;
            f12 = f10 - f11;
            float fMax2 = Math.max(f12, rect.left);
            rectF = this.Q0;
            rectF.left = fMax2;
            rectF.top = rect.top;
            if (gravity != 17) {
                f13 = (width / 2.0f) + (bVar.f6062b0 / 2.0f);
            }
            rectF.right = Math.min(f13, rect.right);
            rectF.bottom = bVar.e() + rect.top;
            if (rectF.width() > 0.0f) {
            }
        }
    }

    public final void l(b1 b1Var, int i10) {
        try {
            d.b.o0(b1Var, i10);
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (b1Var.getTextColors().getDefaultColor() != -65281) {
                return;
            }
            d.b.o0(b1Var, com.yunpan.appmanage.R.style.TextAppearance_AppCompat_Caption);
            b1Var.setTextColor(n0.g.c(getContext(), com.yunpan.appmanage.R.color.design_error));
        }
    }

    public final boolean m() {
        t tVar = this.f3690j;
        return (tVar.f13134o != 1 || tVar.r == null || TextUtils.isEmpty(tVar.f13135p)) ? false : true;
    }

    public final void n(Editable editable) throws Resources.NotFoundException {
        ((jd) this.f3697n).getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z = this.f3695m;
        int i10 = this.l;
        String string = null;
        if (i10 == -1) {
            this.f3700p.setText(String.valueOf(length));
            this.f3700p.setContentDescription(null);
            this.f3695m = false;
        } else {
            this.f3695m = length > i10;
            Context context = getContext();
            this.f3700p.setContentDescription(context.getString(this.f3695m ? com.yunpan.appmanage.R.string.character_counter_overflowed_content_description : com.yunpan.appmanage.R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.l)));
            if (z != this.f3695m) {
                o();
            }
            String str = v0.b.f16306b;
            Locale locale = Locale.getDefault();
            int i11 = k.f16322a;
            v0.b bVar = v0.j.a(locale) == 1 ? v0.b.f16309e : v0.b.f16308d;
            b1 b1Var = this.f3700p;
            String string2 = getContext().getString(com.yunpan.appmanage.R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.l));
            if (string2 == null) {
                bVar.getClass();
            } else {
                bVar.getClass();
                d0 d0Var = v0.i.f16318a;
                string = bVar.c(string2).toString();
            }
            b1Var.setText(string);
        }
        if (this.f3678d == null || z == this.f3695m) {
            return;
        }
        u(false, false);
        x();
        r();
    }

    public final void o() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        b1 b1Var = this.f3700p;
        if (b1Var != null) {
            l(b1Var, this.f3695m ? this.f3702q : this.r);
            if (!this.f3695m && (colorStateList2 = this.A) != null) {
                this.f3700p.setTextColor(colorStateList2);
            }
            if (!this.f3695m || (colorStateList = this.B) == null) {
                return;
            }
            this.f3700p.setTextColor(colorStateList);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f3693k1.h(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int iMax;
        p pVar = this.f3676c;
        pVar.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z = false;
        this.f3703q1 = false;
        if (this.f3678d != null && this.f3678d.getMeasuredHeight() < (iMax = Math.max(pVar.getMeasuredHeight(), this.f3674b.getMeasuredHeight()))) {
            this.f3678d.setMinimumHeight(iMax);
            z = true;
        }
        boolean zQ = q();
        if (z || zQ) {
            this.f3678d.post(new db(12, this));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        EditText editText = this.f3678d;
        if (editText != null) {
            ThreadLocal threadLocal = g7.c.f6090a;
            int width = editText.getWidth();
            int height = editText.getHeight();
            Rect rect = this.O0;
            rect.set(0, 0, width, height);
            ThreadLocal threadLocal2 = g7.c.f6090a;
            Matrix matrix = (Matrix) threadLocal2.get();
            if (matrix == null) {
                matrix = new Matrix();
                threadLocal2.set(matrix);
            } else {
                matrix.reset();
            }
            g7.c.a(this, editText, matrix);
            ThreadLocal threadLocal3 = g7.c.f6091b;
            RectF rectF = (RectF) threadLocal3.get();
            if (rectF == null) {
                rectF = new RectF();
                threadLocal3.set(rectF);
            }
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
            g gVar = this.M;
            if (gVar != null) {
                int i14 = rect.bottom;
                gVar.setBounds(rect.left, i14 - this.f3686h0, rect.right, i14);
            }
            g gVar2 = this.N;
            if (gVar2 != null) {
                int i15 = rect.bottom;
                gVar2.setBounds(rect.left, i15 - this.f3706t0, rect.right, i15);
            }
            if (this.E) {
                float textSize = this.f3678d.getTextSize();
                b bVar = this.f3693k1;
                if (bVar.f6073h != textSize) {
                    bVar.f6073h = textSize;
                    bVar.i(false);
                }
                int gravity = this.f3678d.getGravity();
                int i16 = (gravity & (-113)) | 48;
                if (bVar.f6071g != i16) {
                    bVar.f6071g = i16;
                    bVar.i(false);
                }
                if (bVar.f6069f != gravity) {
                    bVar.f6069f = gravity;
                    bVar.i(false);
                }
                if (this.f3678d == null) {
                    throw new IllegalStateException();
                }
                boolean zF = l.f(this);
                int i17 = rect.bottom;
                Rect rect2 = this.P0;
                rect2.bottom = i17;
                int i18 = this.S;
                if (i18 == 1) {
                    rect2.left = g(rect.left, zF);
                    rect2.top = rect.top + this.T;
                    rect2.right = h(rect.right, zF);
                } else if (i18 != 2) {
                    rect2.left = g(rect.left, zF);
                    rect2.top = getPaddingTop();
                    rect2.right = h(rect.right, zF);
                } else {
                    rect2.left = this.f3678d.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - c();
                    rect2.right = rect.right - this.f3678d.getPaddingRight();
                }
                int i19 = rect2.left;
                int i20 = rect2.top;
                int i21 = rect2.right;
                int i22 = rect2.bottom;
                Rect rect3 = bVar.f6065d;
                if (rect3.left != i19 || rect3.top != i20 || rect3.right != i21 || rect3.bottom != i22) {
                    rect3.set(i19, i20, i21, i22);
                    bVar.O = true;
                }
                if (this.f3678d == null) {
                    throw new IllegalStateException();
                }
                TextPaint textPaint = bVar.Q;
                textPaint.setTextSize(bVar.f6073h);
                textPaint.setTypeface(bVar.f6085u);
                if (Build.VERSION.SDK_INT >= 21) {
                    textPaint.setLetterSpacing(bVar.Y);
                }
                float f10 = -textPaint.ascent();
                rect2.left = this.f3678d.getCompoundPaddingLeft() + rect.left;
                rect2.top = (this.S != 1 || this.f3678d.getMinLines() > 1) ? rect.top + this.f3678d.getCompoundPaddingTop() : (int) (rect.centerY() - (f10 / 2.0f));
                rect2.right = rect.right - this.f3678d.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.S != 1 || this.f3678d.getMinLines() > 1) ? rect.bottom - this.f3678d.getCompoundPaddingBottom() : (int) (rect2.top + f10);
                rect2.bottom = compoundPaddingBottom;
                int i23 = rect2.left;
                int i24 = rect2.top;
                int i25 = rect2.right;
                Rect rect4 = bVar.f6063c;
                if (rect4.left != i23 || rect4.top != i24 || rect4.right != i25 || rect4.bottom != compoundPaddingBottom) {
                    rect4.set(i23, i24, i25, compoundPaddingBottom);
                    bVar.O = true;
                }
                bVar.i(false);
                if (!e() || this.f3691j1) {
                    return;
                }
                j();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        EditText editText;
        super.onMeasure(i10, i11);
        boolean z = this.f3703q1;
        p pVar = this.f3676c;
        if (!z) {
            pVar.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f3703q1 = true;
        }
        if (this.f3707v != null && (editText = this.f3678d) != null) {
            this.f3707v.setGravity(editText.getGravity());
            this.f3707v.setPadding(this.f3678d.getCompoundPaddingLeft(), this.f3678d.getCompoundPaddingTop(), this.f3678d.getCompoundPaddingRight(), this.f3678d.getCompoundPaddingBottom());
        }
        pVar.m();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException {
        if (!(parcelable instanceof b0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b0 b0Var = (b0) parcelable;
        super.onRestoreInstanceState(b0Var.f4709a);
        setError(b0Var.f13057c);
        if (b0Var.f13058d) {
            post(new androidx.activity.h(15, this));
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        boolean z = i10 == 1;
        if (z != this.P) {
            m7.c cVar = this.O.f10945e;
            RectF rectF = this.Q0;
            float fA = cVar.a(rectF);
            float fA2 = this.O.f10946f.a(rectF);
            float fA3 = this.O.f10948h.a(rectF);
            float fA4 = this.O.f10947g.a(rectF);
            j jVar = this.O;
            qf.c cVar2 = jVar.f10941a;
            qf.c cVar3 = jVar.f10942b;
            qf.c cVar4 = jVar.f10944d;
            qf.c cVar5 = jVar.f10943c;
            ff.b bVar = new ff.b(1);
            bVar.f5802a = cVar3;
            ff.b.a(cVar3);
            bVar.f5803b = cVar2;
            ff.b.a(cVar2);
            bVar.f5805d = cVar5;
            ff.b.a(cVar5);
            bVar.f5804c = cVar4;
            ff.b.a(cVar4);
            bVar.f5806e = new m7.a(fA2);
            bVar.f5807f = new m7.a(fA);
            bVar.f5809h = new m7.a(fA4);
            bVar.f5808g = new m7.a(fA3);
            j jVar2 = new j(bVar);
            this.P = z;
            setShapeAppearanceModel(jVar2);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        b0 b0Var = new b0(super.onSaveInstanceState());
        if (m()) {
            b0Var.f13057c = getError();
        }
        p pVar = this.f3676c;
        b0Var.f13058d = pVar.f13099i != 0 && pVar.f13097g.f3616d;
        return b0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p() throws Resources.NotFoundException {
        ColorStateList colorStateList;
        ColorStateList colorStateListValueOf = this.C;
        if (colorStateListValueOf == null) {
            Context context = getContext();
            TypedValue typedValueD = android.support.v4.media.session.b.D(context, com.yunpan.appmanage.R.attr.colorControlActivated);
            if (typedValueD != null) {
                int i10 = typedValueD.resourceId;
                if (i10 != 0) {
                    colorStateListValueOf = n0.g.d(context, i10);
                } else {
                    int i11 = typedValueD.data;
                    colorStateListValueOf = i11 != 0 ? ColorStateList.valueOf(i11) : null;
                }
            }
        }
        EditText editText = this.f3678d;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable drawableMutate = c.n0(this.f3678d.getTextCursorDrawable()).mutate();
        if ((m() || (this.f3700p != null && this.f3695m)) && (colorStateList = this.D) != null) {
            colorStateListValueOf = colorStateList;
        }
        c.f0(drawableMutate, colorStateListValueOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean q() {
        boolean z;
        if (this.f3678d == null) {
            return false;
        }
        CheckableImageButton checkableImageButton = null;
        boolean z4 = true;
        if (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) {
            y yVar = this.f3674b;
            if (yVar.getMeasuredWidth() > 0) {
                int measuredWidth = yVar.getMeasuredWidth() - this.f3678d.getPaddingLeft();
                if (this.S0 == null || this.T0 != measuredWidth) {
                    ColorDrawable colorDrawable = new ColorDrawable();
                    this.S0 = colorDrawable;
                    this.T0 = measuredWidth;
                    colorDrawable.setBounds(0, 0, measuredWidth, 1);
                }
                Drawable[] drawableArrY = d.b.y(this.f3678d);
                Drawable drawable = drawableArrY[0];
                ColorDrawable colorDrawable2 = this.S0;
                if (drawable != colorDrawable2) {
                    d.b.l0(this.f3678d, colorDrawable2, drawableArrY[1], drawableArrY[2], drawableArrY[3]);
                    z = true;
                }
                z = false;
            } else {
                if (this.S0 != null) {
                    Drawable[] drawableArrY2 = d.b.y(this.f3678d);
                    d.b.l0(this.f3678d, null, drawableArrY2[1], drawableArrY2[2], drawableArrY2[3]);
                    this.S0 = null;
                    z = true;
                }
                z = false;
            }
        }
        p pVar = this.f3676c;
        if ((pVar.e() || ((pVar.f13099i != 0 && pVar.d()) || pVar.f13105q != null)) && pVar.getMeasuredWidth() > 0) {
            int measuredWidth2 = pVar.r.getMeasuredWidth() - this.f3678d.getPaddingRight();
            if (pVar.e()) {
                checkableImageButton = pVar.f13093c;
            } else if (pVar.f13099i != 0 && pVar.d()) {
                checkableImageButton = pVar.f13097g;
            }
            if (checkableImageButton != null) {
                measuredWidth2 = x0.p.c((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()) + checkableImageButton.getMeasuredWidth() + measuredWidth2;
            }
            Drawable[] drawableArrY3 = d.b.y(this.f3678d);
            ColorDrawable colorDrawable3 = this.V0;
            if (colorDrawable3 == null || this.W0 == measuredWidth2) {
                if (colorDrawable3 == null) {
                    ColorDrawable colorDrawable4 = new ColorDrawable();
                    this.V0 = colorDrawable4;
                    this.W0 = measuredWidth2;
                    colorDrawable4.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable2 = drawableArrY3[2];
                ColorDrawable colorDrawable5 = this.V0;
                if (drawable2 != colorDrawable5) {
                    this.X0 = drawable2;
                    d.b.l0(this.f3678d, drawableArrY3[0], drawableArrY3[1], colorDrawable5, drawableArrY3[3]);
                } else {
                    z4 = z;
                }
            } else {
                this.W0 = measuredWidth2;
                colorDrawable3.setBounds(0, 0, measuredWidth2, 1);
                d.b.l0(this.f3678d, drawableArrY3[0], drawableArrY3[1], this.V0, drawableArrY3[3]);
            }
        } else {
            if (this.V0 == null) {
                return z;
            }
            Drawable[] drawableArrY4 = d.b.y(this.f3678d);
            if (drawableArrY4[2] == this.V0) {
                d.b.l0(this.f3678d, drawableArrY4[0], drawableArrY4[1], this.X0, drawableArrY4[3]);
            } else {
                z4 = z;
            }
            this.V0 = null;
        }
        return z4;
    }

    public final void r() {
        Drawable background;
        b1 b1Var;
        EditText editText = this.f3678d;
        if (editText == null || this.S != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = n1.f17160a;
        Drawable drawableMutate = background.mutate();
        if (m()) {
            drawableMutate.setColorFilter(s.c(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.f3695m && (b1Var = this.f3700p) != null) {
            drawableMutate.setColorFilter(s.c(b1Var.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            c.k(drawableMutate);
            this.f3678d.refreshDrawableState();
        }
    }

    public final void s() {
        EditText editText = this.f3678d;
        if (editText == null || this.H == null) {
            return;
        }
        if ((this.L || editText.getBackground() == null) && this.S != 0) {
            Drawable editTextBoxBackground = getEditTextBoxBackground();
            if (Build.VERSION.SDK_INT >= 21 || !(editTextBoxBackground instanceof LayerDrawable)) {
                EditText editText2 = this.f3678d;
                WeakHashMap weakHashMap = x0.b1.f17953a;
                j0.q(editText2, editTextBoxBackground);
            } else {
                int paddingLeft = this.f3678d.getPaddingLeft();
                int paddingTop = this.f3678d.getPaddingTop();
                int paddingRight = this.f3678d.getPaddingRight();
                int paddingBottom = this.f3678d.getPaddingBottom();
                EditText editText3 = this.f3678d;
                WeakHashMap weakHashMap2 = x0.b1.f17953a;
                j0.q(editText3, editTextBoxBackground);
                this.f3678d.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
            }
            this.L = true;
        }
    }

    public void setBoxBackgroundColor(int i10) {
        if (this.N0 != i10) {
            this.N0 = i10;
            this.f3681e1 = i10;
            this.g1 = i10;
            this.f3687h1 = i10;
            b();
        }
    }

    public void setBoxBackgroundColorResource(int i10) {
        setBoxBackgroundColor(n0.g.c(getContext(), i10));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f3681e1 = defaultColor;
        this.N0 = defaultColor;
        this.f3683f1 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.g1 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.f3687h1 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        b();
    }

    public void setBoxBackgroundMode(int i10) throws Resources.NotFoundException {
        if (i10 == this.S) {
            return;
        }
        this.S = i10;
        if (this.f3678d != null) {
            i();
        }
    }

    public void setBoxCollapsedPaddingTop(int i10) {
        this.T = i10;
    }

    public void setBoxCornerFamily(int i10) {
        j jVar = this.O;
        jVar.getClass();
        ff.b bVar = new ff.b(jVar);
        m7.c cVar = this.O.f10945e;
        qf.c cVarO = s1.g.o(i10);
        bVar.f5802a = cVarO;
        ff.b.a(cVarO);
        bVar.f5806e = cVar;
        m7.c cVar2 = this.O.f10946f;
        qf.c cVarO2 = s1.g.o(i10);
        bVar.f5803b = cVarO2;
        ff.b.a(cVarO2);
        bVar.f5807f = cVar2;
        m7.c cVar3 = this.O.f10948h;
        qf.c cVarO3 = s1.g.o(i10);
        bVar.f5805d = cVarO3;
        ff.b.a(cVarO3);
        bVar.f5809h = cVar3;
        m7.c cVar4 = this.O.f10947g;
        qf.c cVarO4 = s1.g.o(i10);
        bVar.f5804c = cVarO4;
        ff.b.a(cVarO4);
        bVar.f5808g = cVar4;
        this.O = new j(bVar);
        b();
    }

    public void setBoxStrokeColor(int i10) throws Resources.NotFoundException {
        if (this.f3677c1 != i10) {
            this.f3677c1 = i10;
            x();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (colorStateList.isStateful()) {
            this.f3673a1 = colorStateList.getDefaultColor();
            this.f3689i1 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f3675b1 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.f3677c1 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.f3677c1 != colorStateList.getDefaultColor()) {
            this.f3677c1 = colorStateList.getDefaultColor();
        }
        x();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (this.f3679d1 != colorStateList) {
            this.f3679d1 = colorStateList;
            x();
        }
    }

    public void setBoxStrokeWidth(int i10) throws Resources.NotFoundException {
        this.f3686h0 = i10;
        x();
    }

    public void setBoxStrokeWidthFocused(int i10) throws Resources.NotFoundException {
        this.f3706t0 = i10;
        x();
    }

    public void setBoxStrokeWidthFocusedResource(int i10) throws Resources.NotFoundException {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i10));
    }

    public void setBoxStrokeWidthResource(int i10) throws Resources.NotFoundException {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i10));
    }

    public void setCounterEnabled(boolean z) throws Resources.NotFoundException {
        if (this.f3692k != z) {
            t tVar = this.f3690j;
            if (z) {
                b1 b1Var = new b1(getContext(), null);
                this.f3700p = b1Var;
                b1Var.setId(com.yunpan.appmanage.R.id.textinput_counter);
                Typeface typeface = this.R0;
                if (typeface != null) {
                    this.f3700p.setTypeface(typeface);
                }
                this.f3700p.setMaxLines(1);
                tVar.a(this.f3700p, 2);
                x0.p.h((ViewGroup.MarginLayoutParams) this.f3700p.getLayoutParams(), getResources().getDimensionPixelOffset(com.yunpan.appmanage.R.dimen.mtrl_textinput_counter_margin_start));
                o();
                if (this.f3700p != null) {
                    EditText editText = this.f3678d;
                    n(editText != null ? editText.getText() : null);
                }
            } else {
                tVar.g(this.f3700p, 2);
                this.f3700p = null;
            }
            this.f3692k = z;
        }
    }

    public void setCounterMaxLength(int i10) throws Resources.NotFoundException {
        if (this.l != i10) {
            if (i10 > 0) {
                this.l = i10;
            } else {
                this.l = -1;
            }
            if (!this.f3692k || this.f3700p == null) {
                return;
            }
            EditText editText = this.f3678d;
            n(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i10) {
        if (this.f3702q != i10) {
            this.f3702q = i10;
            o();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            o();
        }
    }

    public void setCounterTextAppearance(int i10) {
        if (this.r != i10) {
            this.r = i10;
            o();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            o();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (this.C != colorStateList) {
            this.C = colorStateList;
            p();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            if (m() || (this.f3700p != null && this.f3695m)) {
                p();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.Y0 = colorStateList;
        this.Z0 = colorStateList;
        if (this.f3678d != null) {
            u(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        k(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.f3676c.f13097g.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.f3676c.f13097g.setCheckable(z);
    }

    public void setEndIconContentDescription(int i10) {
        p pVar = this.f3676c;
        CharSequence text = i10 != 0 ? pVar.getResources().getText(i10) : null;
        CheckableImageButton checkableImageButton = pVar.f13097g;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconDrawable(int i10) {
        p pVar = this.f3676c;
        Drawable drawableX = i10 != 0 ? d.x(pVar.getContext(), i10) : null;
        CheckableImageButton checkableImageButton = pVar.f13097g;
        checkableImageButton.setImageDrawable(drawableX);
        if (drawableX != null) {
            ColorStateList colorStateList = pVar.f13101k;
            PorterDuff.Mode mode = pVar.l;
            TextInputLayout textInputLayout = pVar.f13091a;
            nh.b.f(textInputLayout, checkableImageButton, colorStateList, mode);
            nh.b.h0(textInputLayout, checkableImageButton, pVar.f13101k);
        }
    }

    public void setEndIconMinSize(int i10) {
        p pVar = this.f3676c;
        if (i10 < 0) {
            pVar.getClass();
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i10 != pVar.f13102m) {
            pVar.f13102m = i10;
            CheckableImageButton checkableImageButton = pVar.f13097g;
            checkableImageButton.setMinimumWidth(i10);
            checkableImageButton.setMinimumHeight(i10);
            CheckableImageButton checkableImageButton2 = pVar.f13093c;
            checkableImageButton2.setMinimumWidth(i10);
            checkableImageButton2.setMinimumHeight(i10);
        }
    }

    public void setEndIconMode(int i10) {
        this.f3676c.g(i10);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        p pVar = this.f3676c;
        View.OnLongClickListener onLongClickListener = pVar.f13104p;
        CheckableImageButton checkableImageButton = pVar.f13097g;
        checkableImageButton.setOnClickListener(onClickListener);
        nh.b.l0(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        p pVar = this.f3676c;
        pVar.f13104p = onLongClickListener;
        CheckableImageButton checkableImageButton = pVar.f13097g;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        nh.b.l0(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        p pVar = this.f3676c;
        pVar.f13103n = scaleType;
        pVar.f13097g.setScaleType(scaleType);
        pVar.f13093c.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        p pVar = this.f3676c;
        if (pVar.f13101k != colorStateList) {
            pVar.f13101k = colorStateList;
            nh.b.f(pVar.f13091a, pVar.f13097g, colorStateList, pVar.l);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        p pVar = this.f3676c;
        if (pVar.l != mode) {
            pVar.l = mode;
            nh.b.f(pVar.f13091a, pVar.f13097g, pVar.f13101k, mode);
        }
    }

    public void setEndIconVisible(boolean z) {
        this.f3676c.h(z);
    }

    public void setError(CharSequence charSequence) throws Resources.NotFoundException {
        t tVar = this.f3690j;
        if (!tVar.f13136q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            tVar.f();
            return;
        }
        tVar.c();
        tVar.f13135p = charSequence;
        tVar.r.setText(charSequence);
        int i10 = tVar.f13133n;
        if (i10 != 1) {
            tVar.f13134o = 1;
        }
        tVar.i(i10, tVar.f13134o, tVar.h(tVar.r, charSequence));
    }

    public void setErrorAccessibilityLiveRegion(int i10) {
        t tVar = this.f3690j;
        tVar.f13138t = i10;
        b1 b1Var = tVar.r;
        if (b1Var != null) {
            x0.b1.y(b1Var, i10);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        t tVar = this.f3690j;
        tVar.f13137s = charSequence;
        b1 b1Var = tVar.r;
        if (b1Var != null) {
            b1Var.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) throws Resources.NotFoundException {
        t tVar = this.f3690j;
        if (tVar.f13136q == z) {
            return;
        }
        tVar.c();
        TextInputLayout textInputLayout = tVar.f13128h;
        if (z) {
            b1 b1Var = new b1(tVar.f13127g, null);
            tVar.r = b1Var;
            b1Var.setId(com.yunpan.appmanage.R.id.textinput_error);
            tVar.r.setTextAlignment(5);
            Typeface typeface = tVar.B;
            if (typeface != null) {
                tVar.r.setTypeface(typeface);
            }
            int i10 = tVar.f13139u;
            tVar.f13139u = i10;
            b1 b1Var2 = tVar.r;
            if (b1Var2 != null) {
                textInputLayout.l(b1Var2, i10);
            }
            ColorStateList colorStateList = tVar.f13140v;
            tVar.f13140v = colorStateList;
            b1 b1Var3 = tVar.r;
            if (b1Var3 != null && colorStateList != null) {
                b1Var3.setTextColor(colorStateList);
            }
            CharSequence charSequence = tVar.f13137s;
            tVar.f13137s = charSequence;
            b1 b1Var4 = tVar.r;
            if (b1Var4 != null) {
                b1Var4.setContentDescription(charSequence);
            }
            int i11 = tVar.f13138t;
            tVar.f13138t = i11;
            b1 b1Var5 = tVar.r;
            if (b1Var5 != null) {
                x0.b1.y(b1Var5, i11);
            }
            tVar.r.setVisibility(4);
            tVar.a(tVar.r, 0);
        } else {
            tVar.f();
            tVar.g(tVar.r, 0);
            tVar.r = null;
            textInputLayout.r();
            textInputLayout.x();
        }
        tVar.f13136q = z;
    }

    public void setErrorIconDrawable(int i10) {
        p pVar = this.f3676c;
        pVar.i(i10 != 0 ? d.x(pVar.getContext(), i10) : null);
        nh.b.h0(pVar.f13091a, pVar.f13093c, pVar.f13094d);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        p pVar = this.f3676c;
        CheckableImageButton checkableImageButton = pVar.f13093c;
        View.OnLongClickListener onLongClickListener = pVar.f13096f;
        checkableImageButton.setOnClickListener(onClickListener);
        nh.b.l0(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        p pVar = this.f3676c;
        pVar.f13096f = onLongClickListener;
        CheckableImageButton checkableImageButton = pVar.f13093c;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        nh.b.l0(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        p pVar = this.f3676c;
        if (pVar.f13094d != colorStateList) {
            pVar.f13094d = colorStateList;
            nh.b.f(pVar.f13091a, pVar.f13093c, colorStateList, pVar.f13095e);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        p pVar = this.f3676c;
        if (pVar.f13095e != mode) {
            pVar.f13095e = mode;
            nh.b.f(pVar.f13091a, pVar.f13093c, pVar.f13094d, mode);
        }
    }

    public void setErrorTextAppearance(int i10) {
        t tVar = this.f3690j;
        tVar.f13139u = i10;
        b1 b1Var = tVar.r;
        if (b1Var != null) {
            tVar.f13128h.l(b1Var, i10);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        t tVar = this.f3690j;
        tVar.f13140v = colorStateList;
        b1 b1Var = tVar.r;
        if (b1Var == null || colorStateList == null) {
            return;
        }
        b1Var.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.f3694l1 != z) {
            this.f3694l1 = z;
            u(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) throws Resources.NotFoundException {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        t tVar = this.f3690j;
        if (zIsEmpty) {
            if (tVar.f13142x) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!tVar.f13142x) {
            setHelperTextEnabled(true);
        }
        tVar.c();
        tVar.f13141w = charSequence;
        tVar.f13143y.setText(charSequence);
        int i10 = tVar.f13133n;
        if (i10 != 2) {
            tVar.f13134o = 2;
        }
        tVar.i(i10, tVar.f13134o, tVar.h(tVar.f13143y, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        t tVar = this.f3690j;
        tVar.A = colorStateList;
        b1 b1Var = tVar.f13143y;
        if (b1Var == null || colorStateList == null) {
            return;
        }
        b1Var.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) throws Resources.NotFoundException {
        t tVar = this.f3690j;
        if (tVar.f13142x == z) {
            return;
        }
        tVar.c();
        if (z) {
            b1 b1Var = new b1(tVar.f13127g, null);
            tVar.f13143y = b1Var;
            b1Var.setId(com.yunpan.appmanage.R.id.textinput_helper_text);
            tVar.f13143y.setTextAlignment(5);
            Typeface typeface = tVar.B;
            if (typeface != null) {
                tVar.f13143y.setTypeface(typeface);
            }
            tVar.f13143y.setVisibility(4);
            x0.b1.y(tVar.f13143y, 1);
            int i10 = tVar.z;
            tVar.z = i10;
            b1 b1Var2 = tVar.f13143y;
            if (b1Var2 != null) {
                d.b.o0(b1Var2, i10);
            }
            ColorStateList colorStateList = tVar.A;
            tVar.A = colorStateList;
            b1 b1Var3 = tVar.f13143y;
            if (b1Var3 != null && colorStateList != null) {
                b1Var3.setTextColor(colorStateList);
            }
            tVar.a(tVar.f13143y, 1);
            tVar.f13143y.setAccessibilityDelegate(new q7.s(tVar));
        } else {
            tVar.c();
            int i11 = tVar.f13133n;
            if (i11 == 2) {
                tVar.f13134o = 0;
            }
            tVar.i(i11, tVar.f13134o, tVar.h(tVar.f13143y, ""));
            tVar.g(tVar.f13143y, 1);
            tVar.f13143y = null;
            TextInputLayout textInputLayout = tVar.f13128h;
            textInputLayout.r();
            textInputLayout.x();
        }
        tVar.f13142x = z;
    }

    public void setHelperTextTextAppearance(int i10) {
        t tVar = this.f3690j;
        tVar.z = i10;
        b1 b1Var = tVar.f13143y;
        if (b1Var != null) {
            d.b.o0(b1Var, i10);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.E) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f3696m1 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.E) {
            this.E = z;
            if (z) {
                CharSequence hint = this.f3678d.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.F)) {
                        setHint(hint);
                    }
                    this.f3678d.setHint((CharSequence) null);
                }
                this.G = true;
            } else {
                this.G = false;
                if (!TextUtils.isEmpty(this.F) && TextUtils.isEmpty(this.f3678d.getHint())) {
                    this.f3678d.setHint(this.F);
                }
                setHintInternal(null);
            }
            if (this.f3678d != null) {
                t();
            }
        }
    }

    public void setHintTextAppearance(int i10) {
        b bVar = this.f3693k1;
        TextInputLayout textInputLayout = bVar.f6059a;
        j7.d dVar = new j7.d(textInputLayout.getContext(), i10);
        ColorStateList colorStateList = dVar.f9788j;
        if (colorStateList != null) {
            bVar.f6077k = colorStateList;
        }
        float f10 = dVar.f9789k;
        if (f10 != 0.0f) {
            bVar.f6075i = f10;
        }
        ColorStateList colorStateList2 = dVar.f9779a;
        if (colorStateList2 != null) {
            bVar.W = colorStateList2;
        }
        bVar.U = dVar.f9783e;
        bVar.V = dVar.f9784f;
        bVar.T = dVar.f9785g;
        bVar.X = dVar.f9787i;
        j7.a aVar = bVar.f6089y;
        if (aVar != null) {
            aVar.f9772g = true;
        }
        a1.i iVar = new a1.i(25, bVar);
        dVar.a();
        bVar.f6089y = new j7.a(iVar, dVar.f9791n);
        dVar.c(textInputLayout.getContext(), bVar.f6089y);
        bVar.i(false);
        this.Z0 = bVar.f6077k;
        if (this.f3678d != null) {
            u(false, false);
            t();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.Z0 != colorStateList) {
            if (this.Y0 == null) {
                b bVar = this.f3693k1;
                if (bVar.f6077k != colorStateList) {
                    bVar.f6077k = colorStateList;
                    bVar.i(false);
                }
            }
            this.Z0 = colorStateList;
            if (this.f3678d != null) {
                u(false, false);
            }
        }
    }

    public void setLengthCounter(a0 a0Var) {
        this.f3697n = a0Var;
    }

    public void setMaxEms(int i10) {
        this.f3684g = i10;
        EditText editText = this.f3678d;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxEms(i10);
    }

    public void setMaxWidth(int i10) {
        this.f3688i = i10;
        EditText editText = this.f3678d;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMaxWidth(i10);
    }

    public void setMaxWidthResource(int i10) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    public void setMinEms(int i10) {
        this.f3682f = i10;
        EditText editText = this.f3678d;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinEms(i10);
    }

    public void setMinWidth(int i10) {
        this.f3685h = i10;
        EditText editText = this.f3678d;
        if (editText == null || i10 == -1) {
            return;
        }
        editText.setMinWidth(i10);
    }

    public void setMinWidthResource(int i10) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i10));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i10) {
        p pVar = this.f3676c;
        pVar.f13097g.setContentDescription(i10 != 0 ? pVar.getResources().getText(i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i10) {
        p pVar = this.f3676c;
        pVar.f13097g.setImageDrawable(i10 != 0 ? d.x(pVar.getContext(), i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        p pVar = this.f3676c;
        if (z && pVar.f13099i != 1) {
            pVar.g(1);
        } else if (z) {
            pVar.getClass();
        } else {
            pVar.g(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        p pVar = this.f3676c;
        pVar.f13101k = colorStateList;
        nh.b.f(pVar.f13091a, pVar.f13097g, colorStateList, pVar.l);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        p pVar = this.f3676c;
        pVar.l = mode;
        nh.b.f(pVar.f13091a, pVar.f13097g, pVar.f13101k, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.f3707v == null) {
            b1 b1Var = new b1(getContext(), null);
            this.f3707v = b1Var;
            b1Var.setId(com.yunpan.appmanage.R.id.textinput_placeholder);
            x0.b1.B(this.f3707v, 2);
            i iVarD = d();
            this.f3710y = iVarD;
            iVarD.f6486b = 67L;
            this.z = d();
            setPlaceholderTextAppearance(this.f3709x);
            setPlaceholderTextColor(this.f3708w);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f3705t) {
                setPlaceholderTextEnabled(true);
            }
            this.f3704s = charSequence;
        }
        EditText editText = this.f3678d;
        v(editText != null ? editText.getText() : null);
    }

    public void setPlaceholderTextAppearance(int i10) {
        this.f3709x = i10;
        b1 b1Var = this.f3707v;
        if (b1Var != null) {
            d.b.o0(b1Var, i10);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f3708w != colorStateList) {
            this.f3708w = colorStateList;
            b1 b1Var = this.f3707v;
            if (b1Var == null || colorStateList == null) {
                return;
            }
            b1Var.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        y yVar = this.f3674b;
        yVar.getClass();
        yVar.f13161c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        yVar.f13160b.setText(charSequence);
        yVar.e();
    }

    public void setPrefixTextAppearance(int i10) {
        d.b.o0(this.f3674b.f13160b, i10);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f3674b.f13160b.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(j jVar) {
        g gVar = this.H;
        if (gVar == null || gVar.f10920a.f10904a == jVar) {
            return;
        }
        this.O = jVar;
        b();
    }

    public void setStartIconCheckable(boolean z) {
        this.f3674b.f13162d.setCheckable(z);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f3674b.f13162d;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i10) {
        setStartIconDrawable(i10 != 0 ? d.x(getContext(), i10) : null);
    }

    public void setStartIconMinSize(int i10) {
        y yVar = this.f3674b;
        if (i10 < 0) {
            yVar.getClass();
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i10 != yVar.f13165g) {
            yVar.f13165g = i10;
            CheckableImageButton checkableImageButton = yVar.f13162d;
            checkableImageButton.setMinimumWidth(i10);
            checkableImageButton.setMinimumHeight(i10);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        y yVar = this.f3674b;
        View.OnLongClickListener onLongClickListener = yVar.f13167i;
        CheckableImageButton checkableImageButton = yVar.f13162d;
        checkableImageButton.setOnClickListener(onClickListener);
        nh.b.l0(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        y yVar = this.f3674b;
        yVar.f13167i = onLongClickListener;
        CheckableImageButton checkableImageButton = yVar.f13162d;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        nh.b.l0(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        y yVar = this.f3674b;
        yVar.f13166h = scaleType;
        yVar.f13162d.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        y yVar = this.f3674b;
        if (yVar.f13163e != colorStateList) {
            yVar.f13163e = colorStateList;
            nh.b.f(yVar.f13159a, yVar.f13162d, colorStateList, yVar.f13164f);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        y yVar = this.f3674b;
        if (yVar.f13164f != mode) {
            yVar.f13164f = mode;
            nh.b.f(yVar.f13159a, yVar.f13162d, yVar.f13163e, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        this.f3674b.c(z);
    }

    public void setSuffixText(CharSequence charSequence) {
        p pVar = this.f3676c;
        pVar.getClass();
        pVar.f13105q = TextUtils.isEmpty(charSequence) ? null : charSequence;
        pVar.r.setText(charSequence);
        pVar.n();
    }

    public void setSuffixTextAppearance(int i10) {
        d.b.o0(this.f3676c.r, i10);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f3676c.r.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(z zVar) {
        EditText editText = this.f3678d;
        if (editText != null) {
            x0.b1.x(editText, zVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.R0) {
            this.R0 = typeface;
            this.f3693k1.n(typeface);
            t tVar = this.f3690j;
            if (typeface != tVar.B) {
                tVar.B = typeface;
                b1 b1Var = tVar.r;
                if (b1Var != null) {
                    b1Var.setTypeface(typeface);
                }
                b1 b1Var2 = tVar.f13143y;
                if (b1Var2 != null) {
                    b1Var2.setTypeface(typeface);
                }
            }
            b1 b1Var3 = this.f3700p;
            if (b1Var3 != null) {
                b1Var3.setTypeface(typeface);
            }
        }
    }

    public final void t() {
        if (this.S != 1) {
            FrameLayout frameLayout = this.f3672a;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int iC = c();
            if (iC != layoutParams.topMargin) {
                layoutParams.topMargin = iC;
                frameLayout.requestLayout();
            }
        }
    }

    public final void u(boolean z, boolean z4) {
        ColorStateList colorStateList;
        b1 b1Var;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f3678d;
        boolean z10 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f3678d;
        boolean z11 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.Y0;
        b bVar = this.f3693k1;
        if (colorStateList2 != null) {
            bVar.j(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.Y0;
            bVar.j(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f3689i1) : this.f3689i1));
        } else if (m()) {
            b1 b1Var2 = this.f3690j.r;
            bVar.j(b1Var2 != null ? b1Var2.getTextColors() : null);
        } else if (this.f3695m && (b1Var = this.f3700p) != null) {
            bVar.j(b1Var.getTextColors());
        } else if (z11 && (colorStateList = this.Z0) != null && bVar.f6077k != colorStateList) {
            bVar.f6077k = colorStateList;
            bVar.i(false);
        }
        p pVar = this.f3676c;
        y yVar = this.f3674b;
        if (z10 || !this.f3694l1 || (isEnabled() && z11)) {
            if (z4 || this.f3691j1) {
                ValueAnimator valueAnimator = this.f3698n1;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.f3698n1.cancel();
                }
                if (z && this.f3696m1) {
                    a(1.0f);
                } else {
                    bVar.l(1.0f);
                }
                this.f3691j1 = false;
                if (e()) {
                    j();
                }
                EditText editText3 = this.f3678d;
                v(editText3 != null ? editText3.getText() : null);
                yVar.f13168j = false;
                yVar.e();
                pVar.f13106s = false;
                pVar.n();
                return;
            }
            return;
        }
        if (z4 || !this.f3691j1) {
            ValueAnimator valueAnimator2 = this.f3698n1;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f3698n1.cancel();
            }
            if (z && this.f3696m1) {
                a(0.0f);
            } else {
                bVar.l(0.0f);
            }
            if (e() && !((h) this.H).z.f13068q.isEmpty() && e()) {
                ((h) this.H).o(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f3691j1 = true;
            b1 b1Var3 = this.f3707v;
            if (b1Var3 != null && this.f3705t) {
                b1Var3.setText((CharSequence) null);
                x.a(this.f3672a, this.z);
                this.f3707v.setVisibility(4);
            }
            yVar.f13168j = true;
            yVar.e();
            pVar.f13106s = true;
            pVar.n();
        }
    }

    public final void v(Editable editable) {
        ((jd) this.f3697n).getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.f3672a;
        if (length != 0 || this.f3691j1) {
            b1 b1Var = this.f3707v;
            if (b1Var == null || !this.f3705t) {
                return;
            }
            b1Var.setText((CharSequence) null);
            x.a(frameLayout, this.z);
            this.f3707v.setVisibility(4);
            return;
        }
        if (this.f3707v == null || !this.f3705t || TextUtils.isEmpty(this.f3704s)) {
            return;
        }
        this.f3707v.setText(this.f3704s);
        x.a(frameLayout, this.f3710y);
        this.f3707v.setVisibility(0);
        this.f3707v.bringToFront();
        announceForAccessibility(this.f3704s);
    }

    public final void w(boolean z, boolean z4) {
        int defaultColor = this.f3679d1.getDefaultColor();
        int colorForState = this.f3679d1.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f3679d1.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.M0 = colorForState2;
        } else if (z4) {
            this.M0 = colorForState;
        } else {
            this.M0 = defaultColor;
        }
    }

    public final void x() throws Resources.NotFoundException {
        b1 b1Var;
        EditText editText;
        EditText editText2;
        if (this.H == null || this.S == 0) {
            return;
        }
        boolean z = false;
        boolean z4 = isFocused() || ((editText2 = this.f3678d) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f3678d) != null && editText.isHovered())) {
            z = true;
        }
        if (!isEnabled()) {
            this.M0 = this.f3689i1;
        } else if (m()) {
            if (this.f3679d1 != null) {
                w(z4, z);
            } else {
                this.M0 = getErrorCurrentTextColors();
            }
        } else if (!this.f3695m || (b1Var = this.f3700p) == null) {
            if (z4) {
                this.M0 = this.f3677c1;
            } else if (z) {
                this.M0 = this.f3675b1;
            } else {
                this.M0 = this.f3673a1;
            }
        } else if (this.f3679d1 != null) {
            w(z4, z);
        } else {
            this.M0 = b1Var.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            p();
        }
        p pVar = this.f3676c;
        pVar.l();
        CheckableImageButton checkableImageButton = pVar.f13093c;
        ColorStateList colorStateList = pVar.f13094d;
        TextInputLayout textInputLayout = pVar.f13091a;
        nh.b.h0(textInputLayout, checkableImageButton, colorStateList);
        ColorStateList colorStateList2 = pVar.f13101k;
        CheckableImageButton checkableImageButton2 = pVar.f13097g;
        nh.b.h0(textInputLayout, checkableImageButton2, colorStateList2);
        if (pVar.b() instanceof q7.l) {
            if (!textInputLayout.m() || checkableImageButton2.getDrawable() == null) {
                nh.b.f(textInputLayout, checkableImageButton2, pVar.f13101k, pVar.l);
            } else {
                Drawable drawableMutate = c.n0(checkableImageButton2.getDrawable()).mutate();
                c.e0(drawableMutate, textInputLayout.getErrorCurrentTextColors());
                checkableImageButton2.setImageDrawable(drawableMutate);
            }
        }
        y yVar = this.f3674b;
        nh.b.h0(yVar.f13159a, yVar.f13162d, yVar.f13163e);
        if (this.S == 2) {
            int i10 = this.V;
            if (z4 && isEnabled()) {
                this.V = this.f3706t0;
            } else {
                this.V = this.f3686h0;
            }
            if (this.V != i10 && e() && !this.f3691j1) {
                if (e()) {
                    ((h) this.H).o(0.0f, 0.0f, 0.0f, 0.0f);
                }
                j();
            }
        }
        if (this.S == 1) {
            if (!isEnabled()) {
                this.N0 = this.f3683f1;
            } else if (z && !z4) {
                this.N0 = this.f3687h1;
            } else if (z4) {
                this.N0 = this.g1;
            } else {
                this.N0 = this.f3681e1;
            }
        }
        b();
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f3674b.b(drawable);
    }

    public void setHint(int i10) {
        setHint(i10 != 0 ? getResources().getText(i10) : null);
    }

    public void setStartIconContentDescription(int i10) {
        setStartIconContentDescription(i10 != 0 ? getResources().getText(i10) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f3676c.f13097g.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f3676c.f13097g.setImageDrawable(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f3676c.i(drawable);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f3676c.f13097g;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        p pVar = this.f3676c;
        CheckableImageButton checkableImageButton = pVar.f13097g;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = pVar.f13101k;
            PorterDuff.Mode mode = pVar.l;
            TextInputLayout textInputLayout = pVar.f13091a;
            nh.b.f(textInputLayout, checkableImageButton, colorStateList, mode);
            nh.b.h0(textInputLayout, checkableImageButton, pVar.f13101k);
        }
    }
}
