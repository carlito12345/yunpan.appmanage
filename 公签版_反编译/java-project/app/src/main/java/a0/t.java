package a0;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    public int[] f63a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f64b;

    /* renamed from: c, reason: collision with root package name */
    public int f65c;

    public t(int i10) {
        this.f63a = i10 == 0 ? b0.a.f2491a : new int[i10];
        this.f64b = i10 == 0 ? b0.a.f2492b : new Object[i10 << 1];
    }

    public final int a(Object obj) {
        int i10 = this.f65c * 2;
        Object[] objArr = this.f64b;
        if (obj == null) {
            for (int i11 = 1; i11 < i10; i11 += 2) {
                if (objArr[i11] == null) {
                    return i11 >> 1;
                }
            }
            return -1;
        }
        for (int i12 = 1; i12 < i10; i12 += 2) {
            if (obj.equals(objArr[i12])) {
                return i12 >> 1;
            }
        }
        return -1;
    }

    public final void b(int i10) {
        int i11 = this.f65c;
        int[] iArr = this.f63a;
        if (iArr.length < i10) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, i10);
            ue.d.d(iArrCopyOf, "copyOf(...)");
            this.f63a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f64b, i10 * 2);
            ue.d.d(objArrCopyOf, "copyOf(...)");
            this.f64b = objArrCopyOf;
        }
        if (this.f65c != i11) {
            throw new ConcurrentModificationException();
        }
    }

    public final int c(int i10, Object obj) {
        int i11 = this.f65c;
        if (i11 == 0) {
            return -1;
        }
        int iA = b0.a.a(i11, i10, this.f63a);
        if (iA < 0 || ue.d.a(obj, this.f64b[iA << 1])) {
            return iA;
        }
        int i12 = iA + 1;
        while (i12 < i11 && this.f63a[i12] == i10) {
            if (ue.d.a(obj, this.f64b[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iA - 1; i13 >= 0 && this.f63a[i13] == i10; i13--) {
            if (ue.d.a(obj, this.f64b[i13 << 1])) {
                return i13;
            }
        }
        return i12 ^ (-1);
    }

    public void clear() {
        if (this.f65c > 0) {
            this.f63a = b0.a.f2491a;
            this.f64b = b0.a.f2492b;
            this.f65c = 0;
        }
        if (this.f65c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return d(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return a(obj) >= 0;
    }

    public final int d(Object obj) {
        return obj == null ? e() : c(obj.hashCode(), obj);
    }

    public final int e() {
        int i10 = this.f65c;
        if (i10 == 0) {
            return -1;
        }
        int iA = b0.a.a(i10, 0, this.f63a);
        if (iA < 0 || this.f64b[iA << 1] == null) {
            return iA;
        }
        int i11 = iA + 1;
        while (i11 < i10 && this.f63a[i11] == 0) {
            if (this.f64b[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iA - 1; i12 >= 0 && this.f63a[i12] == 0; i12--) {
            if (this.f64b[i12 << 1] == null) {
                return i12;
            }
        }
        return i11 ^ (-1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof t) {
                int i10 = this.f65c;
                if (i10 != ((t) obj).f65c) {
                    return false;
                }
                t tVar = (t) obj;
                for (int i11 = 0; i11 < i10; i11++) {
                    Object objF = f(i11);
                    Object objJ = j(i11);
                    Object obj2 = tVar.get(objF);
                    if (objJ == null) {
                        if (obj2 != null || !tVar.containsKey(objF)) {
                            return false;
                        }
                    } else if (!objJ.equals(obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.f65c != ((Map) obj).size()) {
                return false;
            }
            int i12 = this.f65c;
            for (int i13 = 0; i13 < i12; i13++) {
                Object objF2 = f(i13);
                Object objJ2 = j(i13);
                Object obj3 = ((Map) obj).get(objF2);
                if (objJ2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(objF2)) {
                        return false;
                    }
                } else if (!objJ2.equals(obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final Object f(int i10) {
        boolean z = false;
        if (i10 >= 0 && i10 < this.f65c) {
            z = true;
        }
        if (z) {
            return this.f64b[i10 << 1];
        }
        b0.a.c("Expected index to be within 0..size()-1, but was " + i10);
        throw null;
    }

    public void g(e eVar) {
        int i10 = eVar.f65c;
        b(this.f65c + i10);
        if (this.f65c != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                put(eVar.f(i11), eVar.j(i11));
            }
        } else if (i10 > 0) {
            je.i.e0(0, 0, eVar.f63a, this.f63a, i10);
            je.i.d0(0, 0, i10 << 1, eVar.f64b, this.f64b);
            this.f65c = i10;
        }
    }

    public Object get(Object obj) {
        int iD = d(obj);
        if (iD >= 0) {
            return this.f64b[(iD << 1) + 1];
        }
        return null;
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int iD = d(obj);
        return iD >= 0 ? this.f64b[(iD << 1) + 1] : obj2;
    }

    public Object h(int i10) {
        if (!(i10 >= 0 && i10 < this.f65c)) {
            b0.a.c("Expected index to be within 0..size()-1, but was " + i10);
            throw null;
        }
        Object[] objArr = this.f64b;
        int i11 = i10 << 1;
        Object obj = objArr[i11 + 1];
        int i12 = this.f65c;
        if (i12 <= 1) {
            clear();
        } else {
            int i13 = i12 - 1;
            int[] iArr = this.f63a;
            if (iArr.length <= 8 || i12 >= iArr.length / 3) {
                if (i10 < i13) {
                    int i14 = i10 + 1;
                    je.i.e0(i10, i14, iArr, iArr, i12);
                    Object[] objArr2 = this.f64b;
                    je.i.d0(i11, i14 << 1, i12 << 1, objArr2, objArr2);
                }
                Object[] objArr3 = this.f64b;
                int i15 = i13 << 1;
                objArr3[i15] = null;
                objArr3[i15 + 1] = null;
            } else {
                int i16 = i12 > 8 ? i12 + (i12 >> 1) : 8;
                int[] iArrCopyOf = Arrays.copyOf(iArr, i16);
                ue.d.d(iArrCopyOf, "copyOf(...)");
                this.f63a = iArrCopyOf;
                Object[] objArrCopyOf = Arrays.copyOf(this.f64b, i16 << 1);
                ue.d.d(objArrCopyOf, "copyOf(...)");
                this.f64b = objArrCopyOf;
                if (i12 != this.f65c) {
                    throw new ConcurrentModificationException();
                }
                if (i10 > 0) {
                    je.i.e0(0, 0, iArr, this.f63a, i10);
                    je.i.d0(0, 0, i11, objArr, this.f64b);
                }
                if (i10 < i13) {
                    int i17 = i10 + 1;
                    je.i.e0(i10, i17, iArr, this.f63a, i12);
                    je.i.d0(i11, i17 << 1, i12 << 1, objArr, this.f64b);
                }
            }
            if (i12 != this.f65c) {
                throw new ConcurrentModificationException();
            }
            this.f65c = i13;
        }
        return obj;
    }

    public int hashCode() {
        int[] iArr = this.f63a;
        Object[] objArr = this.f64b;
        int i10 = this.f65c;
        int i11 = 1;
        int i12 = 0;
        int iHashCode = 0;
        while (i12 < i10) {
            Object obj = objArr[i11];
            iHashCode += (obj != null ? obj.hashCode() : 0) ^ iArr[i12];
            i12++;
            i11 += 2;
        }
        return iHashCode;
    }

    public Object i(int i10, Object obj) {
        boolean z = false;
        if (i10 >= 0 && i10 < this.f65c) {
            z = true;
        }
        if (!z) {
            b0.a.c("Expected index to be within 0..size()-1, but was " + i10);
            throw null;
        }
        int i11 = (i10 << 1) + 1;
        Object[] objArr = this.f64b;
        Object obj2 = objArr[i11];
        objArr[i11] = obj;
        return obj2;
    }

    public final boolean isEmpty() {
        return this.f65c <= 0;
    }

    public final Object j(int i10) {
        boolean z = false;
        if (i10 >= 0 && i10 < this.f65c) {
            z = true;
        }
        if (z) {
            return this.f64b[(i10 << 1) + 1];
        }
        b0.a.c("Expected index to be within 0..size()-1, but was " + i10);
        throw null;
    }

    public Object put(Object obj, Object obj2) {
        int i10 = this.f65c;
        int iHashCode = obj != null ? obj.hashCode() : 0;
        int iC = obj != null ? c(iHashCode, obj) : e();
        if (iC >= 0) {
            int i11 = (iC << 1) + 1;
            Object[] objArr = this.f64b;
            Object obj3 = objArr[i11];
            objArr[i11] = obj2;
            return obj3;
        }
        int i12 = iC ^ (-1);
        int[] iArr = this.f63a;
        if (i10 >= iArr.length) {
            int i13 = 8;
            if (i10 >= 8) {
                i13 = (i10 >> 1) + i10;
            } else if (i10 < 4) {
                i13 = 4;
            }
            int[] iArrCopyOf = Arrays.copyOf(iArr, i13);
            ue.d.d(iArrCopyOf, "copyOf(...)");
            this.f63a = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f64b, i13 << 1);
            ue.d.d(objArrCopyOf, "copyOf(...)");
            this.f64b = objArrCopyOf;
            if (i10 != this.f65c) {
                throw new ConcurrentModificationException();
            }
        }
        if (i12 < i10) {
            int[] iArr2 = this.f63a;
            int i14 = i12 + 1;
            je.i.e0(i14, i12, iArr2, iArr2, i10);
            Object[] objArr2 = this.f64b;
            je.i.d0(i14 << 1, i12 << 1, this.f65c << 1, objArr2, objArr2);
        }
        int i15 = this.f65c;
        if (i10 == i15) {
            int[] iArr3 = this.f63a;
            if (i12 < iArr3.length) {
                iArr3[i12] = iHashCode;
                Object[] objArr3 = this.f64b;
                int i16 = i12 << 1;
                objArr3[i16] = obj;
                objArr3[i16 + 1] = obj2;
                this.f65c = i15 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public Object remove(Object obj) {
        int iD = d(obj);
        if (iD >= 0) {
            return h(iD);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int iD = d(obj);
        if (iD >= 0) {
            return i(iD, obj2);
        }
        return null;
    }

    public final int size() {
        return this.f65c;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.f65c * 28);
        sb2.append('{');
        int i10 = this.f65c;
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            Object objF = f(i11);
            if (objF != sb2) {
                sb2.append(objF);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            Object objJ = j(i11);
            if (objJ != sb2) {
                sb2.append(objJ);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        ue.d.d(string, "toString(...)");
        return string;
    }

    public final boolean remove(Object obj, Object obj2) {
        int iD = d(obj);
        if (iD < 0 || !ue.d.a(obj2, j(iD))) {
            return false;
        }
        h(iD);
        return true;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int iD = d(obj);
        if (iD < 0 || !ue.d.a(obj2, j(iD))) {
            return false;
        }
        i(iD, obj3);
        return true;
    }
}
