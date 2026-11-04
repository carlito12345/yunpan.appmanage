package u0;

import android.os.Process;

/* loaded from: classes.dex */
public final class h extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final int f15180a;

    public h(Runnable runnable) {
        super(runnable, "fonts-androidx");
        this.f15180a = 10;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws SecurityException, IllegalArgumentException {
        Process.setThreadPriority(this.f15180a);
        super.run();
    }
}
