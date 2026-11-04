package mc;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import ua.t6;

/* loaded from: classes.dex */
public final class f extends AtomicInteger implements gc.b, ec.e {

    /* renamed from: p, reason: collision with root package name */
    public static final e[] f11144p = new e[0];

    /* renamed from: q, reason: collision with root package name */
    public static final e[] f11145q = new e[0];

    /* renamed from: a, reason: collision with root package name */
    public final ec.e f11146a;

    /* renamed from: b, reason: collision with root package name */
    public final t6 f11147b;

    /* renamed from: d, reason: collision with root package name */
    public final int f11149d;

    /* renamed from: e, reason: collision with root package name */
    public volatile kc.c f11150e;

    /* renamed from: f, reason: collision with root package name */
    public volatile boolean f11151f;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f11153h;

    /* renamed from: j, reason: collision with root package name */
    public gc.b f11155j;

    /* renamed from: k, reason: collision with root package name */
    public long f11156k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public int f11157m;

    /* renamed from: n, reason: collision with root package name */
    public int f11158n;

    /* renamed from: g, reason: collision with root package name */
    public final pc.a f11152g = new pc.a();

    /* renamed from: c, reason: collision with root package name */
    public final int f11148c = Integer.MAX_VALUE;

    /* renamed from: i, reason: collision with root package name */
    public final AtomicReference f11154i = new AtomicReference(f11144p);

    public f(ec.e eVar, t6 t6Var, int i10) {
        this.f11146a = eVar;
        this.f11147b = t6Var;
        this.f11149d = i10;
    }

    @Override // ec.e
    public final void B(Throwable th2) {
        if (this.f11151f) {
            qf.c.P(th2);
        } else if (!this.f11152g.a(th2)) {
            qf.c.P(th2);
        } else {
            this.f11151f = true;
            g();
        }
    }

    @Override // ec.e
    public final void E(Object obj) {
        if (this.f11151f) {
            return;
        }
        try {
            ec.b bVar = (ec.b) this.f11147b.apply(obj);
            if (this.f11148c != Integer.MAX_VALUE) {
                synchronized (this) {
                    try {
                        int i10 = this.f11158n;
                        if (i10 == this.f11148c) {
                            throw null;
                        }
                        this.f11158n = i10 + 1;
                    } finally {
                    }
                }
            }
            j(bVar);
        } catch (Throwable th2) {
            p000if.a.K0(th2);
            this.f11155j.c();
            B(th2);
        }
    }

    @Override // ec.e
    public final void b(gc.b bVar) {
        if (this.f11155j != null) {
            bVar.c();
            qf.c.P(new hc.d(0));
        } else {
            this.f11155j = bVar;
            this.f11146a.b(this);
        }
    }

    @Override // gc.b
    public final void c() {
        Throwable thB;
        if (this.f11153h) {
            return;
        }
        this.f11153h = true;
        if (!f() || (thB = this.f11152g.b()) == null || thB == pc.c.f12667a) {
            return;
        }
        qf.c.P(thB);
    }

    public final boolean d() {
        if (this.f11153h) {
            return true;
        }
        if (((Throwable) this.f11152g.get()) == null) {
            return false;
        }
        f();
        Throwable thB = this.f11152g.b();
        if (thB != pc.c.f12667a) {
            this.f11146a.B(thB);
        }
        return true;
    }

    public final boolean f() {
        e[] eVarArr;
        this.f11155j.c();
        AtomicReference atomicReference = this.f11154i;
        e[] eVarArr2 = (e[]) atomicReference.get();
        e[] eVarArr3 = f11145q;
        if (eVarArr2 == eVarArr3 || (eVarArr = (e[]) atomicReference.getAndSet(eVarArr3)) == eVarArr3) {
            return false;
        }
        for (e eVar : eVarArr) {
            eVar.getClass();
            ic.a.b(eVar);
        }
        return true;
    }

