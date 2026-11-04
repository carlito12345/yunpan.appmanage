package q;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class g0 implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final Object f12837a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f12838b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final a6.g f12839c;

    /* renamed from: d, reason: collision with root package name */
    public Runnable f12840d;

    public g0(a6.g gVar) {
        this.f12839c = gVar;
    }

    public final void a() {
        synchronized (this.f12837a) {
            try {
                Runnable runnable = (Runnable) this.f12838b.poll();
                this.f12840d = runnable;
                if (runnable != null) {
                    this.f12839c.execute(runnable);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f12837a) {
            try {
                this.f12838b.add(new a2.c0(this, 28, runnable));
                if (this.f12840d == null) {
                    a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
