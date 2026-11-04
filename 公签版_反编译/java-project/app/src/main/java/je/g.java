package je;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g implements Collection, ve.a {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f9863a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9864b;

    public g(Object[] objArr, boolean z) {
        this.f9863a = objArr;
        this.f9864b = z;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        int i10;
        Object[] objArr = this.f9863a;
        ue.d.e(objArr, "<this>");
        if (obj == null) {
            int length = objArr.length;
            i10 = 0;
            while (i10 < length) {
                if (objArr[i10] == null) {
                    break;
                }
                i10++;
            }
            i10 = -1;
        } else {
            int length2 = objArr.length;
            for (int i11 = 0; i11 < length2; i11++) {
                if (obj.equals(objArr[i11])) {
                    i10 = i11;
                    break;
                }
            }
            i10 = -1;
        }
        return i10 >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        ue.d.e(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
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
        return this.f9863a.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new a(this.f9863a);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f9863a.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        Object[] objArr = this.f9863a;
        ue.d.e(objArr, "<this>");
        if (this.f9864b && objArr.getClass().equals(Object[].class)) {
            return objArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        ue.d.d(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        ue.d.e(objArr, "array");
        return ue.d.i(this, objArr);
    }
}
