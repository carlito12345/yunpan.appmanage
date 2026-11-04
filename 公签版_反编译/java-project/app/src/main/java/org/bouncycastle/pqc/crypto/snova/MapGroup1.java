package org.bouncycastle.pqc.crypto.snova;

import java.lang.reflect.Array;
import org.bouncycastle.util.GF16;

/* loaded from: classes3.dex */
class MapGroup1 {
    public final byte[][][] aAlpha;
    public final byte[][][] bAlpha;
    public final byte[][][][] p11;
    public final byte[][][][] p12;
    public final byte[][][][] p21;
    public final byte[][][] qAlpha1;
    public final byte[][][] qAlpha2;

    public MapGroup1(SnovaParameters snovaParameters) {
        int m10 = snovaParameters.getM();
        int v10 = snovaParameters.getV();
        int o10 = snovaParameters.getO();
        int alpha = snovaParameters.getAlpha();
        int lsq = snovaParameters.getLsq();
        Class cls = Byte.TYPE;
        this.p11 = (byte[][][][]) Array.newInstance((Class<?>) cls, m10, v10, v10, lsq);
        this.p12 = (byte[][][][]) Array.newInstance((Class<?>) cls, m10, v10, o10, lsq);
        this.p21 = (byte[][][][]) Array.newInstance((Class<?>) cls, m10, o10, v10, lsq);
        this.aAlpha = (byte[][][]) Array.newInstance((Class<?>) cls, m10, alpha, lsq);
        this.bAlpha = (byte[][][]) Array.newInstance((Class<?>) cls, m10, alpha, lsq);
        this.qAlpha1 = (byte[][][]) Array.newInstance((Class<?>) cls, m10, alpha, lsq);
        this.qAlpha2 = (byte[][][]) Array.newInstance((Class<?>) cls, m10, alpha, lsq);
    }

    private static int decodeAlpha(byte[] bArr, int i10, byte[][][] bArr2, int i11) {
        int iDecodeArray = 0;
        for (byte[][] bArr3 : bArr2) {
            iDecodeArray += decodeArray(bArr, i10 + iDecodeArray, bArr3, i11 - iDecodeArray);
        }
        return iDecodeArray;
    }

    public static int decodeArray(byte[] bArr, int i10, byte[][] bArr2, int i11) {
        int i12 = 0;
        for (int i13 = 0; i13 < bArr2.length; i13++) {
            int iMin = Math.min(bArr2[i13].length, i11 << 1);
            GF16.decode(bArr, i10 + i12, bArr2[i13], 0, iMin);
            int i14 = (iMin + 1) >> 1;
            i12 += i14;
            i11 -= i14;
        }
        return i12;
    }

    public static int decodeP(byte[] bArr, int i10, byte[][][][] bArr2, int i11) {
        int iDecodeAlpha = 0;
        for (byte[][][] bArr3 : bArr2) {
            iDecodeAlpha += decodeAlpha(bArr, i10 + iDecodeAlpha, bArr3, i11);
        }
        return iDecodeAlpha;
    }

    public static int fillAlpha(byte[] bArr, int i10, byte[][][] bArr2, int i11) {
        int i12 = 0;
        for (int i13 = 0; i13 < bArr2.length; i13++) {
            int i14 = 0;
            while (true) {
                byte[][] bArr3 = bArr2[i13];
                if (i14 < bArr3.length) {
                    int iMin = Math.min(bArr3[i14].length, i11 - i12);
                    System.arraycopy(bArr, i10 + i12, bArr2[i13][i14], 0, iMin);
                    i12 += iMin;
                    i14++;
                }
            }
        }
        return i12;
    }

    public static int fillP(byte[] bArr, int i10, byte[][][][] bArr2, int i11) {
        int iFillAlpha = 0;
        for (byte[][][] bArr3 : bArr2) {
            iFillAlpha += fillAlpha(bArr, i10 + iFillAlpha, bArr3, i11 - iFillAlpha);
        }
        return iFillAlpha;
    }

    public void decode(byte[] bArr, int i10, boolean z) {
        int iDecodeP = decodeP(bArr, 0, this.p11, i10);
        int iDecodeP2 = iDecodeP + decodeP(bArr, iDecodeP, this.p12, i10 - iDecodeP);
        int iDecodeP3 = iDecodeP2 + decodeP(bArr, iDecodeP2, this.p21, i10 - iDecodeP2);
        if (z) {
            int iDecodeAlpha = iDecodeP3 + decodeAlpha(bArr, iDecodeP3, this.aAlpha, i10 - iDecodeP3);
            int iDecodeAlpha2 = iDecodeAlpha + decodeAlpha(bArr, iDecodeAlpha, this.bAlpha, i10 - iDecodeAlpha);
            int iDecodeAlpha3 = iDecodeAlpha2 + decodeAlpha(bArr, iDecodeAlpha2, this.qAlpha1, i10 - iDecodeAlpha2);
            decodeAlpha(bArr, iDecodeAlpha3, this.qAlpha2, i10 - iDecodeAlpha3);
        }
    }

    public void fill(byte[] bArr, boolean z) {
        int iFillP = fillP(bArr, 0, this.p11, bArr.length);
        int iFillP2 = iFillP + fillP(bArr, iFillP, this.p12, bArr.length - iFillP);
        int iFillP3 = iFillP2 + fillP(bArr, iFillP2, this.p21, bArr.length - iFillP2);
        if (z) {
            int iFillAlpha = iFillP3 + fillAlpha(bArr, iFillP3, this.aAlpha, bArr.length - iFillP3);
            int iFillAlpha2 = iFillAlpha + fillAlpha(bArr, iFillAlpha, this.bAlpha, bArr.length - iFillAlpha);
            int iFillAlpha3 = iFillAlpha2 + fillAlpha(bArr, iFillAlpha2, this.qAlpha1, bArr.length - iFillAlpha2);
            fillAlpha(bArr, iFillAlpha3, this.qAlpha2, bArr.length - iFillAlpha3);
        }
    }
}
