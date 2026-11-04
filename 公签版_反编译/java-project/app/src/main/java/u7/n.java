package u7;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class n extends AbstractCollection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15503a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f15504b;

    public /* synthetic */ n(int i10, Serializable serializable) {
        this.f15503a = i10;
        this.f15504b = serializable;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        switch (this.f15503a) {
            case 0:
                ((u0) this.f15504b).d();
                break;
            case 1:
                ((u) this.f15504b).clear();
                break;
            default:
                ((AbstractMap) this.f15504b).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        switch (this.f15503a) {
            case 0:
                Iterator it = ((u0) this.f15504b).a().values().iterator();
                while (it.hasNext()) {
                    if (((Collection) it.next()).contains(obj)) {
                        return true;
                    }
                }
                return false;
            case 1:
            default:
                return super.contains(obj);
            case 2:
                return ((AbstractMap) this.f15504b).containsValue(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        switch (this.f15503a) {
            case 2:
                return ((AbstractMap) this.f15504b).isEmpty();
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f15503a) {
            case 0:
                return new a((u0) this.f15504b);
            case 1:
                u uVar = (u) this.f15504b;
                Map mapA = uVar.a();
                return mapA != null ? mapA.values().iterator() : new r(uVar, 2);
            default:
                return new q0(((AbstractMap) this.f15504b).entrySet().iterator());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        switch (this.f15503a) {
            case 2:
                try {
                    return super.remove(obj);
                } catch (UnsupportedOperationException unused) {
                    AbstractMap abstractMap = (AbstractMap) this.f15504b;
                    for (Map.Entry entry : abstractMap.entrySet()) {
                        if (s1.g.r(obj, entry.getValue())) {
                            abstractMap.remove(entry.getKey());
                            return true;
                        }
                    }
                    return false;
                }
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection collection) {
        switch (this.f15503a) {
            case 2:
                try {
                    collection.getClass();
                    return super.removeAll(collection);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    AbstractMap abstractMap = (AbstractMap) this.f15504b;
                    for (Map.Entry entry : abstractMap.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return abstractMap.keySet().removeAll(hashSet);
                }
            default:
                return super.removeAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection collection) {
        switch (this.f15503a) {
            case 2:
                try {
                    collection.getClass();
                    return super.retainAll(collection);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    AbstractMap abstractMap = (AbstractMap) this.f15504b;
                    for (Map.Entry entry : abstractMap.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return abstractMap.keySet().retainAll(hashSet);
                }
            default:
                return super.retainAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        switch (this.f15503a) {
            case 0:
                return ((u0) this.f15504b).f15541e;
            case 1:
                return ((u) this.f15504b).size();
            default:
                return ((AbstractMap) this.f15504b).size();
        }
    }

    public n(AbstractMap abstractMap) {
        this.f15503a = 2;
        this.f15504b = abstractMap;
    }
}
