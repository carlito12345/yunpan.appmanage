package com.bumptech.glide;

import a2.k1;
import a6.q;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import ha.l2;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import l2.z;

/* loaded from: classes.dex */
public final class b implements ComponentCallbacks2 {

    /* renamed from: h, reason: collision with root package name */
    public static volatile b f3278h;

    /* renamed from: i, reason: collision with root package name */
    public static volatile boolean f3279i;

    /* renamed from: a, reason: collision with root package name */
    public final i5.c f3280a;

    /* renamed from: b, reason: collision with root package name */
    public final j5.g f3281b;

    /* renamed from: c, reason: collision with root package name */
    public final f f3282c;

    /* renamed from: d, reason: collision with root package name */
    public final k1 f3283d;

    /* renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.manager.k f3284e;

    /* renamed from: f, reason: collision with root package name */
    public final m7.e f3285f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f3286g = new ArrayList();

    public b(Context context, h5.n nVar, j5.g gVar, i5.c cVar, k1 k1Var, com.bumptech.glide.manager.k kVar, m7.e eVar, int i10, gf.g gVar2, a0.e eVar2, List list, List list2, q4.a aVar, h hVar) {
        this.f3280a = cVar;
        this.f3283d = k1Var;
        this.f3281b = gVar;
        this.f3284e = kVar;
        this.f3285f = eVar;
        this.f3282c = new f(context, k1Var, new androidx.room.i(this, list2, aVar), new s9.a(23, false), gVar2, eVar2, list, nVar, hVar, i10);
    }

    public static b b(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        if (f3278h == null) {
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                generatedAppGlideModule = null;
            } catch (IllegalAccessException e7) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e7);
            } catch (InstantiationException e10) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e10);
            } catch (NoSuchMethodException e11) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e11);
            } catch (InvocationTargetException e12) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e12);
            }
            synchronized (b.class) {
                if (f3278h == null) {
                    if (f3279i) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    f3279i = true;
                    try {
                        c(context, generatedAppGlideModule);
                        f3279i = false;
                    } catch (Throwable th2) {
                        f3279i = false;
                        throw th2;
                    }
                }
            }
        }
        return f3278h;
    }

    public static void c(Context context, GeneratedAppGlideModule generatedAppGlideModule) throws IllegalAccessException, PackageManager.NameNotFoundException, InstantiationException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        Bundle bundle;
        e eVar = new e();
        Context applicationContext = context.getApplicationContext();
        Collections.emptyList();
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.F();
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                if (Log.isLoggable("ManifestParser", 2) && (bundle = applicationInfo.metaData) != null) {
                    bundle.toString();
                }
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        qf.c.Q(str);
                        throw null;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.d0().isEmpty()) {
            generatedAppGlideModule.d0();
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                throw z.d(it);
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = arrayList.iterator();
            if (it2.hasNext()) {
                throw z.d(it2);
            }
        }
        eVar.f3314n = generatedAppGlideModule != null ? generatedAppGlideModule.e0() : null;
        Iterator it3 = arrayList.iterator();
        if (it3.hasNext()) {
            throw z.d(it3);
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.b(applicationContext, eVar);
        }
        if (eVar.f3308g == null) {
            k5.a aVar = new k5.a();
            if (k5.d.f10174c == 0) {
                k5.d.f10174c = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i10 = k5.d.f10174c;
            if (TextUtils.isEmpty("source")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: source");
            }
            eVar.f3308g = new k5.d(new ThreadPoolExecutor(i10, i10, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new k5.b(aVar, "source", false)));
        }
        if (eVar.f3309h == null) {
            int i11 = k5.d.f10174c;
            k5.a aVar2 = new k5.a();
            if (TextUtils.isEmpty("disk-cache")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: disk-cache");
            }
            eVar.f3309h = new k5.d(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new k5.b(aVar2, "disk-cache", true)));
        }
        if (eVar.f3315o == null) {
            if (k5.d.f10174c == 0) {
                k5.d.f10174c = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i12 = k5.d.f10174c >= 4 ? 2 : 1;
            k5.a aVar3 = new k5.a();
            if (TextUtils.isEmpty("animation")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: animation");
            }
            eVar.f3315o = new k5.d(new ThreadPoolExecutor(i12, i12, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new k5.b(aVar3, "animation", true)));
        }
        if (eVar.f3311j == null) {
            eVar.f3311j = new androidx.media3.exoplayer.video.k(new j5.h(applicationContext));
        }
        if (eVar.f3312k == null) {
            eVar.f3312k = new m7.e(15);
        }
        if (eVar.f3305d == null) {
            int i13 = eVar.f3311j.f1915a;
            if (i13 > 0) {
                eVar.f3305d = new i5.g(i13);
            } else {
                eVar.f3305d = new l2(11);
            }
        }
        if (eVar.f3306e == null) {
            eVar.f3306e = new k1(eVar.f3311j.f1917c);
        }
        if (eVar.f3307f == null) {
            eVar.f3307f = new j5.g(eVar.f3311j.f1916b);
        }
        if (eVar.f3310i == null) {
            eVar.f3310i = new j5.f(applicationContext);
        }
        if (eVar.f3304c == null) {
            eVar.f3304c = new h5.n(eVar.f3307f, eVar.f3310i, eVar.f3309h, eVar.f3308g, new k5.d(new ThreadPoolExecutor(0, Integer.MAX_VALUE, k5.d.f10173b, TimeUnit.MILLISECONDS, new SynchronousQueue(), new k5.b(new k5.a(), "source-unlimited", false))), eVar.f3315o);
        }
        List list = eVar.f3316p;
        if (list == null) {
            eVar.f3316p = Collections.emptyList();
        } else {
            eVar.f3316p = Collections.unmodifiableList(list);
        }
        g gVar = eVar.f3303b;
        gVar.getClass();
        b bVar = new b(applicationContext, eVar.f3304c, eVar.f3307f, eVar.f3305d, eVar.f3306e, new com.bumptech.glide.manager.k(eVar.f3314n), eVar.f3312k, eVar.l, eVar.f3313m, eVar.f3302a, eVar.f3316p, arrayList, generatedAppGlideModule, new h(gVar));
        applicationContext.registerComponentCallbacks(bVar);
        f3278h = bVar;
    }

    public static p f(Context context) {
        a6.h.c(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return b(context).f3284e.b(context);
    }

    public final void a() {
        q.a();
        this.f3281b.e(0L);
        this.f3280a.F();
        this.f3283d.b();
    }

    public final void d() {
        q.a();
        j5.g gVar = this.f3281b;
        synchronized (gVar) {
            long jRound = Math.round(gVar.f438b * 0.5f);
            gVar.f439c = jRound;
            gVar.e(jRound);
        }
        this.f3280a.g(0.5f);
    }

    public final void e(p pVar) {
        synchronized (this.f3286g) {
            try {
                if (!this.f3286g.contains(pVar)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                this.f3286g.remove(pVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        a();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
        q.a();
        synchronized (this.f3286g) {
            try {
                Iterator it = this.f3286g.iterator();
                while (it.hasNext()) {
                    ((p) it.next()).getClass();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f3281b.f(i10);
        this.f3280a.A(i10);
        this.f3283d.j(i10);
    }
}
