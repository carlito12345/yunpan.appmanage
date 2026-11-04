package org.bouncycastle.math.raw;

/* loaded from: classes3.dex */
public abstract class Mont256 {
    private static final long M = 4294967295L;

    public static int inverse32(int i10) {
        int i11 = (2 - (i10 * i10)) * i10;
        int i12 = (2 - (i10 * i11)) * i11;
        int i13 = (2 - (i10 * i12)) * i12;
        return (2 - (i10 * i13)) * i13;
    }

    public static void multAdd(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i10) {
        char c7 = 0;
        long j10 = iArr2[0] & 4294967295L;
        int i11 = 0;
        int i12 = 0;
        while (i11 < 8) {
            long j11 = iArr[i11] & 4294967295L;
            long j12 = j11 * j10;
            long j13 = j10;
            long j14 = (((int) r10) * i10) & 4294967295L;
            int i13 = i11;
            int i14 = i12;
            long j15 = (iArr4[c7] & 4294967295L) * j14;
            long j16 = ((((j12 & 4294967295L) + (iArr3[c7] & 4294967295L)) + (j15 & 4294967295L)) >>> 32) + (j12 >>> 32) + (j15 >>> 32);
            int i15 = 1;
            for (int i16 = 8; i15 < i16; i16 = 8) {
                long j17 = (iArr2[i15] & 4294967295L) * j11;
                long j18 = (iArr4[i15] & 4294967295L) * j14;
                long j19 = (j17 & 4294967295L) + (j18 & 4294967295L) + (iArr3[i15] & 4294967295L) + j16;
                iArr3[i15 - 1] = (int) j19;
                j16 = (j19 >>> 32) + (j17 >>> 32) + (j18 >>> 32);
                i15++;
                j14 = j14;
            }
            long j20 = j16 + (i14 & 4294967295L);
            iArr3[7] = (int) j20;
            i12 = (int) (j20 >>> 32);
            i11 = i13 + 1;
            j10 = j13;
            c7 = 0;
        }
        if (i12 != 0 || Nat256.gte(iArr3, iArr4)) {
            Nat256.sub(iArr3, iArr4, iArr3);
        }
    }

    public static void multAddXF(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        char c7 = 0;
        long j10 = iArr2[0] & 4294967295L;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= 8) {
                break;
            }
            long j11 = iArr[i10] & 4294967295L;
            long j12 = (j11 * j10) + (iArr3[c7] & 4294967295L);
            long j13 = j12 & 4294967295L;
            long j14 = (j12 >>> 32) + j13;
            int i12 = 1;
            for (int i13 = 8; i12 < i13; i13 = 8) {
                long j15 = j10;
                long j16 = (iArr2[i12] & 4294967295L) * j11;
                long j17 = (iArr4[i12] & 4294967295L) * j13;
                long j18 = (j16 & 4294967295L) + (j17 & 4294967295L) + (iArr3[i12] & 4294967295L) + j14;
                iArr3[i12 - 1] = (int) j18;
                i12++;
                j14 = (j17 >>> 32) + (j18 >>> 32) + (j16 >>> 32);
                j10 = j15;
                j11 = j11;
                j13 = j13;
            }
            long j19 = j14 + (i11 & 4294967295L);
            iArr3[7] = (int) j19;
            i11 = (int) (j19 >>> 32);
            i10++;
            j10 = j10;
            c7 = 0;
        }
        if (i11 != 0 || Nat256.gte(iArr3, iArr4)) {
            Nat256.sub(iArr3, iArr4, iArr3);
        }
    }

    public static void reduce(int[] iArr, int[] iArr2, int i10) {
        char c7 = 0;
        int i11 = 0;
        while (i11 < 8) {
            long j10 = (r5 * i10) & 4294967295L;
            long j11 = (((iArr2[c7] & 4294967295L) * j10) + (iArr[c7] & 4294967295L)) >>> 32;
            int i12 = 1;
            while (i12 < 8) {
                long j12 = ((iArr2[i12] & 4294967295L) * j10) + (iArr[i12] & 4294967295L) + j11;
                iArr[i12 - 1] = (int) j12;
                j11 = j12 >>> 32;
                i12++;
                i11 = i11;
            }
            iArr[7] = (int) j11;
            i11++;
            c7 = 0;
        }
        if (Nat256.gte(iArr, iArr2)) {
            Nat256.sub(iArr, iArr2, iArr);
        }
    }

    public static void reduceXF(int[] iArr, int[] iArr2) {
        for (int i10 = 0; i10 < 8; i10++) {
            long j10 = iArr[0] & 4294967295L;
            long j11 = j10;
            for (int i11 = 1; i11 < 8; i11++) {
                long j12 = ((iArr2[i11] & 4294967295L) * j10) + (iArr[i11] & 4294967295L) + j11;
                iArr[i11 - 1] = (int) j12;
                j11 = j12 >>> 32;
            }
            iArr[7] = (int) j11;
        }
        if (Nat256.gte(iArr, iArr2)) {
            Nat256.sub(iArr, iArr2, iArr);
        }
    }
}
