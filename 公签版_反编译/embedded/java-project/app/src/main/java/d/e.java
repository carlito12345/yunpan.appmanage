package d;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class e implements Set {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f76a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f77b;

    public /* synthetic */ e(a aVar, int i) {
        this.f76a = i;
        this.f77b = aVar;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.f76a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.f76a) {
            case 0:
                a aVar = this.f77b;
                int i = aVar.f62d.f67c;
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    aVar.f62d.put(entry.getKey(), entry.getValue());
                }
                return i != aVar.f62d.f67c;
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        switch (this.f76a) {
            case 0:
                this.f77b.f62d.clear();
                break;
            default:
                this.f77b.f62d.clear();
                break;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.f76a) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                a aVar = this.f77b;
                int iE = aVar.f62d.e(key);
                if (iE < 0) {
                    return false;
                }
                Object objA = aVar.a(iE, 1);
                Object value = entry.getValue();
                return objA == value || (objA != null && objA.equals(value));
            default:
                return this.f77b.f62d.e(obj) >= 0;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        switch (this.f76a) {
            case 0:
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    if (!contains(it.next())) {
                        break;
                    }
                }
                break;
            default:
                b bVar = this.f77b.f62d;
                Iterator it2 = collection.iterator();
                while (it2.hasNext()) {
                    if (!bVar.containsKey(it2.next())) {
                        break;
                    }
                }
                break;
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        switch (this.f76a) {
        }
        return a.c(this, obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        switch (this.f76a) {
            case 0:
                a aVar = this.f77b;
                int iHashCode = 0;
                for (int i = aVar.f62d.f67c - 1; i >= 0; i--) {
                    Object objA = aVar.a(i, 0);
                    Object objA2 = aVar.a(i, 1);
                    iHashCode += (objA == null ? 0 : objA.hashCode()) ^ (objA2 == null ? 0 : objA2.hashCode());
                }
                return iHashCode;
            default:
                a aVar2 = this.f77b;
                int iHashCode2 = 0;
                for (int i2 = aVar2.f62d.f67c - 1; i2 >= 0; i2--) {
                    Object objA3 = aVar2.a(i2, 0);
                    iHashCode2 += objA3 == null ? 0 : objA3.hashCode();
                }
                return iHashCode2;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        switch (this.f76a) {
            case 0:
                if (this.f77b.f62d.f67c == 0) {
                }
                break;
            default:
                if (this.f77b.f62d.f67c == 0) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f76a) {
            case 0:
                return new f(this.f77b);
            default:
                return new d(this.f77b, 0);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.f76a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                a aVar = this.f77b;
                int iE = aVar.f62d.e(obj);
                if (iE < 0) {
                    return false;
                }
                aVar.b(iE);
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.f76a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                b bVar = this.f77b.f62d;
                int size = bVar.size();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    bVar.remove(it.next());
                }
                return size != bVar.size();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.f76a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                b bVar = this.f77b.f62d;
                int size = bVar.size();
                Iterator it = bVar.keySet().iterator();
                while (it.hasNext()) {
                    if (!collection.contains(it.next())) {
                        it.remove();
                    }
                }
                return size != bVar.size();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        switch (this.f76a) {
        }
        return this.f77b.f62d.f67c;
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        switch (this.f76a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                a aVar = this.f77b;
                int i = aVar.f62d.f67c;
                Object[] objArr = new Object[i];
                for (int i2 = 0; i2 < i; i2++) {
                    objArr[i2] = aVar.a(i2, 0);
                }
                return objArr;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.f76a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return this.f77b.d(objArr, 0);
        }
    }
}
