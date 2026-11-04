package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.MessageSigner;

/* loaded from: classes3.dex */
public class FalconSigner implements MessageSigner {
    private byte[] encodedkey;
    private FalconNIST nist;

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        FalconNIST falconNIST = this.nist;
        return falconNIST.crypto_sign(new byte[falconNIST.CRYPTO_BYTES], bArr, bArr.length, this.encodedkey);
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        FalconNIST falconNIST;
        if (!z) {
            FalconPublicKeyParameters falconPublicKeyParameters = (FalconPublicKeyParameters) cipherParameters;
            this.encodedkey = falconPublicKeyParameters.getH();
            falconNIST = new FalconNIST(falconPublicKeyParameters.getParameters().getLogN(), falconPublicKeyParameters.getParameters().getNonceLength(), CryptoServicesRegistrar.getSecureRandom());
        } else {
            if (cipherParameters instanceof ParametersWithRandom) {
                ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
                FalconPrivateKeyParameters falconPrivateKeyParameters = (FalconPrivateKeyParameters) parametersWithRandom.getParameters();
                this.encodedkey = falconPrivateKeyParameters.getEncoded();
                this.nist = new FalconNIST(falconPrivateKeyParameters.getParameters().getLogN(), falconPrivateKeyParameters.getParameters().getNonceLength(), parametersWithRandom.getRandom());
                return;
            }
            FalconPrivateKeyParameters falconPrivateKeyParameters2 = (FalconPrivateKeyParameters) cipherParameters;
            this.encodedkey = falconPrivateKeyParameters2.getEncoded();
            falconNIST = new FalconNIST(falconPrivateKeyParameters2.getParameters().getLogN(), falconPrivateKeyParameters2.getParameters().getNonceLength(), CryptoServicesRegistrar.getSecureRandom());
        }
        this.nist = falconNIST;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        byte b10 = bArr2[0];
        FalconNIST falconNIST = this.nist;
        if (b10 != ((byte) (falconNIST.LOGN + 48))) {
            return false;
        }
        int i10 = falconNIST.NONCELEN;
        byte[] bArr3 = new byte[i10];
        byte[] bArr4 = new byte[(bArr2.length - i10) - 1];
        System.arraycopy(bArr2, 1, bArr3, 0, i10);
        int i11 = this.nist.NONCELEN;
        System.arraycopy(bArr2, i11 + 1, bArr4, 0, (bArr2.length - i11) - 1);
        return this.nist.crypto_sign_open(bArr4, bArr3, bArr, this.encodedkey) == 0;
    }
}
