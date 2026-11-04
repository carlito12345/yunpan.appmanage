package w5;

import a6.h;
import a6.k;
import a6.q;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.i;
import h5.n;
import h5.r;
import h5.t;
import h5.v;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class f implements c, x5.d {
    public static final boolean A = Log.isLoggable("GlideRequest", 2);

    /* renamed from: a, reason: collision with root package name */
    public final b6.d f17588a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f17589b;

    /* renamed from: c, reason: collision with root package name */
    public final d f17590c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f17591d;

    /* renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.f f17592e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f17593f;

    /* renamed from: g, reason: collision with root package name */
    public final Class f17594g;

    /* renamed from: h, reason: collision with root package name */
    public final a f17595h;

    /* renamed from: i, reason: collision with root package name */
    public final int f17596i;

    /* renamed from: j, reason: collision with root package name */
    public final int f17597j;

    /* renamed from: k, reason: collision with root package name */
    public final i f17598k;
    public final x5.e l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f17599m;

    /* renamed from: n, reason: collision with root package name */
    public final y5.a f17600n;

    /* renamed from: o, reason: collision with root package name */
    public final a6.g f17601o;

    /* renamed from: p, reason: collision with root package name */
    public t f17602p;

    /* renamed from: q, reason: collision with root package name */
    public v3.f f17603q;
    public volatile n r;

    /* renamed from: s, reason: collision with root package name */
    public Drawable f17604s;

    /* renamed from: t, reason: collision with root package name */
    public Drawable f17605t;

    /* renamed from: u, reason: collision with root package name */
    public Drawable f17606u;

    /* renamed from: v, reason: collision with root package name */
    public int f17607v;

    /* renamed from: w, reason: collision with root package name */
    public int f17608w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f17609x;

    /* renamed from: y, reason: collision with root package name */
    public final RuntimeException f17610y;
    public int z;

    public f(Context context, com.bumptech.glide.f fVar, Object obj, Object obj2, Class cls, a aVar, int i10, int i11, i iVar, x5.e eVar, ArrayList arrayList, d dVar, n nVar) {
        y5.a aVar2 = y5.b.f18968a;
        a6.g gVar = h.f430a;
        if (A) {
            String.valueOf(hashCode());
        }
        this.f17588a = new b6.d();
        this.f17589b = obj;
        this.f17591d = context;
        this.f17592e = fVar;
        this.f17593f = obj2;
        this.f17594g = cls;
        this.f17595h = aVar;
        this.f17596i = i10;
        this.f17597j = i11;
        this.f17598k = iVar;
        this.l = eVar;
        this.f17599m = arrayList;
        this.f17590c = dVar;
        this.r = nVar;
        this.f17600n = aVar2;
        this.f17601o = gVar;
        this.z = 1;
        if (this.f17610y == null && fVar.f3325h.f3329a.containsKey(com.bumptech.glide.d.class)) {
            this.f17610y = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // w5.c
    public final boolean a() {
        boolean z;
        synchronized (this.f17589b) {
            z = this.z == 4;
        }
        return z;
    }

    @Override // w5.c
    public final boolean b(c cVar) {
        int i10;
        int i11;
        Object obj;
        Class cls;
        a aVar;
        i iVar;
        int size;
        int i12;
        int i13;
        Object obj2;
        Class cls2;
        a aVar2;
        i iVar2;
        int size2;
        if (!(cVar instanceof f)) {
            return false;
        }
        synchronized (this.f17589b) {
            try {
                i10 = this.f17596i;
                i11 = this.f17597j;
                obj = this.f17593f;
                cls = this.f17594g;
                aVar = this.f17595h;
                iVar = this.f17598k;
                ArrayList arrayList = this.f17599m;
                size = arrayList != null ? arrayList.size() : 0;
            } finally {
            }
        }
        f fVar = (f) cVar;
        synchronized (fVar.f17589b) {
            try {
                i12 = fVar.f17596i;
                i13 = fVar.f17597j;
                obj2 = fVar.f17593f;
                cls2 = fVar.f17594g;
                aVar2 = fVar.f17595h;
                iVar2 = fVar.f17598k;
                ArrayList arrayList2 = fVar.f17599m;
                size2 = arrayList2 != null ? arrayList2.size() : 0;
            } finally {
            }
        }
        if (i10 == i12 && i11 == i13) {
            char[] cArr = q.f446a;
            if ((obj == null ? obj2 == null : obj.equals(obj2)) && cls.equals(cls2)) {
                if ((aVar == null ? aVar2 == null : aVar.h(aVar2)) && iVar == iVar2 && size == size2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void c() {
        if (this.f17609x) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
        this.f17588a.a();
        this.l.a(this);
        v3.f fVar = this.f17603q;
        if (fVar != null) {
            synchronized (((n) fVar.f16476d)) {
                ((r) fVar.f16474b).j((f) fVar.f16475c);
            }
            this.f17603q = null;
        }
    }

    @Override // w5.c
    public final void clear() {
        synchronized (this.f17589b) {
            try {
                if (this.f17609x) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f17588a.a();
                if (this.z == 6) {
                    return;
                }
                c();
                t tVar = this.f17602p;
                if (tVar != null) {
                    this.f17602p = null;
                } else {
                    tVar = null;
                }
                d dVar = this.f17590c;
                if (dVar == null || dVar.e(this)) {
                    this.l.i(d());
                }
                this.z = 6;
                if (tVar != null) {
                    this.r.getClass();
                    n.f(tVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Drawable d() {
        if (this.f17605t == null) {
            this.f17595h.getClass();
            this.f17605t = null;
        }
        return this.f17605t;
    }

    public final void e(v vVar, int i10) {
        Drawable drawableD;
        this.f17588a.a();
        synchronized (this.f17589b) {
            try {
                vVar.getClass();
                int i11 = this.f17592e.f3326i;
                if (i11 <= i10) {
                    Object obj = this.f17593f;
                    if (obj != null) {
                        obj.toString();
                    }
                    if (i11 <= 4) {
                        ArrayList arrayList = new ArrayList();
                        v.a(vVar, arrayList);
                        int size = arrayList.size();
                        int i12 = 0;
                        while (i12 < size) {
                            int i13 = i12 + 1;
                            i12 = i13;
                        }
                    }
                }
                this.f17603q = null;
                this.z = 5;
                d dVar = this.f17590c;
                if (dVar != null) {
                    dVar.i(this);
                }
                boolean z = true;
                this.f17609x = true;
                try {
                    ArrayList arrayList2 = this.f17599m;
                    if (arrayList2 != null) {
                        Iterator it = arrayList2.iterator();
                        if (it.hasNext()) {
                            if (it.next() != null) {
                                throw new ClassCastException();
                            }
                            d dVar2 = this.f17590c;
                            if (dVar2 == null) {
                                throw null;
                            }
                            dVar2.getRoot().a();
                            throw null;
                        }
                    }
                    d dVar3 = this.f17590c;
                    if (dVar3 != null && !dVar3.g(this)) {
                        z = false;
                    }
                    if (z) {
                        if (this.f17593f == null) {
                            if (this.f17606u == null) {
                                this.f17595h.getClass();
                                this.f17606u = null;
                            }
                            drawableD = this.f17606u;
                        } else {
                            drawableD = null;
                        }
                        if (drawableD == null) {
                            if (this.f17604s == null) {
                                a aVar = this.f17595h;
                                aVar.getClass();
                                this.f17604s = null;
                                int i14 = aVar.f17570d;
                                if (i14 > 0) {
                                    Resources.Theme theme = this.f17595h.f17579n;
                                    Context context = this.f17591d;
                                    if (theme == null) {
                                        theme = context.getTheme();
                                    }
                                    this.f17604s = d.b.D(context, context, i14, theme);
                                }
                            }
                            drawableD = this.f17604s;
                        }
                        if (drawableD == null) {
                            drawableD = d();
                        }
                        this.l.d(drawableD);
                    }
                } finally {
                    this.f17609x = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // w5.c
    public final boolean f() {
        boolean z;
        synchronized (this.f17589b) {
            z = this.z == 6;
        }
        return z;
    }

    public final void g(t tVar, f5.a aVar, boolean z) {
        this.f17588a.a();
        t tVar2 = null;
        try {
            synchronized (this.f17589b) {
                try {
                    this.f17603q = null;
                    if (tVar == null) {
                        e(new v("Expected to receive a Resource<R> with an object of " + this.f17594g + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = tVar.f6658c.get();
                    try {
                        if (obj != null && this.f17594g.isAssignableFrom(obj.getClass())) {
                            d dVar = this.f17590c;
                            if (dVar == null || dVar.d(this)) {
                                i(tVar, obj, aVar);
                                return;
                            }
                            this.f17602p = null;
                            this.z = 4;
                            this.r.getClass();
                            n.f(tVar);
                            return;
                        }
                        this.f17602p = null;
                        StringBuilder sb2 = new StringBuilder("Expected to receive an object of ");
                        sb2.append(this.f17594g);
                        sb2.append(" but instead got ");
                        sb2.append(obj != null ? obj.getClass() : "");
                        sb2.append("{");
                        sb2.append(obj);
                        sb2.append("} inside Resource{");
                        sb2.append(tVar);
                        sb2.append("}.");
                        sb2.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        e(new v(sb2.toString()), 5);
                        this.r.getClass();
                        n.f(tVar);
                    } catch (Throwable th2) {
                        tVar2 = tVar;
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            if (tVar2 != null) {
                this.r.getClass();
                n.f(tVar2);
            }
            throw th4;
        }
    }

    @Override // w5.c
    public final void h() {
        synchronized (this.f17589b) {
            try {
                if (this.f17609x) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f17588a.a();
                int i10 = k.f434a;
                SystemClock.elapsedRealtimeNanos();
                if (this.f17593f == null) {
                    if (q.i(this.f17596i, this.f17597j)) {
                        this.f17607v = this.f17596i;
                        this.f17608w = this.f17597j;
                    }
                    if (this.f17606u == null) {
                        this.f17595h.getClass();
                        this.f17606u = null;
                    }
                    e(new v("Received null model"), this.f17606u == null ? 5 : 3);
                    return;
                }
                int i11 = this.z;
                if (i11 == 2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (i11 == 4) {
                    g(this.f17602p, f5.a.MEMORY_CACHE, false);
                    return;
                }
                ArrayList arrayList = this.f17599m;
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (it.next() != null) {
                            throw new ClassCastException();
                        }
                    }
                }
                this.z = 3;
                if (q.i(this.f17596i, this.f17597j)) {
                    k(this.f17596i, this.f17597j);
                } else {
                    this.l.h(this);
                }
                int i12 = this.z;
                if (i12 == 2 || i12 == 3) {
                    d dVar = this.f17590c;
                    if (dVar == null || dVar.g(this)) {
                        this.l.f(d());
                    }
                }
                if (A) {
                    SystemClock.elapsedRealtimeNanos();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void i(t tVar, Object obj, f5.a aVar) {
        d dVar = this.f17590c;
        if (dVar != null) {
            dVar.getRoot().a();
        }
        this.z = 4;
        this.f17602p = tVar;
        if (this.f17592e.f3326i <= 3) {
            if (aVar != null) {
                aVar.toString();
            }
            Object obj2 = this.f17593f;
            if (obj2 != null) {
                obj2.toString();
            }
            int i10 = k.f434a;
            SystemClock.elapsedRealtimeNanos();
        }
        if (dVar != null) {
            dVar.c(this);
        }
        this.f17609x = true;
        try {
            ArrayList arrayList = this.f17599m;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            }
            this.f17600n.getClass();
            this.l.b(obj);
            this.f17609x = false;
        } catch (Throwable th2) {
            this.f17609x = false;
            throw th2;
        }
    }

    @Override // w5.c
    public final boolean isRunning() {
        boolean z;
        synchronized (this.f17589b) {
            int i10 = this.z;
            z = i10 == 2 || i10 == 3;
        }
        return z;
    }

    @Override // w5.c
    public final boolean j() {
        boolean z;
        synchronized (this.f17589b) {
            z = this.z == 4;
        }
        return z;
    }

    public final void k(int i10, int i11) throws Throwable {
        Object obj;
        int iRound = i10;
        this.f17588a.a();
        Object obj2 = this.f17589b;
        synchronized (obj2) {
            try {
                try {
                    boolean z = A;
                    if (z) {
                        int i12 = k.f434a;
                        SystemClock.elapsedRealtimeNanos();
                    }
                    if (this.z == 3) {
                        this.z = 2;
                        this.f17595h.getClass();
                        if (iRound != Integer.MIN_VALUE) {
                            iRound = Math.round(iRound * 1.0f);
                        }
                        this.f17607v = iRound;
                        this.f17608w = i11 == Integer.MIN_VALUE ? i11 : Math.round(1.0f * i11);
                        if (z) {
                            int i13 = k.f434a;
                            SystemClock.elapsedRealtimeNanos();
                        }
                        n nVar = this.r;
                        com.bumptech.glide.f fVar = this.f17592e;
                        Object obj3 = this.f17593f;
                        a aVar = this.f17595h;
                        try {
                            obj = obj2;
                            try {
                                this.f17603q = nVar.a(fVar, obj3, aVar.f17574h, this.f17607v, this.f17608w, aVar.l, this.f17594g, this.f17598k, aVar.f17568b, aVar.f17577k, aVar.f17575i, aVar.f17581q, aVar.f17576j, aVar.f17571e, aVar.r, this, this.f17601o);
                                if (this.z != 2) {
                                    this.f17603q = null;
                                }
                                if (z) {
                                    int i14 = k.f434a;
                                    SystemClock.elapsedRealtimeNanos();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            obj = obj2;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    obj = obj2;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    @Override // w5.c
    public final void pause() {
        synchronized (this.f17589b) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final String toString() {
        Object obj;
        Class cls;
        synchronized (this.f17589b) {
            obj = this.f17593f;
            cls = this.f17594g;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
