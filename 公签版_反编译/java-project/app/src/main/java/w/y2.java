package w;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public final class y2 extends TouchDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final View f17316a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f17317b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f17318c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f17319d;

    /* renamed from: e, reason: collision with root package name */
    public final int f17320e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17321f;

    public y2(Rect rect, Rect rect2, View view) {
        super(rect, view);
        int scaledTouchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        this.f17320e = scaledTouchSlop;
        Rect rect3 = new Rect();
        this.f17317b = rect3;
        Rect rect4 = new Rect();
        this.f17319d = rect4;
        Rect rect5 = new Rect();
        this.f17318c = rect5;
        rect3.set(rect);
        rect4.set(rect);
        int i10 = -scaledTouchSlop;
        rect4.inset(i10, i10);
        rect5.set(rect2);
        this.f17316a = view;
    }

    @Override // android.view.TouchDelegate
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z4;
        int x10 = (int) motionEvent.getX();
        int y6 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        boolean z10 = true;
        if (action != 0) {
            if (action == 1 || action == 2) {
                z4 = this.f17321f;
                if (z4 && !this.f17319d.contains(x10, y6)) {
                    z10 = z4;
                    z = false;
                }
            } else {
                if (action == 3) {
                    z4 = this.f17321f;
                    this.f17321f = false;
                }
                z = true;
                z10 = false;
            }
            z10 = z4;
            z = true;
        } else {
            if (this.f17317b.contains(x10, y6)) {
                this.f17321f = true;
                z = true;
            }
            z = true;
            z10 = false;
        }
        if (!z10) {
            return false;
        }
        Rect rect = this.f17318c;
        View view = this.f17316a;
        if (!z || rect.contains(x10, y6)) {
            motionEvent.setLocation(x10 - rect.left, y6 - rect.top);
        } else {
            motionEvent.setLocation(view.getWidth() / 2, view.getHeight() / 2);
        }
        return view.dispatchTouchEvent(motionEvent);
    }
}
