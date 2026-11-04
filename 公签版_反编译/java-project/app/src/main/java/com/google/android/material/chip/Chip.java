package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import b7.b;
import b7.d;
import b7.e;
import b7.f;
import com.bumptech.glide.c;
import g7.j;
import g7.l;
import h5.d0;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.WeakHashMap;
import m7.u;
import q0.i;
import s1.g;
import s7.a;
import v0.k;
import w.p;
import x0.b1;
import x0.j0;
import x0.k0;

/* loaded from: classes.dex */
public class Chip extends p implements e, u, Checkable {

    /* renamed from: e, reason: collision with root package name */
    public f f3516e;

    /* renamed from: f, reason: collision with root package name */
    public InsetDrawable f3517f;

    /* renamed from: g, reason: collision with root package name */
    public RippleDrawable f3518g;

    /* renamed from: h, reason: collision with root package name */
    public View.OnClickListener f3519h;

    /* renamed from: i, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f3520i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3521j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f3522k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f3523m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f3524n;

    /* renamed from: p, reason: collision with root package name */
    public int f3525p;

    /* renamed from: q, reason: collision with root package name */
    public int f3526q;
    public CharSequence r;

    /* renamed from: s, reason: collision with root package name */
    public final d f3527s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f3528t;

    /* renamed from: v, reason: collision with root package name */
    public final Rect f3529v;

    /* renamed from: w, reason: collision with root package name */
    public final RectF f3530w;

    /* renamed from: x, reason: collision with root package name */
    public final b f3531x;

    /* renamed from: y, reason: collision with root package name */
    public static final Rect f3515y = new Rect();
    public static final int[] z = {R.attr.state_selected};
    public static final int[] A = {R.attr.state_checkable};

