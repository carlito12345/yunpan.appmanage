package org.bouncycastle.cms;

import android.support.v4.media.session.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.cms.AuthEnvelopedData;
import org.bouncycastle.asn1.cms.CMSObjectIdentifiers;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.operator.OutputAEADEncryptor;

/* loaded from: classes3.dex */
public class CMSAuthEnvelopedDataGenerator extends CMSAuthEnvelopedGenerator {
    private CMSAuthEnvelopedData doGenerate(CMSTypedData cMSTypedData, OutputAEADEncryptor outputAEADEncryptor) throws CMSException, IOException {
        ASN1Set aSN1SetProcessAuthAttrSet;
        ASN1EncodableVector recipentInfos = CMSUtils.getRecipentInfos(outputAEADEncryptor.getKey(), this.recipientInfoGenerators);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            OutputStream outputStream = outputAEADEncryptor.getOutputStream(byteArrayOutputStream);
            if (CMSAlgorithm.ChaCha20Poly1305.equals((ASN1Primitive) outputAEADEncryptor.getAlgorithmIdentifier().getAlgorithm())) {
                aSN1SetProcessAuthAttrSet = CMSUtils.processAuthAttrSet(this.authAttrsGenerator, outputAEADEncryptor);
                cMSTypedData.write(outputStream);
            } else {
                cMSTypedData.write(outputStream);
                aSN1SetProcessAuthAttrSet = CMSUtils.processAuthAttrSet(this.authAttrsGenerator, outputAEADEncryptor);
            }
            ASN1Set aSN1Set = aSN1SetProcessAuthAttrSet;
            outputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byte[] mac = outputAEADEncryptor.getMAC();
            return new CMSAuthEnvelopedData(new ContentInfo(CMSObjectIdentifiers.authEnvelopedData, new AuthEnvelopedData(((CMSAuthEnvelopedGenerator) this).originatorInfo, new DERSet(recipentInfos), CMSUtils.getEncryptedContentInfo(cMSTypedData, outputAEADEncryptor, byteArray), aSN1Set, new DEROctetString(mac), CMSUtils.getAttrDLSet(this.unauthAttrsGenerator))));
        } catch (IOException e7) {
            throw new CMSException(a.n(e7, new StringBuilder("unable to process authenticated content: ")), e7);
        }
    }

    public CMSAuthEnvelopedData generate(CMSTypedData cMSTypedData, OutputAEADEncryptor outputAEADEncryptor) {
        return doGenerate(cMSTypedData, outputAEADEncryptor);
    }
}
