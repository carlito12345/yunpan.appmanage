package oc;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class m extends AtomicLong implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final String f11738a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11739b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11740c;

    public m(String str) {
        this(str, 5, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f11738a + '-' + incrementAndGet();
        Thread bVar = this.f11740c ? new fg.b(runnable, str) : new Thread(runnable, str);
        bVar.setPriority(this.f11739b);
        bVar.setDaemon(true);
        return bVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return g.b.l(this.f11738a, "]", new StringBuilder("RxThreadFactory["));
    }

    public m(String str, int i10, boolean z) {
        this.f11738a = str;
        this.f11739b = i10;
        this.f11740c = z;
    }
}
