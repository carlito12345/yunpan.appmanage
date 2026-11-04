package u7;

import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class u extends AbstractMap implements Serializable {

    /* renamed from: j, reason: collision with root package name */
    public static final Object f15530j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public transient Object f15531a;

    /* renamed from: b, reason: collision with root package name */
    public transient int[] f15532b;

    /* renamed from: c, reason: collision with root package name */
    public transient Object[] f15533c;

    /* renamed from: d, reason: collision with root package name */
    public transient Object[] f15534d;

    /* renamed from: e, reason: collision with root package name */
    public transient int f15535e = Math.min(Math.max(8, 1), 1073741823);

    /* renamed from: f, reason: collision with root package name */
    public transient int f15536f;

    /* renamed from: g, reason: collision with root package name */
    public transient s f15537g;

    /* renamed from: h, reason: collision with root package name */
    public transient s f15538h;

    /* renamed from: i, reason: collision with root package name */
    public transient n f15539i;

    public u(int i10) {
    }

    public final Map a() {
        Object obj = this.f15531a;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final int b() {
        return (1 << (this.f15535e & 31)) - 1;
    }

    public final int c(Object obj) {
        if (f()) {
            return -1;
        }
        int iQ = q.q(obj);
        int iB = b();
        Object obj2 = this.f15531a;
        Objects.requireNonNull(obj2);
        int iR = q.r(iQ & iB, obj2);
        if (iR == 0) {
            return -1;
        }
        int i10 = iB ^ (-1);
        int i11 = iQ & i10;
        do {
            int i12 = iR - 1;
            int i13 = h()[i12];
            if ((i13 & i10) == i11 && s1.g.r(obj, i()[i12])) {
                return i12;
            }
            iR = i13 & iB;
        } while (iR != 0);
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (f()) {
            return;
        }
        this.f15535e += 32;
        Map mapA = a();
        if (mapA != null) {
            this.f15535e = Math.min(Math.max(size(), 3), 1073741823);
            mapA.clear();
            this.f15531a = null;
            this.f15536f = 0;
            return;
        }
        Arrays.fill(i(), 0, this.f15536f, (Object) null);
        Arrays.fill(j(), 0, this.f15536f, (Object) null);
        Object obj = this.f15531a;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(h(), 0, this.f15536f, 0);
        this.f15536f = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map mapA = a();
        return mapA != null ? mapA.containsKey(obj) : c(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map mapA = a();
        if (mapA != null) {
            return mapA.containsValue(obj);
        }
        for (int i10 = 0; i10 < this.f15536f; i10++) {
            if (s1.g.r(obj, j()[i10])) {
                return true;
            }
        }
        return false;
    }

    public final void d(int i10, int i11) {
        Object obj = this.f15531a;
        Objects.requireNonNull(obj);
        int[] iArrH = h();
        Object[] objArrI = i();
        Object[] objArrJ = j();
        int size = size();
        int i12 = size - 1;
        if (i10 >= i12) {
            objArrI[i10] = null;
            objArrJ[i10] = null;
            iArrH[i10] = 0;
            return;
        }
        Object obj2 = objArrI[i12];
        objArrI[i10] = obj2;
        objArrJ[i10] = objArrJ[i12];
        objArrI[i12] = null;
        objArrJ[i12] = null;
        iArrH[i10] = iArrH[i12];
        iArrH[i12] = 0;
        int iQ = q.q(obj2) & i11;
        int iR = q.r(iQ, obj);
        if (iR == size) {
            q.s(iQ, i10 + 1, obj);
            return;
        }
        while (true) {
            int i13 = iR - 1;
            int i14 = iArrH[i13];
            int i15 = i14 & i11;
            if (i15 == size) {
                iArrH[i13] = q.l(i14, i10 + 1, i11);
                return;
            }
            iR = i15;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        s sVar = this.f15538h;
        if (sVar != null) {
            return sVar;
        }
        s sVar2 = new s(this, 0);
        this.f15538h = sVar2;
        return sVar2;
    }

    public final boolean f() {
        return this.f15531a == null;
    }

    public final Object g(Object obj) {
        boolean zF = f();
        Object obj2 = f15530j;
        if (zF) {
            return obj2;
        }
        int iB = b();
        Object obj3 = this.f15531a;
        Objects.requireNonNull(obj3);
        int iN = q.n(obj, null, iB, obj3, h(), i(), null);
        if (iN == -1) {
            return obj2;
        }
        Object obj4 = j()[iN];
        d(iN, iB);
        this.f15536f--;
        this.f15535e += 32;
        return obj4;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map mapA = a();
        if (mapA != null) {
            return mapA.get(obj);
        }
        int iC = c(obj);
        if (iC == -1) {
            return null;
        }
        return j()[iC];
    }

    public final int[] h() {
        int[] iArr = this.f15532b;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] i() {
        Object[] objArr = this.f15533c;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    public final Object[] j() {
        Object[] objArr = this.f15534d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        s sVar = this.f15537g;
        if (sVar != null) {
            return sVar;
        }
        s sVar2 = new s(this, 1);
        this.f15537g = sVar2;
        return sVar2;
    }

    public final int l(int i10, int i11, int i12, int i13) {
        Object objE = q.e(i11);
        int i14 = i11 - 1;
        if (i13 != 0) {
            q.s(i12 & i14, i13 + 1, objE);
        }
        Object obj = this.f15531a;
        Objects.requireNonNull(obj);
        int[] iArrH = h();
        for (int i15 = 0; i15 <= i10; i15++) {
            int iR = q.r(i15, obj);
            while (iR != 0) {
                int i16 = iR - 1;
                int i17 = iArrH[i16];
                int i18 = ((i10 ^ (-1)) & i17) | i15;
                int i19 = i18 & i14;
                int iR2 = q.r(i19, objE);
                q.s(i19, iR, objE);
                iArrH[i16] = q.l(i18, iR2, i14);
                iR = i17 & i10;
            }
        }
        this.f15531a = objE;
        this.f15535e = q.l(this.f15535e, 32 - Integer.numberOfLeadingZeros(i14), 31);
        return i14;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00ef  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0102 -> B:36:0x00e8). Please report as a decompilation issue!!! */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object put(Object obj, Object obj2) {
        int iMin;
        if (f()) {
            a9.o.s("Arrays already allocated", f());
            int i10 = this.f15535e;
            int iMax = Math.max(i10 + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            double d10 = iHighestOneBit;
            Double.isNaN(d10);
            if (iMax > ((int) (1.0d * d10))) {
                int i11 = iHighestOneBit << 1;
                iHighestOneBit = i11 > 0 ? i11 : 1073741824;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            this.f15531a = q.e(iMax2);
            this.f15535e = q.l(this.f15535e, 32 - Integer.numberOfLeadingZeros(iMax2 - 1), 31);
            this.f15532b = new int[i10];
            this.f15533c = new Object[i10];
            this.f15534d = new Object[i10];
        }
        Map mapA = a();
        if (mapA != null) {
            return mapA.put(obj, obj2);
        }
        int[] iArrH = h();
        Object[] objArrI = i();
        Object[] objArrJ = j();
        int i12 = this.f15536f;
        int i13 = i12 + 1;
        int iQ = q.q(obj);
        int iB = b();
        int i14 = iQ & iB;
        Object obj3 = this.f15531a;
        Objects.requireNonNull(obj3);
        int iR = q.r(i14, obj3);
        if (iR != 0) {
            int i15 = iB ^ (-1);
            int i16 = iQ & i15;
            int i17 = 0;
            while (true) {
                int i18 = iR - 1;
                int i19 = iArrH[i18];
                if ((i19 & i15) == i16 && s1.g.r(obj, objArrI[i18])) {
                    Object obj4 = objArrJ[i18];
                    objArrJ[i18] = obj2;
                    return obj4;
                }
                int i20 = i19 & iB;
                int i21 = i16;
                int i22 = i17 + 1;
                if (i20 != 0) {
                    i17 = i22;
                    iR = i20;
                    i16 = i21;
                } else {
                    if (i22 >= 9) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(b() + 1, 1.0f);
                        int i23 = isEmpty() ? -1 : 0;
                        while (i23 >= 0) {
                            linkedHashMap.put(i()[i23], j()[i23]);
                            int i24 = i23 + 1;
                            if (i24 < this.f15536f) {
                                i23 = i24;
                            } else {
                                while (i23 >= 0) {
                                }
                            }
                        }
                        this.f15531a = linkedHashMap;
                        this.f15532b = null;
                        this.f15533c = null;
                        this.f15534d = null;
                        this.f15535e += 32;
                        return linkedHashMap.put(obj, obj2);
                    }
                    if (i13 > iB) {
                        iB = l(iB, (iB + 1) * (iB < 32 ? 4 : 2), iQ, i12);
                    } else {
                        iArrH[i18] = q.l(i19, i13, iB);
                    }
                }
            }
        } else if (i13 > iB) {
            iB = l(iB, (iB + 1) * (iB < 32 ? 4 : 2), iQ, i12);
        } else {
            Object obj5 = this.f15531a;
            Objects.requireNonNull(obj5);
            q.s(i14, i13, obj5);
        }
        int length = h().length;
        if (i13 > length && (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            this.f15532b = Arrays.copyOf(h(), iMin);
            this.f15533c = Arrays.copyOf(i(), iMin);
            this.f15534d = Arrays.copyOf(j(), iMin);
        }
        h()[i12] = q.l(iQ, 0, iB);
        i()[i12] = obj;
        j()[i12] = obj2;
        this.f15536f = i13;
        this.f15535e += 32;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map mapA = a();
        if (mapA != null) {
            return mapA.remove(obj);
        }
        Object objG = g(obj);
        if (objG == f15530j) {
            return null;
        }
        return objG;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map mapA = a();
        return mapA != null ? mapA.size() : this.f15536f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        n nVar = this.f15539i;
        if (nVar != null) {
            return nVar;
        }
        n nVar2 = new n(1, this);
        this.f15539i = nVar2;
        return nVar2;
    }
}
