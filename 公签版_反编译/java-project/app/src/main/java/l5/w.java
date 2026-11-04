package l5;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: e, reason: collision with root package name */
    public static final a0 f10620e = new a0(10);

    /* renamed from: f, reason: collision with root package name */
    public static final b0 f10621f = new b0(2);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10622a;

    /* renamed from: b, reason: collision with root package name */
    public final a0 f10623b;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f10624c;

    /* renamed from: d, reason: collision with root package name */
    public final v3.f f10625d;

    public w(v3.f fVar) {
        a0 a0Var = f10620e;
        this.f10622a = new ArrayList();
        this.f10624c = new HashSet();
        this.f10625d = fVar;
        this.f10623b = a0Var;
    }

    public final synchronized void a(Class cls, Class cls2, r rVar) {
        v vVar = new v(cls, cls2, rVar);
        ArrayList arrayList = this.f10622a;
        arrayList.add(arrayList.size(), vVar);
    }

    public final synchronized ArrayList b(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            Iterator it = this.f10622a.iterator();
            while (it.hasNext()) {
                v vVar = (v) it.next();
                if (!this.f10624c.contains(vVar) && vVar.f10617a.isAssignableFrom(cls)) {
                    this.f10624c.add(vVar);
                    arrayList.add(vVar.f10619c.l(this));
                    this.f10624c.remove(vVar);
                }
            }
        } finally {
        }
        return arrayList;
    }

    public final synchronized q c(Class cls, Class cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f10622a.iterator();
            boolean z = false;
            while (it.hasNext()) {
                v vVar = (v) it.next();
                if (this.f10624c.contains(vVar)) {
                    z = true;
                } else if (vVar.f10617a.isAssignableFrom(cls) && vVar.f10618b.isAssignableFrom(cls2)) {
                    this.f10624c.add(vVar);
                    arrayList.add(vVar.f10619c.l(this));
                    this.f10624c.remove(vVar);
                }
            }
            if (arrayList.size() > 1) {
                a0 a0Var = this.f10623b;
                v3.f fVar = this.f10625d;
                a0Var.getClass();
                return new b(arrayList, 2, fVar);
            }
            if (arrayList.size() == 1) {
                return (q) arrayList.get(0);
            }
            if (z) {
                return f10621f;
            }
            throw new com.bumptech.glide.j("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        } catch (Throwable th2) {
            this.f10624c.clear();
            throw th2;
        }
    }

    public final synchronized ArrayList d(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f10622a.iterator();
        while (it.hasNext()) {
            v vVar = (v) it.next();
            if (!arrayList.contains(vVar.f10618b) && vVar.f10617a.isAssignableFrom(cls)) {
                arrayList.add(vVar.f10618b);
            }
        }
        return arrayList;
    }
}
