package h5;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class r implements b6.b {

    /* renamed from: y, reason: collision with root package name */
    public static final m7.e f6626y = new m7.e(27);

    /* renamed from: a, reason: collision with root package name */
    public final q f6627a;

    /* renamed from: b, reason: collision with root package name */
    public final b6.d f6628b;

    /* renamed from: c, reason: collision with root package name */
    public final n f6629c;

    /* renamed from: d, reason: collision with root package name */
    public final v3.f f6630d;

    /* renamed from: e, reason: collision with root package name */
    public final m7.e f6631e;

    /* renamed from: f, reason: collision with root package name */
    public final n f6632f;

    /* renamed from: g, reason: collision with root package name */
    public final k5.d f6633g;

    /* renamed from: h, reason: collision with root package name */
    public final k5.d f6634h;

    /* renamed from: i, reason: collision with root package name */
    public final k5.d f6635i;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicInteger f6636j;

    /* renamed from: k, reason: collision with root package name */
    public s f6637k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6638m;

    /* renamed from: n, reason: collision with root package name */
    public z f6639n;

    /* renamed from: p, reason: collision with root package name */
    public f5.a f6640p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f6641q;
    public v r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f6642s;

    /* renamed from: t, reason: collision with root package name */
    public t f6643t;

    /* renamed from: v, reason: collision with root package name */
    public j f6644v;

    /* renamed from: w, reason: collision with root package name */
    public volatile boolean f6645w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f6646x;

    public r(k5.d dVar, k5.d dVar2, k5.d dVar3, k5.d dVar4, n nVar, n nVar2, v3.f fVar) {
        m7.e eVar = f6626y;
        this.f6627a = new q(new ArrayList(2));
        this.f6628b = new b6.d();
        this.f6636j = new AtomicInteger();
        this.f6633g = dVar;
        this.f6634h = dVar2;
        this.f6635i = dVar4;
        this.f6632f = nVar;
        this.f6629c = nVar2;
        this.f6630d = fVar;
        this.f6631e = eVar;
    }

    public final synchronized void a(w5.f fVar, a6.g gVar) {
        try {
            this.f6628b.a();
            q qVar = this.f6627a;
            qVar.getClass();
            qVar.f6625a.add(new p(fVar, gVar));
            if (this.f6641q) {
                e(1);
                o oVar = new o(this, fVar, 1);
                gVar.getClass();
                a6.q.j(oVar);
            } else if (this.f6642s) {
                e(1);
                o oVar2 = new o(this, fVar, 0);
                gVar.getClass();
                a6.q.j(oVar2);
            } else {
                a6.h.a("Cannot add callbacks to a cancelled EngineJob", !this.f6645w);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // b6.b
    public final b6.d b() {
        return this.f6628b;
    }

    public final void c() {
        if (f()) {
            return;
        }
        this.f6645w = true;
        j jVar = this.f6644v;
        jVar.D = true;
        g gVar = jVar.B;
        if (gVar != null) {
            gVar.cancel();
        }
        n nVar = this.f6632f;
        s sVar = this.f6637k;
        synchronized (nVar) {
            com.bumptech.glide.g gVar2 = nVar.f6613a;
            gVar2.getClass();
            HashMap map = gVar2.f3328a;
            if (equals(map.get(sVar))) {
                map.remove(sVar);
            }
        }
    }

    public final void d() {
        t tVar;
        synchronized (this) {
            try {
                this.f6628b.a();
                a6.h.a("Not yet complete!", f());
                int iDecrementAndGet = this.f6636j.decrementAndGet();
                a6.h.a("Can't decrement below 0", iDecrementAndGet >= 0);
                if (iDecrementAndGet == 0) {
                    tVar = this.f6643t;
                    i();
                } else {
                    tVar = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (tVar != null) {
            tVar.c();
        }
    }

    public final synchronized void e(int i10) {
        t tVar;
        a6.h.a("Not yet complete!", f());
        if (this.f6636j.getAndAdd(i10) == 0 && (tVar = this.f6643t) != null) {
            tVar.b();
        }
    }

    public final boolean f() {
        return this.f6642s || this.f6641q || this.f6645w;
    }

    public final void g() {
        synchronized (this) {
            try {
                this.f6628b.a();
                if (this.f6645w) {
                    i();
                    return;
                }
                if (this.f6627a.f6625a.isEmpty()) {
                    throw new IllegalStateException("Received an exception without any callbacks to notify");
                }
                if (this.f6642s) {
                    throw new IllegalStateException("Already failed once");
                }
                this.f6642s = true;
                s sVar = this.f6637k;
                q qVar = this.f6627a;
                qVar.getClass();
                ArrayList arrayList = new ArrayList(qVar.f6625a);
                e(arrayList.size() + 1);
                this.f6632f.d(this, sVar, null);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    p pVar = (p) it.next();
                    pVar.f6624b.execute(new o(this, pVar.f6623a, 0));
                }
                d();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void h() {
        synchronized (this) {
            try {
                this.f6628b.a();
                if (this.f6645w) {
                    this.f6639n.recycle();
                    i();
                    return;
                }
                if (this.f6627a.f6625a.isEmpty()) {
                    throw new IllegalStateException("Received a resource without any callbacks to notify");
                }
                if (this.f6641q) {
                    throw new IllegalStateException("Already have resource");
                }
                m7.e eVar = this.f6631e;
                z zVar = this.f6639n;
                boolean z = this.l;
                s sVar = this.f6637k;
                n nVar = this.f6629c;
                eVar.getClass();
                this.f6643t = new t(zVar, z, true, sVar, nVar);
                this.f6641q = true;
                q qVar = this.f6627a;
                qVar.getClass();
                ArrayList arrayList = new ArrayList(qVar.f6625a);
                e(arrayList.size() + 1);
                this.f6632f.d(this, this.f6637k, this.f6643t);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    p pVar = (p) it.next();
                    pVar.f6624b.execute(new o(this, pVar.f6623a, 1));
                }
                d();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final synchronized void i() {
        if (this.f6637k == null) {
            throw new IllegalArgumentException();
        }
        this.f6627a.f6625a.clear();
        this.f6637k = null;
        this.f6643t = null;
        this.f6639n = null;
        this.f6642s = false;
        this.f6645w = false;
        this.f6641q = false;
        this.f6646x = false;
        this.f6644v.l();
        this.f6644v = null;
        this.r = null;
        this.f6640p = null;
        this.f6630d.L(this);
    }

    public final synchronized void j(w5.f fVar) {
        try {
            this.f6628b.a();
            q qVar = this.f6627a;
            qVar.f6625a.remove(new p(fVar, a6.h.f431b));
            if (this.f6627a.f6625a.isEmpty()) {
                c();
                if (this.f6641q || this.f6642s) {
                    if (this.f6636j.get() == 0) {
                        i();
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void k(j jVar) {
        this.f6644v = jVar;
        i iVarH = jVar.h(i.INITIALIZE);
        ((iVarH == i.RESOURCE_CACHE || iVarH == i.DATA_CACHE) ? this.f6633g : this.f6638m ? this.f6635i : this.f6634h).execute(jVar);
    }
}
