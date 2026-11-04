package y3;

import android.view.Choreographer;

/* loaded from: classes.dex */
public abstract class e {
    public static void a(final Runnable runnable) {
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: y3.d
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j10) {
                runnable.run();
            }
        });
    }
}
