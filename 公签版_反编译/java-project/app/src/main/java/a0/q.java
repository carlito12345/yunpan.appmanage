package a0;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f55a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f56b;

    /* renamed from: c, reason: collision with root package name */
    public final int f57c;

    public q() {
        long[] jArr = s.f62a;
        this.f55a = jArr;
        this.f56b = j.f32a;
        int iB = s.b(0);
        if (iB > 0) {
            iMax = Math.max(7, iB > 0 ? (-1) >>> Integer.numberOfLeadingZeros(iB) : 0);
        }
        this.f57c = iMax;
        if (iMax != 0) {
            jArr = new long[((iMax + 15) & (-8)) >> 3];
            je.i.j0(jArr);
        }
        this.f55a = jArr;
        int i10 = iMax >> 3;
        long j10 = 255 << ((iMax & 7) << 3);
        jArr[i10] = (jArr[i10] & ((-1) ^ j10)) | j10;
        this.f56b = new long[iMax];
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c4, code lost:
    
        r2 = -1;
        r20 = -9187201950435737472L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d6, code lost:
    
        if (((r10 & ((r10 ^ (-1)) << 6)) & (-9187201950435737472L)) == 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d8, code lost:
    
        r25 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        long[] jArr;
        long[] jArr2;
        long[] jArr3;
        long[] jArr4;
        long j10;
        long j11;
        int iNumberOfTrailingZeros;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        qVar.getClass();
        long[] jArr5 = this.f56b;
        long[] jArr6 = this.f55a;
        int length = jArr6.length - 2;
        if (length < 0) {
            return true;
        }
        int i10 = 0;
        while (true) {
            long j12 = jArr6[i10];
            long j13 = -1;
            int i11 = 7;
            long j14 = -9187201950435737472L;
            if ((((j12 ^ (-1)) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - (((i10 - length) ^ (-1)) >>> 31);
                int i13 = 0;
                while (i13 < i12) {
                    if ((j12 & 255) < 128) {
                        long j15 = jArr5[(i10 << 3) + i13];
                        jArr4 = jArr6;
                        int i14 = ((int) (j15 ^ (j15 >>> 32))) * (-862048943);
                        int i15 = (i14 << 16) ^ i14;
                        int i16 = i15 & 127;
                        int i17 = qVar.f57c;
                        int i18 = (i15 >>> i11) & i17;
                        int i19 = 0;
                        while (true) {
                            long[] jArr7 = qVar.f55a;
                            int i20 = i18 >> 3;
                            int i21 = (i18 & 7) << 3;
                            long j16 = (jArr7[i20] >>> i21) | ((jArr7[i20 + 1] << (64 - i21)) & ((-i21) >> 63));
                            jArr3 = jArr5;
                            long j17 = (i16 * 72340172838076673L) ^ j16;
                            long j18 = (j17 - 72340172838076673L) & (j17 ^ (-1)) & (-9187201950435737472L);
                            while (true) {
                                if (j18 == 0) {
                                    break;
                                }
                                iNumberOfTrailingZeros = (i18 + (Long.numberOfTrailingZeros(j18) >> 3)) & i17;
                                if (qVar.f56b[iNumberOfTrailingZeros] == j15) {
                                    j10 = -1;
                                    j11 = -9187201950435737472L;
                                    break;
                                }
                                j18 &= j18 - 1;
                            }
                            i19 += 8;
                            i18 = (i18 + i19) & i17;
                            jArr5 = jArr3;
                        }
                        if (!(iNumberOfTrailingZeros >= 0)) {
                            return false;
                        }
                    } else {
                        jArr3 = jArr5;
                        jArr4 = jArr6;
                        j10 = j13;
                        j11 = j14;
                    }
                    j12 >>= 8;
                    i13++;
                    j13 = j10;
                    j14 = j11;
                    jArr6 = jArr4;
                    jArr5 = jArr3;
                    i11 = 7;
                }
                jArr = jArr5;
                jArr2 = jArr6;
                if (i12 != 8) {
                    return true;
                }
            } else {
                jArr = jArr5;
                jArr2 = jArr6;
            }
            if (i10 == length) {
                return true;
            }
            i10++;
            jArr6 = jArr2;
            jArr5 = jArr;
        }
    }

    public final int hashCode() {
        long[] jArr = this.f56b;
        long[] jArr2 = this.f55a;
        int length = jArr2.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                long j10 = jArr2[i11];
                if (((((-1) ^ j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - (((i11 - length) ^ (-1)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j10) < 128) {
                            long j11 = jArr[(i11 << 3) + i14];
                            i12 += (int) (j11 ^ (j11 >>> 32));
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

    /* JADX WARN: Removed duplicated region for block: B:19:0x005e A[PHI: r7
  0x005e: PHI (r7v2 int) = (r7v1 int), (r7v3 int) binds: [B:6:0x0027, B:18:0x005c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "[");
        long[] jArr = this.f56b;
        long[] jArr2 = this.f55a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            int i11 = 0;
            loop0: while (true) {
                long j10 = jArr2[i10];
                if (((((-1) ^ j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - (((i10 - length) ^ (-1)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            long j11 = jArr[(i10 << 3) + i13];
                            if (i11 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i11 != 0) {
                                sb2.append((CharSequence) ", ");
                            }
                            sb2.append(j11);
                            i11++;
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    }
                    if (i10 == length) {
                        break;
                    }
                    i10++;
                }
            }
            sb2.append((CharSequence) "]");
        } else {
            sb2.append((CharSequence) "]");
        }
        String string = sb2.toString();
        ue.d.d(string, "toString(...)");
        return string;
    }
}
