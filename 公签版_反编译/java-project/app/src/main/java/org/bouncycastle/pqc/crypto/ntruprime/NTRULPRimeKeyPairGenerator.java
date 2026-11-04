package org.bouncycastle.pqc.crypto.ntruprime;

import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class NTRULPRimeKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private NTRULPRimeKeyGenerationParameters params;

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() {
        int p2 = this.params.getNtrulprParams().getP();
        int q8 = this.params.getNtrulprParams().getQ();
        int w10 = this.params.getNtrulprParams().getW();
        byte[] bArr = new byte[32];
        this.params.getRandom().nextBytes(bArr);
        short[] sArr = new short[p2];
        Utils.generatePolynomialInRQFromSeed(sArr, bArr, p2, q8);
        byte[] bArr2 = new byte[p2];
        Utils.getRandomShortPolynomial(this.params.getRandom(), bArr2, p2, w10);
        short[] sArr2 = new short[p2];
        Utils.multiplicationInRQ(sArr2, sArr, bArr2, p2, q8);
        short[] sArr3 = new short[p2];
        Utils.roundPolynomial(sArr3, sArr2);
        byte[] bArr3 = new byte[this.params.getNtrulprParams().getPublicKeyBytes() - 32];
        Utils.getRoundedEncodedPolynomial(bArr3, sArr3, p2, q8);
        NTRULPRimePublicKeyParameters nTRULPRimePublicKeyParameters = new NTRULPRimePublicKeyParameters(this.params.getNtrulprParams(), bArr, bArr3);
        byte[] bArr4 = new byte[(p2 + 3) / 4];
        Utils.getEncodedSmallPolynomial(bArr4, bArr2, p2);
        byte[] bArr5 = new byte[32];
        this.params.getRandom().nextBytes(bArr5);
        byte[] hashWithPrefix = Utils.getHashWithPrefix(new byte[]{4}, nTRULPRimePublicKeyParameters.getEncoded());
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) nTRULPRimePublicKeyParameters, (AsymmetricKeyParameter) new NTRULPRimePrivateKeyParameters(this.params.getNtrulprParams(), bArr4, nTRULPRimePublicKeyParameters.getEncoded(), bArr5, Arrays.copyOfRange(hashWithPrefix, 0, hashWithPrefix.length / 2)));
    }

    public NTRULPRimeKeyGenerationParameters getParams() {
        return this.params;
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.params = (NTRULPRimeKeyGenerationParameters) keyGenerationParameters;
    }
}
