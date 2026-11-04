package org.bouncycastle.crypto.agreement.kdf;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes3.dex */
public class GSKKDFParameters implements DerivationParameters {
    private final byte[] nonce;
    private final int startCounter;
    private final byte[] z;

    public GSKKDFParameters(byte[] bArr, int i10) {
        this(bArr, i10, null);
    }

    public byte[] getNonce() {
        return this.nonce;
    }

    public int getStartCounter() {
        return this.startCounter;
    }

    public byte[] getZ() {
        return this.z;
    }

    public GSKKDFParameters(byte[] bArr, int i10, byte[] bArr2) {
        this.z = bArr;
        this.startCounter = i10;
        this.nonce = bArr2;
    }
}
