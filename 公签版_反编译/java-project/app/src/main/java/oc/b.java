package oc;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class b extends ec.i {

    /* renamed from: a, reason: collision with root package name */
    public final gc.a f11696a;

    /* renamed from: b, reason: collision with root package name */
    public final gc.a f11697b;

    /* renamed from: c, reason: collision with root package name */
    public final gc.a f11698c;

    /* renamed from: d, reason: collision with root package name */
    public final d f11699d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f11700e;

    public b(d dVar) {
        this.f11699d = dVar;
        gc.a aVar = new gc.a(1);
        this.f11696a = aVar;
        gc.a aVar2 = new gc.a(0);
        this.f11697b = aVar2;
        gc.a aVar3 = new gc.a(1);
        this.f11698c = aVar3;
        aVar3.b(aVar);
        aVar3.b(aVar2);
    }

    @Override // gc.b
    public final void c() {
        if (this.f11700e) {
            return;
        }
        this.f11700e = true;
        this.f11698c.c();
    }

    @Override // ec.i
    public final gc.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
        return this.f11700e ? ic.b.INSTANCE : this.f11699d.g(runnable, j10, timeUnit, this.f11697b);
    }

    @Override // ec.i
    public final void e(mc.l lVar) {
        if (this.f11700e) {
            return;
        }
        this.f11699d.g(lVar, 0L, TimeUnit.MILLISECONDS, this.f11696a);
    }
}
