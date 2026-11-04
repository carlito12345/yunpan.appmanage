package b7;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.material.chip.Chip;
import g7.i;
import g7.j;
import g7.l;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import m7.g;

/* loaded from: classes.dex */
public final class f extends g implements Drawable.Callback, i {

    /* renamed from: w1, reason: collision with root package name */
    public static final int[] f2585w1 = {R.attr.state_enabled};

    /* renamed from: x1, reason: collision with root package name */
    public static final ShapeDrawable f2586x1 = new ShapeDrawable(new OvalShape());
    public ColorStateList A;
    public float B;
    public float C;
    public ColorStateList D;
    public float E;
    public ColorStateList F;
    public CharSequence G;
    public boolean H;
    public Drawable I;
    public ColorStateList K;
    public float L;
    public boolean M;
    public float M0;
    public boolean N;
    public float N0;
    public Drawable O;
    public float O0;
    public Drawable P;
    public float P0;
    public float Q0;
    public ColorStateList R;
    public float R0;
    public float S;
    public float S0;
    public SpannableStringBuilder T;
    public float T0;
    public final Context U0;
    public boolean V;
    public final Paint V0;
    public final Paint.FontMetrics W0;
    public boolean X;
    public final RectF X0;
    public Drawable Y;
    public final PointF Y0;
    public ColorStateList Z;
    public final Path Z0;

    /* renamed from: a1, reason: collision with root package name */
    public final j f2587a1;

    /* renamed from: b1, reason: collision with root package name */
    public int f2588b1;

    /* renamed from: c1, reason: collision with root package name */
    public int f2589c1;

    /* renamed from: d1, reason: collision with root package name */
    public int f2590d1;

    /* renamed from: e1, reason: collision with root package name */
    public int f2591e1;

    /* renamed from: f1, reason: collision with root package name */
    public int f2592f1;
    public int g1;

    /* renamed from: h0, reason: collision with root package name */
    public r6.b f2593h0;

    /* renamed from: h1, reason: collision with root package name */
    public boolean f2594h1;

    /* renamed from: i1, reason: collision with root package name */
    public int f2595i1;

    /* renamed from: j1, reason: collision with root package name */
    public int f2596j1;

    /* renamed from: k1, reason: collision with root package name */
    public ColorFilter f2597k1;

    /* renamed from: l1, reason: collision with root package name */
    public PorterDuffColorFilter f2598l1;

    /* renamed from: m1, reason: collision with root package name */
    public ColorStateList f2599m1;

    /* renamed from: n1, reason: collision with root package name */
    public PorterDuff.Mode f2600n1;

    /* renamed from: o1, reason: collision with root package name */
    public int[] f2601o1;

    /* renamed from: p1, reason: collision with root package name */
    public boolean f2602p1;

    /* renamed from: q1, reason: collision with root package name */
    public ColorStateList f2603q1;

    /* renamed from: r1, reason: collision with root package name */
    public WeakReference f2604r1;

    /* renamed from: s1, reason: collision with root package name */
    public TextUtils.TruncateAt f2605s1;

    /* renamed from: t0, reason: collision with root package name */
    public r6.b f2606t0;

    /* renamed from: t1, reason: collision with root package name */
    public boolean f2607t1;

    /* renamed from: u1, reason: collision with root package name */
    public int f2608u1;

