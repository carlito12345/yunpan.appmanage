package com.yunpan.appmanage.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class MyProgressViewTest extends View {

    /* renamed from: a, reason: collision with root package name */
    public float f4186a;

    /* renamed from: b, reason: collision with root package name */
    public float f4187b;

    /* renamed from: c, reason: collision with root package name */
    public Paint f4188c;

    /* renamed from: d, reason: collision with root package name */
    public int f4189d;

    /* renamed from: e, reason: collision with root package name */
    public int f4190e;

    public MyProgressViewTest(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public double getMaxCount() {
        return this.f4186a;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Paint paint = new Paint();
        this.f4188c = paint;
        paint.setAntiAlias(true);
        this.f4188c.setColor(-16777216);
        float f10 = this.f4190e / 2;
        canvas.drawRoundRect(new RectF(0.0f, 0.0f, this.f4189d, this.f4190e), f10, f10, this.f4188c);
        this.f4188c.setColor(Color.rgb(211, 211, 211));
        canvas.drawRoundRect(new RectF(2.0f, 2.0f, this.f4189d - 2, this.f4190e - 2), f10, f10, this.f4188c);
        float f11 = this.f4187b / this.f4186a;
        RectF rectF = new RectF(3.0f, 3.0f, (this.f4189d - 3) * f11, this.f4190e - 3);
        if (f11 != 0.0f) {
            this.f4188c.setColor(-16711936);
        } else {
            this.f4188c.setColor(0);
        }
        canvas.drawRoundRect(rectF, f10, f10, this.f4188c);
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode == 1073741824 || mode == Integer.MIN_VALUE) {
            this.f4189d = size;
        } else {
            this.f4189d = 0;
        }
        if (mode2 == Integer.MIN_VALUE || mode2 == 0) {
            this.f4190e = (int) ((1 * 0.5f) + (20 * getContext().getResources().getDisplayMetrics().density));
        } else {
            this.f4190e = size2;
        }
        setMeasuredDimension(this.f4189d, this.f4190e);
    }

    public void setCurrentCount(float f10) {
        float f11 = this.f4186a;
        if (f10 > f11) {
            f10 = f11;
        }
        this.f4187b = f10;
        invalidate();
    }

    public void setMaxCount(float f10) {
        this.f4186a = f10;
    }
}
