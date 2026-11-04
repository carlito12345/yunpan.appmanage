package org.bouncycastle.crypto.threshold;

import org.bouncycastle.crypto.threshold.ShamirSecretSplitter;

/* loaded from: classes3.dex */
abstract class Polynomial {
    public static Polynomial newInstance(ShamirSecretSplitter.Algorithm algorithm, ShamirSecretSplitter.Mode mode) {
        return mode == ShamirSecretSplitter.Mode.Native ? new PolynomialNative(algorithm) : new PolynomialTable(algorithm);
    }

    public abstract byte gfDiv(int i10, int i11);

    public abstract byte gfMul(int i10, int i11);

    public byte gfPow(int i10, byte b10) {
        byte bGfMul = 1;
        for (int i11 = 0; i11 < 8; i11++) {
            if (((1 << i11) & b10) != 0) {
                bGfMul = gfMul(bGfMul & 255, i10 & 255);
            }
            int i12 = i10 & 255;
            i10 = gfMul(i12, i12);
        }
        return bGfMul;
    }

    public byte[] gfVecMul(byte[] bArr, byte[][] bArr2) {
        byte[] bArr3 = new byte[bArr2[0].length];
        for (int i10 = 0; i10 < bArr2[0].length; i10++) {
            int iGfMul = 0;
            for (int i11 = 0; i11 < bArr.length; i11++) {
                iGfMul ^= gfMul(bArr[i11] & 255, bArr2[i11][i10] & 255);
            }
            bArr3[i10] = (byte) iGfMul;
        }
        return bArr3;
    }
}
