package androidx.activity;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.fragment.app.j0;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class l implements Executor, ViewTreeObserver.OnDrawListener, Runnable {

    /* renamed from: b, reason: collision with root package name */
    public Runnable f801b;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ j0 f803d;

    /* renamed from: a, reason: collision with root package name */
    public final long f800a = SystemClock.uptimeMillis() + 10000;

    /* renamed from: c, reason: collision with root package name */
    public boolean f802c = false;

    public l(j0 j0Var) {
        this.f803d = j0Var;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f801b = runnable;
        View decorView = this.f803d.getWindow().getDecorView();
        if (!this.f802c) {
            decorView.postOnAnimation(new a2.h(5, this));
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        boolean z;
        Runnable runnable = this.f801b;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.f800a) {
                this.f802c = false;
                this.f803d.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.f801b = null;
        com.bumptech.glide.manager.s sVar = this.f803d.f811i;
        synchronized (sVar.f3412c) {
            z = sVar.f3411b;
        }
        if (z) {
            this.f802c = false;
            this.f803d.getWindow().getDecorView().post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f803d.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }
}
