package v8;

import android.content.ContextWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public final class h extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public View.OnTouchListener f16677a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16678b;

    public h(ContextWrapper contextWrapper) {
        super(contextWrapper);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View.OnTouchListener onTouchListener = this.f16677a;
        if (onTouchListener == null || !onTouchListener.onTouch(this, motionEvent)) {
            if (motionEvent.getAction() == 0) {
                this.f16678b = true;
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.f16678b) {
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setAction(3);
            super.dispatchTouchEvent(motionEventObtain);
            this.f16678b = false;
        }
        return true;
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f16677a = onTouchListener;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }
}
