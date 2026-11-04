package lc;

import ec.e;
import gc.b;
import ha.j2;
import ha.l2;
import ha.p7;
import java.util.concurrent.atomic.AtomicReference;
import qf.c;

/* loaded from: classes.dex */
public final class a extends AtomicReference implements e, b {

    /* renamed from: a, reason: collision with root package name */
    public final p7 f10708a;

    /* renamed from: b, reason: collision with root package name */
    public final l2 f10709b;

    /* renamed from: c, reason: collision with root package name */
    public final l2 f10710c;

    /* renamed from: d, reason: collision with root package name */
    public final j2 f10711d;

    public a(p7 p7Var) {
        l2 l2Var = jc.a.f9853d;
        l2 l2Var2 = jc.a.f9851b;
        j2 j2Var = jc.a.f9852c;
        this.f10708a = p7Var;
        this.f10709b = l2Var;
        this.f10710c = l2Var2;
        this.f10711d = j2Var;
    }

    @Override // ec.e
    public final void B(Throwable th2) {
        Object obj = get();
        ic.a aVar = ic.a.f8651a;
        if (obj == aVar) {
            c.P(th2);
            return;
        }
        lazySet(aVar);
        try {
            this.f10709b.getClass();
            c.P(new hc.c(th2));
        } catch (Throwable th3) {
            p000if.a.K0(th3);
            c.P(new hc.b(th2, th3));
        }
    }

    @Override // ec.e
    public final void E(Object obj) {
        if (get() == ic.a.f8651a) {
            return;
        }
        try {
            this.f10708a.accept(obj);
        } catch (Throwable th2) {
            p000if.a.K0(th2);
            ((b) get()).c();
            B(th2);
        }
    }

    @Override // ec.e
    public final void b(b bVar) {
        if (ic.a.d(this, bVar)) {
            try {
                this.f10711d.getClass();
            } catch (Throwable th2) {
                p000if.a.K0(th2);
                bVar.c();
                B(th2);
            }
        }
    }

    @Override // gc.b
    public final void c() {
        ic.a.b(this);
    }

    @Override // ec.e
    public final void onComplete() {
        Object obj = get();
        ic.a aVar = ic.a.f8651a;
        if (obj == aVar) {
            return;
        }
        lazySet(aVar);
        try {
            this.f10710c.getClass();
        } catch (Throwable th2) {
            p000if.a.K0(th2);
            c.P(th2);
        }
    }
}
