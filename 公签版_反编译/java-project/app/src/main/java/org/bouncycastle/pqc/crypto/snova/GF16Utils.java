package org.bouncycastle.pqc.crypto.snova;

import org.bouncycastle.util.GF16;

/* loaded from: classes3.dex */
class GF16Utils {
    private static final int GF16_MASK = 585;

    public static int ctGF16IsNotZero(byte b10) {
        int i10 = b10 & 255;
        return ((i10 >>> 3) | (i10 >>> 1) | i10 | (i10 >>> 2)) & 1;
    }

    public static void decodeMergeInHalf(byte[] bArr, byte[] bArr2, int i10) {
        int i11 = (i10 + 1) >>> 1;
        for (int i12 = 0; i12 < i11; i12++) {
            bArr2[i12] = (byte) (bArr[i12] & 15);
            bArr2[i12 + i11] = (byte) ((bArr[i12] >>> 4) & 15);
        }
    }

    public static void encodeMergeInHalf(byte[] bArr, int i10, byte[] bArr2) {
        int i11 = (i10 + 1) >>> 1;
        int i12 = 0;
        while (i12 < i10 / 2) {
            bArr2[i12] = (byte) (bArr[i12] | (bArr[i11] << 4));
            i12++;
            i11++;
        }
        if ((i10 & 1) == 1) {
            bArr2[i12] = bArr[i12];
        }
    }

    public static int gf16FromNibble(int i10) {
        int i11 = i10 | (i10 << 4);
        return ((i11 << 2) & 520) | (i11 & 65);
    }

    private static int gf16Reduce(int i10) {
        int i11 = 1227133513 & i10;
        int i12 = i10 >>> 12;
        int i13 = (i12 ^ (i12 << 3)) ^ i11;
        int i14 = i13 >>> 12;
        int i15 = i13 ^ (i14 ^ (i14 << 3));
        int i16 = i15 >>> 12;
        return (i15 ^ (i16 ^ (i16 << 3))) & GF16_MASK;
    }

    public static byte gf16ToNibble(int i10) {
        int iGf16Reduce = gf16Reduce(i10);
        int i11 = iGf16Reduce | (iGf16Reduce >>> 4);
        return (byte) (((i11 >>> 2) & 10) | (i11 & 5));
    }

    public static void gf16mMul(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i10) {
            int i14 = 0;
            while (i14 < i10) {
                bArr3[i13] = GF16.innerProduct(bArr, i12, bArr2, i14, i10);
                i14++;
                i13++;
            }
            i11++;
            i12 += i10;
        }
    }

    public static void gf16mMulMul(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, int i10) {
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i10) {
            for (int i14 = 0; i14 < i10; i14++) {
                bArr4[i14] = GF16.innerProduct(bArr, i12, bArr2, i14, i10);
            }
            int i15 = 0;
            while (i15 < i10) {
                bArr5[i13] = GF16.innerProduct(bArr4, 0, bArr3, i15, i10);
                i15++;
                i13++;
            }
            i11++;
            i12 += i10;
        }
    }

    public static void gf16mMulMulTo(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, int i10) {
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i10) {
            for (int i14 = 0; i14 < i10; i14++) {
                bArr4[i14] = GF16.innerProduct(bArr, i12, bArr2, i14, i10);
            }
            int i15 = 0;
            while (i15 < i10) {
                bArr5[i13] = (byte) (bArr5[i13] ^ GF16.innerProduct(bArr4, 0, bArr3, i15, i10));
                i15++;
                i13++;
            }
            i11++;
            i12 += i10;
        }
    }

    public static void gf16mMulTo(byte[] bArr, byte[] bArr2, int i10, byte[] bArr3, int i11, int i12) {
        int i13 = 0;
        int i14 = 0;
        while (i13 < i12) {
            int i15 = 0;
            while (i15 < i12) {
                bArr3[i11] = (byte) (bArr3[i11] ^ GF16.innerProduct(bArr, i14, bArr2, i10 + i15, i12));
                i15++;
                i11++;
            }
            i13++;
            i14 += i12;
        }
    }

    public static void gf16mMulToTo(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, int i10) {
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i10) {
            int i14 = 0;
            while (i14 < i10) {
                bArr4[i13] = (byte) (bArr4[i13] ^ GF16.innerProduct(bArr, i12, bArr2, i14, i10));
                bArr5[i13] = (byte) (bArr5[i13] ^ GF16.innerProduct(bArr2, i12, bArr3, i14, i10));
                i14++;
                i13++;
            }
            i11++;
            i12 += i10;
        }
    }

    public static void gf16mTranMulMul(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7, byte[] bArr8, int i11) {
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < i11) {
            for (int i15 = 0; i15 < i11; i15++) {
                int i16 = i10 + i15;
                int i17 = i12;
                int i18 = 0;
                byte bMul = 0;
                while (i18 < i11) {
                    bMul = (byte) (bMul ^ GF16.mul(bArr[i16], bArr4[i17]));
                    i18++;
                    i16 += i11;
                    i17 += i11;
                }
                bArr6[i15] = bMul;
            }
            int i19 = 0;
            int i20 = 0;
            while (i19 < i11) {
                byte bMul2 = 0;
                for (int i21 = 0; i21 < i11; i21++) {
                    bMul2 = (byte) (bMul2 ^ GF16.mul(bArr2[i20 + i21], bArr6[i21]));
                }
                bArr7[i12 + i20] = bMul2;
                i19++;
                i20 += i11;
            }
            for (int i22 = 0; i22 < i11; i22++) {
                bArr6[i22] = GF16.innerProduct(bArr5, i13, bArr, i10 + i22, i11);
            }
            int i23 = 0;
            while (i23 < i11) {
                bArr8[i14] = GF16.innerProduct(bArr6, 0, bArr3, i23, i11);
                i23++;
                i14++;
            }
            i12++;
            i13 += i11;
        }
    }

    public static void gf16mMulTo(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i10) {
            int i14 = 0;
            while (i14 < i10) {
                bArr3[i13] = (byte) (bArr3[i13] ^ GF16.innerProduct(bArr, i12, bArr2, i14, i10));
                i14++;
                i13++;
            }
            i11++;
            i12 += i10;
        }
    }

    public static void gf16mMulTo(byte[] bArr, byte[] bArr2, byte[] bArr3, int i10, int i11) {
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            int i14 = 0;
            while (i14 < i11) {
                bArr3[i10] = (byte) (bArr3[i10] ^ GF16.innerProduct(bArr, i13, bArr2, i14, i11));
                i14++;
                i10++;
            }
            i12++;
            i13 += i11;
        }
    }

    public static void gf16mMulTo(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, int i10, int i11) {
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            int i14 = 0;
            while (i14 < i11) {
                bArr5[i10] = (byte) (bArr5[i10] ^ (GF16.innerProduct(bArr, i13, bArr2, i14, i11) ^ GF16.innerProduct(bArr3, i13, bArr4, i14, i11)));
                i14++;
                i10++;
            }
            i12++;
            i13 += i11;
        }
    }
}
