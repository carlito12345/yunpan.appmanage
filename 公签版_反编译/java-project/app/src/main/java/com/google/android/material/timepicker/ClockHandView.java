package com.google.android.material.timepicker;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.yunpan.appmanage.R;
import g7.l;
import java.util.ArrayList;
import java.util.Iterator;
import x0.b1;

/* loaded from: classes.dex */
class ClockHandView extends View {

    /* renamed from: a, reason: collision with root package name */
    public final ValueAnimator f3715a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3716b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3717c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3718d;

    /* renamed from: e, reason: collision with root package name */
    public final float f3719e;

    /* renamed from: f, reason: collision with root package name */
    public final Paint f3720f;

    /* renamed from: g, reason: collision with root package name */
    public final RectF f3721g;

    /* renamed from: h, reason: collision with root package name */
    public final int f3722h;

    /* renamed from: i, reason: collision with root package name */
    public float f3723i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3724j;

    /* renamed from: k, reason: collision with root package name */
    public double f3725k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f3726m;

    public ClockHandView(Context context, AttributeSet attributeSet) throws NumberFormatException {
        super(context, attributeSet, R.attr.materialClockStyle);
        this.f3715a = new ValueAnimator();
        this.f3717c = new ArrayList();
        Paint paint = new Paint();
        this.f3720f = paint;
        this.f3721g = new RectF();
        this.f3726m = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q6.a.f13035f, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        com.bumptech.glide.d.b0(context, R.attr.motionDurationLong2, 200);
        com.bumptech.glide.d.c0(context, R.attr.motionEasingEmphasizedInterpolator, r6.a.f13711b);
        this.l = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f3718d = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f3722h = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f3719e = r4.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        b(0.0f);
        ViewConfiguration.get(context).getScaledTouchSlop();
        b1.B(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final int a(int i10) {
        return i10 == 2 ? Math.round(this.l * 0.66f) : this.l;
    }

    public final void b(float f10) {
        ValueAnimator valueAnimator = this.f3715a;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float f11 = f10 % 360.0f;
        this.f3723i = f11;
        this.f3725k = Math.toRadians(f11 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float fA = a(this.f3726m);
        float fCos = (((float) Math.cos(this.f3725k)) * fA) + width;
        float fSin = (fA * ((float) Math.sin(this.f3725k))) + height;
        float f12 = this.f3718d;
        this.f3721g.set(fCos - f12, fSin - f12, fCos + f12, fSin + f12);
        Iterator it = this.f3717c.iterator();
        while (it.hasNext()) {
            ClockFaceView clockFaceView = (ClockFaceView) ((d) it.next());
            if (Math.abs(clockFaceView.L - f11) > 0.001f) {
                clockFaceView.L = f11;
                clockFaceView.l();
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f10 = width;
        float fA = a(this.f3726m);
        float fCos = (((float) Math.cos(this.f3725k)) * fA) + f10;
        float f11 = height;
        float fSin = (fA * ((float) Math.sin(this.f3725k))) + f11;
        Paint paint = this.f3720f;
        paint.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.f3718d, paint);
        double dSin = Math.sin(this.f3725k);
        double dCos = Math.cos(this.f3725k);
        Double.isNaN(d);
        Double.isNaN(d);
        paint.setStrokeWidth(this.f3722h);
        canvas.drawLine(f10, f11, width + ((int) (dCos * d)), height + ((int) (d * dSin)), paint);
        canvas.drawCircle(f10, f11, this.f3719e, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        if (this.f3715a.isRunning()) {
            return;
        }
        b(this.f3723i);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z4;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y6 = motionEvent.getY();
        boolean z10 = false;
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                z = this.f3724j;
                if (this.f3716b) {
                    this.f3726m = ((float) Math.hypot((double) (x10 - ((float) (getWidth() / 2))), (double) (y6 - ((float) (getHeight() / 2))))) <= ((float) a(2)) + l.d(getContext(), 12) ? 2 : 1;
                }
            } else {
                z = false;
            }
            z4 = false;
        } else {
            this.f3724j = false;
            z = false;
            z4 = true;
        }
        boolean z11 = this.f3724j;
        int degrees = (int) Math.toDegrees(Math.atan2(y6 - (getHeight() / 2), x10 - (getWidth() / 2)));
        int i10 = degrees + 90;
        if (i10 < 0) {
            i10 = degrees + 450;
        }
        float f10 = i10;
        boolean z12 = this.f3723i != f10;
        if (z4 && z12) {
            z10 = true;
        } else if (z12 || z) {
            b(f10);
            z10 = true;
        }
        this.f3724j = z11 | z10;
        return true;
    }
}
