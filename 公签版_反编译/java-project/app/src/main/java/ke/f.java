package ke;

import ha.j2;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes.dex */
public final class f implements Map, Serializable, ve.a {

    /* renamed from: n, reason: collision with root package name */
    public static final f f10252n;

    /* renamed from: a, reason: collision with root package name */
    public Object[] f10253a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f10254b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f10255c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f10256d;

    /* renamed from: e, reason: collision with root package name */
    public int f10257e;

    /* renamed from: f, reason: collision with root package name */
    public int f10258f;

    /* renamed from: g, reason: collision with root package name */
    public int f10259g;

    /* renamed from: h, reason: collision with root package name */
    public int f10260h;

    /* renamed from: i, reason: collision with root package name */
    public int f10261i;

    /* renamed from: j, reason: collision with root package name */
    public g f10262j;

    /* renamed from: k, reason: collision with root package name */
    public h f10263k;
    public g l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f10264m;

    static {
        new j2(15);
        f fVar = new f(0);
        fVar.f10264m = true;
        f10252n = fVar;
    }

    public f() {
        this(8);
    }

    public final int a(Object obj) {
        c();
        while (true) {
            int iL = l(obj);
            int i10 = this.f10257e * 2;
            int length = this.f10256d.length / 2;
            if (i10 > length) {
                i10 = length;
            }
            int i11 = 0;
            while (true) {
                int[] iArr = this.f10256d;
                int i12 = iArr[iL];
                if (i12 <= 0) {
                    int i13 = this.f10258f;
                    Object[] objArr = this.f10253a;
                    if (i13 < objArr.length) {
                        int i14 = i13 + 1;
                        this.f10258f = i14;
                        objArr[i13] = obj;
                        this.f10255c[i13] = iL;
                        iArr[iL] = i14;
                        this.f10261i++;
                        this.f10260h++;
                        if (i11 > this.f10257e) {
                            this.f10257e = i11;
                        }
                        return i13;
                    }
                    h(1);
                } else {
                    if (ue.d.a(this.f10253a[i12 - 1], obj)) {
                        return -i12;
                    }
                    i11++;
                    if (i11 > i10) {
                        m(this.f10256d.length * 2);
                        break;
                    }
                    iL = iL == 0 ? this.f10256d.length - 1 : iL - 1;
                }
            }
        }
    }

