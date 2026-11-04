package org.bouncycastle.cms.jcajce;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.RecipientOperator;

/* loaded from: classes3.dex */
public class JcePasswordAuthEnvelopedRecipient extends JcePasswordRecipient {
    public JcePasswordAuthEnvelopedRecipient(char[] cArr) {
        super(cArr);
    }

    @Override // org.bouncycastle.cms.PasswordRecipient
    public RecipientOperator getRecipientOperator(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2, byte[] bArr, byte[] bArr2) throws CMSException, InvalidKeyException, InvalidAlgorithmParameterException {
        return new RecipientOperator(new CMSInputAEADDecryptor(algorithmIdentifier2, this.helper.createContentCipher(extractSecretKey(algorithmIdentifier, algorithmIdentifier2, bArr, bArr2), algorithmIdentifier2)));
    }
}
