package org.bouncycastle.pqc.crypto.snova;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
class SnovaKeyElements {
    public final byte[][][] T12;
    public final MapGroup1 map1;
    public final MapGroup2 map2;

    public SnovaKeyElements(SnovaParameters snovaParameters) {
        int o10 = snovaParameters.getO();
        int v10 = snovaParameters.getV();
        int lsq = snovaParameters.getLsq();
        this.map1 = new MapGroup1(snovaParameters);
        this.T12 = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, v10, o10, lsq);
        this.map2 = new MapGroup2(snovaParameters);
    }

    public static int copy3d(byte[] bArr, int i10, byte[][][] bArr2) {
        for (int i11 = 0; i11 < bArr2.length; i11++) {
            int i12 = 0;
            while (true) {
                byte[][] bArr3 = bArr2[i11];
                if (i12 < bArr3.length) {
                    byte[] bArr4 = bArr3[i12];
                    System.arraycopy(bArr, i10, bArr4, 0, bArr4.length);
                    i10 += bArr2[i11][i12].length;
                    i12++;
                }
            }
        }
        return i10;
    }

    public static int copy4d(byte[] bArr, int i10, byte[][][][] bArr2) {
        for (int i11 = 0; i11 < bArr2.length; i11++) {
            for (int i12 = 0; i12 < bArr2[i11].length; i12++) {
                int i13 = 0;
                while (true) {
                    byte[][] bArr3 = bArr2[i11][i12];
                    if (i13 < bArr3.length) {
                        byte[] bArr4 = bArr3[i13];
                        System.arraycopy(bArr, i10, bArr4, 0, bArr4.length);
                        i10 += bArr2[i11][i12][i13].length;
                        i13++;
                    }
                }
            }
        }
        return i10;
    }

    public static int copy3d(byte[][][] bArr, byte[] bArr2, int i10) {
        for (int i11 = 0; i11 < bArr.length; i11++) {
            int i12 = 0;
            while (true) {
                byte[][] bArr3 = bArr[i11];
                if (i12 < bArr3.length) {
                    byte[] bArr4 = bArr3[i12];
                    System.arraycopy(bArr4, 0, bArr2, i10, bArr4.length);
                    i10 += bArr[i11][i12].length;
                    i12++;
                }
            }
        }
        return i10;
    }

    public static int copy4d(byte[][][][] bArr, byte[] bArr2, int i10) {
        for (byte[][][] bArr3 : bArr) {
            i10 = copy3d(bArr3, bArr2, i10);
        }
        return i10;
    }
}
