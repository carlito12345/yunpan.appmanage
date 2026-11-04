package com.bumptech.glide;

import a6.q;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import com.bumptech.glide.manager.s;
import com.bumptech.glide.manager.t;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class p implements ComponentCallbacks2, com.bumptech.glide.manager.h {

    /* renamed from: k, reason: collision with root package name */
    public static final w5.e f3419k = (w5.e) ((w5.e) new w5.e().d(Bitmap.class)).j();

    /* renamed from: a, reason: collision with root package name */
    public final b f3420a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f3421b;

    /* renamed from: c, reason: collision with root package name */
    public final com.bumptech.glide.manager.g f3422c;

    /* renamed from: d, reason: collision with root package name */
    public final s f3423d;

    /* renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.manager.l f3424e;

    /* renamed from: f, reason: collision with root package name */
    public final t f3425f;

    /* renamed from: g, reason: collision with root package name */
    public final androidx.activity.h f3426g;

    /* renamed from: h, reason: collision with root package name */
    public final com.bumptech.glide.manager.b f3427h;

    /* renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList f3428i;

    /* renamed from: j, reason: collision with root package name */
    public w5.e f3429j;

    static {
    }

    public p(b bVar, com.bumptech.glide.manager.g gVar, com.bumptech.glide.manager.l lVar, Context context) {
        s sVar = new s();
        m7.e eVar = bVar.f3285f;
        this.f3425f = new t();
        androidx.activity.h hVar = new androidx.activity.h(6, this);
        this.f3426g = hVar;
        this.f3420a = bVar;
        this.f3422c = gVar;
        this.f3424e = lVar;
        this.f3423d = sVar;
        this.f3421b = context;
        Context applicationContext = context.getApplicationContext();
        o oVar = new o(this, sVar);
        eVar.getClass();
        com.bumptech.glide.manager.b cVar = n0.g.a(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0 ? new com.bumptech.glide.manager.c(applicationContext, oVar) : new com.bumptech.glide.manager.j();
        this.f3427h = cVar;
        synchronized (bVar.f3286g) {
            if (bVar.f3286g.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            bVar.f3286g.add(this);
        }
        char[] cArr = q.f446a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            gVar.h(this);
        } else {
            q.f().post(hVar);
        }
        gVar.h(cVar);
        this.f3428i = new CopyOnWriteArrayList(bVar.f3282c.f3322e);
        x(bVar.f3282c.a());
    }

    @Override // com.bumptech.glide.manager.h
    public final synchronized void c() {
        this.f3425f.c();
        p();
        s sVar = this.f3423d;
        Iterator it = q.e((Set) sVar.f3412c).iterator();
        while (it.hasNext()) {
            sVar.c((w5.c) it.next());
        }
        ((HashSet) sVar.f3413d).clear();
        this.f3422c.l(this);
        this.f3422c.l(this.f3427h);
        q.f().removeCallbacks(this.f3426g);
        this.f3420a.e(this);
    }

    @Override // com.bumptech.glide.manager.h
    public final synchronized void e() {
        this.f3425f.e();
        v();
    }

    @Override // com.bumptech.glide.manager.h
    public final synchronized void k() {
        w();
        this.f3425f.k();
    }

    public m l(Class cls) {
        return new m(this.f3420a, this, cls, this.f3421b);
    }

    public m m() {
        return l(Bitmap.class).a(f3419k);
    }

    public m n() {
        return l(Drawable.class);
    }

    public final void o(x5.e eVar) {
        if (eVar == null) {
            return;
        }
        boolean zY = y(eVar);
        w5.c cVarG = eVar.g();
        if (zY) {
            return;
        }
        b bVar = this.f3420a;
        synchronized (bVar.f3286g) {
            try {
                Iterator it = bVar.f3286g.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((p) it.next()).y(eVar)) {
                        }
                    } else if (cVarG != null) {
                        eVar.j(null);
                        cVarG.clear();
                    }
                }
            } finally {
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
    }

    public final synchronized void p() {
        try {
            Iterator it = q.e(this.f3425f.f3414a).iterator();
            while (it.hasNext()) {
                o((x5.e) it.next());
            }
            this.f3425f.f3414a.clear();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public m q() {
        return n().F();
    }

    public m r(Drawable drawable) {
        return n().G(drawable);
    }

    public m s(File file) {
        return n().H(file);
    }

    public m t(Object obj) {
        return n().I(obj);
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.f3423d + ", treeNode=" + this.f3424e + "}";
    }

    public m u(String str) {
        return n().J(str);
    }

    public final synchronized void v() {
        s sVar = this.f3423d;
        sVar.f3411b = true;
        Iterator it = q.e((Set) sVar.f3412c).iterator();
        while (it.hasNext()) {
            w5.c cVar = (w5.c) it.next();
            if (cVar.isRunning()) {
                cVar.pause();
                ((HashSet) sVar.f3413d).add(cVar);
            }
        }
    }

    public final synchronized void w() {
        s sVar = this.f3423d;
        sVar.f3411b = false;
        Iterator it = q.e((Set) sVar.f3412c).iterator();
        while (it.hasNext()) {
            w5.c cVar = (w5.c) it.next();
            if (!cVar.j() && !cVar.isRunning()) {
                cVar.h();
            }
        }
        ((HashSet) sVar.f3413d).clear();
    }

    public synchronized void x(w5.e eVar) {
        this.f3429j = (w5.e) ((w5.e) eVar.clone()).b();
    }

    public final synchronized boolean y(x5.e eVar) {
        w5.c cVarG = eVar.g();
        if (cVarG == null) {
            return true;
        }
        if (!this.f3423d.c(cVarG)) {
            return false;
        }
        this.f3425f.f3414a.remove(eVar);
        eVar.j(null);
        return true;
    }
}
