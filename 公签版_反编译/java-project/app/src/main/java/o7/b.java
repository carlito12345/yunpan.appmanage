package o7;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.yunpan.appmanage.R;
import g7.l;
import java.util.WeakHashMap;
import m7.g;
import m7.j;
import x0.b1;
import x0.j0;
import x0.p0;

/* loaded from: classes.dex */
public abstract class b extends FrameLayout {

    /* renamed from: i, reason: collision with root package name */
    public static final a f11648i = new a();

    /* renamed from: a, reason: collision with root package name */
    public final j f11649a;

    /* renamed from: b, reason: collision with root package name */
    public int f11650b;

    /* renamed from: c, reason: collision with root package name */
    public final float f11651c;

    /* renamed from: d, reason: collision with root package name */
    public final float f11652d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11653e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11654f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f11655g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f11656h;

    /* JADX WARN: Multi-variable type inference failed */
    public b(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        GradientDrawable gradientDrawable;
        Drawable drawableN0;
        super(s7.a.a(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, q6.a.f13052y);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            float dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
            WeakHashMap weakHashMap = b1.f17953a;
            if (Build.VERSION.SDK_INT >= 21) {
                p0.s(this, dimensionPixelSize);
            }
        }
        this.f11650b = typedArrayObtainStyledAttributes.getInt(2, 0);
        if (typedArrayObtainStyledAttributes.hasValue(8) || typedArrayObtainStyledAttributes.hasValue(9)) {
            this.f11649a = new j(j.b(context2, attributeSet, 0, 0));
        }
        this.f11651c = typedArrayObtainStyledAttributes.getFloat(3, 1.0f);
        setBackgroundTintList(com.bumptech.glide.c.w(context2, typedArrayObtainStyledAttributes, 4));
        setBackgroundTintMode(l.h(typedArrayObtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
        this.f11652d = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        this.f11653e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f11654f = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(f11648i);
        setFocusable(true);
        if (getBackground() == null) {
            int iK = com.bumptech.glide.d.K(com.bumptech.glide.d.s(R.attr.colorSurface, this), getBackgroundOverlayColorAlpha(), com.bumptech.glide.d.s(R.attr.colorOnSurface, this));
            j jVar = this.f11649a;
            if (jVar != null) {
                int i10 = c.f11657a;
                g gVar = new g(jVar);
                gVar.k(ColorStateList.valueOf(iK));
                gradientDrawable = gVar;
            } else {
                Resources resources = getResources();
                int i11 = c.f11657a;
                float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(0);
                gradientDrawable2.setCornerRadius(dimension);
                gradientDrawable2.setColor(iK);
                gradientDrawable = gradientDrawable2;
            }
            if (this.f11655g != null) {
                drawableN0 = com.bumptech.glide.c.n0(gradientDrawable);
                com.bumptech.glide.c.f0(drawableN0, this.f11655g);
            } else {
                drawableN0 = com.bumptech.glide.c.n0(gradientDrawable);
            }
            WeakHashMap weakHashMap2 = b1.f17953a;
            j0.q(this, drawableN0);
        }
    }

    public float getActionTextColorAlpha() {
        return this.f11652d;
    }

    public int getAnimationMode() {
        return this.f11650b;
    }

    public float getBackgroundOverlayColorAlpha() {
        return this.f11651c;
    }

    public int getMaxInlineActionWidth() {
        return this.f11654f;
    }

    public int getMaxWidth() {
        return this.f11653e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        b1.v(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int i12 = this.f11653e;
        if (i12 <= 0 || getMeasuredWidth() <= i12) {
            return;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), i11);
    }

    public void setAnimationMode(int i10) {
        this.f11650b = i10;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f11655g != null) {
            drawable = com.bumptech.glide.c.n0(drawable.mutate());
            com.bumptech.glide.c.f0(drawable, this.f11655g);
            com.bumptech.glide.c.g0(drawable, this.f11656h);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f11655g = colorStateList;
        if (getBackground() != null) {
            Drawable drawableN0 = com.bumptech.glide.c.n0(getBackground().mutate());
            com.bumptech.glide.c.f0(drawableN0, colorStateList);
            com.bumptech.glide.c.g0(drawableN0, this.f11656h);
            if (drawableN0 != getBackground()) {
                super.setBackgroundDrawable(drawableN0);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f11656h = mode;
        if (getBackground() != null) {
            Drawable drawableN0 = com.bumptech.glide.c.n0(getBackground().mutate());
            com.bumptech.glide.c.g0(drawableN0, mode);
            if (drawableN0 != getBackground()) {
                super.setBackgroundDrawable(drawableN0);
            }
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f11648i);
        super.setOnClickListener(onClickListener);
    }

    private void setBaseTransientBottomBar(c cVar) {
    }
}
