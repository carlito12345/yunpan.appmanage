package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
class ReflectiveGenericLifecycleObserver implements r {

    /* renamed from: a, reason: collision with root package name */
    public final s f1749a;

    /* renamed from: b, reason: collision with root package name */
    public final b f1750b;

    public ReflectiveGenericLifecycleObserver(s sVar) {
        this.f1749a = sVar;
        d dVar = d.f1759c;
        Class<?> cls = sVar.getClass();
        b bVar = (b) dVar.f1760a.get(cls);
        this.f1750b = bVar == null ? dVar.a(cls, null) : bVar;
    }

    @Override // androidx.lifecycle.r
    public final void a(t tVar, m mVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        HashMap map = this.f1750b.f1755a;
        List list = (List) map.get(mVar);
        s sVar = this.f1749a;
        b.a(list, tVar, mVar, sVar);
        b.a((List) map.get(m.ON_ANY), tVar, mVar, sVar);
    }
}
