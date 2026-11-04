package org.bouncycastle.crypto.threshold;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.threshold.ShamirSecretSplitter;

/* loaded from: classes3.dex */
public class ShamirSplitSecret implements SplitSecret {
    private final Polynomial poly;
    private final ShamirSplitSecretShare[] secretShares;

    public ShamirSplitSecret(Polynomial polynomial, ShamirSplitSecretShare[] shamirSplitSecretShareArr) {
        this.secretShares = shamirSplitSecretShareArr;
        this.poly = polynomial;
    }

    public ShamirSplitSecret divide(int i10) {
        int i11 = 0;
        while (true) {
            ShamirSplitSecretShare[] shamirSplitSecretShareArr = this.secretShares;
            if (i11 >= shamirSplitSecretShareArr.length) {
                return this;
            }
            byte[] encoded = shamirSplitSecretShareArr[i11].getEncoded();
            for (int i12 = 0; i12 < encoded.length; i12++) {
                encoded[i12] = this.poly.gfDiv(encoded[i12] & 255, i10);
            }
            int i13 = i11 + 1;
            this.secretShares[i11] = new ShamirSplitSecretShare(encoded, i13);
            i11 = i13;
        }
    }

    @Override // org.bouncycastle.crypto.threshold.SplitSecret
    public byte[] getSecret() {
        ShamirSplitSecretShare[] shamirSplitSecretShareArr = this.secretShares;
        int length = shamirSplitSecretShareArr.length;
        byte[] bArr = new byte[length];
        int i10 = length - 1;
        byte[] bArr2 = new byte[i10];
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, length, shamirSplitSecretShareArr[0].getEncoded().length);
        for (int i11 = 0; i11 < length; i11++) {
            bArr3[i11] = this.secretShares[i11].getEncoded();
            byte b10 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                if (i12 != i11) {
                    Polynomial polynomial = this.poly;
                    ShamirSplitSecretShare[] shamirSplitSecretShareArr2 = this.secretShares;
                    int i13 = shamirSplitSecretShareArr2[i12].r;
                    bArr2[b10] = polynomial.gfDiv(i13, shamirSplitSecretShareArr2[i11].r ^ i13);
                    b10 = (byte) (b10 + 1);
                }
            }
            byte bGfMul = 1;
            for (int i14 = 0; i14 != i10; i14++) {
                bGfMul = this.poly.gfMul(bGfMul & 255, bArr2[i14] & 255);
            }
            bArr[i11] = bGfMul;
        }
        return this.poly.gfVecMul(bArr, bArr3);
    }

    public ShamirSplitSecret multiple(int i10) {
        int i11 = 0;
        while (true) {
            ShamirSplitSecretShare[] shamirSplitSecretShareArr = this.secretShares;
            if (i11 >= shamirSplitSecretShareArr.length) {
                return this;
            }
            byte[] encoded = shamirSplitSecretShareArr[i11].getEncoded();
            for (int i12 = 0; i12 < encoded.length; i12++) {
                encoded[i12] = this.poly.gfMul(encoded[i12] & 255, i10);
            }
            int i13 = i11 + 1;
            this.secretShares[i11] = new ShamirSplitSecretShare(encoded, i13);
            i11 = i13;
        }
    }

    public ShamirSplitSecret(ShamirSecretSplitter.Algorithm algorithm, ShamirSecretSplitter.Mode mode, ShamirSplitSecretShare[] shamirSplitSecretShareArr) {
        this.secretShares = shamirSplitSecretShareArr;
        this.poly = Polynomial.newInstance(algorithm, mode);
    }

    @Override // org.bouncycastle.crypto.threshold.SplitSecret
    public ShamirSplitSecretShare[] getSecretShares() {
        return this.secretShares;
    }
}