    /* renamed from: v1, reason: collision with root package name */
    public boolean f2609v1;
    public ColorStateList z;

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.yunpan.appmanage.R.attr.chipStyle, com.yunpan.appmanage.R.style.Widget_MaterialComponents_Chip_Action);
        this.C = -1.0f;
        this.V0 = new Paint(1);
        this.W0 = new Paint.FontMetrics();
        this.X0 = new RectF();
        this.Y0 = new PointF();
        this.Z0 = new Path();
        this.f2596j1 = 255;
        this.f2600n1 = PorterDuff.Mode.SRC_IN;
        this.f2604r1 = new WeakReference(null);
        i(context);
        this.U0 = context;
        j jVar = new j(this);
        this.f2587a1 = jVar;
        this.G = "";
        jVar.f6111a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f2585w1;
        setState(iArr);
        if (!Arrays.equals(this.f2601o1, iArr)) {
            this.f2601o1 = iArr;
            if (T()) {
                w(getState(), iArr);
            }
        }
        this.f2607t1 = true;
        if (k7.d.f10182a) {
            f2586x1.setTint(-1);
        }
    }

    public static void U(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public static boolean t(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean u(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public final void A(boolean z) {
        if (this.X != z) {
            boolean zR = R();
            this.X = z;
            boolean zR2 = R();
            if (zR != zR2) {
                if (zR2) {
                    o(this.Y);
                } else {
                    U(this.Y);
                }
                invalidateSelf();
                v();
            }
        }
    }

    public final void B(float f10) {
        if (this.C != f10) {
            this.C = f10;
            m7.j jVar = this.f10920a.f10904a;
            jVar.getClass();
            ff.b bVar = new ff.b(jVar);
            bVar.f5806e = new m7.a(f10);
            bVar.f5807f = new m7.a(f10);
            bVar.f5808g = new m7.a(f10);
            bVar.f5809h = new m7.a(f10);
            setShapeAppearanceModel(new m7.j(bVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void C(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.I;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof q0.i;
            drawable2 = drawable3;
            if (z) {
                drawable2 = ((q0.j) ((q0.i) drawable3)).f12923f;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float fQ = q();
            this.I = drawable != null ? com.bumptech.glide.c.n0(drawable).mutate() : null;
            float fQ2 = q();
            U(drawable2);
            if (S()) {
                o(this.I);
            }
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void D(float f10) {
        if (this.L != f10) {
            float fQ = q();
            this.L = f10;
            float fQ2 = q();
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void E(ColorStateList colorStateList) {
        this.M = true;
        if (this.K != colorStateList) {
            this.K = colorStateList;
            if (S()) {
                com.bumptech.glide.c.f0(this.I, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void F(boolean z) {
        if (this.H != z) {
            boolean zS = S();
            this.H = z;
            boolean zS2 = S();
            if (zS != zS2) {
                if (zS2) {
                    o(this.I);
                } else {
                    U(this.I);
                }
                invalidateSelf();
                v();
            }
        }
    }

    public final void G(ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            if (this.f2609v1) {
                m7.f fVar = this.f10920a;
                if (fVar.f10907d != colorStateList) {
                    fVar.f10907d = colorStateList;
                    onStateChange(getState());
                }
            }
            onStateChange(getState());
        }
    }

    public final void H(float f10) {
        if (this.E != f10) {
            this.E = f10;
            this.V0.setStrokeWidth(f10);
            if (this.f2609v1) {
                this.f10920a.f10913j = f10;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void I(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.O;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof q0.i;
            drawable2 = drawable3;
            if (z) {
                drawable2 = ((q0.j) ((q0.i) drawable3)).f12923f;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float fR = r();
            this.O = drawable != null ? com.bumptech.glide.c.n0(drawable).mutate() : null;
            if (k7.d.f10182a) {
                this.P = new RippleDrawable(k7.d.b(this.F), this.O, f2586x1);
            }
            float fR2 = r();
            U(drawable2);
            if (T()) {
                o(this.O);
            }
            invalidateSelf();
            if (fR != fR2) {
                v();
            }
        }
    }

    public final void J(float f10) {
        if (this.S0 != f10) {
            this.S0 = f10;
            invalidateSelf();
            if (T()) {
                v();
            }
        }
    }

    public final void K(float f10) {
        if (this.S != f10) {
            this.S = f10;
            invalidateSelf();
            if (T()) {
                v();
            }
        }
    }

    public final void L(float f10) {
        if (this.R0 != f10) {
            this.R0 = f10;
            invalidateSelf();
            if (T()) {
                v();
            }
        }
    }

    public final void M(ColorStateList colorStateList) {
        if (this.R != colorStateList) {
            this.R = colorStateList;
            if (T()) {
                com.bumptech.glide.c.f0(this.O, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void N(boolean z) {
        if (this.N != z) {
            boolean zT = T();
            this.N = z;
            boolean zT2 = T();
            if (zT != zT2) {
                if (zT2) {
                    o(this.O);
                } else {
                    U(this.O);
                }
                invalidateSelf();
                v();
            }
        }
    }

    public final void O(float f10) {
        if (this.O0 != f10) {
            float fQ = q();
            this.O0 = f10;
            float fQ2 = q();
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void P(float f10) {
        if (this.N0 != f10) {
            float fQ = q();
            this.N0 = f10;
            float fQ2 = q();
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void Q(ColorStateList colorStateList) {
        if (this.F != colorStateList) {
            this.F = colorStateList;
            this.f2603q1 = this.f2602p1 ? k7.d.b(colorStateList) : null;
            onStateChange(getState());
        }
    }

    public final boolean R() {
        return this.X && this.Y != null && this.f2594h1;
    }

    public final boolean S() {
        return this.H && this.I != null;
    }

    public final boolean T() {
        return this.N && this.O != null;
    }

    @Override // g7.i
    public final void a() {
        v();
        invalidateSelf();
    }

    @Override // m7.g, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i10;
        int iSaveLayerAlpha;
        int i11;
        RectF rectF;
        int i12;
        int i13;
        float f10;
        int iSave;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i10 = this.f2596j1) == 0) {
            return;
        }
        if (i10 < 255) {
            float f11 = bounds.left;
            float f12 = bounds.top;
            float f13 = bounds.right;
            float f14 = bounds.bottom;
            iSaveLayerAlpha = Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f11, f12, f13, f14, i10) : canvas.saveLayerAlpha(f11, f12, f13, f14, i10, 31);
        } else {
            iSaveLayerAlpha = 0;
        }
        boolean z = this.f2609v1;
        Paint paint = this.V0;
        RectF rectF2 = this.X0;
        if (!z) {
            paint.setColor(this.f2588b1);
            paint.setStyle(Paint.Style.FILL);
            rectF2.set(bounds);
            canvas.drawRoundRect(rectF2, s(), s(), paint);
        }
        if (!this.f2609v1) {
            paint.setColor(this.f2589c1);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.f2597k1;
            if (colorFilter == null) {
                colorFilter = this.f2598l1;
            }
            paint.setColorFilter(colorFilter);
            rectF2.set(bounds);
            canvas.drawRoundRect(rectF2, s(), s(), paint);
        }
        if (this.f2609v1) {
            super.draw(canvas);
        }
        if (this.E > 0.0f && !this.f2609v1) {
            paint.setColor(this.f2591e1);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.f2609v1) {
                ColorFilter colorFilter2 = this.f2597k1;
                if (colorFilter2 == null) {
                    colorFilter2 = this.f2598l1;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f15 = bounds.left;
            float f16 = this.E / 2.0f;
            rectF2.set(f15 + f16, bounds.top + f16, bounds.right - f16, bounds.bottom - f16);
            float f17 = this.C - (this.E / 2.0f);
            canvas.drawRoundRect(rectF2, f17, f17, paint);
        }
        paint.setColor(this.f2592f1);
        paint.setStyle(Paint.Style.FILL);
        rectF2.set(bounds);
        if (this.f2609v1) {
            RectF rectF3 = new RectF(bounds);
            Path path = this.Z0;
            m7.f fVar = this.f10920a;
            this.f10935s.b(fVar.f10904a, fVar.f10912i, rectF3, this.r, path);
            i11 = 0;
            e(canvas, paint, path, this.f10920a.f10904a, g());
        } else {
            canvas.drawRoundRect(rectF2, s(), s(), paint);
            i11 = 0;
        }
        if (S()) {
            p(bounds, rectF2);
            float f18 = rectF2.left;
            float f19 = rectF2.top;
            canvas.translate(f18, f19);
            this.I.setBounds(i11, i11, (int) rectF2.width(), (int) rectF2.height());
            this.I.draw(canvas);
            canvas.translate(-f18, -f19);
        }
        if (R()) {
            p(bounds, rectF2);
            float f20 = rectF2.left;
            float f21 = rectF2.top;
            canvas.translate(f20, f21);
            this.Y.setBounds(i11, i11, (int) rectF2.width(), (int) rectF2.height());
            this.Y.draw(canvas);
            canvas.translate(-f20, -f21);
        }
        if (!this.f2607t1 || this.G == null) {
            rectF = rectF2;
            i12 = iSaveLayerAlpha;
            i13 = 255;
        } else {
            PointF pointF = this.Y0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.G;
            j jVar = this.f2587a1;
            if (charSequence != null) {
                float fQ = q() + this.M0 + this.P0;
                if (com.bumptech.glide.c.F(this) == 0) {
                    pointF.x = bounds.left + fQ;
                } else {
                    pointF.x = bounds.right - fQ;
                    align = Paint.Align.RIGHT;
                }
                float fCenterY = bounds.centerY();
                TextPaint textPaint = jVar.f6111a;
                Paint.FontMetrics fontMetrics = this.W0;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            rectF2.setEmpty();
            if (this.G != null) {
                float fQ2 = q() + this.M0 + this.P0;
                float fR = r() + this.T0 + this.Q0;
                if (com.bumptech.glide.c.F(this) == 0) {
                    rectF2.left = bounds.left + fQ2;
                    rectF2.right = bounds.right - fR;
                } else {
                    rectF2.left = bounds.left + fR;
                    rectF2.right = bounds.right - fQ2;
                }
                rectF2.top = bounds.top;
                rectF2.bottom = bounds.bottom;
            }
            j7.d dVar = jVar.f6117g;
            TextPaint textPaint2 = jVar.f6111a;
            if (dVar != null) {
                textPaint2.drawableState = getState();
                jVar.f6117g.e(this.U0, textPaint2, jVar.f6112b);
            }
            textPaint2.setTextAlign(align);
            String string = this.G.toString();
            if (jVar.f6115e) {
                jVar.a(string);
                f10 = jVar.f6113c;
            } else {
                f10 = jVar.f6113c;
            }
            boolean z4 = Math.round(f10) > Math.round(rectF2.width());
            if (z4) {
                iSave = canvas.save();
                canvas.clipRect(rectF2);
            } else {
                iSave = 0;
            }
            CharSequence charSequenceEllipsize = this.G;
            if (z4 && this.f2605s1 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint2, rectF2.width(), this.f2605s1);
            }
            CharSequence charSequence2 = charSequenceEllipsize;
            int length = charSequence2.length();
            float f22 = pointF.x;
            float f23 = pointF.y;
            i13 = 255;
            rectF = rectF2;
            i12 = iSaveLayerAlpha;
            canvas.drawText(charSequence2, 0, length, f22, f23, textPaint2);
            if (z4) {
                canvas.restoreToCount(iSave);
            }
        }
        if (T()) {
            rectF.setEmpty();
            if (T()) {
                float f24 = this.T0 + this.S0;
                if (com.bumptech.glide.c.F(this) == 0) {
                    float f25 = bounds.right - f24;
                    rectF.right = f25;
                    rectF.left = f25 - this.S;
                } else {
                    float f26 = bounds.left + f24;
                    rectF.left = f26;
                    rectF.right = f26 + this.S;
                }
                float fExactCenterY = bounds.exactCenterY();
                float f27 = this.S;
                float f28 = fExactCenterY - (f27 / 2.0f);
                rectF.top = f28;
                rectF.bottom = f28 + f27;
            }
            float f29 = rectF.left;
            float f30 = rectF.top;
            canvas.translate(f29, f30);
            this.O.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            if (k7.d.f10182a) {
                this.P.setBounds(this.O.getBounds());
                this.P.jumpToCurrentState();
                this.P.draw(canvas);
            } else {
                this.O.draw(canvas);
            }
            canvas.translate(-f29, -f30);
        }
        if (this.f2596j1 < i13) {
            canvas.restoreToCount(i12);
        }
    }

    @Override // m7.g, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f2596j1;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f2597k1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.B;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float f10;
        float fQ = q() + this.M0 + this.P0;
        String string = this.G.toString();
        j jVar = this.f2587a1;
        if (jVar.f6115e) {
            jVar.a(string);
            f10 = jVar.f6113c;
        } else {
            f10 = jVar.f6113c;
        }
        return Math.min(Math.round(r() + f10 + fQ + this.Q0 + this.T0), this.f2608u1);
    }

    @Override // m7.g, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // m7.g, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.f2609v1) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.B, this.C);
        } else {
            outline.setRoundRect(bounds, this.C);
        }
        outline.setAlpha(this.f2596j1 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // m7.g, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        j7.d dVar;
        ColorStateList colorStateList;
        return t(this.z) || t(this.A) || t(this.D) || (this.f2602p1 && t(this.f2603q1)) || (!((dVar = this.f2587a1.f6117g) == null || (colorStateList = dVar.f9788j) == null || !colorStateList.isStateful()) || ((this.X && this.Y != null && this.V) || u(this.I) || u(this.Y) || t(this.f2599m1)));
    }

    public final void o(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        com.bumptech.glide.c.d0(drawable, com.bumptech.glide.c.F(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.O) {
            if (drawable.isStateful()) {
                drawable.setState(this.f2601o1);
            }
            com.bumptech.glide.c.f0(drawable, this.R);
            return;
        }
        Drawable drawable2 = this.I;
        if (drawable == drawable2 && this.M) {
            com.bumptech.glide.c.f0(drawable2, this.K);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i10) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i10);
        if (S()) {
            zOnLayoutDirectionChanged |= com.bumptech.glide.c.d0(this.I, i10);
        }
        if (R()) {
            zOnLayoutDirectionChanged |= com.bumptech.glide.c.d0(this.Y, i10);
        }
        if (T()) {
            zOnLayoutDirectionChanged |= com.bumptech.glide.c.d0(this.O, i10);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i10) {
        boolean zOnLevelChange = super.onLevelChange(i10);
        if (S()) {
            zOnLevelChange |= this.I.setLevel(i10);
        }
        if (R()) {
            zOnLevelChange |= this.Y.setLevel(i10);
        }
        if (T()) {
            zOnLevelChange |= this.O.setLevel(i10);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // m7.g, android.graphics.drawable.Drawable, g7.i
    public final boolean onStateChange(int[] iArr) {
        if (this.f2609v1) {
            super.onStateChange(iArr);
        }
        return w(iArr, this.f2601o1);
    }

    public final void p(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (S() || R()) {
            float f10 = this.M0 + this.N0;
            Drawable drawable = this.f2594h1 ? this.Y : this.I;
            float intrinsicWidth = this.L;
            if (intrinsicWidth <= 0.0f && drawable != null) {
                intrinsicWidth = drawable.getIntrinsicWidth();
            }
            if (com.bumptech.glide.c.F(this) == 0) {
                float f11 = rect.left + f10;
                rectF.left = f11;
                rectF.right = f11 + intrinsicWidth;
            } else {
                float f12 = rect.right - f10;
                rectF.right = f12;
                rectF.left = f12 - intrinsicWidth;
            }
            Drawable drawable2 = this.f2594h1 ? this.Y : this.I;
            float fCeil = this.L;
            if (fCeil <= 0.0f && drawable2 != null) {
                fCeil = (float) Math.ceil(l.d(this.U0, 24));
                if (drawable2.getIntrinsicHeight() <= fCeil) {
                    fCeil = drawable2.getIntrinsicHeight();
                }
            }
            float fExactCenterY = rect.exactCenterY() - (fCeil / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fCeil;
        }
    }

    public final float q() {
        if (!S() && !R()) {
            return 0.0f;
        }
        float f10 = this.N0;
        Drawable drawable = this.f2594h1 ? this.Y : this.I;
        float intrinsicWidth = this.L;
        if (intrinsicWidth <= 0.0f && drawable != null) {
            intrinsicWidth = drawable.getIntrinsicWidth();
        }
        return intrinsicWidth + f10 + this.O0;
    }

    public final float r() {
        if (T()) {
            return this.R0 + this.S + this.S0;
        }
        return 0.0f;
    }

    public final float s() {
        return this.f2609v1 ? this.f10920a.f10904a.f10945e.a(g()) : this.C;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j10);
        }
    }

    @Override // m7.g, android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        if (this.f2596j1 != i10) {
            this.f2596j1 = i10;
            invalidateSelf();
        }
    }

    @Override // m7.g, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f2597k1 != colorFilter) {
            this.f2597k1 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // m7.g, android.graphics.drawable.Drawable, q0.h
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f2599m1 != colorStateList) {
            this.f2599m1 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // m7.g, android.graphics.drawable.Drawable, q0.h
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f2600n1 != mode) {
            this.f2600n1 = mode;
            this.f2598l1 = d.b.x0(this, this.f2599m1, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z4) {
        boolean visible = super.setVisible(z, z4);
        if (S()) {
            visible |= this.I.setVisible(z, z4);
        }
        if (R()) {
            visible |= this.Y.setVisible(z, z4);
        }
        if (T()) {
            visible |= this.O.setVisible(z, z4);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void v() {
        e eVar = (e) this.f2604r1.get();
        if (eVar != null) {
            Chip chip = (Chip) eVar;
            chip.b(chip.f3526q);
            chip.requestLayout();
            if (Build.VERSION.SDK_INT >= 21) {
                chip.invalidateOutline();
            }
        }
    }

    public final boolean w(int[] iArr, int[] iArr2) {
        boolean z;
        boolean z4;
        ColorStateList colorStateList;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.z;
        int iC = c(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f2588b1) : 0);
        boolean state = true;
        if (this.f2588b1 != iC) {
            this.f2588b1 = iC;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.A;
        int iC2 = c(colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f2589c1) : 0);
        if (this.f2589c1 != iC2) {
            this.f2589c1 = iC2;
            zOnStateChange = true;
        }
        int iB = p0.a.b(iC2, iC);
        if ((this.f2590d1 != iB) | (this.f10920a.f10906c == null)) {
            this.f2590d1 = iB;
            k(ColorStateList.valueOf(iB));
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.D;
        int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f2591e1) : 0;
        if (this.f2591e1 != colorForState) {
            this.f2591e1 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.f2603q1 == null || !k7.d.c(iArr)) ? 0 : this.f2603q1.getColorForState(iArr, this.f2592f1);
        if (this.f2592f1 != colorForState2) {
            this.f2592f1 = colorForState2;
            if (this.f2602p1) {
                zOnStateChange = true;
            }
        }
        j7.d dVar = this.f2587a1.f6117g;
        int colorForState3 = (dVar == null || (colorStateList = dVar.f9788j) == null) ? 0 : colorStateList.getColorForState(iArr, this.g1);
        if (this.g1 != colorForState3) {
            this.g1 = colorForState3;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 != null) {
            int length = state2.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (state2[i10] == 16842912) {
                    z = this.V;
                } else {
                    i10++;
                }
            }
        }
        if (this.f2594h1 == z || this.Y == null) {
            z4 = false;
        } else {
            float fQ = q();
            this.f2594h1 = z;
            if (fQ != q()) {
                zOnStateChange = true;
                z4 = true;
            } else {
                zOnStateChange = true;
                z4 = false;
            }
        }
        ColorStateList colorStateList5 = this.f2599m1;
        int colorForState4 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.f2595i1) : 0;
        if (this.f2595i1 != colorForState4) {
            this.f2595i1 = colorForState4;
            this.f2598l1 = d.b.x0(this, this.f2599m1, this.f2600n1);
        } else {
            state = zOnStateChange;
        }
        if (u(this.I)) {
            state |= this.I.setState(iArr);
        }
        if (u(this.Y)) {
            state |= this.Y.setState(iArr);
        }
        if (u(this.O)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.O.setState(iArr3);
        }
        if (k7.d.f10182a && u(this.P)) {
            state |= this.P.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z4) {
            v();
        }
        return state;
    }

    public final void x(boolean z) {
        if (this.V != z) {
            this.V = z;
            float fQ = q();
            if (!z && this.f2594h1) {
                this.f2594h1 = false;
            }
            float fQ2 = q();
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void y(Drawable drawable) {
        if (this.Y != drawable) {
            float fQ = q();
            this.Y = drawable;
            float fQ2 = q();
            U(this.Y);
            o(this.Y);
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void z(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.Z != colorStateList) {
            this.Z = colorStateList;
            if (this.X && (drawable = this.Y) != null && this.V) {
                com.bumptech.glide.c.f0(drawable, colorStateList);
            }
            onStateChange(getState());
        }
    }
}
