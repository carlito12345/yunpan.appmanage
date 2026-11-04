package h5;

import android.os.SystemClock;
import android.util.Log;
import java.util.HashMap;
import w.r3;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: h, reason: collision with root package name */
    public static final boolean f6612h = Log.isLoggable("Engine", 2);

    /* renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.g f6613a;

    /* renamed from: b, reason: collision with root package name */
    public final gf.g f6614b;

    /* renamed from: c, reason: collision with root package name */
    public final j5.g f6615c;

    /* renamed from: d, reason: collision with root package name */
    public final r3 f6616d;

    /* renamed from: e, reason: collision with root package name */
    public final d0 f6617e;

    /* renamed from: f, reason: collision with root package name */
    public final androidx.room.s f6618f;

    /* renamed from: g, reason: collision with root package name */
    public final v3.f f6619g;

    public n(j5.g gVar, androidx.recyclerview.widget.h hVar, k5.d dVar, k5.d dVar2, k5.d dVar3, k5.d dVar4) {
        this.f6615c = gVar;
        a6.i iVar = new a6.i(hVar);
        v3.f fVar = new v3.f((byte) 0, 14);
        this.f6619g = fVar;
        synchronized (this) {
            synchronized (fVar) {
                fVar.f16476d = this;
            }
        }
        this.f6614b = new gf.g(28);
        this.f6613a = new com.bumptech.glide.g(1);
        this.f6616d = new r3(dVar, dVar2, dVar3, dVar4, this, this);
        this.f6618f = new androidx.room.s(iVar);
        this.f6617e = new d0(0);
        gVar.f9760e = this;
    }

    public static void f(z zVar) {
        if (!(zVar instanceof t)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((t) zVar).c();
    }

    public final v3.f a(com.bumptech.glide.f fVar, Object obj, f5.f fVar2, int i10, int i11, Class cls, Class cls2, com.bumptech.glide.i iVar, l lVar, a6.d dVar, boolean z, boolean z4, f5.i iVar2, boolean z10, boolean z11, w5.f fVar3, a6.g gVar) {
        long jElapsedRealtimeNanos;
        if (f6612h) {
            int i12 = a6.k.f434a;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        long j10 = jElapsedRealtimeNanos;
        this.f6614b.getClass();
        s sVar = new s(obj, fVar2, i10, i11, dVar, cls, cls2, iVar2);
        synchronized (this) {
            try {
                t tVarC = c(sVar, z10, j10);
                if (tVarC == null) {
                    return g(fVar, obj, fVar2, i10, i11, cls, cls2, iVar, lVar, dVar, z, z4, iVar2, z10, z11, fVar3, gVar, sVar, j10);
                }
                fVar3.g(tVarC, f5.a.MEMORY_CACHE, false);
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final t b(s sVar) {
        Object obj;
        j5.g gVar = this.f6615c;
        synchronized (gVar) {
            a6.l lVar = (a6.l) gVar.f437a.remove(sVar);
            if (lVar == null) {
                obj = null;
            } else {
                gVar.f440d -= lVar.f436b;
                obj = lVar.f435a;
            }
        }
        z zVar = (z) obj;
        t tVar = zVar != null ? zVar instanceof t ? (t) zVar : new t(zVar, true, true, sVar, this) : null;
        if (tVar != null) {
            tVar.b();
            this.f6619g.m(sVar, tVar);
        }
        return tVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final t c(s sVar, boolean z, long j10) {
        t tVar;
        if (!z) {
            return null;
        }
        v3.f fVar = this.f6619g;
        synchronized (fVar) {
            b bVar = (b) ((HashMap) fVar.f16474b).get(sVar);
            if (bVar == null) {
                tVar = null;
            } else {
                tVar = (t) bVar.get();
                if (tVar == null) {
                    fVar.t(bVar);
                }
            }
        }
        if (tVar != null) {
            tVar.b();
        }
        if (tVar != null) {
            if (f6612h) {
                int i10 = a6.k.f434a;
                SystemClock.elapsedRealtimeNanos();
                sVar.toString();
            }
            return tVar;
        }
        t tVarB = b(sVar);
        if (tVarB == null) {
            return null;
        }
        if (f6612h) {
            int i11 = a6.k.f434a;
            SystemClock.elapsedRealtimeNanos();
            sVar.toString();
        }
        return tVarB;
    }

    public final synchronized void d(r rVar, s sVar, t tVar) {
        if (tVar != null) {
            try {
                if (tVar.f6656a) {
                    this.f6619g.m(sVar, tVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.bumptech.glide.g gVar = this.f6613a;
        gVar.getClass();
        rVar.getClass();
        HashMap map = gVar.f3328a;
        if (rVar.equals(map.get(sVar))) {
            map.remove(sVar);
        }
    }

    public final void e(s sVar, t tVar) {
        v3.f fVar = this.f6619g;
        synchronized (fVar) {
            b bVar = (b) ((HashMap) fVar.f16474b).remove(sVar);
            if (bVar != null) {
                bVar.f6526c = null;
                bVar.clear();
            }
        }
        if (tVar.f6656a) {
        } else {
            this.f6617e.e(tVar, false);
        }
    }

    public final v3.f g(com.bumptech.glide.f fVar, Object obj, f5.f fVar2, int i10, int i11, Class cls, Class cls2, com.bumptech.glide.i iVar, l lVar, a6.d dVar, boolean z, boolean z4, f5.i iVar2, boolean z10, boolean z11, w5.f fVar3, a6.g gVar, s sVar, long j10) {
        r rVar = (r) this.f6613a.f3328a.get(sVar);
        if (rVar != null) {
            rVar.a(fVar3, gVar);
            if (f6612h) {
                int i12 = a6.k.f434a;
                SystemClock.elapsedRealtimeNanos();
                sVar.toString();
            }
            return new v3.f(this, fVar3, rVar);
        }
        r rVar2 = (r) ((v3.f) this.f6616d.f17248g).l();
        synchronized (rVar2) {
            rVar2.f6637k = sVar;
            rVar2.l = z10;
            rVar2.f6638m = z11;
        }
        androidx.room.s sVar2 = this.f6618f;
        j jVar = (j) ((v3.f) sVar2.f2428d).l();
        int i13 = sVar2.f2426b;
        sVar2.f2426b = i13 + 1;
        h hVar = jVar.f6580a;
        hVar.f6559c = fVar;
        hVar.f6560d = obj;
        hVar.f6569n = fVar2;
        hVar.f6561e = i10;
        hVar.f6562f = i11;
        hVar.f6571p = lVar;
        hVar.f6563g = cls;
        hVar.f6564h = jVar.f6583d;
        hVar.f6567k = cls2;
        hVar.f6570o = iVar;
        hVar.f6565i = iVar2;
        hVar.f6566j = dVar;
        hVar.f6572q = z;
        hVar.r = z4;
        jVar.f6587h = fVar;
        jVar.f6588i = fVar2;
        jVar.f6589j = iVar;
        jVar.f6590k = sVar;
        jVar.l = i10;
        jVar.f6591m = i11;
        jVar.f6592n = lVar;
        jVar.f6593p = iVar2;
        jVar.f6594q = rVar2;
        jVar.r = i13;
        jVar.F = 1;
        jVar.f6596t = obj;
        com.bumptech.glide.g gVar2 = this.f6613a;
        gVar2.getClass();
        gVar2.f3328a.put(sVar, rVar2);
        rVar2.a(fVar3, gVar);
        rVar2.k(jVar);
        if (f6612h) {
            int i14 = a6.k.f434a;
            SystemClock.elapsedRealtimeNanos();
            sVar.toString();
        }
        return new v3.f(this, fVar3, rVar2);
    }
}
