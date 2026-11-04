package x7;

import a9.o;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class b extends AbstractList implements RandomAccess, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f18187a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18188b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18189c;

    public b(int i10, int i11, int[] iArr) {
        this.f18187a = iArr;
        this.f18188b = i10;
        this.f18189c = i11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (obj instanceof Integer) {
            int iIntValue = ((Integer) obj).intValue();
            int i10 = this.f18188b;
            while (true) {
                if (i10 >= this.f18189c) {
                    i10 = -1;
                    break;
                }
                if (this.f18187a[i10] == iIntValue) {
                    break;
                }
                i10++;
            }
            if (i10 != -1) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return super.equals(obj);
        }
        b bVar = (b) obj;
        int size = size();
        if (bVar.size() != size) {
            return false;
        }
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f18187a[this.f18188b + i10] != bVar.f18187a[bVar.f18188b + i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        o.m(i10, size());
        return Integer.valueOf(this.f18187a[this.f18188b + i10]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = this.f18188b; i11 < this.f18189c; i11++) {
            i10 = (i10 * 31) + this.f18187a[i11];
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Integer) {
            int iIntValue = ((Integer) obj).intValue();
            int i10 = this.f18188b;
            int i11 = i10;
            while (true) {
                if (i11 >= this.f18189c) {
                    i11 = -1;
                    break;
                }
                if (this.f18187a[i11] == iIntValue) {
                    break;
                }
                i11++;
            }
            if (i11 >= 0) {
                return i11 - i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int i10;
        if (obj instanceof Integer) {
            int iIntValue = ((Integer) obj).intValue();
            int i11 = this.f18189c;
            while (true) {
                i11--;
                i10 = this.f18188b;
                if (i11 < i10) {
                    i11 = -1;
                    break;
                }
                if (this.f18187a[i11] == iIntValue) {
                    break;
                }
            }
            if (i11 >= 0) {
                return i11 - i10;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        Integer num = (Integer) obj;
        o.m(i10, size());
        int i11 = this.f18188b + i10;
        int[] iArr = this.f18187a;
        int i12 = iArr[i11];
        num.getClass();
        iArr[i11] = num.intValue();
        return Integer.valueOf(i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18189c - this.f18188b;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i10, int i11) {
        o.q(i10, i11, size());
        if (i10 == i11) {
            return Collections.emptyList();
        }
        int i12 = this.f18188b;
        return new b(i10 + i12, i12 + i11, this.f18187a);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        StringBuilder sb2 = new StringBuilder(size() * 5);
        sb2.append('[');
        int[] iArr = this.f18187a;
        int i10 = this.f18188b;
        sb2.append(iArr[i10]);
        while (true) {
            i10++;
            if (i10 >= this.f18189c) {
                sb2.append(']');
                return sb2.toString();
            }
            sb2.append(", ");
            sb2.append(iArr[i10]);
        }
    }
}
