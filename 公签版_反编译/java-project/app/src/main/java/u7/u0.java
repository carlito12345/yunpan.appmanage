package u7;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.SortedMap;

/* loaded from: classes.dex */
public final class u0 extends o implements Serializable {

    /* renamed from: d, reason: collision with root package name */
    public final transient Map f15540d;

    /* renamed from: e, reason: collision with root package name */
    public transient int f15541e;

    /* renamed from: f, reason: collision with root package name */
    public final transient t0 f15542f;

    public u0(Map map, t0 t0Var) {
        a9.o.k(map.isEmpty());
        this.f15540d = map;
        this.f15542f = t0Var;
    }

    @Override // u7.o
    public final Map b() {
        Map map = this.f15540d;
        return map instanceof NavigableMap ? new f(this, (NavigableMap) map) : map instanceof SortedMap ? new i(this, (SortedMap) map) : new d(this, map);
    }

    @Override // u7.o
    public final Set c() {
        Map map = this.f15540d;
        return map instanceof NavigableMap ? new g(this, (NavigableMap) map) : map instanceof SortedMap ? new j(this, (SortedMap) map) : new e(this, map);
    }

    public final void d() {
        Map map = this.f15540d;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        this.f15541e = 0;
    }
}
