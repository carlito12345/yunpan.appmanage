package org.bouncycastle.pkcs;

import g.b;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.pkcs.MacData;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.DigestInfo;
import org.bouncycastle.operator.MacCalculator;
import org.bouncycastle.util.Strings;

/* loaded from: classes3.dex */
class MacDataGenerator {
    private PKCS12MacCalculatorBuilder builder;

    public MacDataGenerator(PKCS12MacCalculatorBuilder pKCS12MacCalculatorBuilder) {
        this.builder = pKCS12MacCalculatorBuilder;
    }

    public MacData build(char[] cArr, byte[] bArr) throws IOException, PKCSException {
        int iIntValue;
        byte[] uTF8ByteArray;
        try {
            MacCalculator macCalculatorBuild = this.builder.build(cArr);
            OutputStream outputStream = macCalculatorBuild.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            AlgorithmIdentifier algorithmIdentifier = macCalculatorBuild.getAlgorithmIdentifier();
            DigestInfo digestInfo = new DigestInfo(this.builder.getDigestAlgorithmIdentifier(), macCalculatorBuild.getMac());
            if (PKCSObjectIdentifiers.id_PBMAC1.equals((ASN1Primitive) digestInfo.getAlgorithmId().getAlgorithm())) {
                uTF8ByteArray = Strings.toUTF8ByteArray("NOT USED".toCharArray());
                iIntValue = 1;
            } else {
                PKCS12PBEParams pKCS12PBEParams = PKCS12PBEParams.getInstance(algorithmIdentifier.getParameters());
                byte[] iv = pKCS12PBEParams.getIV();
                iIntValue = pKCS12PBEParams.getIterations().intValue();
                uTF8ByteArray = iv;
            }
            return new MacData(digestInfo, uTF8ByteArray, iIntValue);
        } catch (Exception e7) {
            throw new PKCSException(b.z(e7, new StringBuilder("unable to process data: ")), e7);
        }
    }
}
