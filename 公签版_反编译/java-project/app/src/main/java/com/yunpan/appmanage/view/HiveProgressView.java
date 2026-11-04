package com.yunpan.appmanage.view;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.b0;
import com.hsae.autosdk.core.NoConst;
import l2.z;
import p7.b;
import w9.a;

/* loaded from: classes.dex */
public class HiveProgressView extends View {

    /* renamed from: p, reason: collision with root package name */
    public static final int[] f4163p = {16711680, 16744192, 16776960, 65280, 255, 4915330, 9699539};

    /* renamed from: a, reason: collision with root package name */
    public final Paint f4164a;

    /* renamed from: b, reason: collision with root package name */
    public int f4165b;

    /* renamed from: c, reason: collision with root package name */
    public int f4166c;

    /* renamed from: d, reason: collision with root package name */
    public int f4167d;

    /* renamed from: e, reason: collision with root package name */
    public float f4168e;

    /* renamed from: f, reason: collision with root package name */
    public int f4169f;

    /* renamed from: g, reason: collision with root package name */
    public int f4170g;

    /* renamed from: h, reason: collision with root package name */
    public int f4171h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f4172i;

    /* renamed from: j, reason: collision with root package name */
    public int f4173j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f4174k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public final Drawable f4175m;

    /* renamed from: n, reason: collision with root package name */
    public AnimatorSet f4176n;

