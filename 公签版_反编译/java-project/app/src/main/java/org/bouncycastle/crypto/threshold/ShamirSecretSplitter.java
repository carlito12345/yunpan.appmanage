package org.bouncycastle.crypto.threshold;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class ShamirSecretSplitter implements SecretSplitter {
    protected int l;
    private final Polynomial poly;
    protected SecureRandom random;

    public enum Algorithm {
        AES,
        RSA
    }

    public enum Mode {
        Native,
        Table
    }

    public ShamirSecretSplitter(Algorithm algorithm, Mode mode, int i10, SecureRandom secureRandom) {
        if (i10 < 0 || i10 > 65534) {
            throw new IllegalArgumentException("Invalid input: l ranges from 0 to 65534 (2^16-2) bytes.");
        }
        this.poly = Polynomial.newInstance(algorithm, mode);
        this.l = i10;
        this.random = secureRandom;
    }

    private byte[][] initP(int i10, int i11) {
        if (i10 < 1 || i10 > 255) {
            throw new IllegalArgumentException("Invalid input: m must be less than 256 and positive.");
        }
        if (i11 < i10 || i11 > 255) {
            throw new IllegalArgumentException("Invalid input: n must be less than 256 and greater than or equal to n.");
        }
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i11, i10);
        for (int i12 = 0; i12 < i11; i12++) {
            for (int i13 = 0; i13 < i10; i13++) {
                bArr[i12][i13] = this.poly.gfPow((byte) (i12 + 1), (byte) i13);
            }
        }
        return bArr;
    }

    @Override // org.bouncycastle.crypto.threshold.SecretSplitter
    public ShamirSplitSecret resplit(byte[] bArr, int i10, int i11) {
        byte[][] bArrInitP = initP(i10, i11);
        int i12 = 0;
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i10, this.l);
        ShamirSplitSecretShare[] shamirSplitSecretShareArr = new ShamirSplitSecretShare[this.l];
        bArr2[0] = Arrays.clone(bArr);
        for (int i13 = 1; i13 < i10; i13++) {
            this.random.nextBytes(bArr2[i13]);
        }
        while (i12 < bArrInitP.length) {
            int i14 = i12 + 1;
            shamirSplitSecretShareArr[i12] = new ShamirSplitSecretShare(this.poly.gfVecMul(bArrInitP[i12], bArr2), i14);
            i12 = i14;
        }
        return new ShamirSplitSecret(this.poly, shamirSplitSecretShareArr);
    }

    @Override // org.bouncycastle.crypto.threshold.SecretSplitter
    public ShamirSplitSecret split(int i10, int i11) {
        byte[][] bArrInitP = initP(i10, i11);
        int i12 = 0;
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i10, this.l);
        ShamirSplitSecretShare[] shamirSplitSecretShareArr = new ShamirSplitSecretShare[this.l];
        for (int i13 = 0; i13 < i10; i13++) {
            this.random.nextBytes(bArr[i13]);
        }
        while (i12 < bArrInitP.length) {
            int i14 = i12 + 1;
            shamirSplitSecretShareArr[i12] = new ShamirSplitSecretShare(this.poly.gfVecMul(bArrInitP[i12], bArr), i14);
            i12 = i14;
        }
        return new ShamirSplitSecret(this.poly, shamirSplitSecretShareArr);
    }

    @Override // org.bouncycastle.crypto.threshold.SecretSplitter
    public ShamirSplitSecret splitAround(SecretShare secretShare, int i10, int i11) {
        byte[][] bArrInitP = initP(i10, i11);
        int i12 = 1;
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i10, this.l);
        ShamirSplitSecretShare[] shamirSplitSecretShareArr = new ShamirSplitSecretShare[this.l];
        byte[] encoded = secretShare.getEncoded();
        shamirSplitSecretShareArr[0] = new ShamirSplitSecretShare(encoded, 1);
        for (int i13 = 0; i13 < i10; i13++) {
            this.random.nextBytes(bArr[i13]);
        }
        for (int i14 = 0; i14 < this.l; i14++) {
            byte b10 = bArr[1][i14];
            for (int i15 = 2; i15 < i10; i15++) {
                b10 = (byte) (b10 ^ bArr[i15][i14]);
            }
            bArr[0][i14] = (byte) (b10 ^ encoded[i14]);
        }
        while (i12 < bArrInitP.length) {
            int i16 = i12 + 1;
            shamirSplitSecretShareArr[i12] = new ShamirSplitSecretShare(this.poly.gfVecMul(bArrInitP[i12], bArr), i16);
            i12 = i16;
        }
        return new ShamirSplitSecret(this.poly, shamirSplitSecretShareArr);
    }
}
