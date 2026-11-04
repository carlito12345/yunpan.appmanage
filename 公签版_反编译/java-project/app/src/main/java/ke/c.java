package ke;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class c extends je.e implements RandomAccess, Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final c f10244d;

    /* renamed from: a, reason: collision with root package name */
    public Object[] f10245a;

    /* renamed from: b, reason: collision with root package name */
    public int f10246b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10247c;

    static {
        c cVar = new c(0);
        cVar.f10247c = true;
        f10244d = cVar;
    }

    public c(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.");
        }
        this.f10245a = new Object[i10];
    }

    @Override // je.e
    public final int a() {
        return this.f10246b;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        g();
        int i10 = this.f10246b;
        ((AbstractList) this).modCount++;
        h(i10, 1);
        this.f10245a[i10] = obj;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        ue.d.e(collection, "elements");
        g();
        int size = collection.size();
        d(this.f10246b, collection, size);
        return size > 0;
    }

    @Override // je.e
    public final Object b(int i10) {
        g();
        int i11 = this.f10246b;
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        return i(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        g();
        j(0, this.f10246b);
    }

    public final void d(int i10, Collection collection, int i11) {
        ((AbstractList) this).modCount++;
        h(i10, i11);
        Iterator it = collection.iterator();
        for (int i12 = 0; i12 < i11; i12++) {
            this.f10245a[i10 + i12] = it.next();
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof List)) {
                return false;
            }
            if (!com.bumptech.glide.c.b(this.f10245a, 0, this.f10246b, (List) obj)) {
                return false;
            }
        }
        return true;
    }

    public final void f(int i10, Object obj) {
        ((AbstractList) this).modCount++;
        h(i10, 1);
        this.f10245a[i10] = obj;
    }

    public final void g() {
        if (this.f10247c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        int i11 = this.f10246b;
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        return this.f10245a[i10];
    }

    public final void h(int i10, int i11) {
        int i12 = this.f10246b + i11;
        if (i12 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.f10245a;
        if (i12 > objArr.length) {
            int length = objArr.length;
            int i13 = length + (length >> 1);
            if (i13 - i12 < 0) {
                i13 = i12;
            }
            if (i13 - 2147483639 > 0) {
                i13 = i12 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            Object[] objArrCopyOf = Arrays.copyOf(objArr, i13);
            ue.d.d(objArrCopyOf, "copyOf(...)");
            this.f10245a = objArrCopyOf;
        }
        Object[] objArr2 = this.f10245a;
        je.i.d0(i10 + i11, i10, this.f10246b, objArr2, objArr2);
        this.f10246b += i11;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.f10245a;
        int i10 = this.f10246b;
        int iHashCode = 1;
        for (int i11 = 0; i11 < i10; i11++) {
            Object obj = objArr[i11];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final Object i(int i10) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.f10245a;
        Object obj = objArr[i10];
        je.i.d0(i10, i10 + 1, this.f10246b, objArr, objArr);
        Object[] objArr2 = this.f10245a;
        int i11 = this.f10246b - 1;
        ue.d.e(objArr2, "<this>");
        objArr2[i11] = null;
        this.f10246b--;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i10 = 0; i10 < this.f10246b; i10++) {
            if (ue.d.a(this.f10245a[i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f10246b == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final void j(int i10, int i11) {
        if (i11 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.f10245a;
        je.i.d0(i10, i10 + i11, this.f10246b, objArr, objArr);
        Object[] objArr2 = this.f10245a;
        int i12 = this.f10246b;
        com.bumptech.glide.c.Z(i12 - i11, i12, objArr2);
        this.f10246b -= i11;
    }

    public final int l(int i10, int i11, Collection collection, boolean z) {
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            int i14 = i10 + i12;
            if (collection.contains(this.f10245a[i14]) == z) {
                Object[] objArr = this.f10245a;
                i12++;
                objArr[i13 + i10] = objArr[i14];
                i13++;
            } else {
                i12++;
            }
        }
        int i15 = i11 - i13;
        Object[] objArr2 = this.f10245a;
        je.i.d0(i10 + i13, i11 + i10, this.f10246b, objArr2, objArr2);
        Object[] objArr3 = this.f10245a;
        int i16 = this.f10246b;
        com.bumptech.glide.c.Z(i16 - i15, i16, objArr3);
        if (i15 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f10246b -= i15;
        return i15;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i10 = this.f10246b - 1; i10 >= 0; i10--) {
            if (ue.d.a(this.f10245a[i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        g();
        int iIndexOf = indexOf(obj);
        if (iIndexOf >= 0) {
            b(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        ue.d.e(collection, "elements");
        g();
        return l(0, this.f10246b, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        ue.d.e(collection, "elements");
        g();
        return l(0, this.f10246b, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        g();
        int i11 = this.f10246b;
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        Object[] objArr = this.f10245a;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i10, int i11) {
        nh.b.i(i10, i11, this.f10246b);
        return new b(this.f10245a, i10, i11 - i10, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        ue.d.e(objArr, "array");
        int length = objArr.length;
        int i10 = this.f10246b;
        if (length < i10) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.f10245a, 0, i10, objArr.getClass());
            ue.d.d(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        je.i.d0(0, 0, i10, this.f10245a, objArr);
        int i11 = this.f10246b;
        if (i11 < objArr.length) {
            objArr[i11] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return com.bumptech.glide.c.c(this.f10245a, 0, this.f10246b, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i10) {
        int i11 = this.f10246b;
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        return new a(this, i10);
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection collection) {
        ue.d.e(collection, "elements");
        g();
        int i11 = this.f10246b;
        if (i10 >= 0 && i10 <= i11) {
            int size = collection.size();
            d(i10, collection, size);
            return size > 0;
        }
        throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        g();
        int i11 = this.f10246b;
        if (i10 >= 0 && i10 <= i11) {
            ((AbstractList) this).modCount++;
            h(i10, 1);
            this.f10245a[i10] = obj;
            return;
        }
        throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return je.i.i0(0, this.f10246b, this.f10245a);
    }
}
