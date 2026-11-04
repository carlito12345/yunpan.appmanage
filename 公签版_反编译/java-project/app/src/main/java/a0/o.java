package a0;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public long[] f47a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f48b;

    /* renamed from: c, reason: collision with root package name */
    public int f49c;

    public o(int i10) {
        long[] jArr;
        this.f47a = s.f62a;
        this.f48b = i.f31a;
        if (!(i10 >= 0)) {
            b0.a.c("Capacity must be a positive value.");
            throw null;
        }
        int iB = s.b(i10);
        if (iB > 0) {
            long[] jArr2 = s.f62a;
            iMax = Math.max(7, iB > 0 ? (-1) >>> Integer.numberOfLeadingZeros(iB) : 0);
        }
        this.f49c = iMax;
        if (iMax == 0) {
            jArr = s.f62a;
        } else {
            jArr = new long[((iMax + 15) & (-8)) >> 3];
            je.i.j0(jArr);
        }
        this.f47a = jArr;
        int i11 = iMax >> 3;
        long j10 = 255 << ((7 & iMax) << 3);
        jArr[i11] = (jArr[i11] & ((-1) ^ j10)) | j10;
        s.a(this.f49c);
        this.f48b = new int[iMax];
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c3, code lost:
    
        r5 = -1;
        r20 = -9187201950435737472L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d5, code lost:
    
        if (((r2 & ((r2 ^ (-1)) << 6)) & (-9187201950435737472L)) == 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d7, code lost:
    
        r26 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        int[] iArr;
        long[] jArr;
        int[] iArr2;
        long[] jArr2;
        int i10;
        long j10;
        long j11;
        int iNumberOfTrailingZeros;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        oVar.getClass();
        int[] iArr3 = this.f48b;
        long[] jArr3 = this.f47a;
        int length = jArr3.length - 2;
        if (length < 0) {
            return true;
        }
        int i11 = 0;
        while (true) {
            long j12 = jArr3[i11];
            long j13 = -1;
            long j14 = -9187201950435737472L;
            if ((((j12 ^ (-1)) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i12 = 8 - (((i11 - length) ^ (-1)) >>> 31);
                int i13 = 0;
                while (i13 < i12) {
                    if ((j12 & 255) < 128) {
                        int i14 = iArr3[(i11 << 3) + i13];
                        int i15 = (-862048943) * i14;
                        int i16 = i15 ^ (i15 << 16);
                        int i17 = i16 & 127;
                        int i18 = oVar.f49c;
                        int i19 = (i16 >>> 7) & i18;
                        int i20 = 0;
                        while (true) {
                            long[] jArr4 = oVar.f47a;
                            int i21 = i19 >> 3;
                            int i22 = (i19 & 7) << 3;
                            long j15 = jArr4[i21] >>> i22;
                            long j16 = jArr4[i21 + 1] << (64 - i22);
                            iArr2 = iArr3;
                            long j17 = j15 | (j16 & ((-i22) >> 63));
                            jArr2 = jArr3;
                            i10 = length;
                            long j18 = (i17 * 72340172838076673L) ^ j17;
                            long j19 = (j18 - 72340172838076673L) & (j18 ^ (-1)) & (-9187201950435737472L);
                            while (true) {
                                if (j19 == 0) {
                                    break;
                                }
                                iNumberOfTrailingZeros = (i19 + (Long.numberOfTrailingZeros(j19) >> 3)) & i18;
                                if (oVar.f48b[iNumberOfTrailingZeros] == i14) {
                                    j10 = -1;
                                    j11 = -9187201950435737472L;
                                    break;
                                }
                                j19 &= j19 - 1;
                            }
                            i20 += 8;
                            i19 = (i19 + i20) & i18;
                            iArr3 = iArr2;
                            jArr3 = jArr2;
                            length = i10;
                        }
                        if (!(iNumberOfTrailingZeros >= 0)) {
                            return false;
                        }
                    } else {
                        iArr2 = iArr3;
                        jArr2 = jArr3;
                        i10 = length;
                        j10 = j13;
                        j11 = j14;
                    }
                    j12 >>= 8;
                    i13++;
                    j13 = j10;
                    iArr3 = iArr2;
                    j14 = j11;
                    jArr3 = jArr2;
                    length = i10;
                }
                iArr = iArr3;
                jArr = jArr3;
                int i23 = length;
                if (i12 != 8) {
                    return true;
                }
                length = i23;
            } else {
                iArr = iArr3;
                jArr = jArr3;
            }
            if (i11 == length) {
                return true;
            }
            i11++;
            iArr3 = iArr;
            jArr3 = jArr;
        }
    }

    public final int hashCode() {
        int[] iArr = this.f48b;
        long[] jArr = this.f47a;
        int length = jArr.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int i12 = 0;
            while (true) {
                long j10 = jArr[i11];
                if (((((-1) ^ j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i13 = 8 - (((i11 - length) ^ (-1)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((255 & j10) < 128) {
                            i12 += iArr[(i11 << 3) + i14];
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

    /* JADX WARN: Removed duplicated region for block: B:19:0x005f A[PHI: r7
  0x005f: PHI (r7v2 int) = (r7v1 int), (r7v3 int) binds: [B:6:0x0028, B:18:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) "[");
        int[] iArr = this.f48b;
        long[] jArr = this.f47a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            int i11 = 0;
            loop0: while (true) {
                long j10 = jArr[i10];
                if (((((-1) ^ j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - (((i10 - length) ^ (-1)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = iArr[(i10 << 3) + i13];
                            if (i11 == -1) {
                                sb2.append((CharSequence) "...");
                                break loop0;
                            }
                            if (i11 != 0) {
                                sb2.append((CharSequence) ", ");
                            }
                            sb2.append(i14);
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

    public o() {
        this(6);
    }
}
