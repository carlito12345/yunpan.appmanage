package org.bouncycastle.pqc.crypto.slhdsa;

import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class SLHDSAPrivateKeyParameters extends SLHDSAKeyParameters {
    final PK pk;
    final SK sk;

    public SLHDSAPrivateKeyParameters(SLHDSAParameters sLHDSAParameters, SK sk, PK pk) {
        super(true, sLHDSAParameters);
        this.sk = sk;
        this.pk = pk;
    }

    public byte[] getEncoded() {
        SK sk = this.sk;
        byte[] bArr = sk.seed;
        byte[] bArr2 = sk.prf;
        PK pk = this.pk;
        return Arrays.concatenate(new byte[][]{bArr, bArr2, pk.seed, pk.root});
    }

    public byte[] getEncodedPublicKey() {
        PK pk = this.pk;
        return Arrays.concatenate(pk.seed, pk.root);
    }

    public byte[] getPrf() {
        return Arrays.clone(this.sk.prf);
    }

    public byte[] getPublicKey() {
        PK pk = this.pk;
        return Arrays.concatenate(pk.seed, pk.root);
    }

    public byte[] getPublicSeed() {
        return Arrays.clone(this.pk.seed);
    }

    public byte[] getRoot() {
        return Arrays.clone(this.pk.root);
    }

    public byte[] getSeed() {
        return Arrays.clone(this.sk.seed);
    }

    public SLHDSAPrivateKeyParameters(SLHDSAParameters sLHDSAParameters, byte[] bArr) {
        super(true, sLHDSAParameters);
        int n6 = sLHDSAParameters.getN();
        int i10 = n6 * 4;
        if (bArr.length != i10) {
            throw new IllegalArgumentException("private key encoding does not match parameters");
        }
        int i11 = n6 * 2;
        this.sk = new SK(Arrays.copyOfRange(bArr, 0, n6), Arrays.copyOfRange(bArr, n6, i11));
        int i12 = n6 * 3;
        this.pk = new PK(Arrays.copyOfRange(bArr, i11, i12), Arrays.copyOfRange(bArr, i12, i10));
    }

    public SLHDSAPrivateKeyParameters(SLHDSAParameters sLHDSAParameters, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(true, sLHDSAParameters);
        this.sk = new SK(bArr, bArr2);
        this.pk = new PK(bArr3, bArr4);
    }
}
