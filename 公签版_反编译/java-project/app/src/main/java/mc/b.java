package mc;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class b extends AtomicReference implements ec.c, gc.b {

    /* renamed from: a, reason: collision with root package name */
    public final ec.e f11135a;

    public b(ec.e eVar) {
        this.f11135a = eVar;
    }

    public final void b() {
        if (((gc.b) get()) == ic.a.f8651a) {
            return;
        }
        try {
            this.f11135a.onComplete();
        } finally {
            ic.a.b(this);
        }
    }

    @Override // gc.b
    public final void c() {
        ic.a.b(this);
    }

    public final void d(Throwable th2) {
        if (((gc.b) get()) == ic.a.f8651a) {
            qf.c.P(th2);
            return;
        }
        try {
            this.f11135a.B(th2);
        } finally {
            ic.a.b(this);
        }
    }

    public final void f(Object obj) {
        if (obj == null) {
            d(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
        } else {
            if (((gc.b) get()) == ic.a.f8651a) {
                return;
            }
            this.f11135a.E(obj);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        return b.class.getSimpleName() + "{" + super.toString() + "}";
    }
}
