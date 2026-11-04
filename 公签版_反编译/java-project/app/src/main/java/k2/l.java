package k2;

import android.content.Context;
import android.graphics.PointF;
import android.opengl.Matrix;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public final class l extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, c {

    /* renamed from: c, reason: collision with root package name */
    public final j f10081c;

    /* renamed from: e, reason: collision with root package name */
    public final GestureDetector f10083e;

    /* renamed from: a, reason: collision with root package name */
    public final PointF f10079a = new PointF();

    /* renamed from: b, reason: collision with root package name */
    public final PointF f10080b = new PointF();

    /* renamed from: d, reason: collision with root package name */
    public final float f10082d = 25.0f;

    /* renamed from: f, reason: collision with root package name */
    public volatile float f10084f = 3.1415927f;

    public l(Context context, j jVar) {
        this.f10081c = jVar;
        this.f10083e = new GestureDetector(context, this);
    }

    @Override // k2.c
    public final void a(float[] fArr, float f10) {
        this.f10084f = -f10;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        this.f10079a.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        float x10 = (motionEvent2.getX() - this.f10079a.x) / this.f10082d;
        float y6 = motionEvent2.getY();
        PointF pointF = this.f10079a;
        float f12 = (y6 - pointF.y) / this.f10082d;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d10 = this.f10084f;
        float fCos = (float) Math.cos(d10);
        float fSin = (float) Math.sin(d10);
        PointF pointF2 = this.f10080b;
        pointF2.x -= (fCos * x10) - (fSin * f12);
        float f13 = (fCos * f12) + (fSin * x10) + pointF2.y;
        pointF2.y = f13;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f13));
        j jVar = this.f10081c;
        PointF pointF3 = this.f10080b;
        synchronized (jVar) {
            float f14 = pointF3.y;
            jVar.f10063g = f14;
            Matrix.setRotateM(jVar.f10061e, 0, -f14, (float) Math.cos(jVar.f10064h), (float) Math.sin(jVar.f10064h), 0.0f);
            Matrix.setRotateM(jVar.f10062f, 0, -pointF3.x, 0.0f, 1.0f, 0.0f);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f10081c.f10067k.performClick();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f10083e.onTouchEvent(motionEvent);
    }
}