    public final void g() {
        if (getAndIncrement() == 0) {
            h();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x00e6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00ed A[PHI: r4
  0x00ed: PHI (r4v6 int) = (r4v4 int), (r4v7 int) binds: [B:68:0x00cc, B:80:0x00eb] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h() {
        Object objPoll;
        boolean z;
        ec.e eVar = this.f11146a;
        int iAddAndGet = 1;
        while (!d()) {
            kc.c cVar = this.f11150e;
            int i10 = 0;
            if (cVar != null) {
                while (!d()) {
                    Object objPoll2 = cVar.poll();
                    if (objPoll2 != null) {
                        eVar.E(objPoll2);
                        i10++;
                    }
                }
                return;
            }
            if (i10 == 0) {
                boolean z4 = this.f11151f;
                kc.c cVar2 = this.f11150e;
                e[] eVarArr = (e[]) this.f11154i.get();
                int length = eVarArr.length;
                if (this.f11148c != Integer.MAX_VALUE) {
                    synchronized (this) {
                        throw null;
                    }
                }
                if (z4 && ((cVar2 == null || cVar2.isEmpty()) && length == 0)) {
                    Throwable thB = this.f11152g.b();
                    if (thB != pc.c.f12667a) {
                        if (thB == null) {
                            eVar.onComplete();
                            return;
                        } else {
                            eVar.B(thB);
                            return;
                        }
                    }
                    return;
                }
                if (length != 0) {
                    long j10 = this.l;
                    int i11 = this.f11157m;
                    if (length <= i11 || eVarArr[i11].f11139a != j10) {
                        if (length <= i11) {
                            i11 = 0;
                        }
                        for (int i12 = 0; i12 < length && eVarArr[i11].f11139a != j10; i12++) {
                            i11++;
                            if (i11 == length) {
                                i11 = 0;
                            }
                        }
                        this.f11157m = i11;
                        this.l = eVarArr[i11].f11139a;
                    }
                    for (int i13 = 0; i13 < length; i13++) {
                        if (d()) {
                            return;
                        }
                        e eVar2 = eVarArr[i11];
                        kc.d dVar = eVar2.f11142d;
                        if (dVar != null) {
                            do {
                                try {
                                    objPoll = dVar.poll();
                                } catch (Throwable th2) {
                                    p000if.a.K0(th2);
                                    ic.a.b(eVar2);
                                    this.f11152g.a(th2);
                                    if (d()) {
                                        return;
                                    }
                                    i(eVar2);
                                    i10++;
                                    i11++;
                                    if (i11 == length) {
                                    }
                                }
                                if (objPoll == null) {
                                    z = eVar2.f11141c;
                                    kc.d dVar2 = eVar2.f11142d;
                                    if (z && (dVar2 == null || dVar2.isEmpty())) {
                                        i(eVar2);
                                        if (!d()) {
                                            return;
                                        } else {
                                            i10++;
                                        }
                                    }
                                    i11++;
                                    if (i11 != length) {
                                        i11 = 0;
                                    }
                                } else {
                                    eVar.E(objPoll);
                                }
                            } while (!d());
                            return;
                        }
                        z = eVar2.f11141c;
                        kc.d dVar22 = eVar2.f11142d;
                        if (z) {
                            i(eVar2);
                            if (!d()) {
                            }
                        }
                        i11++;
                        if (i11 != length) {
                        }
                    }
                    this.f11157m = i11;
                    this.l = eVarArr[i11].f11139a;
                }
                if (i10 == 0) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else if (this.f11148c != Integer.MAX_VALUE) {
                    l(i10);
                }
            } else if (this.f11148c != Integer.MAX_VALUE) {
                l(i10);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i(e eVar) {
        e[] eVarArr;
        while (true) {
            AtomicReference atomicReference = this.f11154i;
            e[] eVarArr2 = (e[]) atomicReference.get();
            int length = eVarArr2.length;
            if (length == 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (eVarArr2[i10] == eVar) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                return;
            }
            if (length == 1) {
                eVarArr = f11144p;
            } else {
                e[] eVarArr3 = new e[length - 1];
                System.arraycopy(eVarArr2, 0, eVarArr3, 0, i10);
                System.arraycopy(eVarArr2, i10 + 1, eVarArr3, i10, (length - i10) - 1);
                eVarArr = eVarArr3;
            }
            while (!atomicReference.compareAndSet(eVarArr2, eVarArr)) {
                if (atomicReference.get() != eVarArr2) {
                    break;
                }
            }
            return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j(ec.b bVar) {
        if (!(bVar instanceof Callable)) {
            long j10 = this.f11156k;
            this.f11156k = 1 + j10;
            e eVar = new e(this, j10);
            while (true) {
                AtomicReference atomicReference = this.f11154i;
                e[] eVarArr = (e[]) atomicReference.get();
                if (eVarArr == f11145q) {
                    ic.a.b(eVar);
                    return;
                }
                int length = eVarArr.length;
                e[] eVarArr2 = new e[length + 1];
                System.arraycopy(eVarArr, 0, eVarArr2, 0, length);
                eVarArr2[length] = eVar;
                while (!atomicReference.compareAndSet(eVarArr, eVarArr2)) {
                    if (atomicReference.get() != eVarArr) {
                        break;
                    }
                }
                bVar.b(eVar);
                return;
            }
        }
        try {
            Object objCall = ((Callable) bVar).call();
            if (objCall != null) {
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.f11146a.E(objCall);
                    if (decrementAndGet() != 0) {
                        h();
                    }
                } else {
                    kc.c bVar2 = this.f11150e;
                    if (bVar2 == null) {
                        bVar2 = this.f11148c == Integer.MAX_VALUE ? new nc.b(this.f11149d) : new nc.a(this.f11148c);
                        this.f11150e = bVar2;
                    }
                    if (bVar2.offer(objCall)) {
                        if (getAndIncrement() != 0) {
                            return;
                        }
                        h();
                    } else {
                        B(new IllegalStateException("Scalar queue full?!"));
                    }
                }
            }
        } catch (Throwable th2) {
            p000if.a.K0(th2);
            this.f11152g.a(th2);
            g();
        }
        if (this.f11148c == Integer.MAX_VALUE) {
            return;
        }
        synchronized (this) {
            throw null;
        }
    }

    public final void l(int i10) {
        if (i10 == 0) {
            return;
        }
        synchronized (this) {
            throw null;
        }
    }

    @Override // ec.e
    public final void onComplete() {
        if (this.f11151f) {
            return;
        }
        this.f11151f = true;
        g();
    }
}
