package x1;

import a9.o;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public abstract class j implements d {

    /* renamed from: a, reason: collision with root package name */
    public final i f18095a;

    /* renamed from: e, reason: collision with root package name */
    public final g[] f18099e;

    /* renamed from: f, reason: collision with root package name */
    public final h[] f18100f;

    /* renamed from: g, reason: collision with root package name */
    public int f18101g;

    /* renamed from: h, reason: collision with root package name */
    public int f18102h;

    /* renamed from: i, reason: collision with root package name */
    public g f18103i;

    /* renamed from: j, reason: collision with root package name */
    public e f18104j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18105k;
    public boolean l;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18096b = new Object();

    /* renamed from: m, reason: collision with root package name */
    public long f18106m = -9223372036854775807L;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f18097c = new ArrayDeque();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayDeque f18098d = new ArrayDeque();

    public j(g[] gVarArr, h[] hVarArr) {
        this.f18099e = gVarArr;
        this.f18101g = gVarArr.length;
        for (int i10 = 0; i10 < this.f18101g; i10++) {
            this.f18099e[i10] = g();
        }
        this.f18100f = hVarArr;
        this.f18102h = hVarArr.length;
        for (int i11 = 0; i11 < this.f18102h; i11++) {
            this.f18100f[i11] = h();
        }
        i iVar = new i(this);
        this.f18095a = iVar;
        iVar.start();
    }

    @Override // x1.d
    public final void a() throws InterruptedException {
        synchronized (this.f18096b) {
            this.l = true;
            this.f18096b.notify();
        }
        try {
            this.f18095a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // x1.d
    public final void c(long j10) {
        synchronized (this.f18096b) {
            try {
                o.t(this.f18101g == this.f18099e.length || this.f18105k);
                this.f18106m = j10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // x1.d
    public final Object f() {
        g gVar;
        synchronized (this.f18096b) {
            try {
                e eVar = this.f18104j;
                if (eVar != null) {
                    throw eVar;
                }
                o.t(this.f18103i == null);
                int i10 = this.f18101g;
                if (i10 == 0) {
                    gVar = null;
                } else {
                    g[] gVarArr = this.f18099e;
                    int i11 = i10 - 1;
                    this.f18101g = i11;
                    gVar = gVarArr[i11];
                }
                this.f18103i = gVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @Override // x1.d
    public final void flush() {
        synchronized (this.f18096b) {
            try {
                this.f18105k = true;
                g gVar = this.f18103i;
                if (gVar != null) {
                    gVar.g();
                    int i10 = this.f18101g;
                    this.f18101g = i10 + 1;
                    this.f18099e[i10] = gVar;
                    this.f18103i = null;
                }
                while (!this.f18097c.isEmpty()) {
                    g gVar2 = (g) this.f18097c.removeFirst();
                    gVar2.g();
                    int i11 = this.f18101g;
                    this.f18101g = i11 + 1;
                    this.f18099e[i11] = gVar2;
                }
                while (!this.f18098d.isEmpty()) {
                    ((h) this.f18098d.removeFirst()).i();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public abstract g g();

    public abstract h h();

    public abstract e i(Throwable th2);

    public abstract e j(g gVar, h hVar, boolean z);

    public final boolean k() {
        e eVarI;
        synchronized (this.f18096b) {
            while (!this.l) {
                try {
                    if (!this.f18097c.isEmpty() && this.f18102h > 0) {
                        break;
                    }
                    this.f18096b.wait();
                } finally {
                }
            }
            if (this.l) {
                return false;
            }
            g gVar = (g) this.f18097c.removeFirst();
            h[] hVarArr = this.f18100f;
            int i10 = this.f18102h - 1;
            this.f18102h = i10;
            h hVar = hVarArr[i10];
            boolean z = this.f18105k;
            this.f18105k = false;
            if (gVar.c(4)) {
                hVar.a(4);
            } else {
                hVar.f18092c = gVar.f18089g;
                if (gVar.c(134217728)) {
                    hVar.a(134217728);
                }
                if (!m(gVar.f18089g)) {
                    hVar.f18093d = true;
                }
                try {
                    eVarI = j(gVar, hVar, z);
                } catch (OutOfMemoryError e7) {
                    eVarI = i(e7);
                } catch (RuntimeException e10) {
                    eVarI = i(e10);
                }
                if (eVarI != null) {
                    synchronized (this.f18096b) {
                        this.f18104j = eVarI;
                    }
                    return false;
                }
            }
            synchronized (this.f18096b) {
                try {
                    if (this.f18105k || hVar.f18093d) {
                        hVar.i();
                    } else {
                        this.f18098d.addLast(hVar);
                    }
                    gVar.g();
                    int i11 = this.f18101g;
                    this.f18101g = i11 + 1;
                    this.f18099e[i11] = gVar;
                } finally {
                }
            }
            return true;
        }
    }

    @Override // x1.d
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final h e() {
        synchronized (this.f18096b) {
            try {
                e eVar = this.f18104j;
                if (eVar != null) {
                    throw eVar;
                }
                if (this.f18098d.isEmpty()) {
                    return null;
                }
                return (h) this.f18098d.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean m(long j10) {
        boolean z;
        synchronized (this.f18096b) {
            long j11 = this.f18106m;
            z = j11 == -9223372036854775807L || j10 >= j11;
        }
        return z;
    }

    @Override // x1.d
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final void b(g gVar) {
        synchronized (this.f18096b) {
            try {
                e eVar = this.f18104j;
                if (eVar != null) {
                    throw eVar;
                }
                o.k(gVar == this.f18103i);
                this.f18097c.addLast(gVar);
                if (!this.f18097c.isEmpty() && this.f18102h > 0) {
                    this.f18096b.notify();
                }
                this.f18103i = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void o(h hVar) {
        synchronized (this.f18096b) {
            hVar.g();
            int i10 = this.f18102h;
            this.f18102h = i10 + 1;
            this.f18100f[i10] = hVar;
            if (!this.f18097c.isEmpty() && this.f18102h > 0) {
                this.f18096b.notify();
            }
        }
    }
}
