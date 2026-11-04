package androidx.media3.exoplayer.video;

import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1850a;

    private final void a(Runnable runnable) {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f1850a) {
            case 0:
                break;
            case 1:
                if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                    v9.k.f16714a.post(runnable);
                    break;
                } else {
                    runnable.run();
                    break;
                }
            case 2:
                x.a.d0().f17939b.f17942c.execute(runnable);
                break;
            default:
                runnable.run();
                break;
        }
    }
}
