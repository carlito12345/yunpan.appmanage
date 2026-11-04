package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public n f1814a;

    /* renamed from: b, reason: collision with root package name */
    public final r f1815b;

    public u(s sVar, n nVar) {
        r reflectiveGenericLifecycleObserver;
        HashMap map = w.f1825a;
        boolean z = sVar instanceof r;
        boolean z4 = sVar instanceof e;
        if (z && z4) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((e) sVar, (r) sVar);
        } else if (z4) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((e) sVar, null);
        } else if (z) {
            reflectiveGenericLifecycleObserver = (r) sVar;
        } else {
            Class<?> cls = sVar.getClass();
            if (w.b(cls) == 2) {
                Object obj = w.f1826b.get(cls);
                ue.d.b(obj);
                List list = (List) obj;
                if (list.size() == 1) {
                    w.a((Constructor) list.get(0), sVar);
                    throw null;
                }
                int size = list.size();
                h[] hVarArr = new h[size];
                if (size > 0) {
                    w.a((Constructor) list.get(0), sVar);
                    throw null;
                }
                reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(hVarArr);
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(sVar);
            }
        }
        this.f1815b = reflectiveGenericLifecycleObserver;
        this.f1814a = nVar;
    }

    public final void a(t tVar, m mVar) {
        n nVarA = mVar.a();
        n nVar = this.f1814a;
        ue.d.e(nVar, "state1");
        if (nVarA.compareTo(nVar) < 0) {
            nVar = nVarA;
        }
        this.f1814a = nVar;
        this.f1815b.a(tVar, mVar);
        this.f1814a = nVarA;
    }
}
