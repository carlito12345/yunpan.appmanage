package mc;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class e extends AtomicReference implements ec.e {

    /* renamed from: a, reason: collision with root package name */
    public final long f11139a;

    /* renamed from: b, reason: collision with root package name */
    public final f f11140b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f11141c;

    /* renamed from: d, reason: collision with root package name */
    public volatile kc.d f11142d;

    /* renamed from: e, reason: collision with root package name */
    public int f11143e;

    public e(f fVar, long j10) {
        this.f11139a = j10;
        this.f11140b = fVar;
    }

    @Override // ec.e
    public final void B(Throwable th2) {
        if (!this.f11140b.f11152g.a(th2)) {
            qf.c.P(th2);
            return;
        }
        f fVar = this.f11140b;
        fVar.getClass();
        fVar.f();
        this.f11141c = true;
        this.f11140b.g();
    }

    @Override // ec.e
    public final void E(Object obj) {
        if (this.f11143e != 0) {
            this.f11140b.g();
            return;
        }
        f fVar = this.f11140b;
        if (fVar.get() == 0 && fVar.compareAndSet(0, 1)) {
            fVar.f11146a.E(obj);
            if (fVar.decrementAndGet() == 0) {
                return;
            }
        } else {
            kc.d bVar = this.f11142d;
            if (bVar == null) {
                bVar = new nc.b(fVar.f11149d);
                this.f11142d = bVar;
            }
            bVar.offer(obj);
            if (fVar.getAndIncrement() != 0) {
                return;
            }
        }
        fVar.h();
    }

    @Override // ec.e
    public final void b(gc.b bVar) {
        if (ic.a.d(this, bVar) && (bVar instanceof kc.a)) {
            kc.a aVar = (kc.a) bVar;
            int iA = aVar.a();
            if (iA == 1) {
                this.f11143e = iA;
                this.f11142d = aVar;
                this.f11141c = true;
                this.f11140b.g();
                return;
            }
            if (iA == 2) {
                this.f11143e = iA;
                this.f11142d = aVar;
            }
        }
    }

    @Override // ec.e
    public final void onComplete() {
        this.f11141c = true;
        this.f11140b.g();
    }
}
