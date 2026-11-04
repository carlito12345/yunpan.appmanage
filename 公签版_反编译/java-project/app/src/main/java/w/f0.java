package w;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class f0 extends b0 {

    /* renamed from: e, reason: collision with root package name */
    public final AppCompatSeekBar f17055e;

    /* renamed from: f, reason: collision with root package name */
    public Drawable f17056f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f17057g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f17058h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17059i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f17060j;

    public f0(AppCompatSeekBar appCompatSeekBar) {
        super(0, appCompatSeekBar);
        this.f17057g = null;
        this.f17058h = null;
        this.f17059i = false;
        this.f17060j = false;
        this.f17055e = appCompatSeekBar;
    }

    @Override // w.b0
    public final void b(AttributeSet attributeSet, int i10) {
        super.b(attributeSet, R.attr.seekBarStyle);
        AppCompatSeekBar appCompatSeekBar = this.f17055e;
        Context context = appCompatSeekBar.getContext();
        int[] iArr = p.a.f12521g;
        s4.a aVarJ = s4.a.j(context, attributeSet, iArr, R.attr.seekBarStyle);
        x0.b1.w(appCompatSeekBar, appCompatSeekBar.getContext(), iArr, attributeSet, (TypedArray) aVarJ.f14294c, R.attr.seekBarStyle);
        Drawable drawableF = aVarJ.f(0);
        if (drawableF != null) {
            appCompatSeekBar.setThumb(drawableF);
        }
        Drawable drawableE = aVarJ.e(1);
        Drawable drawable = this.f17056f;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f17056f = drawableE;
        if (drawableE != null) {
            drawableE.setCallback(appCompatSeekBar);
            com.bumptech.glide.c.d0(drawableE, x0.k0.d(appCompatSeekBar));
            if (drawableE.isStateful()) {
                drawableE.setState(appCompatSeekBar.getDrawableState());
            }
            d();
        }
        appCompatSeekBar.invalidate();
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        if (typedArray.hasValue(3)) {
            this.f17058h = n1.b(typedArray.getInt(3, -1), this.f17058h);
            this.f17060j = true;
        }
        if (typedArray.hasValue(2)) {
            this.f17057g = aVarJ.d(2);
            this.f17059i = true;
        }
        aVarJ.r();
        d();
    }

    public final void d() {
        Drawable drawable = this.f17056f;
        if (drawable != null) {
            if (this.f17059i || this.f17060j) {
                Drawable drawableN0 = com.bumptech.glide.c.n0(drawable.mutate());
                this.f17056f = drawableN0;
                if (this.f17059i) {
                    com.bumptech.glide.c.f0(drawableN0, this.f17057g);
                }
                if (this.f17060j) {
                    com.bumptech.glide.c.g0(this.f17056f, this.f17058h);
                }
                if (this.f17056f.isStateful()) {
                    this.f17056f.setState(this.f17055e.getDrawableState());
                }
            }
        }
    }

    public final void e(Canvas canvas) {
        if (this.f17056f != null) {
            int max = this.f17055e.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f17056f.getIntrinsicWidth();
                int intrinsicHeight = this.f17056f.getIntrinsicHeight();
                int i10 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i11 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f17056f.setBounds(-i10, -i11, i10, i11);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i12 = 0; i12 <= max; i12++) {
                    this.f17056f.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
