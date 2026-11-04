package d;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g implements Collection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f82a;

    public g(a aVar) {
        this.f82a = aVar;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f82a.f62d.clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.f82a.f62d.g(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f82a.f62d.f67c == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new d(this.f82a, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        a aVar = this.f82a;
        int iG = aVar.f62d.g(obj);
        if (iG < 0) {
            return false;
        }
        aVar.b(iG);
        return true;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        a aVar = this.f82a;
        int i = aVar.f62d.f67c;
        int i2 = 0;
        boolean z = false;
        while (i2 < i) {
            if (collection.contains(aVar.a(i2, 1))) {
                aVar.b(i2);
                i2--;
                i--;
                z = true;
            }
            i2++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        a aVar = this.f82a;
        int i = aVar.f62d.f67c;
        int i2 = 0;
        boolean z = false;
        while (i2 < i) {
            if (!collection.contains(aVar.a(i2, 1))) {
                aVar.b(i2);
                i2--;
                i--;
                z = true;
            }
            i2++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f82a.f62d.f67c;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        a aVar = this.f82a;
        int i = aVar.f62d.f67c;
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = aVar.a(i2, 1);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.f82a.d(objArr, 1);
    }
}
