package a0;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class f implements Collection, Set, ve.a {

    /* renamed from: a, reason: collision with root package name */
    public int[] f20a = b0.a.f2491a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f21b = b0.a.f2492b;

    /* renamed from: c, reason: collision with root package name */
    public int f22c;

    public f(int i10) {
        if (i10 > 0) {
            l.a(this, i10);
        }
    }

    public final Object a(int i10) {
        int i11 = this.f22c;
        Object[] objArr = this.f21b;
        Object obj = objArr[i10];
        if (i11 <= 1) {
            clear();
        } else {
            int i12 = i11 - 1;
            int[] iArr = this.f20a;
            if (iArr.length <= 8 || i11 >= iArr.length / 3) {
                if (i10 < i12) {
                    int i13 = i10 + 1;
                    je.i.e0(i10, i13, iArr, iArr, i11);
                    Object[] objArr2 = this.f21b;
                    je.i.d0(i10, i13, i11, objArr2, objArr2);
                }
                this.f21b[i12] = null;
            } else {
                l.a(this, i11 > 8 ? i11 + (i11 >> 1) : 8);
                if (i10 > 0) {
                    je.i.g0(0, i10, iArr, this.f20a, 6);
                    je.i.h0(objArr, this.f21b, 0, 0, i10, 6);
                }
                if (i10 < i12) {
                    int i14 = i10 + 1;
                    je.i.e0(i10, i14, iArr, this.f20a, i11);
                    je.i.d0(i10, i14, i11, objArr, this.f21b);
                }
            }
            if (i11 != this.f22c) {
                throw new ConcurrentModificationException();
            }
            this.f22c = i12;
        }
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i10;
        int iB;
        int i11 = this.f22c;
        if (obj == null) {
            iB = l.b(this, null, 0);
            i10 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i10 = iHashCode;
            iB = l.b(this, obj, iHashCode);
        }
        if (iB >= 0) {
            return false;
        }
        int i12 = iB ^ (-1);
        int[] iArr = this.f20a;
        if (i11 >= iArr.length) {
            int i13 = 8;
            if (i11 >= 8) {
                i13 = (i11 >> 1) + i11;
            } else if (i11 < 4) {
                i13 = 4;
            }
            Object[] objArr = this.f21b;
            l.a(this, i13);
            if (i11 != this.f22c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f20a;
            if (iArr2.length != 0) {
                je.i.g0(0, iArr.length, iArr, iArr2, 6);
                je.i.h0(objArr, this.f21b, 0, 0, objArr.length, 6);
            }
        }
        if (i12 < i11) {
            int[] iArr3 = this.f20a;
            int i14 = i12 + 1;
            je.i.e0(i14, i12, iArr3, iArr3, i11);
            Object[] objArr2 = this.f21b;
            je.i.d0(i14, i12, i11, objArr2, objArr2);
        }
        int i15 = this.f22c;
        if (i11 == i15) {
            int[] iArr4 = this.f20a;
            if (i12 < iArr4.length) {
                iArr4[i12] = i10;
                this.f21b[i12] = obj;
                this.f22c = i15 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        ue.d.e(collection, "elements");
        int size = collection.size() + this.f22c;
        int i10 = this.f22c;
        int[] iArr = this.f20a;
        boolean zAdd = false;
        if (iArr.length < size) {
            Object[] objArr = this.f21b;
            l.a(this, size);
            int i11 = this.f22c;
            if (i11 > 0) {
                je.i.g0(0, i11, iArr, this.f20a, 6);
                je.i.h0(objArr, this.f21b, 0, 0, this.f22c, 6);
            }
        }
        if (this.f22c != i10) {
            throw new ConcurrentModificationException();
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.f22c != 0) {
            this.f20a = b0.a.f2491a;
            this.f21b = b0.a.f2492b;
            this.f22c = 0;
        }
        if (this.f22c != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? l.b(this, null, 0) : l.b(this, obj, obj.hashCode())) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        ue.d.e(collection, "elements");
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Set) && this.f22c == ((Set) obj).size()) {
            try {
                int i10 = this.f22c;
                for (int i11 = 0; i11 < i10; i11++) {
                    if (((Set) obj).contains(this.f21b[i11])) {
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f20a;
        int i10 = this.f22c;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12];
        }
        return i11;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f22c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new a(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iB = obj == null ? l.b(this, null, 0) : l.b(this, obj, obj.hashCode());
        if (iB < 0) {
            return false;
        }
        a(iB);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        ue.d.e(collection, "elements");
        Iterator it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        ue.d.e(collection, "elements");
        boolean z = false;
        for (int i10 = this.f22c - 1; -1 < i10; i10--) {
            if (!collection.contains(this.f21b[i10])) {
                a(i10);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f22c;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return je.i.i0(0, this.f22c, this.f21b);
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f22c * 14);
        sb2.append('{');
        int i10 = this.f22c;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            Object obj = this.f21b[i11];
            if (obj != this) {
                sb2.append(obj);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        ue.d.d(string, "toString(...)");
        return string;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        ue.d.e(objArr, "array");
        int i10 = this.f22c;
        if (objArr.length < i10) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i10);
        } else if (objArr.length > i10) {
            objArr[i10] = null;
        }
        je.i.d0(0, 0, this.f22c, this.f21b, objArr);
        return objArr;
    }
}
