package a0;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f58a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f59b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f60c;

    /* renamed from: d, reason: collision with root package name */
    public final int f61d;

    public r() {
        long[] jArr = s.f62a;
        this.f58a = jArr;
        Object[] objArr = b0.a.f2492b;
        this.f59b = objArr;
        this.f60c = objArr;
        int iB = s.b(0);
        if (iB > 0) {
            iMax = Math.max(7, iB > 0 ? (-1) >>> Integer.numberOfLeadingZeros(iB) : 0);
        }
        this.f61d = iMax;
        if (iMax != 0) {
            jArr = new long[((iMax + 15) & (-8)) >> 3];
            je.i.j0(jArr);
            int i10 = iMax >> 3;
            long j10 = 255 << ((iMax & 7) << 3);
            jArr[i10] = (jArr[i10] & ((-1) ^ j10)) | j10;
        }
        this.f58a = jArr;
        this.f59b = iMax == 0 ? objArr : new Object[iMax];
        this.f60c = iMax != 0 ? new Object[iMax] : objArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0072, code lost:
    
        if (((r6 & ((r6 ^ (-1)) << 6)) & (-9187201950435737472L)) == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
    
        r14 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj) {
        int iNumberOfTrailingZeros;
        int i10 = 0;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i11 = iHashCode ^ (iHashCode << 16);
        int i12 = i11 & 127;
        int i13 = this.f61d;
        int i14 = i11 >>> 7;
        loop0: while (true) {
            int i15 = i14 & i13;
            long[] jArr = this.f58a;
            int i16 = i15 >> 3;
            int i17 = (i15 & 7) << 3;
            long j10 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j11 = (i12 * 72340172838076673L) ^ j10;
            long j12 = (j11 ^ (-1)) & (j11 - 72340172838076673L) & (-9187201950435737472L);
            while (true) {
                if (j12 == 0) {
                    break;
                }
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i15) & i13;
                if (ue.d.a(this.f59b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
                j12 &= j12 - 1;
            }
            i10 += 8;
            i14 = i15 + i10;
        }
        if (iNumberOfTrailingZeros >= 0) {
            return this.f60c[iNumberOfTrailingZeros];
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d1, code lost:
    
        r28 = r3;
        r7 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e0, code lost:
    
        if (((r5 & ((r5 ^ (-1)) << 6)) & (-9187201950435737472L)) == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e2, code lost:
    
        r26 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        Object[] objArr;
        Object[] objArr2;
        long[] jArr;
        int i10;
        int i11;
        Object[] objArr3;
        Object[] objArr4;
        long[] jArr2;
        int i12;
        int i13;
        long j10;
        int iNumberOfTrailingZeros;
        if (obj == this) {
            return true;
        }
        int i14 = 0;
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        rVar.getClass();
        Object[] objArr5 = this.f59b;
        Object[] objArr6 = this.f60c;
        long[] jArr3 = this.f58a;
        int length = jArr3.length - 2;
        if (length < 0) {
            return true;
        }
        int i15 = 0;
        while (true) {
            long j11 = jArr3[i15];
            long j12 = -1;
            int i16 = 7;
            if ((((j11 ^ (-1)) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i17 = 8 - (((i15 - length) ^ (-1)) >>> 31);
                while (i14 < i17) {
                    if ((j11 & 255) < 128) {
                        int i18 = (i15 << 3) + i14;
                        Object obj2 = objArr5[i18];
                        Object obj3 = objArr6[i18];
                        if (obj3 != null) {
                            objArr3 = objArr5;
                            objArr4 = objArr6;
                            jArr2 = jArr3;
                            i12 = length;
                            i13 = i15;
                            j10 = -1;
                            if (!obj3.equals(rVar.a(obj2))) {
                                return false;
                            }
                            j11 >>= 8;
                            i14++;
                            j12 = j10;
                            objArr6 = objArr4;
                            jArr3 = jArr2;
                            i15 = i13;
                            objArr5 = objArr3;
                            i16 = 7;
                            length = i12;
                        } else {
                            if (rVar.a(obj2) != null) {
                                return false;
                            }
                            int iHashCode = (obj2 != null ? obj2.hashCode() : 0) * (-862048943);
                            int i19 = iHashCode ^ (iHashCode << 16);
                            int i20 = i19 & 127;
                            int i21 = rVar.f61d;
                            int i22 = (i19 >>> i16) & i21;
                            int i23 = 0;
                            while (true) {
                                long[] jArr4 = rVar.f58a;
                                int i24 = i22 >> 3;
                                int i25 = (i22 & 7) << 3;
                                long j13 = jArr4[i24] >>> i25;
                                long j14 = jArr4[i24 + 1] << (64 - i25);
                                objArr4 = objArr6;
                                jArr2 = jArr3;
                                long j15 = j13 | (j14 & ((-i25) >> 63));
                                i12 = length;
                                i13 = i15;
                                long j16 = (i20 * 72340172838076673L) ^ j15;
                                long j17 = (j16 - 72340172838076673L) & (j16 ^ (-1)) & (-9187201950435737472L);
                                while (true) {
                                    if (j17 == 0) {
                                        break;
                                    }
                                    iNumberOfTrailingZeros = (i22 + (Long.numberOfTrailingZeros(j17) >> 3)) & i21;
                                    objArr3 = objArr5;
                                    if (ue.d.a(rVar.f59b[iNumberOfTrailingZeros], obj2)) {
                                        j10 = -1;
                                        break;
                                    }
                                    j17 &= j17 - 1;
                                    objArr5 = objArr3;
                                }
                                i23 += 8;
                                i22 = (i22 + i23) & i21;
                                length = i12;
                                objArr6 = objArr4;
                                jArr3 = jArr2;
                                i15 = i13;
                                objArr5 = objArr3;
                            }
                            if (!(iNumberOfTrailingZeros >= 0)) {
                                return false;
                            }
                        }
                    } else {
                        objArr3 = objArr5;
                        objArr4 = objArr6;
                        jArr2 = jArr3;
                        i12 = length;
                        i13 = i15;
                        j10 = j12;
                    }
                    j11 >>= 8;
                    i14++;
                    j12 = j10;
                    objArr6 = objArr4;
                    jArr3 = jArr2;
                    i15 = i13;
                    objArr5 = objArr3;
                    i16 = 7;
                    length = i12;
                }
                objArr = objArr5;
                objArr2 = objArr6;
                jArr = jArr3;
                i10 = length;
                int i26 = i15;
                if (i17 != 8) {
                    return true;
                }
                i11 = i26;
            } else {
                objArr = objArr5;
                objArr2 = objArr6;
                jArr = jArr3;
                i10 = length;
                i11 = i15;
            }
            if (i11 == i10) {
                return true;
            }
            i15 = i11 + 1;
            length = i10;
            objArr6 = objArr2;
            jArr3 = jArr;
            objArr5 = objArr;
            i14 = 0;
        }
    }

    public final int hashCode() {
        Object[] objArr = this.f59b;
        Object[] objArr2 = this.f60c;
        long[] jArr = this.f58a;
        int length = jArr.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int iHashCode = 0;
            while (true) {
                long j10 = jArr[i11];
                if (((((-1) ^ j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - (((i11 - length) ^ (-1)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = (i11 << 3) + i13;
                            Object obj = objArr[i14];
                            Object obj2 = objArr2[i14];
                            iHashCode += (obj2 != null ? obj2.hashCode() : 0) ^ (obj != null ? obj.hashCode() : 0);
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        return iHashCode;
                    }
                }
                if (i11 == length) {
                    i10 = iHashCode;
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    public final String toString() {
        return "{}";
    }
}
