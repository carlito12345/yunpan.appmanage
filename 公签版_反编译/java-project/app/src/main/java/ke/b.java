package ke;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class b extends je.e implements RandomAccess, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f10239a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10240b;

    /* renamed from: c, reason: collision with root package name */
    public int f10241c;

    /* renamed from: d, reason: collision with root package name */
    public final b f10242d;

    /* renamed from: e, reason: collision with root package name */
    public final c f10243e;

    public b(Object[] objArr, int i10, int i11, b bVar, c cVar) {
        ue.d.e(objArr, "backing");
        ue.d.e(cVar, "root");
        this.f10239a = objArr;
        this.f10240b = i10;
        this.f10241c = i11;
        this.f10242d = bVar;
        this.f10243e = cVar;
        ((AbstractList) this).modCount = ((AbstractList) cVar).modCount;
    }

    @Override // je.e
    public final int a() {
        g();
        return this.f10241c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        h();
        g();
        f(this.f10240b + this.f10241c, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        ue.d.e(collection, "elements");
        h();
        g();
        int size = collection.size();
        d(this.f10240b + this.f10241c, collection, size);
        return size > 0;
    }

    @Override // je.e
    public final Object b(int i10) {
        h();
        g();
        int i11 = this.f10241c;
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        return i(this.f10240b + i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        h();
        g();
        j(this.f10240b, this.f10241c);
    }

    public final void d(int i10, Collection collection, int i11) {
        ((AbstractList) this).modCount++;
        c cVar = this.f10243e;
        b bVar = this.f10242d;
        if (bVar != null) {
            bVar.d(i10, collection, i11);
        } else {
            c cVar2 = c.f10244d;
            cVar.d(i10, collection, i11);
        }
        this.f10239a = cVar.f10245a;
        this.f10241c += i11;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        g();
        if (obj != this) {
            if (obj instanceof List) {
                if (com.bumptech.glide.c.b(this.f10239a, this.f10240b, this.f10241c, (List) obj)) {
                }
            }
            return false;
        }
        return true;
    }

    public final void f(int i10, Object obj) {
        ((AbstractList) this).modCount++;
        c cVar = this.f10243e;
        b bVar = this.f10242d;
        if (bVar != null) {
            bVar.f(i10, obj);
        } else {
            c cVar2 = c.f10244d;
            cVar.f(i10, obj);
        }
        this.f10239a = cVar.f10245a;
        this.f10241c++;
    }

    public final void g() {
        if (((AbstractList) this.f10243e).modCount != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        g();
        int i11 = this.f10241c;
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        return this.f10239a[this.f10240b + i10];
    }

    public final void h() {
        if (this.f10243e.f10247c) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        g();
        Object[] objArr = this.f10239a;
        int i10 = this.f10241c;
        int iHashCode = 1;
        for (int i11 = 0; i11 < i10; i11++) {
            Object obj = objArr[this.f10240b + i11];
            iHashCode = (iHashCode * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return iHashCode;
    }

    public final Object i(int i10) {
        Object objI;
        ((AbstractList) this).modCount++;
        b bVar = this.f10242d;
        if (bVar != null) {
            objI = bVar.i(i10);
        } else {
            c cVar = c.f10244d;
            objI = this.f10243e.i(i10);
        }
        this.f10241c--;
        return objI;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        g();
        for (int i10 = 0; i10 < this.f10241c; i10++) {
            if (ue.d.a(this.f10239a[this.f10240b + i10], obj)) {
                return i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        g();
        return this.f10241c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final void j(int i10, int i11) {
        if (i11 > 0) {
            ((AbstractList) this).modCount++;
        }
        b bVar = this.f10242d;
        if (bVar != null) {
            bVar.j(i10, i11);
        } else {
            c cVar = c.f10244d;
            this.f10243e.j(i10, i11);
        }
        this.f10241c -= i11;
    }

    public final int l(int i10, int i11, Collection collection, boolean z) {
        int iL;
        b bVar = this.f10242d;
        if (bVar != null) {
            iL = bVar.l(i10, i11, collection, z);
        } else {
            c cVar = c.f10244d;
            iL = this.f10243e.l(i10, i11, collection, z);
        }
        if (iL > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f10241c -= iL;
        return iL;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        g();
        for (int i10 = this.f10241c - 1; i10 >= 0; i10--) {
            if (ue.d.a(this.f10239a[this.f10240b + i10], obj)) {
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
        h();
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
        h();
        g();
        return l(this.f10240b, this.f10241c, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        ue.d.e(collection, "elements");
        h();
        g();
        return l(this.f10240b, this.f10241c, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        h();
        g();
        int i11 = this.f10241c;
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        Object[] objArr = this.f10239a;
        int i12 = this.f10240b;
        Object obj2 = objArr[i12 + i10];
        objArr[i12 + i10] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i10, int i11) {
        nh.b.i(i10, i11, this.f10241c);
        return new b(this.f10239a, this.f10240b + i10, i11 - i10, this, this.f10243e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        ue.d.e(objArr, "array");
        g();
        int length = objArr.length;
        int i10 = this.f10241c;
        int i11 = this.f10240b;
        if (length < i10) {
            Object[] objArrCopyOfRange = Arrays.copyOfRange(this.f10239a, i11, i10 + i11, objArr.getClass());
            ue.d.d(objArrCopyOfRange, "copyOfRange(...)");
            return objArrCopyOfRange;
        }
        je.i.d0(0, i11, i10 + i11, this.f10239a, objArr);
        int i12 = this.f10241c;
        if (i12 < objArr.length) {
            objArr[i12] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        g();
        return com.bumptech.glide.c.c(this.f10239a, this.f10240b, this.f10241c, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i10) {
        g();
        int i11 = this.f10241c;
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
        }
        return new a(this, i10);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        h();
        g();
        int i11 = this.f10241c;
        if (i10 >= 0 && i10 <= i11) {
            f(this.f10240b + i10, obj);
            return;
        }
        throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i10, Collection collection) {
        ue.d.e(collection, "elements");
        h();
        g();
        int i11 = this.f10241c;
        if (i10 >= 0 && i10 <= i11) {
            int size = collection.size();
            d(this.f10240b + i10, collection, size);
            return size > 0;
        }
        throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, i11, ", size: "));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        g();
        Object[] objArr = this.f10239a;
        int i10 = this.f10241c;
        int i11 = this.f10240b;
        return je.i.i0(i11, i10 + i11, objArr);
    }
}
