package org.bouncycastle.pqc.crypto.mayo;

import org.bouncycastle.util.GF16;

/* loaded from: classes3.dex */
class GF16Utils {
    static final long MASK_LSB = 1229782938247303441L;
    static final long MASK_MSB = -8608480567731124088L;
    static final long NIBBLE_MASK_LSB = -1229782938247303442L;
    static final long NIBBLE_MASK_MSB = 8608480567731124087L;

    public static void mVecMulAdd(int i10, long[] jArr, int i11, int i12, long[] jArr2, int i13) {
        long j10 = i12;
        long j11 = 4294967295L & j10;
        long j12 = j10 & 1;
        long j13 = (j11 >>> 1) & 1;
        long j14 = (j11 >>> 2) & 1;
        char c7 = 3;
        long j15 = (j11 >>> 3) & 1;
        int i14 = 0;
        int i15 = i11;
        int i16 = i13;
        while (i14 < i10) {
            long j16 = jArr[i15];
            long j17 = j13;
            long j18 = (-j12) & j16;
            long j19 = (j16 & MASK_MSB) >>> c7;
            long j20 = ((j16 & NIBBLE_MASK_MSB) << 1) ^ (j19 + (j19 << 1));
            int i17 = i16;
            long j21 = j18 ^ ((-j17) & j20);
            long j22 = (j20 & MASK_MSB) >>> 3;
            long j23 = (j22 + (j22 << 1)) ^ ((j20 & NIBBLE_MASK_MSB) << 1);
            long j24 = j12;
            long j25 = ((-j14) & j23) ^ j21;
            long j26 = (j23 & MASK_MSB) >>> 3;
            jArr2[i17] = jArr2[i17] ^ (j25 ^ (((j26 + (j26 << 1)) ^ ((j23 & NIBBLE_MASK_MSB) << 1)) & (-j15)));
            i14++;
            j13 = j17;
            i16 = i17 + 1;
            i15++;
            j12 = j24;
            j14 = j14;
            c7 = 3;
        }
    }

    public static void matMul(byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, int i11, int i12) {
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < i12) {
            int i16 = 0;
            byte bMul = 0;
            while (i16 < i11) {
                bMul = (byte) (GF16.mul(bArr[i14], bArr2[i10 + i16]) ^ bMul);
                i16++;
                i14++;
            }
            bArr3[i15] = bMul;
            i13++;
            i15++;
        }
    }

    public static void mulAddMUpperTriangularMatXMat(int i10, long[] jArr, byte[] bArr, long[] jArr2, int i11, int i12, int i13) {
        int i14 = i13 * i10;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 < i12) {
            int i19 = i15;
            int i20 = i16;
            int i21 = i17;
            while (i20 < i12) {
                int i22 = 0;
                int i23 = 0;
                while (i22 < i13) {
                    mVecMulAdd(i10, jArr, i19, bArr[i21 + i22], jArr2, i11 + i18 + i23);
                    i22++;
                    i23 += i10;
                }
                i19 += i10;
                i20++;
                i21 += i13;
            }
            i16++;
            i17 += i13;
            i18 += i14;
            i15 = i19;
        }
    }

    public static void mulAddMUpperTriangularMatXMatTrans(int i10, long[] jArr, byte[] bArr, long[] jArr2, int i11, int i12) {
        int i13 = i10 * i12;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i15 < i11) {
            int i17 = i14;
            for (int i18 = i15; i18 < i11; i18++) {
                int i19 = 0;
                int i20 = 0;
                int i21 = 0;
                while (i19 < i12) {
                    mVecMulAdd(i10, jArr, i17, bArr[i20 + i18], jArr2, i16 + i21);
                    i19++;
                    i20 += i11;
                    i21 += i10;
                }
                i17 += i10;
            }
            i15++;
            i16 += i13;
            i14 = i17;
        }
    }

    public static void mulAddMatTransXMMat(int i10, byte[] bArr, long[] jArr, int i11, long[] jArr2, int i12, int i13) {
        int i14 = i13 * i10;
        int i15 = 0;
        int i16 = 0;
        while (i15 < i13) {
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            while (i17 < i12) {
                byte b10 = bArr[i18 + i15];
                int i20 = 0;
                int i21 = 0;
                while (i20 < i13) {
                    mVecMulAdd(i10, jArr, i11 + i19 + i21, b10, jArr2, i16 + i21);
                    i20++;
                    i21 += i10;
                }
                i17++;
                i18 += i13;
                i19 += i14;
            }
            i15++;
            i16 += i14;
        }
    }

    public static void mulAddMatXMMat(int i10, byte[] bArr, long[] jArr, int i11, long[] jArr2, int i12, int i13, int i14) {
        int i15 = i10 * i14;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 < i12) {
            int i19 = 0;
            int i20 = 0;
            while (i19 < i13) {
                byte b10 = bArr[i18 + i19];
                int i21 = 0;
                int i22 = 0;
                while (i21 < i14) {
                    mVecMulAdd(i10, jArr, i20 + i22 + i11, b10, jArr2, i17 + i22);
                    i21++;
                    i22 += i10;
                }
                i19++;
                i20 += i15;
            }
            i16++;
            i17 += i15;
            i18 += i13;
        }
    }

    public static long mulFx8(byte b10, long j10) {
        int i10 = b10 & 255;
        long j11 = ((j10 << 3) & (-((i10 >> 3) & 1))) ^ ((((-(b10 & 1)) & j10) ^ ((-((i10 >> 1) & 1)) & (j10 << 1))) ^ ((-((i10 >> 2) & 1)) & (j10 << 2)));
        long j12 = (-1085102592571150096L) & j11;
        return ((j11 ^ (j12 >>> 4)) ^ (j12 >>> 3)) & 1085102592571150095L;
    }

    public static void mulAddMatXMMat(int i10, byte[] bArr, long[] jArr, long[] jArr2, int i11, int i12) {
        int i13 = i10 * i11;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i14 < i11) {
            int i17 = 0;
            int i18 = 0;
            while (i17 < i12) {
                byte b10 = bArr[i15 + i17];
                int i19 = 0;
                int i20 = 0;
                while (i19 < i11) {
                    mVecMulAdd(i10, jArr, i18 + i20, b10, jArr2, i16 + i20);
                    i19++;
                    i20 += i10;
                }
                i17++;
                i18 += i13;
            }
            i14++;
            i15 += i12;
            i16 += i13;
        }
    }
}
