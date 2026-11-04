package mc;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class o extends AtomicReference implements ec.e, gc.b {

    /* renamed from: a, reason: collision with root package name */
    public final ec.e f11189a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference f11190b = new AtomicReference();

    public o(ec.e eVar) {
        this.f11189a = eVar;
    }

    @Override // ec.e
    public final void B(Throwable th2) {
        this.f11189a.B(th2);
    }

    @Override // ec.e
    public final void E(Object obj) {
        this.f11189a.E(obj);
    }

    @Override // ec.e
    public final void b(gc.b bVar) {
        ic.a.d(this.f11190b, bVar);
    }

    @Override // gc.b
    public final void c() {
        ic.a.b(this.f11190b);
        ic.a.b(this);
    }

    @Override // ec.e
    public final void onComplete() {
        this.f11189a.onComplete();
    }
}
