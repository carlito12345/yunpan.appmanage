package h5;

import a2.g1;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class j implements f, Runnable, Comparable, b6.b {
    public com.bumptech.glide.load.data.e A;
    public volatile g B;
    public volatile boolean C;
    public volatile boolean D;
    public boolean E;
    public int F;

    /* renamed from: d, reason: collision with root package name */
    public final a6.i f6583d;

    /* renamed from: e, reason: collision with root package name */
    public final v3.f f6584e;

    /* renamed from: h, reason: collision with root package name */
    public com.bumptech.glide.f f6587h;

    /* renamed from: i, reason: collision with root package name */
    public f5.f f6588i;

    /* renamed from: j, reason: collision with root package name */
    public com.bumptech.glide.i f6589j;

    /* renamed from: k, reason: collision with root package name */
    public s f6590k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f6591m;

    /* renamed from: n, reason: collision with root package name */
    public l f6592n;

    /* renamed from: p, reason: collision with root package name */
    public f5.i f6593p;

    /* renamed from: q, reason: collision with root package name */
    public r f6594q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public i f6595s;

    /* renamed from: t, reason: collision with root package name */
    public Object f6596t;

    /* renamed from: v, reason: collision with root package name */
    public Thread f6597v;

    /* renamed from: w, reason: collision with root package name */
    public f5.f f6598w;

    /* renamed from: x, reason: collision with root package name */
    public f5.f f6599x;

    /* renamed from: y, reason: collision with root package name */
    public Object f6600y;
    public f5.a z;

    /* renamed from: a, reason: collision with root package name */
    public final h f6580a = new h();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f6581b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final b6.d f6582c = new b6.d();

    /* renamed from: f, reason: collision with root package name */
    public final v3.f f6585f = new v3.f(16, (char) 0);

    /* renamed from: g, reason: collision with root package name */
    public final a2.o f6586g = new a2.o();

    public j(a6.i iVar, v3.f fVar) {
        this.f6583d = iVar;
        this.f6584e = fVar;
    }

    @Override // h5.f
    public final void a(f5.f fVar, Object obj, com.bumptech.glide.load.data.e eVar, f5.a aVar, f5.f fVar2) {
        this.f6598w = fVar;
        this.f6600y = obj;
        this.A = eVar;
        this.z = aVar;
        this.f6599x = fVar2;
        this.E = fVar != this.f6580a.a().get(0);
        if (Thread.currentThread() != this.f6597v) {
            n(3);
        } else {
            f();
        }
    }

    @Override // b6.b
    public final b6.d b() {
        return this.f6582c;
    }

    @Override // h5.f
    public final void c(f5.f fVar, Exception exc, com.bumptech.glide.load.data.e eVar, f5.a aVar) {
        eVar.b();
        v vVar = new v("Fetching data failed", Collections.singletonList(exc));
        Class clsA = eVar.a();
        vVar.f6667b = fVar;
        vVar.f6668c = aVar;
        vVar.f6669d = clsA;
        this.f6581b.add(vVar);
        if (Thread.currentThread() != this.f6597v) {
            n(2);
        } else {
            o();
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        j jVar = (j) obj;
        int iOrdinal = this.f6589j.ordinal() - jVar.f6589j.ordinal();
        return iOrdinal == 0 ? this.r - jVar.r : iOrdinal;
    }

    public final z d(com.bumptech.glide.load.data.e eVar, Object obj, f5.a aVar) {
        if (obj == null) {
            eVar.b();
            return null;
        }
        try {
            int i10 = a6.k.f434a;
            SystemClock.elapsedRealtimeNanos();
            z zVarE = e(obj, aVar);
            if (Log.isLoggable("DecodeJob", 2)) {
                zVarE.toString();
                SystemClock.elapsedRealtimeNanos();
                s sVar = this.f6590k;
                if (sVar != null) {
                    sVar.toString();
                }
                Thread.currentThread().getName();
            }
            return zVarE;
        } finally {
            eVar.b();
        }
    }

    public final z e(Object obj, f5.a aVar) {
        Class<?> cls = obj.getClass();
        h hVar = this.f6580a;
        x xVarC = hVar.c(cls);
        f5.i iVar = this.f6593p;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z = aVar == f5.a.RESOURCE_DISK_CACHE || hVar.r;
            f5.h hVar2 = o5.p.f11615i;
            Boolean bool = (Boolean) iVar.c(hVar2);
            if (bool == null || (bool.booleanValue() && !z)) {
                iVar = new f5.i();
                f5.i iVar2 = this.f6593p;
                a6.d dVar = iVar.f5624b;
                dVar.g(iVar2.f5624b);
                dVar.put(hVar2, Boolean.valueOf(z));
            }
        }
        f5.i iVar3 = iVar;
        com.bumptech.glide.load.data.g gVarH = this.f6587h.b().h(obj);
        try {
            return xVarC.a(this.l, this.f6591m, new g1(17, this, aVar, false), gVarH, iVar3);
        } finally {
            gVarH.b();
        }
    }

    public final void f() {
        z zVarD;
        if (Log.isLoggable("DecodeJob", 2)) {
            String str = "data: " + this.f6600y + ", cache key: " + this.f6598w + ", fetcher: " + this.A;
            int i10 = a6.k.f434a;
            SystemClock.elapsedRealtimeNanos();
            s sVar = this.f6590k;
            if (sVar != null) {
                sVar.toString();
            }
            if (str != null) {
                ", ".concat(str);
            }
            Thread.currentThread().getName();
        }
        y yVar = null;
        try {
            zVarD = d(this.A, this.f6600y, this.z);
        } catch (v e7) {
            f5.f fVar = this.f6599x;
            f5.a aVar = this.z;
            e7.f6667b = fVar;
            e7.f6668c = aVar;
            e7.f6669d = null;
            this.f6581b.add(e7);
            zVarD = null;
        }
        if (zVarD == null) {
            o();
            return;
        }
        f5.a aVar2 = this.z;
        boolean z = this.E;
        if (zVarD instanceof w) {
            ((w) zVarD).initialize();
        }
        boolean z4 = true;
        if (((y) this.f6585f.f16476d) != null) {
            yVar = (y) y.f6674e.l();
            yVar.f6678d = false;
            yVar.f6677c = true;
            yVar.f6676b = zVarD;
            zVarD = yVar;
        }
        q();
        r rVar = this.f6594q;
        synchronized (rVar) {
            rVar.f6639n = zVarD;
            rVar.f6640p = aVar2;
            rVar.f6646x = z;
        }
        rVar.h();
        this.f6595s = i.ENCODE;
        try {
            v3.f fVar2 = this.f6585f;
            if (((y) fVar2.f16476d) == null) {
                z4 = false;
            }
            if (z4) {
                a6.i iVar = this.f6583d;
                f5.i iVar2 = this.f6593p;
                fVar2.getClass();
                try {
                    iVar.a().n((f5.f) fVar2.f16474b, new v3.f(15, (f5.l) fVar2.f16475c, (y) fVar2.f16476d, iVar2, false));
                    ((y) fVar2.f16476d).c();
                } catch (Throwable th2) {
                    ((y) fVar2.f16476d).c();
                    throw th2;
                }
            }
            j();
        } finally {
            if (yVar != null) {
                yVar.c();
            }
        }
    }

    public final g g() {
        int iOrdinal = this.f6595s.ordinal();
        h hVar = this.f6580a;
        if (iOrdinal == 1) {
            return new a0(hVar, this);
        }
        if (iOrdinal == 2) {
            return new d(hVar.a(), hVar, this);
        }
        if (iOrdinal == 3) {
            return new e0(hVar, this);
        }
        if (iOrdinal == 5) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.f6595s);
    }

    public final i h(i iVar) {
        boolean z;
        boolean z4;
        int iOrdinal = iVar.ordinal();
        if (iOrdinal == 0) {
            switch (this.f6592n.f6609a) {
                case 0:
                case 1:
                    z = false;
                    break;
                default:
                    z = true;
                    break;
            }
            i iVar2 = i.RESOURCE_CACHE;
            return z ? iVar2 : h(iVar2);
        }
        if (iOrdinal == 1) {
            switch (this.f6592n.f6609a) {
                case 0:
                    z4 = false;
                    break;
                case 1:
                default:
                    z4 = true;
                    break;
            }
            i iVar3 = i.DATA_CACHE;
            return z4 ? iVar3 : h(iVar3);
        }
        i iVar4 = i.FINISHED;
        if (iOrdinal == 2) {
            return i.SOURCE;
        }
        if (iOrdinal == 3 || iOrdinal == 5) {
            return iVar4;
        }
        throw new IllegalArgumentException("Unrecognized stage: " + iVar);
    }

    public final void i() {
        q();
        v vVar = new v("Failed to load resource", new ArrayList(this.f6581b));
        r rVar = this.f6594q;
        synchronized (rVar) {
            rVar.r = vVar;
        }
        rVar.g();
        k();
    }

    public final void j() {
        boolean zB;
        a2.o oVar = this.f6586g;
        synchronized (oVar) {
            oVar.f261b = true;
            zB = oVar.b();
        }
        if (zB) {
            m();
        }
    }

    public final void k() {
        boolean zB;
        a2.o oVar = this.f6586g;
        synchronized (oVar) {
            oVar.f262c = true;
            zB = oVar.b();
        }
        if (zB) {
            m();
        }
    }

    public final void l() {
        boolean zB;
        a2.o oVar = this.f6586g;
        synchronized (oVar) {
            oVar.f260a = true;
            zB = oVar.b();
        }
        if (zB) {
            m();
        }
    }

    public final void m() {
        a2.o oVar = this.f6586g;
        synchronized (oVar) {
            oVar.f261b = false;
            oVar.f260a = false;
            oVar.f262c = false;
        }
        v3.f fVar = this.f6585f;
        fVar.f16474b = null;
        fVar.f16475c = null;
        fVar.f16476d = null;
        h hVar = this.f6580a;
        hVar.f6559c = null;
        hVar.f6560d = null;
        hVar.f6569n = null;
        hVar.f6563g = null;
        hVar.f6567k = null;
        hVar.f6565i = null;
        hVar.f6570o = null;
        hVar.f6566j = null;
        hVar.f6571p = null;
        hVar.f6557a.clear();
        hVar.l = false;
        hVar.f6558b.clear();
        hVar.f6568m = false;
        this.C = false;
        this.f6587h = null;
        this.f6588i = null;
        this.f6593p = null;
        this.f6589j = null;
        this.f6590k = null;
        this.f6594q = null;
        this.f6595s = null;
        this.B = null;
        this.f6597v = null;
        this.f6598w = null;
        this.f6600y = null;
        this.z = null;
        this.A = null;
        this.D = false;
        this.f6581b.clear();
        this.f6584e.L(this);
    }

    public final void n(int i10) {
        this.F = i10;
        r rVar = this.f6594q;
        (rVar.f6638m ? rVar.f6635i : rVar.f6634h).execute(this);
    }

    public final void o() {
        this.f6597v = Thread.currentThread();
        int i10 = a6.k.f434a;
        SystemClock.elapsedRealtimeNanos();
        boolean zB = false;
        while (!this.D && this.B != null && !(zB = this.B.b())) {
            this.f6595s = h(this.f6595s);
            this.B = g();
            if (this.f6595s == i.SOURCE) {
                n(2);
                return;
            }
        }
        if ((this.f6595s == i.FINISHED || this.D) && !zB) {
            i();
        }
    }

    public final void p() {
        int iC = d0.f.c(this.F);
        if (iC == 0) {
            this.f6595s = h(i.INITIALIZE);
            this.B = g();
            o();
        } else if (iC == 1) {
            o();
        } else if (iC == 2) {
            f();
        } else {
            int i10 = this.F;
            throw new IllegalStateException("Unrecognized run reason: ".concat(i10 != 1 ? i10 != 2 ? i10 != 3 ? "null" : "DECODE_DATA" : "SWITCH_TO_SOURCE_SERVICE" : "INITIALIZE"));
        }
    }

    public final void q() {
        this.f6582c.a();
        if (this.C) {
            throw new IllegalStateException("Already notified", this.f6581b.isEmpty() ? null : (Throwable) ta.q.h(1, this.f6581b));
        }
        this.C = true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar;
        com.bumptech.glide.load.data.e eVar = this.A;
        try {
            try {
                if (this.D) {
                    i();
                    if (eVar != null) {
                        eVar.b();
                        return;
                    }
                    return;
                }
                p();
                if (eVar != null) {
                    eVar.b();
                }
            } catch (Throwable th2) {
                if (eVar != null) {
                    eVar.b();
                }
                throw th2;
            }
        } catch (c e7) {
            throw e7;
        } catch (Throwable th3) {
            if (Log.isLoggable("DecodeJob", 3) && (iVar = this.f6595s) != null) {
                iVar.toString();
            }
            if (this.f6595s != i.ENCODE) {
                this.f6581b.add(th3);
                i();
            }
            if (!this.D) {
                throw th3;
            }
            throw th3;
        }
    }
}
