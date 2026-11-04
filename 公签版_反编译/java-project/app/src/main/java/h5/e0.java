package h5;

import a2.g1;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class e0 implements g, f {

    /* renamed from: a, reason: collision with root package name */
    public final h f6550a;

    /* renamed from: b, reason: collision with root package name */
    public final j f6551b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f6552c;

    /* renamed from: d, reason: collision with root package name */
    public volatile d f6553d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f6554e;

    /* renamed from: f, reason: collision with root package name */
    public volatile l5.p f6555f;

    /* renamed from: g, reason: collision with root package name */
    public volatile e f6556g;

    public e0(h hVar, j jVar) {
        this.f6550a = hVar;
        this.f6551b = jVar;
    }

    @Override // h5.f
    public final void a(f5.f fVar, Object obj, com.bumptech.glide.load.data.e eVar, f5.a aVar, f5.f fVar2) {
        this.f6551b.a(fVar, obj, eVar, this.f6555f.f10606c.c(), fVar);
    }

    @Override // h5.g
    public final boolean b() {
        if (this.f6554e != null) {
            Object obj = this.f6554e;
            this.f6554e = null;
            try {
                if (!d(obj)) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        if (this.f6553d != null && this.f6553d.b()) {
            return true;
        }
        this.f6553d = null;
        this.f6555f = null;
        boolean z = false;
        while (!z && this.f6552c < this.f6550a.b().size()) {
            ArrayList arrayListB = this.f6550a.b();
            int i10 = this.f6552c;
            this.f6552c = i10 + 1;
            this.f6555f = (l5.p) arrayListB.get(i10);
            if (this.f6555f != null && (this.f6550a.f6571p.a(this.f6555f.f10606c.c()) || this.f6550a.c(this.f6555f.f10606c.a()) != null)) {
                this.f6555f.f10606c.d(this.f6550a.f6570o, new g1(18, this, this.f6555f, false));
                z = true;
            }
        }
        return z;
    }

    @Override // h5.f
    public final void c(f5.f fVar, Exception exc, com.bumptech.glide.load.data.e eVar, f5.a aVar) {
        this.f6551b.c(fVar, exc, eVar, this.f6555f.f10606c.c());
    }

    @Override // h5.g
    public final void cancel() {
        l5.p pVar = this.f6555f;
        if (pVar != null) {
            pVar.f10606c.cancel();
        }
    }

    public final boolean d(Object obj) throws Throwable {
        int i10 = a6.k.f434a;
        SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        try {
            com.bumptech.glide.load.data.g gVarH = this.f6550a.f6559c.b().h(obj);
            Object objD = gVarH.d();
            f5.c cVarD = this.f6550a.d(objD);
            v3.f fVar = new v3.f(15, cVarD, objD, this.f6550a.f6565i, false);
            f5.f fVar2 = this.f6555f.f10604a;
            h hVar = this.f6550a;
            e eVar = new e(fVar2, hVar.f6569n);
            j5.a aVarA = hVar.f6564h.a();
            aVarA.n(eVar, fVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                eVar.toString();
                obj.toString();
                cVarD.toString();
                SystemClock.elapsedRealtimeNanos();
            }
            if (aVarA.y(eVar) != null) {
                this.f6556g = eVar;
                this.f6553d = new d(Collections.singletonList(this.f6555f.f10604a), this.f6550a, this);
                this.f6555f.f10606c.b();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                e eVar2 = this.f6556g;
                if (eVar2 != null) {
                    eVar2.toString();
                }
                obj.toString();
            }
            try {
                this.f6551b.a(this.f6555f.f10604a, gVarH.d(), this.f6555f.f10606c, this.f6555f.f10606c.c(), this.f6555f.f10604a);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (!z) {
                    this.f6555f.f10606c.b();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
