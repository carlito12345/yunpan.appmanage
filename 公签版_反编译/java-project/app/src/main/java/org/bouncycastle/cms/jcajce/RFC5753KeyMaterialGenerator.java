package org.bouncycastle.cms.jcajce;

import java.io.IOException;
import l2.z;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.cms.ecc.ECCCMSSharedInfo;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.util.Pack;

/* loaded from: classes3.dex */
class RFC5753KeyMaterialGenerator implements KeyMaterialGenerator {
    @Override // org.bouncycastle.cms.jcajce.KeyMaterialGenerator
    public byte[] generateKDFMaterial(AlgorithmIdentifier algorithmIdentifier, int i10, byte[] bArr) {
        try {
            return new ECCCMSSharedInfo(algorithmIdentifier, bArr, Pack.intToBigEndian(i10)).getEncoded(ASN1Encoding.DER);
        } catch (IOException e7) {
            throw new IllegalStateException(z.h("Unable to create KDF material: ", e7));
        }
    }
}
