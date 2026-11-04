package org.bouncycastle.crypto.threshold;

import org.bouncycastle.crypto.threshold.ShamirSecretSplitter;

/* loaded from: classes3.dex */
class PolynomialNative extends Polynomial {
    private final int IRREDUCIBLE;

    /* renamed from: org.bouncycastle.crypto.threshold.PolynomialNative$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$threshold$ShamirSecretSplitter$Algorithm;

        static {
            int[] iArr = new int[ShamirSecretSplitter.Algorithm.values().length];
            $SwitchMap$org$bouncycastle$crypto$threshold$ShamirSecretSplitter$Algorithm = iArr;
            try {
                iArr[ShamirSecretSplitter.Algorithm.AES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$threshold$ShamirSecretSplitter$Algorithm[ShamirSecretSplitter.Algorithm.RSA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public PolynomialNative(ShamirSecretSplitter.Algorithm algorithm) {
        int i10;
        int i11 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$threshold$ShamirSecretSplitter$Algorithm[algorithm.ordinal()];
        if (i11 == 1) {
            i10 = 283;
        } else {
            if (i11 != 2) {
                throw new IllegalArgumentException("The algorithm is not correct");
            }
            i10 = 285;
        }
        this.IRREDUCIBLE = i10;
    }

    @Override // org.bouncycastle.crypto.threshold.Polynomial
    public byte gfDiv(int i10, int i11) {
        return gfMul(i10, gfPow((byte) i11, (byte) -2) & 255);
    }

    @Override // org.bouncycastle.crypto.threshold.Polynomial
    public byte gfMul(int i10, int i11) {
        int i12 = 0;
        while (i11 > 0) {
            if ((i11 & 1) != 0) {
                i12 ^= i10;
            }
            i10 <<= 1;
            if ((i10 & 256) != 0) {
                i10 ^= this.IRREDUCIBLE;
            }
            i11 >>= 1;
        }
        while (i12 >= 256) {
            if ((i12 & 256) != 0) {
                i12 ^= this.IRREDUCIBLE;
            }
            i12 <<= 1;
        }
        return (byte) (i12 & 255);
    }
}
