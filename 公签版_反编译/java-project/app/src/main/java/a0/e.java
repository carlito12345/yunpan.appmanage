package a0;

import j$.util.Map;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes.dex */
public class e extends t implements Map, j$.util.Map {

    /* renamed from: d, reason: collision with root package name */
    public b8.l f17d;

    /* renamed from: e, reason: collision with root package name */
    public b f18e;

    /* renamed from: f, reason: collision with root package name */
    public d f19f;

    public e() {
        super(0);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        b8.l lVar = this.f17d;
        if (lVar != null) {
            return lVar;
        }
        b8.l lVar2 = new b8.l(this, 2);
        this.f17d = lVar2;
        return lVar2;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    public final boolean k(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Map
    public final Set keySet() {
        b bVar = this.f18e;
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b(this);
        this.f18e = bVar2;
        return bVar2;
    }

    public final boolean l(Collection collection) {
        int i10 = this.f65c;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i10 != this.f65c;
    }

    public final boolean m(Collection collection) {
        int i10 = this.f65c;
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            if (!collection.contains(f(i11))) {
                h(i11);
            }
        }
        return i10 != this.f65c;
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        b(map.size() + this.f65c);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    @Override // java.util.Map
    public final Collection values() {
        d dVar = this.f19f;
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d(this);
        this.f19f = dVar2;
        return dVar2;
    }

    public e(e eVar) {
        super(0);
        g(eVar);
    }
}
