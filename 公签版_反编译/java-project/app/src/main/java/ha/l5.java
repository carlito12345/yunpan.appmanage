package ha;

import android.util.DisplayMetrics;
import android.view.SurfaceView;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class l5 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SurfaceView f7356a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m5 f7357b;

    public l5(m5 m5Var, SurfaceView surfaceView) {
        this.f7357b = m5Var;
        this.f7356a = surfaceView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        SurfaceView surfaceView = this.f7356a;
        surfaceView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        m5 m5Var = this.f7357b;
        m5Var.f7404k.getMetrics(displayMetrics);
        m5Var.f7407p = surfaceView.getWidth();
        m5Var.f7408q = surfaceView.getHeight();
        m5Var.r = displayMetrics.densityDpi;
        if (m5Var.f7407p <= 0 || m5Var.f7408q <= 0) {
            m5Var.f7407p = displayMetrics.widthPixels;
            m5Var.f7408q = displayMetrics.heightPixels;
        }
        surfaceView.getHolder().addCallback(new k5(this));
    }
}
