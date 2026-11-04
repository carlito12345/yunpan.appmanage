package mc;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class l extends AtomicInteger implements ec.e, Runnable, kc.a {

    /* renamed from: a, reason: collision with root package name */
    public final ec.e f11175a;

    /* renamed from: b, reason: collision with root package name */
    public final ec.i f11176b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11177c;

    /* renamed from: d, reason: collision with root package name */
    public kc.d f11178d;

    /* renamed from: e, reason: collision with root package name */
    public gc.b f11179e;

    /* renamed from: f, reason: collision with root package name */
    public Throwable f11180f;

    /* renamed from: g, reason: collision with root package name */
    public volatile boolean f11181g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f11182h;

    /* renamed from: i, reason: collision with root package name */
    public int f11183i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f11184j;

    public l(ec.e eVar, ec.i iVar, int i10) {
        this.f11175a = eVar;
        this.f11176b = iVar;
        this.f11177c = i10;
    }

    @Override // ec.e
    public final void B(Throwable th2) {
        if (this.f11181g) {
            qf.c.P(th2);
            return;
        }
        this.f11180f = th2;
        this.f11181g = true;
        if (getAndIncrement() == 0) {
            this.f11176b.e(this);
        }
    }

    @Override // ec.e
    public final void E(Object obj) {
        if (this.f11181g) {
            return;
        }
        if (this.f11183i != 2) {
            this.f11178d.offer(obj);
        }
        if (getAndIncrement() == 0) {
            this.f11176b.e(this);
        }
    }

    @Override // kc.a
    public final int a() {
        this.f11184j = true;
        return 2;
    }

    @Override // ec.e
    public final void b(gc.b bVar) {
        if (this.f11179e != null) {
            bVar.c();
            qf.c.P(new hc.d(0));
            return;
        }
        this.f11179e = bVar;
        if (bVar instanceof kc.a) {
            kc.a aVar = (kc.a) bVar;
            int iA = aVar.a();
            if (iA == 1) {
                this.f11183i = iA;
                this.f11178d = aVar;
                this.f11181g = true;
                this.f11175a.b(this);
                if (getAndIncrement() == 0) {
                    this.f11176b.e(this);
                    return;
                }
                return;
            }
            if (iA == 2) {
                this.f11183i = iA;
                this.f11178d = aVar;
                this.f11175a.b(this);
                return;
            }
        }
        this.f11178d = new nc.b(this.f11177c);
        this.f11175a.b(this);
    }

    @Override // gc.b
    public final void c() {
        if (this.f11182h) {
            return;
        }
        this.f11182h = true;
        this.f11179e.c();
        this.f11176b.c();
        if (this.f11184j || getAndIncrement() != 0) {
            return;
        }
        this.f11178d.clear();
    }

    @Override // kc.d
    public final void clear() {
        this.f11178d.clear();
    }

    public final boolean d(boolean z, boolean z4, ec.e eVar) {
        if (this.f11182h) {
            this.f11178d.clear();
            return true;
        }
        if (!z) {
            return false;
        }
        Throwable th2 = this.f11180f;
        if (th2 != null) {
            this.f11182h = true;
            this.f11178d.clear();
            eVar.B(th2);
            this.f11176b.c();
            return true;
        }
        if (!z4) {
            return false;
        }
        this.f11182h = true;
        eVar.onComplete();
        this.f11176b.c();
        return true;
    }

    @Override // kc.d
    public final boolean isEmpty() {
        return this.f11178d.isEmpty();
    }

    @Override // kc.d
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // ec.e
    public final void onComplete() {
        if (this.f11181g) {
            return;
        }
        this.f11181g = true;
        if (getAndIncrement() == 0) {
            this.f11176b.e(this);
        }
    }

    @Override // kc.d
    public final Object poll() {
        return this.f11178d.poll();
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0071, code lost:
    
        r3 = addAndGet(-r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0076, code lost:
    
        if (r3 != 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:?, code lost:
    
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        if (!this.f11184j) {
            kc.d dVar = this.f11178d;
            ec.e eVar = this.f11175a;
            int iAddAndGet = 1;
            while (!d(this.f11181g, dVar.isEmpty(), eVar)) {
                while (true) {
                    boolean z = this.f11181g;
                    try {
                        Object objPoll = dVar.poll();
                        boolean z4 = objPoll == null;
                        if (d(z, z4, eVar)) {
                            return;
                        }
                        if (z4) {
                            break;
                        } else {
                            eVar.E(objPoll);
                        }
                    } catch (Throwable th2) {
                        p000if.a.K0(th2);
                        this.f11182h = true;
                        this.f11179e.c();
                        dVar.clear();
                        eVar.B(th2);
                        this.f11176b.c();
                        return;
                    }
                }
            }
            return;
        }
        int iAddAndGet2 = 1;
        while (!this.f11182h) {
            boolean z10 = this.f11181g;
            Throwable th3 = this.f11180f;
            if (z10 && th3 != null) {
                this.f11182h = true;
                this.f11175a.B(this.f11180f);
                this.f11176b.c();
                return;
            }
            this.f11175a.E(null);
            if (z10) {
                this.f11182h = true;
                Throwable th4 = this.f11180f;
                if (th4 != null) {
                    this.f11175a.B(th4);
                } else {
                    this.f11175a.onComplete();
                }
                this.f11176b.c();
                return;
            }
            iAddAndGet2 = addAndGet(-iAddAndGet2);
            if (iAddAndGet2 == 0) {
                return;
            }
        }
    }
}
