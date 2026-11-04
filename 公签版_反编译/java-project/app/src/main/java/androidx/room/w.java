package androidx.room;

import a2.c0;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class w implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public Runnable f2439b;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f2438a = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final Object f2440c = new Object();

    public final void a() {
        synchronized (this.f2440c) {
            Object objPoll = this.f2438a.poll();
            Runnable runnable = (Runnable) objPoll;
            this.f2439b = runnable;
            if (objPoll != null) {
                x.a.d0().f17939b.f17942c.execute(runnable);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        ue.d.e(runnable, "command");
        synchronized (this.f2440c) {
            this.f2438a.offer(new c0(runnable, 9, this));
            if (this.f2439b == null) {
                a();
            }
        }
    }
}
