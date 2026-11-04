package k5;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class b implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final a f10167a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10168b;

    /* renamed from: c, reason: collision with root package name */
    public final c f10169c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f10170d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicInteger f10171e;

    public b(a aVar, String str, boolean z) {
        c cVar = c.f10172a;
        this.f10171e = new AtomicInteger();
        this.f10167a = aVar;
        this.f10168b = str;
        this.f10169c = cVar;
        this.f10170d = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f10167a.newThread(new y7.b(12, this, runnable, false));
        threadNewThread.setName("glide-" + this.f10168b + "-thread-" + this.f10171e.getAndIncrement());
        return threadNewThread;
    }
}
