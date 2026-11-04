package org.bouncycastle.cms.jcajce;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.RecipientOperator;

/* loaded from: classes3.dex */
public class JceKeyAgreeAuthEnvelopedRecipient extends JceKeyAgreeRecipient {
    public JceKeyAgreeAuthEnvelopedRecipient(PrivateKey privateKey) {
        super(privateKey);
    }

    @Override // org.bouncycastle.cms.KeyAgreeRecipient
    public RecipientOperator getRecipientOperator(AlgorithmIdentifier algorithmIdentifier, AlgorithmIdentifier algorithmIdentifier2, SubjectPublicKeyInfo subjectPublicKeyInfo, ASN1OctetString aSN1OctetString, byte[] bArr) throws InvalidKeySpecException, CMSException, InvalidKeyException, InvalidAlgorithmParameterException {
        return new RecipientOperator(new CMSInputAEADDecryptor(algorithmIdentifier2, this.contentHelper.createContentCipher(extractSecretKey(algorithmIdentifier, algorithmIdentifier2, subjectPublicKeyInfo, aSN1OctetString, bArr), algorithmIdentifier2)));
    }
}