    public Chip(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        int resourceId3;
        super(a.a(context, attributeSet, com.yunpan.appmanage.R.attr.chipStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, com.yunpan.appmanage.R.attr.chipStyle);
        this.f3529v = new Rect();
        this.f3530w = new RectF();
        this.f3531x = new b(0, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background");
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627);
        }
        f fVar = new f(context2, attributeSet);
        int[] iArr = q6.a.f13033d;
        TypedArray typedArrayG = l.g(fVar.U0, attributeSet, iArr, com.yunpan.appmanage.R.attr.chipStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        fVar.f2609v1 = typedArrayG.hasValue(37);
        Context context3 = fVar.U0;
        ColorStateList colorStateListW = c.w(context3, typedArrayG, 24);
        if (fVar.z != colorStateListW) {
            fVar.z = colorStateListW;
            fVar.onStateChange(fVar.getState());
        }
        ColorStateList colorStateListW2 = c.w(context3, typedArrayG, 11);
        if (fVar.A != colorStateListW2) {
            fVar.A = colorStateListW2;
            fVar.onStateChange(fVar.getState());
        }
        float dimension = typedArrayG.getDimension(19, 0.0f);
        if (fVar.B != dimension) {
            fVar.B = dimension;
            fVar.invalidateSelf();
            fVar.v();
        }
        if (typedArrayG.hasValue(12)) {
            fVar.B(typedArrayG.getDimension(12, 0.0f));
        }
        fVar.G(c.w(context3, typedArrayG, 22));
        fVar.H(typedArrayG.getDimension(23, 0.0f));
        fVar.Q(c.w(context3, typedArrayG, 36));
        String text = typedArrayG.getText(5);
        text = text == null ? "" : text;
        boolean zEquals = TextUtils.equals(fVar.G, text);
        j jVar = fVar.f2587a1;
        if (!zEquals) {
            fVar.G = text;
            jVar.f6115e = true;
            fVar.invalidateSelf();
            fVar.v();
        }
        j7.d dVar = (!typedArrayG.hasValue(0) || (resourceId3 = typedArrayG.getResourceId(0, 0)) == 0) ? null : new j7.d(context3, resourceId3);
        dVar.f9789k = typedArrayG.getDimension(1, dVar.f9789k);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 23) {
            dVar.f9788j = c.w(context3, typedArrayG, 2);
        }
        jVar.b(dVar, context3);
        int i11 = typedArrayG.getInt(3, 0);
        if (i11 == 1) {
            fVar.f2605s1 = TextUtils.TruncateAt.START;
        } else if (i11 == 2) {
            fVar.f2605s1 = TextUtils.TruncateAt.MIDDLE;
        } else if (i11 == 3) {
            fVar.f2605s1 = TextUtils.TruncateAt.END;
        }
        fVar.F(typedArrayG.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            fVar.F(typedArrayG.getBoolean(15, false));
        }
        fVar.C(c.C(context3, typedArrayG, 14));
        if (typedArrayG.hasValue(17)) {
            fVar.E(c.w(context3, typedArrayG, 17));
        }
        fVar.D(typedArrayG.getDimension(16, -1.0f));
        fVar.N(typedArrayG.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            fVar.N(typedArrayG.getBoolean(26, false));
        }
        fVar.I(c.C(context3, typedArrayG, 25));
        fVar.M(c.w(context3, typedArrayG, 30));
        fVar.K(typedArrayG.getDimension(28, 0.0f));
        fVar.x(typedArrayG.getBoolean(6, false));
        fVar.A(typedArrayG.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            fVar.A(typedArrayG.getBoolean(8, false));
        }
        fVar.y(c.C(context3, typedArrayG, 7));
        if (typedArrayG.hasValue(9)) {
            fVar.z(c.w(context3, typedArrayG, 9));
        }
        fVar.f2593h0 = (!typedArrayG.hasValue(39) || (resourceId2 = typedArrayG.getResourceId(39, 0)) == 0) ? null : r6.b.a(context3, resourceId2);
        fVar.f2606t0 = (!typedArrayG.hasValue(33) || (resourceId = typedArrayG.getResourceId(33, 0)) == 0) ? null : r6.b.a(context3, resourceId);
        float dimension2 = typedArrayG.getDimension(21, 0.0f);
        if (fVar.M0 != dimension2) {
            fVar.M0 = dimension2;
            fVar.invalidateSelf();
            fVar.v();
        }
        fVar.P(typedArrayG.getDimension(35, 0.0f));
        fVar.O(typedArrayG.getDimension(34, 0.0f));
        float dimension3 = typedArrayG.getDimension(41, 0.0f);
        if (fVar.P0 != dimension3) {
            fVar.P0 = dimension3;
            fVar.invalidateSelf();
            fVar.v();
        }
        float dimension4 = typedArrayG.getDimension(40, 0.0f);
        if (fVar.Q0 != dimension4) {
            fVar.Q0 = dimension4;
            fVar.invalidateSelf();
            fVar.v();
        }
        fVar.L(typedArrayG.getDimension(29, 0.0f));
        fVar.J(typedArrayG.getDimension(27, 0.0f));
        float dimension5 = typedArrayG.getDimension(13, 0.0f);
        if (fVar.T0 != dimension5) {
            fVar.T0 = dimension5;
            fVar.invalidateSelf();
            fVar.v();
        }
        fVar.f2608u1 = typedArrayG.getDimensionPixelSize(4, Integer.MAX_VALUE);
        typedArrayG.recycle();
        l.a(context2, attributeSet, com.yunpan.appmanage.R.attr.chipStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Chip_Action);
        l.b(context2, attributeSet, iArr, com.yunpan.appmanage.R.attr.chipStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.yunpan.appmanage.R.attr.chipStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Chip_Action);
        this.f3524n = typedArrayObtainStyledAttributes.getBoolean(32, false);
        this.f3526q = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(20, (float) Math.ceil(l.d(getContext(), 48))));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(fVar);
        fVar.j(b1.g(this));
        l.a(context2, attributeSet, com.yunpan.appmanage.R.attr.chipStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Chip_Action);
        l.b(context2, attributeSet, iArr, com.yunpan.appmanage.R.attr.chipStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, com.yunpan.appmanage.R.attr.chipStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Chip_Action);
        if (i10 < 23) {
            setTextColor(c.w(context2, typedArrayObtainStyledAttributes2, 2));
        }
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(37);
        typedArrayObtainStyledAttributes2.recycle();
        this.f3527s = new d(this, this);
        e();
        if (!zHasValue && i10 >= 21) {
            setOutlineProvider(new b7.c(this));
        }
        setChecked(this.f3521j);
        setText(fVar.G);
        setEllipsize(fVar.f2605s1);
        i();
        if (!this.f3516e.f2607t1) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        h();
        if (this.f3524n) {
            setMinHeight(this.f3526q);
        }
        this.f3525p = k0.d(this);
        super.setOnCheckedChangeListener(new b7.a(this, 0));
    }

    private RectF getCloseIconTouchBounds() {
        RectF rectF = this.f3530w;
        rectF.setEmpty();
        if (c() && this.f3519h != null) {
            f fVar = this.f3516e;
            Rect bounds = fVar.getBounds();
            rectF.setEmpty();
            if (fVar.T()) {
                float f10 = fVar.T0 + fVar.S0 + fVar.S + fVar.R0 + fVar.Q0;
                if (c.F(fVar) == 0) {
                    float f11 = bounds.right;
                    rectF.right = f11;
                    rectF.left = f11 - f10;
                } else {
                    float f12 = bounds.left;
                    rectF.left = f12;
                    rectF.right = f12 + f10;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i10 = (int) closeIconTouchBounds.left;
        int i11 = (int) closeIconTouchBounds.top;
        int i12 = (int) closeIconTouchBounds.right;
        int i13 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f3529v;
        rect.set(i10, i11, i12, i13);
        return rect;
    }

    private j7.d getTextAppearance() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.f2587a1.f6117g;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z4) {
        if (this.l != z4) {
            this.l = z4;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z4) {
        if (this.f3522k != z4) {
            this.f3522k = z4;
            refreshDrawableState();
        }
    }

    public final void b(int i10) {
        this.f3526q = i10;
        if (!this.f3524n) {
            InsetDrawable insetDrawable = this.f3517f;
            if (insetDrawable == null) {
                f();
                return;
            } else {
                if (insetDrawable != null) {
                    this.f3517f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int iMax = Math.max(0, i10 - ((int) this.f3516e.B));
        int iMax2 = Math.max(0, i10 - this.f3516e.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            InsetDrawable insetDrawable2 = this.f3517f;
            if (insetDrawable2 == null) {
                f();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.f3517f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int i11 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i12 = iMax > 0 ? iMax / 2 : 0;
        if (this.f3517f != null) {
            Rect rect = new Rect();
            this.f3517f.getPadding(rect);
            if (rect.top == i12 && rect.bottom == i12 && rect.left == i11 && rect.right == i11) {
                f();
                return;
            }
        }
        if (getMinHeight() != i10) {
            setMinHeight(i10);
        }
        if (getMinWidth() != i10) {
            setMinWidth(i10);
        }
        this.f3517f = new InsetDrawable((Drawable) this.f3516e, i11, i12, i11, i12);
        f();
    }

    public final boolean c() {
        f fVar = this.f3516e;
        if (fVar != null) {
            Object obj = fVar.O;
            if (obj == null) {
                obj = null;
            } else if (obj instanceof i) {
                obj = ((q0.j) ((i) obj)).f12923f;
            }
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    public final boolean d() {
        f fVar = this.f3516e;
        return fVar != null && fVar.V;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i10;
        if (!this.f3528t) {
            return super.dispatchHoverEvent(motionEvent);
        }
        d dVar = this.f3527s;
        AccessibilityManager accessibilityManager = dVar.f5164h;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7 || action == 9) {
                float x10 = motionEvent.getX();
                float y6 = motionEvent.getY();
                Chip chip = dVar.f2584q;
                int i11 = (chip.c() && chip.getCloseIconTouchBounds().contains(x10, y6)) ? 1 : 0;
                int i12 = dVar.f5168m;
                if (i12 != i11) {
                    dVar.f5168m = i11;
                    dVar.q(i11, 128);
                    dVar.q(i12, 256);
                }
                if (i11 != Integer.MIN_VALUE) {
                    return true;
                }
            } else if (action == 10 && (i10 = dVar.f5168m) != Integer.MIN_VALUE) {
                if (i10 == Integer.MIN_VALUE) {
                    return true;
                }
                dVar.f5168m = Integer.MIN_VALUE;
                dVar.q(i10, 256);
                return true;
            }
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0058  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f3528t) {
            return super.dispatchKeyEvent(keyEvent);
        }
        d dVar = this.f3527s;
        dVar.getClass();
        boolean zM = false;
        int i10 = 0;
        zM = false;
        zM = false;
        zM = false;
        zM = false;
        zM = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i11 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i11 = 33;
                                } else if (keyCode == 21) {
                                    i11 = 17;
                                } else if (keyCode != 22) {
                                    i11 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z4 = false;
                                while (i10 < repeatCount && dVar.m(i11, null)) {
                                    i10++;
                                    z4 = true;
                                }
                                zM = z4;
                                break;
                            }
                            break;
                        case 23:
                            if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                                int i12 = dVar.l;
                                if (i12 != Integer.MIN_VALUE) {
                                    Chip chip = dVar.f2584q;
                                    if (i12 == 0) {
                                        chip.performClick();
                                    } else if (i12 == 1) {
                                        chip.playSoundEffect(0);
                                        View.OnClickListener onClickListener = chip.f3519h;
                                        if (onClickListener != null) {
                                            onClickListener.onClick(chip);
                                        }
                                        if (chip.f3528t) {
                                            chip.f3527s.q(1, 1);
                                        }
                                    }
                                }
                                zM = true;
                                break;
                            }
                            break;
                    }
                }
            } else if (keyEvent.hasNoModifiers()) {
                zM = dVar.m(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                zM = dVar.m(1, null);
            }
        }
        if (!zM || dVar.l == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // w.p, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i10;
        super.drawableStateChanged();
        f fVar = this.f3516e;
        boolean zW = false;
        if (fVar != null && f.u(fVar.O)) {
            f fVar2 = this.f3516e;
            ?? IsEnabled = isEnabled();
            int i11 = IsEnabled;
            if (this.f3523m) {
                i11 = IsEnabled + 1;
            }
            int i12 = i11;
            if (this.l) {
                i12 = i11 + 1;
            }
            int i13 = i12;
            if (this.f3522k) {
                i13 = i12 + 1;
            }
            int i14 = i13;
            if (isChecked()) {
                i14 = i13 + 1;
            }
            int[] iArr = new int[i14];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i10 = 1;
            } else {
                i10 = 0;
            }
            if (this.f3523m) {
                iArr[i10] = 16842908;
                i10++;
            }
            if (this.l) {
                iArr[i10] = 16843623;
                i10++;
            }
            if (this.f3522k) {
                iArr[i10] = 16842919;
                i10++;
            }
            if (isChecked()) {
                iArr[i10] = 16842913;
            }
            if (!Arrays.equals(fVar2.f2601o1, iArr)) {
                fVar2.f2601o1 = iArr;
                if (fVar2.T()) {
                    zW = fVar2.w(fVar2.getState(), iArr);
                }
            }
        }
        if (zW) {
            invalidate();
        }
    }

    public final void e() {
        f fVar;
        if (!c() || (fVar = this.f3516e) == null || !fVar.N || this.f3519h == null) {
            b1.x(this, null);
            this.f3528t = false;
        } else {
            b1.x(this, this.f3527s);
            this.f3528t = true;
        }
    }

    public final void f() {
        if (k7.d.f10182a) {
            g();
            return;
        }
        f fVar = this.f3516e;
        if (!fVar.f2602p1) {
            fVar.f2602p1 = true;
            fVar.f2603q1 = k7.d.b(fVar.F);
            fVar.onStateChange(fVar.getState());
        }
        Drawable backgroundDrawable = getBackgroundDrawable();
        WeakHashMap weakHashMap = b1.f17953a;
        j0.q(this, backgroundDrawable);
        h();
        if (getBackgroundDrawable() == this.f3517f && this.f3516e.getCallback() == null) {
            this.f3516e.setCallback(this.f3517f);
        }
    }

    public final void g() {
        this.f3518g = new RippleDrawable(k7.d.b(this.f3516e.F), getBackgroundDrawable(), null);
        f fVar = this.f3516e;
        if (fVar.f2602p1) {
            fVar.f2602p1 = false;
            fVar.f2603q1 = null;
            fVar.onStateChange(fVar.getState());
        }
        RippleDrawable rippleDrawable = this.f3518g;
        WeakHashMap weakHashMap = b1.f17953a;
        j0.q(this, rippleDrawable);
        h();
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.r)) {
            return this.r;
        }
        if (!d()) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        getParent();
        return "android.widget.Button";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f3517f;
        return insetDrawable == null ? this.f3516e : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.Y;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.Z;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.A;
        }
        return null;
    }

    public float getChipCornerRadius() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return Math.max(0.0f, fVar.s());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f3516e;
    }

    public float getChipEndPadding() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.T0;
        }
        return 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getChipIcon() {
        Drawable drawable;
        f fVar = this.f3516e;
        if (fVar == null || (drawable = fVar.I) == 0) {
            return null;
        }
        boolean z4 = drawable instanceof i;
        Drawable drawable2 = drawable;
        if (z4) {
            drawable2 = ((q0.j) ((i) drawable)).f12923f;
        }
        return drawable2;
    }

    public float getChipIconSize() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.L;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.K;
        }
        return null;
    }

    public float getChipMinHeight() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.B;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.M0;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.D;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.E;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getCloseIcon() {
        Drawable drawable;
        f fVar = this.f3516e;
        if (fVar == null || (drawable = fVar.O) == 0) {
            return null;
        }
        boolean z4 = drawable instanceof i;
        Drawable drawable2 = drawable;
        if (z4) {
            drawable2 = ((q0.j) ((i) drawable)).f12923f;
        }
        return drawable2;
    }

    public CharSequence getCloseIconContentDescription() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.T;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.S0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.S;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.R0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.R;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.f2605s1;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.f3528t) {
            d dVar = this.f3527s;
            if (dVar.l == 1 || dVar.f5167k == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public r6.b getHideMotionSpec() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.f2606t0;
        }
        return null;
    }

    public float getIconEndPadding() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.O0;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.N0;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.F;
        }
        return null;
    }

    public m7.j getShapeAppearanceModel() {
        return this.f3516e.f10920a.f10904a;
    }

    public r6.b getShowMotionSpec() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.f2593h0;
        }
        return null;
    }

    public float getTextEndPadding() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.Q0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        f fVar = this.f3516e;
        if (fVar != null) {
            return fVar.P0;
        }
        return 0.0f;
    }

    public final void h() {
        f fVar;
        if (TextUtils.isEmpty(getText()) || (fVar = this.f3516e) == null) {
            return;
        }
        int iR = (int) (fVar.r() + fVar.T0 + fVar.Q0);
        f fVar2 = this.f3516e;
        int iQ = (int) (fVar2.q() + fVar2.M0 + fVar2.P0);
        if (this.f3517f != null) {
            Rect rect = new Rect();
            this.f3517f.getPadding(rect);
            iQ += rect.left;
            iR += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = b1.f17953a;
        k0.k(this, iQ, paddingTop, iR, paddingBottom);
    }

    public final void i() {
        TextPaint paint = getPaint();
        f fVar = this.f3516e;
        if (fVar != null) {
            paint.drawableState = fVar.getState();
        }
        j7.d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.e(getContext(), paint, this.f3531x);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        g.X(this, this.f3516e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, z);
        }
        if (d()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, A);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z4, int i10, Rect rect) {
        super.onFocusChanged(z4, i10, rect);
        if (this.f3528t) {
            d dVar = this.f3527s;
            int i11 = dVar.l;
            if (i11 != Integer.MIN_VALUE) {
                dVar.j(i11);
            }
            if (z4) {
                dVar.m(i10, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(d());
        accessibilityNodeInfo.setClickable(isClickable());
        getParent();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i10) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i10);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (this.f3525p != i10) {
            this.f3525p = i10;
            h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L28;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z4;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.f3522k) {
                        if (!zContains) {
                            setCloseIconPressed(false);
                        }
                        z4 = true;
                    }
                }
                z4 = false;
            } else {
                if (this.f3522k) {
                    playSoundEffect(0);
                    View.OnClickListener onClickListener = this.f3519h;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                    if (this.f3528t) {
                        this.f3527s.q(1, 1);
                    }
                    z4 = true;
                }
                setCloseIconPressed(false);
            }
            z4 = false;
            setCloseIconPressed(false);
        } else {
            if (zContains) {
                setCloseIconPressed(true);
                z4 = true;
            }
            z4 = false;
        }
        return z4 || super.onTouchEvent(motionEvent);
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.r = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f3518g) {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
    }

    @Override // w.p, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f3518g) {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // w.p, android.view.View
    public void setBackgroundResource(int i10) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
    }

    public void setCheckable(boolean z4) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.x(z4);
        }
    }

    public void setCheckableResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.x(fVar.U0.getResources().getBoolean(i10));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z4) {
        f fVar = this.f3516e;
        if (fVar == null) {
            this.f3521j = z4;
        } else if (fVar.V) {
            super.setChecked(z4);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.y(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z4) {
        setCheckedIconVisible(z4);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i10) {
        setCheckedIconVisible(i10);
    }

    public void setCheckedIconResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.y(com.bumptech.glide.d.x(fVar.U0, i10));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.z(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.z(n0.g.d(fVar.U0, i10));
        }
    }

    public void setCheckedIconVisible(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.A(fVar.U0.getResources().getBoolean(i10));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        f fVar = this.f3516e;
        if (fVar == null || fVar.A == colorStateList) {
            return;
        }
        fVar.A = colorStateList;
        fVar.onStateChange(fVar.getState());
    }

    public void setChipBackgroundColorResource(int i10) {
        ColorStateList colorStateListD;
        f fVar = this.f3516e;
        if (fVar == null || fVar.A == (colorStateListD = n0.g.d(fVar.U0, i10))) {
            return;
        }
        fVar.A = colorStateListD;
        fVar.onStateChange(fVar.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.B(f10);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.B(fVar.U0.getResources().getDimension(i10));
        }
    }

    public void setChipDrawable(f fVar) {
        f fVar2 = this.f3516e;
        if (fVar2 != fVar) {
            if (fVar2 != null) {
                fVar2.f2604r1 = new WeakReference(null);
            }
            this.f3516e = fVar;
            fVar.f2607t1 = false;
            fVar.f2604r1 = new WeakReference(this);
            b(this.f3526q);
        }
    }

    public void setChipEndPadding(float f10) {
        f fVar = this.f3516e;
        if (fVar == null || fVar.T0 == f10) {
            return;
        }
        fVar.T0 = f10;
        fVar.invalidateSelf();
        fVar.v();
    }

    public void setChipEndPaddingResource(int i10) throws Resources.NotFoundException {
        f fVar = this.f3516e;
        if (fVar != null) {
            float dimension = fVar.U0.getResources().getDimension(i10);
            if (fVar.T0 != dimension) {
                fVar.T0 = dimension;
                fVar.invalidateSelf();
                fVar.v();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.C(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z4) {
        setChipIconVisible(z4);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i10) {
        setChipIconVisible(i10);
    }

    public void setChipIconResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.C(com.bumptech.glide.d.x(fVar.U0, i10));
        }
    }

    public void setChipIconSize(float f10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.D(f10);
        }
    }

    public void setChipIconSizeResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.D(fVar.U0.getResources().getDimension(i10));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.E(colorStateList);
        }
    }

    public void setChipIconTintResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.E(n0.g.d(fVar.U0, i10));
        }
    }

    public void setChipIconVisible(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.F(fVar.U0.getResources().getBoolean(i10));
        }
    }

    public void setChipMinHeight(float f10) {
        f fVar = this.f3516e;
        if (fVar == null || fVar.B == f10) {
            return;
        }
        fVar.B = f10;
        fVar.invalidateSelf();
        fVar.v();
    }

    public void setChipMinHeightResource(int i10) throws Resources.NotFoundException {
        f fVar = this.f3516e;
        if (fVar != null) {
            float dimension = fVar.U0.getResources().getDimension(i10);
            if (fVar.B != dimension) {
                fVar.B = dimension;
                fVar.invalidateSelf();
                fVar.v();
            }
        }
    }

    public void setChipStartPadding(float f10) {
        f fVar = this.f3516e;
        if (fVar == null || fVar.M0 == f10) {
            return;
        }
        fVar.M0 = f10;
        fVar.invalidateSelf();
        fVar.v();
    }

    public void setChipStartPaddingResource(int i10) throws Resources.NotFoundException {
        f fVar = this.f3516e;
        if (fVar != null) {
            float dimension = fVar.U0.getResources().getDimension(i10);
            if (fVar.M0 != dimension) {
                fVar.M0 = dimension;
                fVar.invalidateSelf();
                fVar.v();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.G(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.G(n0.g.d(fVar.U0, i10));
        }
    }

    public void setChipStrokeWidth(float f10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.H(f10);
        }
    }

    public void setChipStrokeWidthResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.H(fVar.U0.getResources().getDimension(i10));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i10) {
        setText(getResources().getString(i10));
    }

    public void setCloseIcon(Drawable drawable) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.I(drawable);
        }
        e();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        f fVar = this.f3516e;
        if (fVar == null || fVar.T == charSequence) {
            return;
        }
        String str = v0.b.f16306b;
        Locale locale = Locale.getDefault();
        int i10 = k.f16322a;
        v0.b bVar = v0.j.a(locale) == 1 ? v0.b.f16309e : v0.b.f16308d;
        bVar.getClass();
        d0 d0Var = v0.i.f16318a;
        fVar.T = bVar.c(charSequence);
        fVar.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z4) {
        setCloseIconVisible(z4);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i10) {
        setCloseIconVisible(i10);
    }

    public void setCloseIconEndPadding(float f10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.J(f10);
        }
    }

    public void setCloseIconEndPaddingResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.J(fVar.U0.getResources().getDimension(i10));
        }
    }

    public void setCloseIconResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.I(com.bumptech.glide.d.x(fVar.U0, i10));
        }
        e();
    }

    public void setCloseIconSize(float f10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.K(f10);
        }
    }

    public void setCloseIconSizeResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.K(fVar.U0.getResources().getDimension(i10));
        }
    }

    public void setCloseIconStartPadding(float f10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.L(f10);
        }
    }

    public void setCloseIconStartPaddingResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.L(fVar.U0.getResources().getDimension(i10));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.M(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.M(n0.g.d(fVar.U0, i10));
        }
    }

    public void setCloseIconVisible(int i10) {
        setCloseIconVisible(getResources().getBoolean(i10));
    }

    @Override // w.p, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // w.p, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i10, int i11, int i12, int i13) {
        if (i10 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i12 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i10, i11, i12, i13);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.j(f10);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f3516e == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.f2605s1 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z4) {
        this.f3524n = z4;
        b(this.f3526q);
    }

    @Override // android.widget.TextView
    public void setGravity(int i10) {
        if (i10 != 8388627) {
            return;
        }
        super.setGravity(i10);
    }

    public void setHideMotionSpec(r6.b bVar) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.f2606t0 = bVar;
        }
    }

    public void setHideMotionSpecResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.f2606t0 = r6.b.a(fVar.U0, i10);
        }
    }

    public void setIconEndPadding(float f10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.O(f10);
        }
    }

    public void setIconEndPaddingResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.O(fVar.U0.getResources().getDimension(i10));
        }
    }

    public void setIconStartPadding(float f10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.P(f10);
        }
    }

    public void setIconStartPaddingResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.P(fVar.U0.getResources().getDimension(i10));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        if (this.f3516e == null) {
            return;
        }
        super.setLayoutDirection(i10);
    }

    @Override // android.widget.TextView
    public void setLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i10);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i10) {
        super.setMaxWidth(i10);
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.f2608u1 = i10;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i10) {
        if (i10 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i10);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f3520i = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f3519h = onClickListener;
        e();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.Q(colorStateList);
        }
        if (this.f3516e.f2602p1) {
            return;
        }
        g();
    }

    public void setRippleColorResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.Q(n0.g.d(fVar.U0, i10));
            if (this.f3516e.f2602p1) {
                return;
            }
            g();
        }
    }

    @Override // m7.u
    public void setShapeAppearanceModel(m7.j jVar) {
        this.f3516e.setShapeAppearanceModel(jVar);
    }

    public void setShowMotionSpec(r6.b bVar) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.f2593h0 = bVar;
        }
    }

    public void setShowMotionSpecResource(int i10) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.f2593h0 = r6.b.a(fVar.U0, i10);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z4) {
        if (!z4) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z4);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        f fVar = this.f3516e;
        if (fVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(fVar.f2607t1 ? null : charSequence, bufferType);
        f fVar2 = this.f3516e;
        if (fVar2 == null || TextUtils.equals(fVar2.G, charSequence)) {
            return;
        }
        fVar2.G = charSequence;
        fVar2.f2587a1.f6115e = true;
        fVar2.invalidateSelf();
        fVar2.v();
    }

    public void setTextAppearance(j7.d dVar) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.f2587a1.b(dVar, fVar.U0);
        }
        i();
    }

    public void setTextAppearanceResource(int i10) {
        setTextAppearance(getContext(), i10);
    }

    public void setTextEndPadding(float f10) {
        f fVar = this.f3516e;
        if (fVar == null || fVar.Q0 == f10) {
            return;
        }
        fVar.Q0 = f10;
        fVar.invalidateSelf();
        fVar.v();
    }

    public void setTextEndPaddingResource(int i10) throws Resources.NotFoundException {
        f fVar = this.f3516e;
        if (fVar != null) {
            float dimension = fVar.U0.getResources().getDimension(i10);
            if (fVar.Q0 != dimension) {
                fVar.Q0 = dimension;
                fVar.invalidateSelf();
                fVar.v();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i10, float f10) {
        super.setTextSize(i10, f10);
        f fVar = this.f3516e;
        if (fVar != null) {
            float fApplyDimension = TypedValue.applyDimension(i10, f10, getResources().getDisplayMetrics());
            j jVar = fVar.f2587a1;
            j7.d dVar = jVar.f6117g;
            if (dVar != null) {
                dVar.f9789k = fApplyDimension;
                jVar.f6111a.setTextSize(fApplyDimension);
                fVar.a();
            }
        }
        i();
    }

    public void setTextStartPadding(float f10) {
        f fVar = this.f3516e;
        if (fVar == null || fVar.P0 == f10) {
            return;
        }
        fVar.P0 = f10;
        fVar.invalidateSelf();
        fVar.v();
    }

    public void setTextStartPaddingResource(int i10) throws Resources.NotFoundException {
        f fVar = this.f3516e;
        if (fVar != null) {
            float dimension = fVar.U0.getResources().getDimension(i10);
            if (fVar.P0 != dimension) {
                fVar.P0 = dimension;
                fVar.invalidateSelf();
                fVar.v();
            }
        }
    }

    public void setCloseIconVisible(boolean z4) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.N(z4);
        }
        e();
    }

    public void setCheckedIconVisible(boolean z4) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.A(z4);
        }
    }

    public void setChipIconVisible(boolean z4) {
        f fVar = this.f3516e;
        if (fVar != null) {
            fVar.F(z4);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i10) {
        super.setTextAppearance(context, i10);
        f fVar = this.f3516e;
        if (fVar != null) {
            Context context2 = fVar.U0;
            fVar.f2587a1.b(new j7.d(context2, i10), context2);
        }
        i();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i10) {
        super.setTextAppearance(i10);
        f fVar = this.f3516e;
        if (fVar != null) {
            Context context = fVar.U0;
            fVar.f2587a1.b(new j7.d(context, i10), context);
        }
        i();
    }

    public void setInternalOnCheckedChangeListener(g7.f fVar) {
    }
}