    public HiveProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Paint paint = new Paint();
        this.f4164a = paint;
        this.f4167d = 0;
        this.f4168e = 0.0f;
        this.f4169f = 70;
        this.f4170g = NoConst.MIN_HEARTBEAT_INTERVAL;
        this.l = 0;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.f17647a, 0, 0);
        this.f4170g = typedArrayObtainStyledAttributes.getInteger(0, NoConst.MIN_HEARTBEAT_INTERVAL);
        this.f4169f = typedArrayObtainStyledAttributes.getInteger(4, 70);
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            this.f4171h = typedArrayObtainStyledAttributes.getColor(1, -16777216);
        }
        this.f4172i = typedArrayObtainStyledAttributes.getBoolean(5, false);
        this.f4174k = typedArrayObtainStyledAttributes.getBoolean(6, false);
        this.f4173j = typedArrayObtainStyledAttributes.getInteger(2, 0);
        this.l = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        typedArrayObtainStyledAttributes.recycle();
        paint.setAlpha(0);
        paint.setPathEffect(new CornerPathEffect(this.f4173j));
        paint.setColor(this.f4171h);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        if (this.l != 0) {
            this.f4175m = getResources().getDrawable(this.l);
        }
    }

    public final int a(float f10, int i10) {
        float f11;
        float f12 = i10 * 100;
        if (f10 > f12) {
            f11 = this.f4169f;
        } else {
            float f13 = f10 - ((i10 - 1) * 100);
            if (f13 <= 0.0f) {
                f13 = 0.0f;
            }
            f11 = (f13 * this.f4169f) / 100.0f;
        }
        if (f10 > 700.0f) {
            float f14 = f10 - 700.0f;
            if (f14 > f12) {
                f11 = 0.0f;
            } else {
                float f15 = f14 - ((i10 - 1) * 100);
                if (f15 <= 0.0f) {
                    f15 = 0.0f;
                }
                float f16 = this.f4169f;
                f11 = f16 - ((f15 * f16) / 100.0f);
            }
        }
        return (int) (f10 <= 1400.0f ? f11 : 0.0f);
    }

    public final int b(int i10) {
        return (!this.f4172i || i10 > 7) ? this.f4171h : f4163p[i10 - 1];
    }

    public final Path c(int i10, int i11, int i12, int i13, float f10) {
        Path path = new Path();
        int iAbs = Math.abs(i13 - i11);
        int i14 = i12 - i10;
        int iAbs2 = Math.abs(i14);
        if (iAbs2 <= iAbs) {
            iAbs = iAbs2;
        }
        int i15 = iAbs / 2;
        if (this.f4174k) {
            float f11 = i15;
            float f12 = f10 * f11;
            i11 += (int) (f11 - f12);
            i15 = (int) f12;
        }
        int i16 = (i14 / 2) + i10;
        double d10 = i15;
        double dSqrt = Math.sqrt(3.0d);
        Double.isNaN(d10);
        int i17 = (int) ((dSqrt * d10) / 2.0d);
        path.moveTo(i16, i11);
        int i18 = i16 + i17;
        int i19 = i15 / 2;
        int i20 = i11 + i19;
        float f13 = i18;
        path.lineTo(f13, i20);
        int i21 = i20 + i15;
        path.lineTo(f13, i21);
        int i22 = i18 - i17;
        int i23 = i21 + i19;
        path.lineTo(i22, i23);
        float f14 = i22 - i17;
        path.lineTo(f14, i23 - i19);
        path.lineTo(f14, r7 - i15);
        path.close();
        return path;
    }

    public final void d() {
        AnimatorSet animatorSet = this.f4176n;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.f4176n.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1450.0f);
        valueAnimatorOfFloat.setDuration(this.f4170g);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new b(3, this));
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f4176n = animatorSet2;
        animatorSet2.play(valueAnimatorOfFloat);
        this.f4176n.addListener(new b0(2, this));
        this.f4176n.start();
    }

    public int getAnimationTime() {
        return this.f4170g;
    }

    public int getColor() {
        return this.f4171h;
    }

    public int getCornerRadius() {
        return this.f4173j;
    }

    public int getMaxAlpha() {
        return this.f4169f;
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        d();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f4168e = 0.0f;
        AnimatorSet animatorSet = this.f4176n;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f4176n = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.f4175m == null) {
            int iA = a(this.f4168e, 1);
            Paint paint = this.f4164a;
            paint.setColor(b(1));
            paint.setAlpha(iA);
            int i10 = this.f4166c;
            int i11 = this.f4167d;
            canvas.drawPath(c(i10 / 2, i11, (i10 * 3) / 2, this.f4165b + i11, iA / this.f4169f), paint);
            int iA2 = a(this.f4168e, 2);
            paint.setColor(b(2));
            paint.setAlpha(iA2);
            int i12 = this.f4166c;
            int i13 = this.f4167d;
            canvas.drawPath(c((i12 * 3) / 2, i13, (i12 * 5) / 2, this.f4165b + i13, iA2 / this.f4169f), paint);
            int iA3 = a(this.f4168e, 6);
            paint.setColor(b(6));
            paint.setAlpha(iA3);
            int i14 = this.f4165b;
            int i15 = this.f4167d;
            canvas.drawPath(c(0, ((i14 * 3) / 4) + i15, this.f4166c, z.a(i14, 7, 4, i15), iA3 / this.f4169f), paint);
            int iA4 = a(this.f4168e, 7);
            paint.setColor(b(7));
            paint.setAlpha(iA4);
            int i16 = this.f4166c;
            int i17 = this.f4165b;
            int i18 = this.f4167d;
            canvas.drawPath(c(i16, ((i17 * 3) / 4) + i18, i16 * 2, z.a(i17, 7, 4, i18), iA4 / this.f4169f), paint);
            int iA5 = a(this.f4168e, 3);
            paint.setColor(b(3));
            paint.setAlpha(iA5);
            int i19 = this.f4166c;
            int i20 = this.f4165b;
            int i21 = this.f4167d;
            canvas.drawPath(c(i19 * 2, ((i20 * 3) / 4) + i21, i19 * 3, z.a(i20, 7, 4, i21), iA5 / this.f4169f), paint);
            int iA6 = a(this.f4168e, 5);
            paint.setColor(b(5));
            paint.setAlpha(iA6);
            int i22 = this.f4166c;
            int i23 = this.f4165b;
            int i24 = this.f4167d;
            canvas.drawPath(c(i22 / 2, ((i23 * 6) / 4) + i24, (i22 * 3) / 2, z.a(i23, 10, 4, i24), iA6 / this.f4169f), paint);
            int iA7 = a(this.f4168e, 4);
            paint.setColor(b(4));
            paint.setAlpha(iA7);
            int i25 = this.f4166c;
            int i26 = this.f4165b;
            int i27 = this.f4167d;
            canvas.drawPath(c((i25 * 3) / 2, ((i26 * 6) / 4) + i27, (i25 * 5) / 2, z.a(i26, 10, 4, i27), iA7 / this.f4169f), paint);
            return;
        }
        canvas.save();
        int iA8 = a(this.f4168e, 1);
        Drawable drawable = this.f4175m;
        int i28 = this.f4166c;
        int i29 = this.f4167d;
        drawable.setBounds(i28 / 2, i29, (i28 * 3) / 2, this.f4165b - i29);
        this.f4175m.setAlpha(iA8);
        int i30 = this.f4166c;
        canvas.rotate(10.0f, z.a(i30, 3, 4, i30 / 2) - (i30 / 4), this.f4165b / 2);
        this.f4175m.draw(canvas);
        canvas.restore();
        canvas.save();
        int iA9 = a(this.f4168e, 2);
        Drawable drawable2 = this.f4175m;
        int i31 = this.f4166c;
        int i32 = this.f4167d;
        drawable2.setBounds((i31 * 3) / 2, i32, (i31 * 5) / 2, this.f4165b - i32);
        this.f4175m.setAlpha(iA9);
        int i33 = this.f4166c * 3;
        canvas.rotate(-10.0f, z.a(r0, 5, 4, i33 / 2) - (i33 / 4), this.f4165b / 2);
        this.f4175m.draw(canvas);
        canvas.restore();
        canvas.save();
        int iA10 = a(this.f4168e, 6);
        Drawable drawable3 = this.f4175m;
        int i34 = this.f4165b;
        int i35 = this.f4167d;
        drawable3.setBounds(0, ((i34 * 3) / 4) + i35, this.f4166c, ((i34 * 7) / 4) - i35);
        this.f4175m.setAlpha(iA10);
        float f10 = this.f4166c / 2;
        int i36 = this.f4165b * 3;
        canvas.rotate(-10.0f, f10, z.a(r1, 7, 8, i36 / 4) - (i36 / 8));
        this.f4175m.draw(canvas);
        canvas.restore();
        canvas.save();
        int iA11 = a(this.f4168e, 7);
        Drawable drawable4 = this.f4175m;
        int i37 = this.f4166c;
        int i38 = this.f4165b;
        int i39 = this.f4167d;
        drawable4.setBounds(i37, ((i38 * 3) / 4) + i39, i37 * 2, ((i38 * 7) / 4) - i39);
        this.f4175m.setAlpha(iA11);
        int i40 = this.f4166c;
        int i41 = this.f4165b * 3;
        canvas.rotate(5.0f, (i40 + i40) - (i40 / 2), z.a(r1, 7, 8, i41 / 4) - (i41 / 8));
        this.f4175m.draw(canvas);
        canvas.restore();
        canvas.save();
        int iA12 = a(this.f4168e, 3);
        Drawable drawable5 = this.f4175m;
        int i42 = this.f4166c;
        int i43 = this.f4165b;
        int i44 = this.f4167d;
        drawable5.setBounds(i42 * 2, ((i43 * 3) / 4) + i44, i42 * 3, ((i43 * 7) / 4) - i44);
        this.f4175m.setAlpha(iA12);
        int i45 = this.f4166c;
        int i46 = this.f4165b * 3;
        canvas.rotate(-10.0f, (((i45 * 3) / 2) + (i45 * 2)) - i45, z.a(r1, 7, 8, i46 / 4) - (i46 / 8));
        this.f4175m.draw(canvas);
        canvas.restore();
        canvas.save();
        int iA13 = a(this.f4168e, 5);
        Drawable drawable6 = this.f4175m;
        int i47 = this.f4166c;
        int i48 = this.f4165b;
        int i49 = this.f4167d;
        drawable6.setBounds(i47 / 2, ((i48 * 6) / 4) + i49, (i47 * 3) / 2, ((i48 * 10) / 4) - i49);
        this.f4175m.setAlpha(iA13);
        int i50 = this.f4166c;
        float fA = z.a(i50, 3, 4, i50 / 2) - (i50 / 4);
        int i51 = this.f4165b * 6;
        canvas.rotate(20.0f, fA, z.a(r1, 10, 8, i51 / 4) - (i51 / 8));
        this.f4175m.draw(canvas);
        canvas.restore();
        canvas.save();
        int iA14 = a(this.f4168e, 4);
        Drawable drawable7 = this.f4175m;
        int i52 = this.f4166c;
        int i53 = this.f4165b;
        int i54 = this.f4167d;
        drawable7.setBounds((i52 * 3) / 2, ((i53 * 6) / 4) + i54, (i52 * 5) / 2, ((i53 * 10) / 4) - i54);
        this.f4175m.setAlpha(iA14);
        int i55 = this.f4166c;
        int i56 = i55 * 3;
        float fA2 = z.a(i55, 5, 4, i56 / 2) - (i56 / 4);
        int i57 = (this.f4165b * 6) / 4;
        canvas.rotate(10.0f, fA2, (((r1 * 10) / 4) + i57) - i57);
        this.f4175m.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        this.f4166c = size / 3;
        this.f4165b = (size * 2) / 5;
        this.f4167d = size / 23;
        setMeasuredDimension(size, size);
    }

    public void setAnimationTime(int i10) {
        this.f4170g = i10;
    }

    public void setColor(int i10) {
        this.f4171h = i10;
    }

    public void setCornerRadius(int i10) {
        this.f4173j = i10;
    }

    public void setMaxAlpha(int i10) {
        this.f4169f = i10;
    }

    public void setRainbow(boolean z) {
        this.f4172i = z;
    }

    public void setShrink(boolean z) {
        this.f4174k = z;
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        int visibility = getVisibility();
        super.setVisibility(i10);
        if (i10 != visibility) {
            if (i10 == 0) {
                d();
                return;
            }
            if (i10 == 8 || i10 == 4) {
                this.f4168e = 0.0f;
                AnimatorSet animatorSet = this.f4176n;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.f4176n = null;
                }
            }
        }
    }
}
