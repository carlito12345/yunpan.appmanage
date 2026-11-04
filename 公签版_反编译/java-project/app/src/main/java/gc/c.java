package gc;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class c extends AtomicReference implements b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6129a = 1;

    public c(y7.b bVar) {
        super(bVar);
    }

    public void b(b bVar) {
        while (true) {
            b bVar2 = (b) get();
            if (bVar2 == ic.a.f8651a) {
                if (bVar != null) {
                    bVar.c();
                    return;
                }
                return;
            } else {
                while (!compareAndSet(bVar2, bVar)) {
                    if (get() != bVar2) {
                        break;
                    }
                }
                return;
            }
        }
    }

    @Override // gc.b
    public final void c() {
        Object andSet;
        switch (this.f6129a) {
            case 0:
                if (get() != null && (andSet = getAndSet(null)) != null) {
                    ((Runnable) andSet).run();
                    break;
                }
                break;
            default:
                ic.a.b(this);
                break;
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        switch (this.f6129a) {
            case 0:
                StringBuilder sb2 = new StringBuilder("RunnableDisposable(disposed=");
                sb2.append(get() == null);
                sb2.append(", ");
                sb2.append(get());
                sb2.append(")");
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    public c() {
    }

    public c(c cVar) {
        lazySet(cVar);
    }
}
