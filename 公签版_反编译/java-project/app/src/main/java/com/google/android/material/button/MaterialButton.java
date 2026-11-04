package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import com.bumptech.glide.d;
import ff.b;
import g7.l;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import l2.z;
import m7.j;
import m7.u;
import s1.g;
import ua.t7;
import w.i;
import w.o;
import wa.h;
import x0.b1;
import x0.k0;
import x6.a;
import x6.c;

/* loaded from: classes.dex */
public class MaterialButton extends o implements Checkable, u {

    /* renamed from: s, reason: collision with root package name */
    public static final int[] f3488s = {R.attr.state_checkable};

    /* renamed from: t, reason: collision with root package name */
    public static final int[] f3489t = {R.attr.state_checked};

    /* renamed from: d, reason: collision with root package name */
    public final c f3490d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashSet f3491e;

    /* renamed from: f, reason: collision with root package name */
    public a f3492f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f3493g;

    /* renamed from: h, reason: collision with root package name */
    public ColorStateList f3494h;

    /* renamed from: i, reason: collision with root package name */
    public Drawable f3495i;

    /* renamed from: j, reason: collision with root package name */
    public String f3496j;

    /* renamed from: k, reason: collision with root package name */
    public int f3497k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f3498m;

    /* renamed from: n, reason: collision with root package name */
    public int f3499n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f3500p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f3501q;
    public int r;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        super(s7.a.a(context, attributeSet, com.yunpan.appmanage.R.attr.materialButtonStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Button), attributeSet, com.yunpan.appmanage.R.attr.materialButtonStyle);
        this.f3491e = new LinkedHashSet();
        this.f3500p = false;
        this.f3501q = false;
        Context context2 = getContext();
        TypedArray typedArrayG = l.g(context2, attributeSet, q6.a.f13040k, com.yunpan.appmanage.R.attr.materialButtonStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.f3499n = typedArrayG.getDimensionPixelSize(12, 0);
        int i10 = typedArrayG.getInt(15, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f3493g = l.h(i10, mode);
        this.f3494h = com.bumptech.glide.c.w(getContext(), typedArrayG, 14);
        this.f3495i = com.bumptech.glide.c.C(getContext(), typedArrayG, 10);
        this.r = typedArrayG.getInteger(11, 1);
        this.f3497k = typedArrayG.getDimensionPixelSize(13, 0);
        c cVar = new c(this, new j(j.b(context2, attributeSet, com.yunpan.appmanage.R.attr.materialButtonStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Button)));
        this.f3490d = cVar;
        cVar.f18163c = typedArrayG.getDimensionPixelOffset(1, 0);
        cVar.f18164d = typedArrayG.getDimensionPixelOffset(2, 0);
        cVar.f18165e = typedArrayG.getDimensionPixelOffset(3, 0);
        cVar.f18166f = typedArrayG.getDimensionPixelOffset(4, 0);
        if (typedArrayG.hasValue(8)) {
            int dimensionPixelSize = typedArrayG.getDimensionPixelSize(8, -1);
            cVar.f18167g = dimensionPixelSize;
            j jVar = cVar.f18162b;
            float f10 = dimensionPixelSize;
            jVar.getClass();
            b bVar = new b(jVar);
            bVar.f5806e = new m7.a(f10);
            bVar.f5807f = new m7.a(f10);
            bVar.f5808g = new m7.a(f10);
            bVar.f5809h = new m7.a(f10);
            cVar.c(new j(bVar));
            cVar.f18175p = true;
        }
        cVar.f18168h = typedArrayG.getDimensionPixelSize(20, 0);
        cVar.f18169i = l.h(typedArrayG.getInt(7, -1), mode);
        cVar.f18170j = com.bumptech.glide.c.w(getContext(), typedArrayG, 6);
        cVar.f18171k = com.bumptech.glide.c.w(getContext(), typedArrayG, 19);
        cVar.l = com.bumptech.glide.c.w(getContext(), typedArrayG, 16);
        cVar.f18176q = typedArrayG.getBoolean(5, false);
        cVar.f18178t = typedArrayG.getDimensionPixelSize(9, 0);
        cVar.r = typedArrayG.getBoolean(21, true);
        WeakHashMap weakHashMap = b1.f17953a;
        int iF = k0.f(this);
        int paddingTop = getPaddingTop();
        int iE = k0.e(this);
        int paddingBottom = getPaddingBottom();
        if (typedArrayG.hasValue(0)) {
            cVar.f18174o = true;
            setSupportBackgroundTintList(cVar.f18170j);
            setSupportBackgroundTintMode(cVar.f18169i);
        } else {
            cVar.e();
        }
        k0.k(this, iF + cVar.f18163c, paddingTop + cVar.f18165e, iE + cVar.f18164d, paddingBottom + cVar.f18166f);
        typedArrayG.recycle();
        setCompoundDrawablePadding(this.f3499n);
        d(this.f3495i != null);
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        return textAlignment != 1 ? (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        return gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i10 = 0; i10 < lineCount; i10++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i10));
        }
        return (int) Math.ceil(fMax);
    }

    public final boolean a() {
        c cVar = this.f3490d;
        return cVar != null && cVar.f18176q;
    }

    public final boolean b() {
        c cVar = this.f3490d;
        return (cVar == null || cVar.f18174o) ? false : true;
    }

    public final void c() {
        int i10 = this.r;
        boolean z = true;
        if (i10 != 1 && i10 != 2) {
            z = false;
        }
        if (z) {
            d.b.l0(this, this.f3495i, null, null, null);
            return;
        }
        if (i10 == 3 || i10 == 4) {
            d.b.l0(this, null, null, this.f3495i, null);
        } else if (i10 == 16 || i10 == 32) {
            d.b.l0(this, null, this.f3495i, null, null);
        }
    }

    public final void d(boolean z) {
        Drawable drawable = this.f3495i;
        if (drawable != null) {
            Drawable drawableMutate = com.bumptech.glide.c.n0(drawable).mutate();
            this.f3495i = drawableMutate;
            com.bumptech.glide.c.f0(drawableMutate, this.f3494h);
            PorterDuff.Mode mode = this.f3493g;
            if (mode != null) {
                com.bumptech.glide.c.g0(this.f3495i, mode);
            }
            int intrinsicWidth = this.f3497k;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f3495i.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f3497k;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f3495i.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f3495i;
            int i10 = this.l;
            int i11 = this.f3498m;
            drawable2.setBounds(i10, i11, intrinsicWidth + i10, intrinsicHeight + i11);
            this.f3495i.setVisible(true, z);
        }
        if (z) {
            c();
            return;
        }
        Drawable[] drawableArrY = d.b.y(this);
        Drawable drawable3 = drawableArrY[0];
        Drawable drawable4 = drawableArrY[1];
        Drawable drawable5 = drawableArrY[2];
        int i12 = this.r;
        if (((i12 == 1 || i12 == 2) && drawable3 != this.f3495i) || (((i12 == 3 || i12 == 4) && drawable5 != this.f3495i) || ((i12 == 16 || i12 == 32) && drawable4 != this.f3495i))) {
            c();
        }
    }

    public final void e(int i10, int i11) {
        if (this.f3495i == null || getLayout() == null) {
            return;
        }
        int i12 = this.r;
        if (!(i12 == 1 || i12 == 2) && i12 != 3 && i12 != 4) {
            if (i12 == 16 || i12 == 32) {
                this.l = 0;
                if (i12 == 16) {
                    this.f3498m = 0;
                    d(false);
                    return;
                }
                int intrinsicHeight = this.f3497k;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f3495i.getIntrinsicHeight();
                }
                int iMax = Math.max(0, (((((i11 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f3499n) - getPaddingBottom()) / 2);
                if (this.f3498m != iMax) {
                    this.f3498m = iMax;
                    d(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f3498m = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i13 = this.r;
        if (i13 == 1 || i13 == 3 || ((i13 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i13 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.l = 0;
            d(false);
            return;
        }
        int intrinsicWidth = this.f3497k;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f3495i.getIntrinsicWidth();
        }
        int textLayoutWidth = i10 - getTextLayoutWidth();
        WeakHashMap weakHashMap = b1.f17953a;
        int iE = (((textLayoutWidth - k0.e(this)) - intrinsicWidth) - this.f3499n) - k0.f(this);
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            iE /= 2;
        }
        if ((k0.d(this) == 1) != (this.r == 4)) {
            iE = -iE;
        }
        if (this.l != iE) {
            this.l = iE;
            d(false);
        }
    }

    public String getA11yClassName() {
        if (TextUtils.isEmpty(this.f3496j)) {
            return (a() ? CompoundButton.class : Button.class).getName();
        }
        return this.f3496j;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (b()) {
            return this.f3490d.f18167g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f3495i;
    }

    public int getIconGravity() {
        return this.r;
    }

    public int getIconPadding() {
        return this.f3499n;
    }

    public int getIconSize() {
        return this.f3497k;
    }

    public ColorStateList getIconTint() {
        return this.f3494h;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f3493g;
    }

    public int getInsetBottom() {
        return this.f3490d.f18166f;
    }

    public int getInsetTop() {
        return this.f3490d.f18165e;
    }

    public ColorStateList getRippleColor() {
        if (b()) {
            return this.f3490d.l;
        }
        return null;
    }

    public j getShapeAppearanceModel() {
        if (b()) {
            return this.f3490d.f18162b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.f3490d.f18171k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (b()) {
            return this.f3490d.f18168h;
        }
        return 0;
    }

    @Override // w.o, x0.e0
    public ColorStateList getSupportBackgroundTintList() {
        return b() ? this.f3490d.f18170j : super.getSupportBackgroundTintList();
    }

    @Override // w.o, x0.e0
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return b() ? this.f3490d.f18169i : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f3500p;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (b()) {
            g.X(this, this.f3490d.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (a()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3488s);
        }
        if (this.f3500p) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3489t);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // w.o, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.f3500p);
    }

    @Override // w.o, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(a());
        accessibilityNodeInfo.setChecked(this.f3500p);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // w.o, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        c cVar;
        super.onLayout(z, i10, i11, i12, i13);
        if (Build.VERSION.SDK_INT == 21 && (cVar = this.f3490d) != null) {
            int i14 = i13 - i11;
            int i15 = i12 - i10;
            Drawable drawable = cVar.f18172m;
            if (drawable != null) {
                drawable.setBounds(cVar.f18163c, cVar.f18165e, i15 - cVar.f18164d, i14 - cVar.f18166f);
            }
        }
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof x6.b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        x6.b bVar = (x6.b) parcelable;
        super.onRestoreInstanceState(bVar.f4709a);
        setChecked(bVar.f18158c);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        x6.b bVar = new x6.b(super.onSaveInstanceState());
        bVar.f18158c = this.f3500p;
        return bVar;
    }

    @Override // w.o, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (this.f3490d.r) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f3495i != null) {
            if (this.f3495i.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.f3496j = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        if (!b()) {
            super.setBackgroundColor(i10);
            return;
        }
        c cVar = this.f3490d;
        if (cVar.b(false) != null) {
            cVar.b(false).setTint(i10);
        }
    }

    @Override // w.o, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!b()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        c cVar = this.f3490d;
        cVar.f18174o = true;
        ColorStateList colorStateList = cVar.f18170j;
        MaterialButton materialButton = cVar.f18161a;
        materialButton.setSupportBackgroundTintList(colorStateList);
        materialButton.setSupportBackgroundTintMode(cVar.f18169i);
        super.setBackgroundDrawable(drawable);
    }

    @Override // w.o, android.view.View
    public void setBackgroundResource(int i10) {
        setBackgroundDrawable(i10 != 0 ? d.x(getContext(), i10) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (b()) {
            this.f3490d.f18176q = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (a() && isEnabled() && this.f3500p != z) {
            this.f3500p = z;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z4 = this.f3500p;
                if (!materialButtonToggleGroup.f3508f) {
                    materialButtonToggleGroup.b(getId(), z4);
                }
            }
            if (this.f3501q) {
                return;
            }
            this.f3501q = true;
            Iterator it = this.f3491e.iterator();
            if (it.hasNext()) {
                throw z.d(it);
            }
            this.f3501q = false;
        }
    }

    public void setCornerRadius(int i10) {
        if (b()) {
            c cVar = this.f3490d;
            if (cVar.f18175p && cVar.f18167g == i10) {
                return;
            }
            cVar.f18167g = i10;
            cVar.f18175p = true;
            j jVar = cVar.f18162b;
            float f10 = i10;
            jVar.getClass();
            b bVar = new b(jVar);
            bVar.f5806e = new m7.a(f10);
            bVar.f5807f = new m7.a(f10);
            bVar.f5808g = new m7.a(f10);
            bVar.f5809h = new m7.a(f10);
            cVar.c(new j(bVar));
        }
    }

    public void setCornerRadiusResource(int i10) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        if (b()) {
            this.f3490d.b(false).j(f10);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f3495i != drawable) {
            this.f3495i = drawable;
            d(true);
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i10) {
        if (this.r != i10) {
            this.r = i10;
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i10) {
        if (this.f3499n != i10) {
            this.f3499n = i10;
            setCompoundDrawablePadding(i10);
        }
    }

    public void setIconResource(int i10) {
        setIcon(i10 != 0 ? d.x(getContext(), i10) : null);
    }

    public void setIconSize(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f3497k != i10) {
            this.f3497k = i10;
            d(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f3494h != colorStateList) {
            this.f3494h = colorStateList;
            d(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f3493g != mode) {
            this.f3493g = mode;
            d(false);
        }
    }

    public void setIconTintResource(int i10) {
        setIconTint(n0.g.d(getContext(), i10));
    }

    public void setInsetBottom(int i10) {
        c cVar = this.f3490d;
        cVar.d(cVar.f18165e, i10);
    }

    public void setInsetTop(int i10) {
        c cVar = this.f3490d;
        cVar.d(i10, cVar.f18166f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(a aVar) {
        this.f3492f = aVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        a aVar = this.f3492f;
        if (aVar != null) {
            ((MaterialButtonToggleGroup) ((i) aVar).f17092b).invalidate();
        }
        super.setPressed(z);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (b()) {
            c cVar = this.f3490d;
            if (cVar.l != colorStateList) {
                cVar.l = colorStateList;
                boolean z = c.f18159u;
                MaterialButton materialButton = cVar.f18161a;
                if (z && t7.u(materialButton.getBackground())) {
                    h.e(materialButton.getBackground()).setColor(k7.d.b(colorStateList));
                } else {
                    if (z || !(materialButton.getBackground() instanceof k7.b)) {
                        return;
                    }
                    ((k7.b) materialButton.getBackground()).setTintList(k7.d.b(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i10) {
        if (b()) {
            setRippleColor(n0.g.d(getContext(), i10));
        }
    }

    @Override // m7.u
    public void setShapeAppearanceModel(j jVar) {
        if (!b()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f3490d.c(jVar);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (b()) {
            c cVar = this.f3490d;
            cVar.f18173n = z;
            cVar.f();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (b()) {
            c cVar = this.f3490d;
            if (cVar.f18171k != colorStateList) {
                cVar.f18171k = colorStateList;
                cVar.f();
            }
        }
    }

    public void setStrokeColorResource(int i10) {
        if (b()) {
            setStrokeColor(n0.g.d(getContext(), i10));
        }
    }

    public void setStrokeWidth(int i10) {
        if (b()) {
            c cVar = this.f3490d;
            if (cVar.f18168h != i10) {
                cVar.f18168h = i10;
                cVar.f();
            }
        }
    }

    public void setStrokeWidthResource(int i10) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i10));
        }
    }

    @Override // w.o, x0.e0
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!b()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        c cVar = this.f3490d;
        if (cVar.f18170j != colorStateList) {
            cVar.f18170j = colorStateList;
            if (cVar.b(false) != null) {
                com.bumptech.glide.c.f0(cVar.b(false), cVar.f18170j);
            }
        }
    }

    @Override // w.o, x0.e0
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!b()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        c cVar = this.f3490d;
        if (cVar.f18169i != mode) {
            cVar.f18169i = mode;
            if (cVar.b(false) == null || cVar.f18169i == null) {
                return;
            }
            com.bumptech.glide.c.g0(cVar.b(false), cVar.f18169i);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i10) {
        super.setTextAlignment(i10);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.f3490d.r = z;
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f3500p);
    }
}
