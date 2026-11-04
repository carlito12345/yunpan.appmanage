package w1;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import u7.q0;

/* loaded from: classes.dex */
public final class l implements Map {

    /* renamed from: a, reason: collision with root package name */
    public final Map f17385a;

    public l(Map map) {
        this.f17385a = map;
    }

    @Override // java.util.Map
    public final void clear() {
        this.f17385a.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return obj != null && this.f17385a.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        q0 q0Var = new q0(entrySet().iterator());
        if (obj == null) {
            while (q0Var.hasNext()) {
                if (q0Var.next() == null) {
                    return true;
                }
            }
        } else {
            while (q0Var.hasNext()) {
                if (obj.equals(q0Var.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return u7.q.h(this.f17385a.entrySet(), new e3.d(3));
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return obj != null && u7.q.f(this, obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.f17385a.get(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return u7.q.j(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        Map map = this.f17385a;
        if (map.isEmpty()) {
            return true;
        }
        return map.size() == 1 && map.containsKey(null);
    }

    @Override // java.util.Map
    public final Set keySet() {
        return u7.q.h(this.f17385a.keySet(), new e3.d(4));
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return this.f17385a.put(obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        this.f17385a.putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return this.f17385a.remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        Map map = this.f17385a;
        return map.size() - (map.containsKey(null) ? 1 : 0);
    }

    public final String toString() {
        return this.f17385a.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        return this.f17385a.values();
    }
}
