package com.bumptech.glide;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import l5.q;
import l5.r;
import l5.s;
import l5.t;
import ua.i8;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final t f3335a;

    /* renamed from: b, reason: collision with root package name */
    public final ag.c f3336b;

    /* renamed from: c, reason: collision with root package name */
    public final i8 f3337c;

    /* renamed from: d, reason: collision with root package name */
    public final ag.c f3338d;

    /* renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.load.data.i f3339e;

    /* renamed from: f, reason: collision with root package name */
    public final ag.c f3340f;

    /* renamed from: g, reason: collision with root package name */
    public final ag.c f3341g;

    /* renamed from: h, reason: collision with root package name */
    public final i8 f3342h = new i8(3);

    /* renamed from: i, reason: collision with root package name */
    public final v5.b f3343i = new v5.b();

    /* renamed from: j, reason: collision with root package name */
    public final v3.f f3344j;

    public k() {
        v3.f fVar = new v3.f(new w0.d(20), new m7.e(9), new gf.g(10), 6);
        this.f3344j = fVar;
        this.f3335a = new t(fVar);
        this.f3336b = new ag.c(4);
        this.f3337c = new i8(4);
        this.f3338d = new ag.c(6);
        this.f3339e = new com.bumptech.glide.load.data.i();
        this.f3340f = new ag.c(3);
        this.f3341g = new ag.c(5);
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        i8 i8Var = this.f3337c;
        synchronized (i8Var) {
            try {
                ArrayList arrayList2 = new ArrayList((ArrayList) i8Var.f15741b);
                ((ArrayList) i8Var.f15741b).clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((ArrayList) i8Var.f15741b).add((String) it2.next());
                }
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    String str = (String) it3.next();
                    if (!arrayList.contains(str)) {
                        ((ArrayList) i8Var.f15741b).add(str);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void a(Class cls, f5.c cVar) {
        ag.c cVar2 = this.f3336b;
        synchronized (cVar2) {
            cVar2.f665a.add(new v5.a(cls, cVar));
        }
    }

    public final void b(Class cls, f5.l lVar) {
        ag.c cVar = this.f3338d;
        synchronized (cVar) {
            cVar.f665a.add(new v5.d(cls, lVar));
        }
    }

    public final void c(Class cls, Class cls2, r rVar) {
        t tVar = this.f3335a;
        synchronized (tVar) {
            tVar.f10608a.a(cls, cls2, rVar);
            tVar.f10609b.f3328a.clear();
        }
    }

    public final void d(String str, Class cls, Class cls2, f5.k kVar) {
        i8 i8Var = this.f3337c;
        synchronized (i8Var) {
            i8Var.r(str).add(new v5.c(cls, cls2, kVar));
        }
    }

    public final ArrayList e(Class cls, Class cls2, Class cls3) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = this.f3337c.s(cls, cls2).iterator();
        while (it.hasNext()) {
            Class cls4 = (Class) it.next();
            Iterator it2 = this.f3340f.m(cls4, cls3).iterator();
            while (it2.hasNext()) {
                Class cls5 = (Class) it2.next();
                i8 i8Var = this.f3337c;
                synchronized (i8Var) {
                    arrayList = new ArrayList();
                    Iterator it3 = ((ArrayList) i8Var.f15741b).iterator();
                    while (it3.hasNext()) {
                        List<v5.c> list = (List) ((HashMap) i8Var.f15742c).get((String) it3.next());
                        if (list != null) {
                            for (v5.c cVar : list) {
                                if (cVar.f16629a.isAssignableFrom(cls) && cls4.isAssignableFrom(cVar.f16630b)) {
                                    arrayList.add(cVar.f16631c);
                                }
                            }
                        }
                    }
                }
                arrayList2.add(new h5.k(cls, cls4, cls5, arrayList, this.f3340f.i(cls4, cls5), this.f3344j));
            }
        }
        return arrayList2;
    }

    public final ArrayList f() {
        ArrayList arrayList;
        ag.c cVar = this.f3341g;
        synchronized (cVar) {
            arrayList = cVar.f665a;
        }
        if (arrayList.isEmpty()) {
            throw new j("Failed to find image header parser.");
        }
        return arrayList;
    }

    public final List g(Object obj) {
        List listUnmodifiableList;
        t tVar = this.f3335a;
        tVar.getClass();
        Class<?> cls = obj.getClass();
        synchronized (tVar) {
            s sVar = (s) tVar.f10609b.f3328a.get(cls);
            listUnmodifiableList = sVar == null ? null : sVar.f10607a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(tVar.f10608a.b(cls));
                if (((s) tVar.f10609b.f3328a.put(cls, new s(listUnmodifiableList))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new j("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }
        int size = listUnmodifiableList.size();
        List listEmptyList = Collections.emptyList();
        boolean z = true;
        for (int i10 = 0; i10 < size; i10++) {
            q qVar = (q) listUnmodifiableList.get(i10);
            if (qVar.a(obj)) {
                if (z) {
                    listEmptyList = new ArrayList(size - i10);
                    z = false;
                }
                listEmptyList.add(qVar);
            }
        }
        if (!listEmptyList.isEmpty()) {
            return listEmptyList;
        }
        throw new j("Found ModelLoaders for model class: " + listUnmodifiableList + ", but none that handle this specific model instance: " + obj);
    }

    public final com.bumptech.glide.load.data.g h(Object obj) {
        com.bumptech.glide.load.data.g gVarB;
        com.bumptech.glide.load.data.i iVar = this.f3339e;
        synchronized (iVar) {
            try {
                a6.h.b(obj);
                com.bumptech.glide.load.data.f fVar = (com.bumptech.glide.load.data.f) ((HashMap) iVar.f3361b).get(obj.getClass());
                if (fVar == null) {
                    Iterator it = ((HashMap) iVar.f3361b).values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        com.bumptech.glide.load.data.f fVar2 = (com.bumptech.glide.load.data.f) it.next();
                        if (fVar2.a().isAssignableFrom(obj.getClass())) {
                            fVar = fVar2;
                            break;
                        }
                    }
                }
                if (fVar == null) {
                    fVar = com.bumptech.glide.load.data.i.f3359c;
                }
                gVarB = fVar.b(obj);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVarB;
    }

    public final void i(com.bumptech.glide.load.data.f fVar) {
        com.bumptech.glide.load.data.i iVar = this.f3339e;
        synchronized (iVar) {
            ((HashMap) iVar.f3361b).put(fVar.a(), fVar);
        }
    }

    public final void j(f5.e eVar) {
        ag.c cVar = this.f3341g;
        synchronized (cVar) {
            cVar.f665a.add(eVar);
        }
    }

    public final void k(Class cls, Class cls2, t5.a aVar) {
        ag.c cVar = this.f3340f;
        synchronized (cVar) {
            cVar.f665a.add(new t5.b(cls, cls2, aVar));
        }
    }
}
