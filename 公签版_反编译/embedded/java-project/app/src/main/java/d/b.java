package d;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class b implements Map {

    /* renamed from: e, reason: collision with root package name */
    public static Object[] f63e;

    /* renamed from: f, reason: collision with root package name */
    public static int f64f;
    public static Object[] g;
    public static int h;

    /* renamed from: a, reason: collision with root package name */
    public int[] f65a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f66b;

    /* renamed from: c, reason: collision with root package name */
    public int f67c;

    /* renamed from: d, reason: collision with root package name */
    public a f68d;

    public static int b(int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            try {
                int i6 = iArr[i5];
                if (i6 < i2) {
                    i4 = i5 + 1;
                } else {
                    if (i6 <= i2) {
                        return i5;
                    }
                    i3 = i5 - 1;
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
        return ~i4;
    }

    public static void c(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                try {
                    if (h < 10) {
                        objArr[0] = g;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        g = objArr;
                        h++;
                    }
                } finally {
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (b.class) {
                try {
                    if (f64f < 10) {
                        objArr[0] = f63e;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        f63e = objArr;
                        f64f++;
                    }
                } finally {
                }
            }
        }
    }

    public final void a(int i) {
        if (i == 8) {
            synchronized (b.class) {
                try {
                    Object[] objArr = g;
                    if (objArr != null) {
                        this.f66b = objArr;
                        g = (Object[]) objArr[0];
                        this.f65a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        h--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (b.class) {
                try {
                    Object[] objArr2 = f63e;
                    if (objArr2 != null) {
                        this.f66b = objArr2;
                        f63e = (Object[]) objArr2[0];
                        this.f65a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        f64f--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f65a = new int[i];
        this.f66b = new Object[i << 1];
    }

    @Override // java.util.Map
    public final void clear() {
        int i = this.f67c;
        if (i > 0) {
            int[] iArr = this.f65a;
            Object[] objArr = this.f66b;
            this.f65a = c.f69a;
            this.f66b = c.f70b;
            this.f67c = 0;
            c(iArr, objArr, i);
        }
        if (this.f67c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return e(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return g(obj) >= 0;
    }

    public final int d(Object obj, int i) {
        int i2 = this.f67c;
        if (i2 == 0) {
            return -1;
        }
        int iB = b(this.f65a, i2, i);
        if (iB < 0 || obj.equals(this.f66b[iB << 1])) {
            return iB;
        }
        int i3 = iB + 1;
        while (i3 < i2 && this.f65a[i3] == i) {
            if (obj.equals(this.f66b[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iB - 1; i4 >= 0 && this.f65a[i4] == i; i4--) {
            if (obj.equals(this.f66b[i4 << 1])) {
                return i4;
            }
        }
        return ~i3;
    }

    public final int e(Object obj) {
        return obj == null ? f() : d(obj, obj.hashCode());
    }

    @Override // java.util.Map
    public final Set entrySet() {
        if (this.f68d == null) {
            this.f68d = new a(this);
        }
        a aVar = this.f68d;
        if (aVar.f59a == null) {
            aVar.f59a = new e(aVar, 0);
        }
        return aVar.f59a;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f67c != bVar.f67c) {
                return false;
            }
            for (int i = 0; i < this.f67c; i++) {
                try {
                    Object[] objArr = this.f66b;
                    int i2 = i << 1;
                    Object obj2 = objArr[i2];
                    Object obj3 = objArr[i2 + 1];
                    Object obj4 = bVar.get(obj2);
                    if (obj3 == null) {
                        if (obj4 != null || !bVar.containsKey(obj2)) {
                            return false;
                        }
                    } else if (!obj3.equals(obj4)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this.f67c != map.size()) {
                return false;
            }
            for (int i3 = 0; i3 < this.f67c; i3++) {
                try {
                    Object[] objArr2 = this.f66b;
                    int i4 = i3 << 1;
                    Object obj5 = objArr2[i4];
                    Object obj6 = objArr2[i4 + 1];
                    Object obj7 = map.get(obj5);
                    if (obj6 == null) {
                        if (obj7 != null || !map.containsKey(obj5)) {
                            return false;
                        }
                    } else if (!obj6.equals(obj7)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f() {
        int i = this.f67c;
        if (i == 0) {
            return -1;
        }
        int iB = b(this.f65a, i, 0);
        if (iB < 0 || this.f66b[iB << 1] == null) {
            return iB;
        }
        int i2 = iB + 1;
        while (i2 < i && this.f65a[i2] == 0) {
            if (this.f66b[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iB - 1; i3 >= 0 && this.f65a[i3] == 0; i3--) {
            if (this.f66b[i3 << 1] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    public final int g(Object obj) {
        int i = this.f67c * 2;
        Object[] objArr = this.f66b;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int iE = e(obj);
        if (iE >= 0) {
            return this.f66b[(iE << 1) + 1];
        }
        return null;
    }

    public final Object h(int i) {
        Object[] objArr = this.f66b;
        int i2 = i << 1;
        Object obj = objArr[i2 + 1];
        int i3 = this.f67c;
        int i4 = 0;
        if (i3 <= 1) {
            c(this.f65a, objArr, i3);
            this.f65a = c.f69a;
            this.f66b = c.f70b;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f65a;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int i6 = i + 1;
                    int i7 = i5 - i;
                    System.arraycopy(iArr, i6, iArr, i, i7);
                    Object[] objArr2 = this.f66b;
                    System.arraycopy(objArr2, i6 << 1, objArr2, i2, i7 << 1);
                }
                Object[] objArr3 = this.f66b;
                int i8 = i5 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            } else {
                a(i3 > 8 ? i3 + (i3 >> 1) : 8);
                if (i3 != this.f67c) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f65a, 0, i);
                    System.arraycopy(objArr, 0, this.f66b, 0, i2);
                }
                if (i < i5) {
                    int i9 = i + 1;
                    int i10 = i5 - i;
                    System.arraycopy(iArr, i9, this.f65a, i, i10);
                    System.arraycopy(objArr, i9 << 1, this.f66b, i2, i10 << 1);
                }
            }
            i4 = i5;
        }
        if (i3 != this.f67c) {
            throw new ConcurrentModificationException();
        }
        this.f67c = i4;
        return obj;
    }

    @Override // java.util.Map
    public final int hashCode() {
        int[] iArr = this.f65a;
        Object[] objArr = this.f66b;
        int i = this.f67c;
        int i2 = 1;
        int i3 = 0;
        int iHashCode = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return iHashCode;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f67c <= 0;
    }

    @Override // java.util.Map
    public final Set keySet() {
        if (this.f68d == null) {
            this.f68d = new a(this);
        }
        a aVar = this.f68d;
        if (aVar.f60b == null) {
            aVar.f60b = new e(aVar, 1);
        }
        return aVar.f60b;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        int i;
        int iD;
        int i2 = this.f67c;
        if (obj == null) {
            iD = f();
            i = 0;
        } else {
            int iHashCode = obj.hashCode();
            i = iHashCode;
            iD = d(obj, iHashCode);
        }
        if (iD >= 0) {
            int i3 = (iD << 1) + 1;
            Object[] objArr = this.f66b;
            Object obj3 = objArr[i3];
            objArr[i3] = obj2;
            return obj3;
        }
        int i4 = ~iD;
        int[] iArr = this.f65a;
        if (i2 >= iArr.length) {
            int i5 = 8;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i5 = 4;
            }
            Object[] objArr2 = this.f66b;
            a(i5);
            if (i2 != this.f67c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f65a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f66b, 0, objArr2.length);
            }
            c(iArr, objArr2, i2);
        }
        if (i4 < i2) {
            int[] iArr3 = this.f65a;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.f66b;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.f67c - i4) << 1);
        }
        int i7 = this.f67c;
        if (i2 == i7) {
            int[] iArr4 = this.f65a;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.f66b;
                int i8 = i4 << 1;
                objArr4[i8] = obj;
                objArr4[i8 + 1] = obj2;
                this.f67c = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        int size = map.size() + this.f67c;
        int i = this.f67c;
        int[] iArr = this.f65a;
        if (iArr.length < size) {
            Object[] objArr = this.f66b;
            a(size);
            if (this.f67c > 0) {
                System.arraycopy(iArr, 0, this.f65a, 0, i);
                System.arraycopy(objArr, 0, this.f66b, 0, i << 1);
            }
            c(iArr, objArr, i);
        }
        if (this.f67c != i) {
            throw new ConcurrentModificationException();
        }
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        int iE = e(obj);
        if (iE >= 0) {
            return h(iE);
        }
        return null;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f67c;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f67c * 28);
        sb.append('{');
        for (int i = 0; i < this.f67c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            int i2 = i << 1;
            Object obj = this.f66b[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object obj2 = this.f66b[i2 + 1];
            if (obj2 != this) {
                sb.append(obj2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        if (this.f68d == null) {
            this.f68d = new a(this);
        }
        a aVar = this.f68d;
        if (aVar.f61c == null) {
            aVar.f61c = new g(aVar);
        }
        return aVar.f61c;
    }
}
