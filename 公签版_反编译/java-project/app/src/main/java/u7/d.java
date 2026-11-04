package u7;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;

/* loaded from: classes.dex */
public class d extends AbstractMap {

    /* renamed from: a, reason: collision with root package name */
    public transient b f15443a;

    /* renamed from: b, reason: collision with root package name */
    public transient n f15444b;

    /* renamed from: c, reason: collision with root package name */
    public final transient Map f15445c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ u0 f15446d;

    public d(u0 u0Var, Map map) {
        this.f15446d = u0Var;
        this.f15445c = map;
    }

    public final c0 a(Map.Entry entry) {
        Object key = entry.getKey();
        Collection collection = (Collection) entry.getValue();
        u0 u0Var = this.f15446d;
        List list = (List) collection;
        return new c0(key, list instanceof RandomAccess ? new h(u0Var, key, list, null) : new l(u0Var, key, list, null));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        u0 u0Var = this.f15446d;
        if (this.f15445c == u0Var.f15540d) {
            u0Var.d();
            return;
        }
        c cVar = new c(this);
        while (cVar.hasNext()) {
            cVar.next();
            cVar.remove();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map map = this.f15445c;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        b bVar = this.f15443a;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b(this);
        this.f15443a = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return this == obj || this.f15445c.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Map map = this.f15445c;
        map.getClass();
        try {
            obj2 = map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return null;
        }
        u0 u0Var = this.f15446d;
        List list = (List) collection;
        return list instanceof RandomAccess ? new h(u0Var, obj, list, null) : new l(u0Var, obj, list, null);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.f15445c.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        u0 u0Var = this.f15446d;
        Set set = u0Var.f15508a;
        if (set != null) {
            return set;
        }
        Set setC = u0Var.c();
        u0Var.f15508a = setC;
        return setC;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Collection collection = (Collection) this.f15445c.remove(obj);
        if (collection == null) {
            return null;
        }
        u0 u0Var = this.f15446d;
        List list = (List) u0Var.f15542f.get();
        list.addAll(collection);
        u0Var.f15541e -= collection.size();
        collection.clear();
        return list;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f15445c.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.f15445c.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        n nVar = this.f15444b;
        if (nVar != null) {
            return nVar;
        }
        n nVar2 = new n(this);
        this.f15444b = nVar2;
        return nVar2;
    }
}