    public final f b() {
        c();
        this.f10264m = true;
        if (this.f10261i > 0) {
            return this;
        }
        f fVar = f10252n;
        ue.d.c(fVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
        return fVar;
    }

    public final void c() {
        if (this.f10264m) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final void clear() {
        c();
        int i10 = this.f10258f - 1;
        if (i10 >= 0) {
            int i11 = 0;
            while (true) {
                int[] iArr = this.f10255c;
                int i12 = iArr[i11];
                if (i12 >= 0) {
                    this.f10256d[i12] = 0;
                    iArr[i11] = -1;
                }
                if (i11 == i10) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        com.bumptech.glide.c.Z(0, this.f10258f, this.f10253a);
        Object[] objArr = this.f10254b;
        if (objArr != null) {
            com.bumptech.glide.c.Z(0, this.f10258f, objArr);
        }
        this.f10261i = 0;
        this.f10258f = 0;
        this.f10260h++;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return i(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return j(obj) >= 0;
    }

    public final void d(boolean z) {
        int i10;
        Object[] objArr = this.f10254b;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.f10258f;
            if (i11 >= i10) {
                break;
            }
            int[] iArr = this.f10255c;
            int i13 = iArr[i11];
            if (i13 >= 0) {
                Object[] objArr2 = this.f10253a;
                objArr2[i12] = objArr2[i11];
                if (objArr != null) {
                    objArr[i12] = objArr[i11];
                }
                if (z) {
                    iArr[i12] = i13;
                    this.f10256d[i13] = i12 + 1;
                }
                i12++;
            }
            i11++;
        }
        com.bumptech.glide.c.Z(i12, i10, this.f10253a);
        if (objArr != null) {
            com.bumptech.glide.c.Z(i12, this.f10258f, objArr);
        }
        this.f10258f = i12;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        g gVar = this.l;
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g(this, 0);
        this.l = gVar2;
        return gVar2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (this.f10261i != map.size() || !f(map.entrySet())) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean f(Collection collection) {
        ue.d.e(collection, "m");
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    if (!g((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean g(Map.Entry entry) {
        ue.d.e(entry, "entry");
        int i10 = i(entry.getKey());
        if (i10 < 0) {
            return false;
        }
        Object[] objArr = this.f10254b;
        ue.d.b(objArr);
        return ue.d.a(objArr[i10], entry.getValue());
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int i10 = i(obj);
        if (i10 < 0) {
            return null;
        }
        Object[] objArr = this.f10254b;
        ue.d.b(objArr);
        return objArr[i10];
    }

    public final void h(int i10) {
        Object[] objArrCopyOf;
        Object[] objArr = this.f10253a;
        int length = objArr.length;
        int i11 = this.f10258f;
        int i12 = length - i11;
        int i13 = i11 - this.f10261i;
        if (i12 < i10 && i12 + i13 >= i10 && i13 >= objArr.length / 4) {
            d(true);
            return;
        }
        int i14 = i11 + i10;
        if (i14 < 0) {
            throw new OutOfMemoryError();
        }
        if (i14 > objArr.length) {
            int length2 = objArr.length;
            int i15 = length2 + (length2 >> 1);
            if (i15 - i14 < 0) {
                i15 = i14;
            }
            if (i15 - 2147483639 > 0) {
                i15 = i14 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            Object[] objArrCopyOf2 = Arrays.copyOf(objArr, i15);
            ue.d.d(objArrCopyOf2, "copyOf(...)");
            this.f10253a = objArrCopyOf2;
            Object[] objArr2 = this.f10254b;
            if (objArr2 != null) {
                objArrCopyOf = Arrays.copyOf(objArr2, i15);
                ue.d.d(objArrCopyOf, "copyOf(...)");
            } else {
                objArrCopyOf = null;
            }
            this.f10254b = objArrCopyOf;
            int[] iArrCopyOf = Arrays.copyOf(this.f10255c, i15);
            ue.d.d(iArrCopyOf, "copyOf(...)");
            this.f10255c = iArrCopyOf;
            int iHighestOneBit = Integer.highestOneBit((i15 >= 1 ? i15 : 1) * 3);
            if (iHighestOneBit > this.f10256d.length) {
                m(iHighestOneBit);
            }
        }
    }

    @Override // java.util.Map
    public final int hashCode() {
        d dVar = new d(this, 0);
        int i10 = 0;
        while (dVar.hasNext()) {
            int i11 = dVar.f6320a;
            f fVar = (f) dVar.f6323d;
            if (i11 >= fVar.f10258f) {
                throw new NoSuchElementException();
            }
            dVar.f6320a = i11 + 1;
            dVar.f6321b = i11;
            Object obj = fVar.f10253a[i11];
            int iHashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = fVar.f10254b;
            ue.d.b(objArr);
            Object obj2 = objArr[dVar.f6321b];
            int iHashCode2 = obj2 != null ? obj2.hashCode() : 0;
            dVar.e();
            i10 += iHashCode ^ iHashCode2;
        }
        return i10;
    }

    public final int i(Object obj) {
        int iL = l(obj);
        int i10 = this.f10257e;
        while (true) {
            int i11 = this.f10256d[iL];
            if (i11 == 0) {
                return -1;
            }
            if (i11 > 0) {
                int i12 = i11 - 1;
                if (ue.d.a(this.f10253a[i12], obj)) {
                    return i12;
                }
            }
            i10--;
            if (i10 < 0) {
                return -1;
            }
            iL = iL == 0 ? this.f10256d.length - 1 : iL - 1;
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f10261i == 0;
    }

    public final int j(Object obj) {
        int i10 = this.f10258f;
        while (true) {
            i10--;
            if (i10 < 0) {
                return -1;
            }
            if (this.f10255c[i10] >= 0) {
                Object[] objArr = this.f10254b;
                ue.d.b(objArr);
                if (ue.d.a(objArr[i10], obj)) {
                    return i10;
                }
            }
        }
    }

    @Override // java.util.Map
    public final Set keySet() {
        g gVar = this.f10262j;
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g(this, 1);
        this.f10262j = gVar2;
        return gVar2;
    }

    public final int l(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.f10259g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
    
        r3[r0] = r6;
        r5.f10255c[r2] = r0;
        r2 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m(int i10) {
        this.f10260h++;
        int i11 = 0;
        if (this.f10258f > this.f10261i) {
            d(false);
        }
        this.f10256d = new int[i10];
        this.f10259g = Integer.numberOfLeadingZeros(i10) + 1;
        while (i11 < this.f10258f) {
            int i12 = i11 + 1;
            int iL = l(this.f10253a[i11]);
            int i13 = this.f10257e;
            while (true) {
                int[] iArr = this.f10256d;
                if (iArr[iL] == 0) {
                    break;
                }
                i13--;
                if (i13 < 0) {
                    throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
                }
                iL = iL == 0 ? iArr.length - 1 : iL - 1;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0068 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[LOOP:0: B:9:0x0024->B:33:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n(int i10) {
        Object[] objArr = this.f10253a;
        ue.d.e(objArr, "<this>");
        objArr[i10] = null;
        Object[] objArr2 = this.f10254b;
        if (objArr2 != null) {
            objArr2[i10] = null;
        }
        int length = this.f10255c[i10];
        int i11 = this.f10257e * 2;
        int length2 = this.f10256d.length / 2;
        if (i11 > length2) {
            i11 = length2;
        }
        int i12 = i11;
        int i13 = 0;
        int i14 = length;
        while (true) {
            length = length == 0 ? this.f10256d.length - 1 : length - 1;
            i13++;
            if (i13 > this.f10257e) {
                this.f10256d[i14] = 0;
                break;
            }
            int[] iArr = this.f10256d;
            int i15 = iArr[length];
            if (i15 == 0) {
                iArr[i14] = 0;
                break;
            }
            if (i15 < 0) {
                iArr[i14] = -1;
            } else {
                int i16 = i15 - 1;
                int iL = l(this.f10253a[i16]) - length;
                int[] iArr2 = this.f10256d;
                if ((iL & (iArr2.length - 1)) >= i13) {
                    iArr2[i14] = i15;
                    this.f10255c[i16] = i14;
                }
                i12--;
                if (i12 >= 0) {
                    this.f10256d[i14] = -1;
                    break;
                }
            }
            i14 = length;
            i13 = 0;
            i12--;
            if (i12 >= 0) {
            }
        }
        this.f10255c[i10] = -1;
        this.f10261i--;
        this.f10260h++;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        c();
        int iA = a(obj);
        Object[] objArr = this.f10254b;
        if (objArr == null) {
            int length = this.f10253a.length;
            if (length < 0) {
                throw new IllegalArgumentException("capacity must be non-negative.");
            }
            objArr = new Object[length];
            this.f10254b = objArr;
        }
        if (iA >= 0) {
            objArr[iA] = obj2;
            return null;
        }
        int i10 = (-iA) - 1;
        Object obj3 = objArr[i10];
        objArr[i10] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        ue.d.e(map, "from");
        c();
        Set<Map.Entry> setEntrySet = map.entrySet();
        if (setEntrySet.isEmpty()) {
            return;
        }
        h(setEntrySet.size());
        for (Map.Entry entry : setEntrySet) {
            int iA = a(entry.getKey());
            Object[] objArr = this.f10254b;
            if (objArr == null) {
                int length = this.f10253a.length;
                if (length < 0) {
                    throw new IllegalArgumentException("capacity must be non-negative.");
                }
                objArr = new Object[length];
                this.f10254b = objArr;
            }
            if (iA >= 0) {
                objArr[iA] = entry.getValue();
            } else {
                int i10 = (-iA) - 1;
                if (!ue.d.a(entry.getValue(), objArr[i10])) {
                    objArr[i10] = entry.getValue();
                }
            }
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        c();
        int i10 = i(obj);
        if (i10 < 0) {
            return null;
        }
        Object[] objArr = this.f10254b;
        ue.d.b(objArr);
        Object obj2 = objArr[i10];
        n(i10);
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f10261i;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder((this.f10261i * 3) + 2);
        sb2.append("{");
        d dVar = new d(this, 0);
        int i10 = 0;
        while (dVar.hasNext()) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            int i11 = dVar.f6320a;
            f fVar = (f) dVar.f6323d;
            if (i11 >= fVar.f10258f) {
                throw new NoSuchElementException();
            }
            dVar.f6320a = i11 + 1;
            dVar.f6321b = i11;
            Object obj = fVar.f10253a[i11];
            if (obj == fVar) {
                sb2.append("(this Map)");
            } else {
                sb2.append(obj);
            }
            sb2.append('=');
            Object[] objArr = fVar.f10254b;
            ue.d.b(objArr);
            Object obj2 = objArr[dVar.f6321b];
            if (obj2 == fVar) {
                sb2.append("(this Map)");
            } else {
                sb2.append(obj2);
            }
            dVar.e();
            i10++;
        }
        sb2.append("}");
        String string = sb2.toString();
        ue.d.d(string, "toString(...)");
        return string;
    }

    @Override // java.util.Map
    public final Collection values() {
        h hVar = this.f10263k;
        if (hVar != null) {
            return hVar;
        }
        h hVar2 = new h(this);
        this.f10263k = hVar2;
        return hVar2;
    }

    public f(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.");
        }
        Object[] objArr = new Object[i10];
        int[] iArr = new int[i10];
        int iHighestOneBit = Integer.highestOneBit((i10 < 1 ? 1 : i10) * 3);
        this.f10253a = objArr;
        this.f10254b = null;
        this.f10255c = iArr;
        this.f10256d = new int[iHighestOneBit];
        this.f10257e = 2;
        this.f10258f = 0;
        this.f10259g = Integer.numberOfLeadingZeros(iHighestOneBit) + 1;
    }
}
