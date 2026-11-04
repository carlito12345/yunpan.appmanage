package u7;

import j$.util.List;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* loaded from: classes.dex */
public abstract class g0 extends b0 implements List, RandomAccess, j$.util.List {

    /* renamed from: b, reason: collision with root package name */
    public static final e0 f15471b = new e0(y0.f15549e, 0);

    public static y0 i(int i10, Object[] objArr) {
        return i10 == 0 ? y0.f15549e : new y0(i10, objArr);
    }

    public static d0 j() {
        return new d0();
    }

    public static d0 l(int i10) {
        q.c(i10, "expectedSize");
        return new d0(i10);
    }

    public static g0 m(Collection collection) {
        if (!(collection instanceof b0)) {
            Object[] array = collection.toArray();
            q.b(array.length, array);
            return i(array.length, array);
        }
        g0 g0VarA = ((b0) collection).a();
        if (!g0VarA.g()) {
            return g0VarA;
        }
        Object[] array2 = g0VarA.toArray(b0.f15431a);
        return i(array2.length, array2);
    }

    public static y0 n(Object[] objArr) {
        if (objArr.length == 0) {
            return y0.f15549e;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        q.b(objArr2.length, objArr2);
        return i(objArr2.length, objArr2);
    }

    public static y0 p() {
        return y0.f15549e;
    }

    public static y0 q(Long l, Long l8, Long l10, Long l11, Long l12) {
        Object[] objArr = {l, l8, l10, l11, l12};
        q.b(5, objArr);
        return i(5, objArr);
    }

    public static y0 r(Object obj) {
        Object[] objArr = {obj};
        q.b(1, objArr);
        return i(1, objArr);
    }

    public static y0 s(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        q.b(2, objArr);
        return i(2, objArr);
    }

    public static y0 t(x0 x0Var, List list) {
        x0Var.getClass();
        if (!(list instanceof Collection)) {
            list = q.m(list.iterator());
        }
        Object[] array = list.toArray();
        q.b(array.length, array);
        Arrays.sort(array, x0Var);
        return i(array.length, array);
    }

    @Override // java.util.List
    public final void add(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // u7.b0
    public int b(int i10, Object[] objArr) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }

    @Override // u7.b0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i10 = 0; i10 < size; i10++) {
                        if (s1.g.r(get(i10), list.get(i10))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && s1.g.r(it.next(), it2.next())) {
                    }
                }
                return !it2.hasNext();
            }
        }
        return false;
    }

    @Override // u7.b0
    /* renamed from: h */
    public final o1 iterator() {
        return listIterator(0);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i10 = 0; i10 < size; i10++) {
            iHashCode = (iHashCode * 31) + get(i10).hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (obj.equals(get(i10))) {
                return i10;
            }
        }
        return -1;
    }

    @Override // u7.b0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public final e0 listIterator(int i10) {
        a9.o.p(i10, size());
        return isEmpty() ? f15471b : new e0(this, i10);
    }

    @Override // java.util.List
    public final Object remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
        List.CC.$default$replaceAll(this, unaryOperator);
    }

    @Override // java.util.List
    public final Object set(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final /* synthetic */ void sort(Comparator comparator) {
        List.CC.$default$sort(this, comparator);
    }

    @Override // java.util.List
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public g0 subList(int i10, int i11) {
        a9.o.q(i10, i11, size());
        int i12 = i11 - i10;
        return i12 == size() ? this : i12 == 0 ? y0.f15549e : new f0(this, i10, i12);
    }

    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // u7.b0
    public final g0 a() {
        return this;
    }
}
