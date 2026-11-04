package mc;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class i extends AtomicReference implements gc.b, Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final ec.e f11168a;

    /* renamed from: b, reason: collision with root package name */
    public long f11169b;

    public i(ec.e eVar) {
        this.f11168a = eVar;
    }

    @Override // gc.b
    public final void c() {
        ic.a.b(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (get() != ic.a.f8651a) {
            long j10 = this.f11169b;
            this.f11169b = 1 + j10;
            this.f11168a.E(Long.valueOf(j10));
        }
    }
}
