package h5;

/* loaded from: classes.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6620a;

    /* renamed from: b, reason: collision with root package name */
    public final w5.f f6621b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f6622c;

    public /* synthetic */ o(r rVar, w5.f fVar, int i10) {
        this.f6620a = i10;
        this.f6622c = rVar;
        this.f6621b = fVar;
    }

    private final void a() {
        w5.f fVar = this.f6621b;
        fVar.f17588a.a();
        synchronized (fVar.f17589b) {
            synchronized (this.f6622c) {
                try {
                    q qVar = this.f6622c.f6627a;
                    w5.f fVar2 = this.f6621b;
                    qVar.getClass();
                    if (qVar.f6625a.contains(new p(fVar2, a6.h.f431b))) {
                        r rVar = this.f6622c;
                        w5.f fVar3 = this.f6621b;
                        rVar.getClass();
                        try {
                            fVar3.e(rVar.r, 5);
                        } catch (Throwable th2) {
                            throw new c(th2);
                        }
                    }
                    this.f6622c.d();
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6620a) {
            case 0:
                a();
                return;
            default:
                w5.f fVar = this.f6621b;
                fVar.f17588a.a();
                synchronized (fVar.f17589b) {
                    synchronized (this.f6622c) {
                        try {
                            q qVar = this.f6622c.f6627a;
                            w5.f fVar2 = this.f6621b;
                            qVar.getClass();
                            if (qVar.f6625a.contains(new p(fVar2, a6.h.f431b))) {
                                this.f6622c.f6643t.b();
                                r rVar = this.f6622c;
                                w5.f fVar3 = this.f6621b;
                                rVar.getClass();
                                try {
                                    fVar3.g(rVar.f6643t, rVar.f6640p, rVar.f6646x);
                                    this.f6622c.j(this.f6621b);
                                } catch (Throwable th2) {
                                    throw new c(th2);
                                }
                            }
                            this.f6622c.d();
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
                return;
        }
    }
}
