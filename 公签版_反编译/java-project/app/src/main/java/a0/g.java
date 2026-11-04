package a0;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public int f23a;

    /* renamed from: b, reason: collision with root package name */
    public int f24b;

    /* renamed from: c, reason: collision with root package name */
    public int f25c;

    /* renamed from: d, reason: collision with root package name */
    public Object f26d;

    public g(int i10) {
        switch (i10) {
            case 1:
                int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(15));
                this.f23a = iNumberOfLeadingZeros - 1;
                this.f25c = (int) (0.75f * iNumberOfLeadingZeros);
                this.f26d = new Object[iNumberOfLeadingZeros];
                break;
            case 2:
                this.f25c = 7;
                this.f26d = new int[8];
                break;
            default:
                int iHighestOneBit = Integer.bitCount(64) != 1 ? Integer.highestOneBit(63) << 1 : 64;
                this.f25c = iHighestOneBit - 1;
                this.f26d = new Object[iHighestOneBit];
                break;
        }
    }

    public void a(gc.b bVar) {
        Object obj;
        Object obj2;
        Object[] objArr = (Object[]) this.f26d;
        int i10 = this.f23a;
        int iHashCode = bVar.hashCode() * (-1640531527);
        int i11 = (iHashCode ^ (iHashCode >>> 16)) & i10;
        Object obj3 = objArr[i11];
        if (obj3 != null) {
            if (obj3.equals(bVar)) {
                return;
            }
            do {
                i11 = (i11 + 1) & i10;
                obj2 = objArr[i11];
                if (obj2 == null) {
                }
            } while (!obj2.equals(bVar));
            return;
        }
        objArr[i11] = bVar;
        int i12 = this.f24b + 1;
        this.f24b = i12;
        if (i12 < this.f25c) {
            return;
        }
        Object[] objArr2 = (Object[]) this.f26d;
        int length = objArr2.length;
        int i13 = length << 1;
        int i14 = i13 - 1;
        Object[] objArr3 = new Object[i13];
        while (true) {
            int i15 = i12 - 1;
            if (i12 == 0) {
                this.f23a = i14;
                this.f25c = (int) (i13 * 0.75f);
                this.f26d = objArr3;
                return;
            }
            do {
                length--;
                obj = objArr2[length];
            } while (obj == null);
            int iHashCode2 = obj.hashCode() * (-1640531527);
            int i16 = (iHashCode2 ^ (iHashCode2 >>> 16)) & i14;
            if (objArr3[i16] != null) {
                do {
                    i16 = (i16 + 1) & i14;
                } while (objArr3[i16] != null);
            }
            objArr3[i16] = objArr2[length];
            i12 = i15;
        }
    }

    public void b(int i10) {
        int[] iArr = (int[]) this.f26d;
        int i11 = this.f24b;
        iArr[i11] = i10;
        int i12 = this.f25c & (i11 + 1);
        this.f24b = i12;
        int i13 = this.f23a;
        if (i12 == i13) {
            int length = iArr.length;
            int i14 = length - i13;
            int i15 = length << 1;
            int[] iArr2 = new int[i15];
            System.arraycopy(iArr, i13, iArr2, 0, i14);
            System.arraycopy((int[]) this.f26d, 0, iArr2, i14, this.f23a);
            this.f26d = iArr2;
            this.f23a = 0;
            this.f24b = length;
            this.f25c = i15 - 1;
        }
    }

    public void c() {
        Object[] objArr = (Object[]) this.f26d;
        int length = objArr.length;
        int i10 = this.f23a;
        int i11 = length - i10;
        int i12 = length << 1;
        if (i12 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        Object[] objArr2 = new Object[i12];
        je.i.d0(0, i10, length, objArr, objArr2);
        je.i.d0(i11, 0, this.f23a, (Object[]) this.f26d, objArr2);
        this.f26d = objArr2;
        this.f23a = 0;
        this.f24b = length;
        this.f25c = i12 - 1;
    }

    public void d(int i10, int i11, Object[] objArr) {
        int i12;
        Object obj;
        this.f24b--;
        while (true) {
            int i13 = i10 + 1;
            while (true) {
                i12 = i13 & i11;
                obj = objArr[i12];
                if (obj == null) {
                    objArr[i10] = null;
                    return;
                }
                int iHashCode = obj.hashCode() * (-1640531527);
                int i14 = (iHashCode ^ (iHashCode >>> 16)) & i11;
                if (i10 <= i12) {
                    if (i10 >= i14 || i14 > i12) {
                        break;
                    } else {
                        i13 = i12 + 1;
                    }
                } else if (i10 < i14 || i14 <= i12) {
                    i13 = i12 + 1;
                }
            }
            objArr[i10] = obj;
            i10 = i12;
        }
    }

    public void e(int i10) {
        if (i10 <= 0) {
            return;
        }
        if (i10 > g()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i11 = this.f24b;
        int i12 = i10 < i11 ? i11 - i10 : 0;
        for (int i13 = i12; i13 < i11; i13++) {
            ((Object[]) this.f26d)[i13] = null;
        }
        int i14 = this.f24b;
        int i15 = i14 - i12;
        int i16 = i10 - i15;
        this.f24b = i14 - i15;
        if (i16 > 0) {
            int length = ((Object[]) this.f26d).length;
            this.f24b = length;
            int i17 = length - i16;
            for (int i18 = i17; i18 < length; i18++) {
                ((Object[]) this.f26d)[i18] = null;
            }
            this.f24b = i17;
        }
    }

    public void f(int i10) {
        if (i10 <= 0) {
            return;
        }
        if (i10 > g()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = ((Object[]) this.f26d).length;
        int i11 = this.f23a;
        if (i10 < length - i11) {
            length = i11 + i10;
        }
        while (i11 < length) {
            ((Object[]) this.f26d)[i11] = null;
            i11++;
        }
        int i12 = this.f23a;
        int i13 = length - i12;
        int i14 = i10 - i13;
        this.f23a = this.f25c & (i12 + i13);
        if (i14 > 0) {
            for (int i15 = 0; i15 < i14; i15++) {
                ((Object[]) this.f26d)[i15] = null;
            }
            this.f23a = i14;
        }
    }

    public int g() {
        return (this.f24b - this.f23a) & this.f25c;
    }
}
