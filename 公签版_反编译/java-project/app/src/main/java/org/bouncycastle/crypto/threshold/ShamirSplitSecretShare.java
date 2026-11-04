package org.bouncycastle.crypto.threshold;

import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class ShamirSplitSecretShare implements SecretShare {
    final int r;
    private final byte[] secretShare;

    public ShamirSplitSecretShare(byte[] bArr) {
        this.secretShare = Arrays.clone(bArr);
        this.r = 1;
    }

    @Override // org.bouncycastle.util.Encodable
    public byte[] getEncoded() {
        return Arrays.clone(this.secretShare);
    }

    public ShamirSplitSecretShare(byte[] bArr, int i10) {
        this.secretShare = Arrays.clone(bArr);
        this.r = i10;
    }
}
