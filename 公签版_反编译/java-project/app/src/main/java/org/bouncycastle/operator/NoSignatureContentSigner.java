package org.bouncycastle.operator;

import java.io.OutputStream;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;

/* loaded from: classes3.dex */
public class NoSignatureContentSigner implements ContentSigner {
    @Override // org.bouncycastle.operator.ContentSigner
    public AlgorithmIdentifier getAlgorithmIdentifier() {
        return new AlgorithmIdentifier(X509ObjectIdentifiers.id_alg_unsigned);
    }

    @Override // org.bouncycastle.operator.ContentSigner
    public OutputStream getOutputStream() {
        return new OutputStream() { // from class: org.bouncycastle.operator.NoSignatureContentSigner.1
            @Override // java.io.OutputStream
            public void write(int i10) {
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i10, int i11) {
            }
        };
    }

    @Override // org.bouncycastle.operator.ContentSigner
    public byte[] getSignature() {
        return new byte[0];
    }
}
