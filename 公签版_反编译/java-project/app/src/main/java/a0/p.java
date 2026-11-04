package a0;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f50a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f51b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f52c;

    /* renamed from: d, reason: collision with root package name */
    public final int f53d;

    /* renamed from: e, reason: collision with root package name */
    public int f54e;

    public p() {
        long[] jArr = s.f62a;
        this.f50a = jArr;
        long[] jArr2 = j.f32a;
        this.f51b = jArr2;
        this.f52c = jArr2;
        int iB = s.b(6);
        if (iB > 0) {
            iMax = Math.max(7, iB > 0 ? (-1) >>> Integer.numberOfLeadingZeros(iB) : 0);
        }
        this.f53d = iMax;
        if (iMax != 0) {
            jArr = new long[((iMax + 15) & (-8)) >> 3];
            je.i.j0(jArr);
        }
        this.f50a = jArr;
        int i10 = iMax >> 3;
        long j10 = 255 << ((iMax & 7) << 3);
        jArr[i10] = (jArr[i10] & ((-1) ^ j10)) | j10;
        s.a(this.f53d);
        this.f51b = new long[iMax];
        this.f52c = new long[iMax];
    }

    public final void a() {
        this.f54e = 0;
        long[] jArr = this.f50a;
        if (jArr != s.f62a) {
            je.i.j0(jArr);
            long[] jArr2 = this.f50a;
            int i10 = this.f53d;
            int i11 = i10 >> 3;
            long j10 = 255 << ((i10 & 7) << 3);
            jArr2[i11] = (jArr2[i11] & ((-1) ^ j10)) | j10;
        }
        s.a(this.f53d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ca, code lost:
    
        r6 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d7, code lost:
    
        if (((r2 & ((r2 ^ (-1)) << 6)) & (-9187201950435737472L)) == 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d9, code lost:
    
        r29 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        long[] jArr;
        long[] jArr2;
        long[] jArr3;
        long[] jArr4;
        long[] jArr5;
        long[] jArr6;
        int i10;
        long j10;
        int iNumberOfTrailingZeros;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        if (pVar.f54e != this.f54e) {
            return false;
        }
        long[] jArr7 = this.f51b;
        long[] jArr8 = this.f52c;
        long[] jArr9 = this.f50a;
        int length = jArr9.length - 2;
        if (length < 0) {
            return true;
        }
        int i11 = 0;
        while (true) {
            long j11 = jArr9[i11];
            long j12 = -1;
            int i12 = 7;
            if ((((j11 ^ (-1)) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i13 = 8 - (((i11 - length) ^ (-1)) >>> 31);
                int i14 = 0;
                while (i14 < i13) {
                    if ((j11 & 255) < 128) {
                        int i15 = (i11 << 3) + i14;
                        long j13 = jArr7[i15];
                        long j14 = jArr8[i15];
                        jArr5 = jArr8;
                        int i16 = ((int) (j13 ^ (j13 >>> 32))) * (-862048943);
                        int i17 = (i16 << 16) ^ i16;
                        int i18 = i17 & 127;
                        int i19 = pVar.f53d;
                        int i20 = (i17 >>> i12) & i19;
                        int i21 = 0;
                        while (true) {
                            long[] jArr10 = pVar.f50a;
                            int i22 = i20 >> 3;
                            int i23 = (i20 & 7) << 3;
                            long j15 = jArr10[i22] >>> i23;
                            long j16 = jArr10[i22 + 1] << (64 - i23);
                            jArr4 = jArr7;
                            long j17 = j15 | (j16 & ((-i23) >> 63));
                            jArr6 = jArr9;
                            i10 = length;
                            long j18 = (i18 * 72340172838076673L) ^ j17;
                            long j19 = (j18 - 72340172838076673L) & (j18 ^ (-1)) & (-9187201950435737472L);
                            while (true) {
                                if (j19 == 0) {
                                    break;
                                }
                                iNumberOfTrailingZeros = (i20 + (Long.numberOfTrailingZeros(j19) >> 3)) & i19;
                                if (pVar.f51b[iNumberOfTrailingZeros] == j13) {
                                    j10 = -1;
                                    break;
                                }
                                j19 &= j19 - 1;
                            }
                            i21 += 8;
                            i20 = (i20 + i21) & i19;
                            jArr7 = jArr4;
                            jArr9 = jArr6;
                            length = i10;
                        }
                        if (iNumberOfTrailingZeros < 0 || j14 != pVar.f52c[iNumberOfTrailingZeros]) {
                            return false;
                        }
                    } else {
                        jArr4 = jArr7;
                        jArr5 = jArr8;
                        jArr6 = jArr9;
                        i10 = length;
                        j10 = j12;
                    }
                    j11 >>= 8;
                    i14++;
                    j12 = j10;
                    jArr7 = jArr4;
                    jArr8 = jArr5;
                    jArr9 = jArr6;
                    length = i10;
                    i12 = 7;
                }
                jArr = jArr7;
                jArr2 = jArr8;
                jArr3 = jArr9;
                int i24 = length;
                if (i13 != 8) {
                    return true;
                }
                length = i24;
            } else {
                jArr = jArr7;
                jArr2 = jArr8;
                jArr3 = jArr9;
            }
            if (i11 == length) {
                return true;
            }
            i11++;
            jArr7 = jArr;
            jArr8 = jArr2;
            jArr9 = jArr3;
        }
    }

    public final int hashCode() {
        long[] jArr = this.f51b;
        long[] jArr2 = this.f52c;
        long[] jArr3 = this.f50a;
        int length = jArr3.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                long j10 = jArr3[i11];
                if (((((-1) ^ j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - (((i11 - length) ^ (-1)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j10) < 128) {
                            int i15 = (i11 << 3) + i14;
                            long j11 = jArr[i15];
                            long j12 = jArr2[i15];
                            i12 += ((int) (j11 ^ (j11 >>> 32))) ^ ((int) (j12 ^ (j12 >>> 32)));
                        }
                        j10 >>= 8;
                    }
                    if (i13 != 8) {
                        return i12;
                    }
                }
                if (i11 == length) {
                    i10 = i12;
                    break;
                }
                i11++;
            }
        }
        return i10;
    }

    public final String toString() {
        int i10;
        int i11;
        int i12;
        if (this.f54e == 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder("{");
        long[] jArr = this.f51b;
        long[] jArr2 = this.f52c;
        long[] jArr3 = this.f50a;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i13 = 0;
            int i14 = 0;
            while (true) {
                long j10 = jArr3[i13];
                if (((((-1) ^ j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i15 = 8 - (((i13 - length) ^ (-1)) >>> 31);
                    int i16 = 0;
                    while (i16 < i15) {
                        if ((255 & j10) < 128) {
                            int i17 = (i13 << 3) + i16;
                            i11 = i13;
                            long j11 = jArr[i17];
                            i12 = i16;
                            long j12 = jArr2[i17];
                            sb2.append(j11);
                            sb2.append("=");
                            sb2.append(j12);
                            i14++;
                            if (i14 < this.f54e) {
                                sb2.append(", ");
                            }
                        } else {
                            i11 = i13;
                            i12 = i16;
                        }
                        j10 >>= 8;
                        i16 = i12 + 1;
                        i13 = i11;
                    }
                    int i18 = i13;
                    if (i15 != 8) {
                        break;
                    }
                    i10 = i18;
                } else {
                    i10 = i13;
                }
                if (i10 == length) {
                    break;
                }
                i13 = i10 + 1;
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        ue.d.d(string, "toString(...)");
        return string;
    }
}
