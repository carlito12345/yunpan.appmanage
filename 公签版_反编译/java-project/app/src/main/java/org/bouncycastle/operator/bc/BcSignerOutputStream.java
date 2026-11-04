package org.bouncycastle.operator.bc;

import java.io.OutputStream;
import org.bouncycastle.crypto.Signer;

/* loaded from: classes3.dex */
public class BcSignerOutputStream extends OutputStream {
    private Signer sig;

    public BcSignerOutputStream(Signer signer) {
        this.sig = signer;
    }

    public byte[] getSignature() {
        return this.sig.generateSignature();
    }

    public boolean verify(byte[] bArr) {
        return this.sig.verifySignature(bArr);
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        this.sig.update((byte) i10);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        this.sig.update(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        this.sig.update(bArr, i10, i11);
    }
}
