package org.bouncycastle.util;

import com.android.apksig.internal.apk.v4.V4Signature;

/* loaded from: classes3.dex */
public class GF16 {
    private static final byte[] F_STAR = {1, 2, 4, 8, 3, 6, V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, 11, 5, 10, 7, 14, 15, 13, 9};
    private static final byte[] MT4B = new byte[256];
    private static final byte[] INV4B = new byte[16];

    static {
        for (int i10 = 0; i10 < 15; i10++) {
            for (int i11 = 0; i11 < 15; i11++) {
                byte[] bArr = MT4B;
                byte[] bArr2 = F_STAR;
                bArr[(bArr2[i10] << 4) ^ bArr2[i11]] = bArr2[(i10 + i11) % 15];
            }
        }
        byte[] bArr3 = F_STAR;
        byte b10 = bArr3[1];
        byte b11 = bArr3[14];
        INV4B[1] = 1;
        byte bMt = 1;
        byte bMt2 = 1;
        for (int i12 = 0; i12 < 14; i12++) {
            bMt = mt(bMt, b10);
            bMt2 = mt(bMt2, b11);
            INV4B[bMt] = bMt2;
        }
    }

    public static void decode(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        int i13 = i12 >> 1;
        int i14 = 0;
        while (i14 < i13) {
            int i15 = i11 + 1;
            bArr2[i11] = (byte) (bArr[i10] & 15);
            i11 += 2;
            bArr2[i15] = (byte) ((bArr[i10] >>> 4) & 15);
            i14++;
            i10++;
        }
        if ((i12 & 1) == 1) {
            bArr2[i11] = (byte) (bArr[i10] & 15);
        }
    }

    public static void encode(byte[] bArr, byte[] bArr2, int i10) {
        int i11 = i10 >> 1;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            int i14 = i13 + 1;
            int i15 = bArr[i13] & 15;
            i13 += 2;
            bArr2[i12] = (byte) (((bArr[i14] & 15) << 4) | i15);
            i12++;
        }
        if ((i10 & 1) == 1) {
            bArr2[i12] = (byte) (bArr[i13] & 15);
        }
    }

    public static byte innerProduct(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        int i13 = 0;
        byte bMul = 0;
        while (i13 < i12) {
            bMul = (byte) (mul(bArr[i10], bArr2[i11]) ^ bMul);
            i13++;
            i11 += i12;
            i10++;
        }
        return bMul;
    }

    public static byte inv(byte b10) {
        return INV4B[b10 & 15];
    }

    public static byte mt(int i10, int i11) {
        return MT4B[(i10 << 4) ^ i11];
    }

    public static byte mul(byte b10, byte b11) {
        return MT4B[(b10 << 4) | b11];
    }

    public static void decode(byte[] bArr, byte[] bArr2, int i10) {
        int i11 = i10 >> 1;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            int i14 = i13 + 1;
            bArr2[i13] = (byte) (bArr[i12] & 15);
            i13 += 2;
            bArr2[i14] = (byte) ((bArr[i12] >>> 4) & 15);
            i12++;
        }
        if ((i10 & 1) == 1) {
            bArr2[i13] = (byte) (bArr[i12] & 15);
        }
    }

    public static void encode(byte[] bArr, byte[] bArr2, int i10, int i11) {
        int i12 = i11 >> 1;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i12) {
            int i15 = i14 + 1;
            int i16 = bArr[i14] & 15;
            i14 += 2;
            bArr2[i10] = (byte) (((bArr[i15] & 15) << 4) | i16);
            i13++;
            i10++;
        }
        if ((i11 & 1) == 1) {
            bArr2[i10] = (byte) (bArr[i14] & 15);
        }
    }

    public static int mul(int i10, int i11) {
        return MT4B[(i10 << 4) | i11];
    }
}
