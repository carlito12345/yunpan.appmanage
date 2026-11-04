package fc;

import android.os.Handler;

/* loaded from: classes.dex */
public final class d implements Runnable, gc.b {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f5769a;

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f5770b;

    public d(Handler handler, Runnable runnable) {
        this.f5769a = handler;
        this.f5770b = runnable;
    }

    @Override // gc.b
    public final void c() {
        this.f5769a.removeCallbacks(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f5770b.run();
        } catch (Throwable th2) {
            qf.c.P(th2);
        }
    }
}
