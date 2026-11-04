package org.bouncycastle.pkcs;

import android.support.v4.media.session.a;
import java.io.IOException;
import l2.z;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.pkcs.ContentInfo;
import org.bouncycastle.asn1.pkcs.MacData;
import org.bouncycastle.asn1.pkcs.PBMAC1Params;
import org.bouncycastle.asn1.pkcs.PKCS12PBEParams;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.Pfx;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class PKCS12PfxPdu {
    private Pfx pfx;

    public PKCS12PfxPdu(Pfx pfx) {
        this.pfx = pfx;
    }

    private static Pfx parseBytes(byte[] bArr) throws PKCSIOException {
        try {
            return Pfx.getInstance(ASN1Primitive.fromByteArray(bArr));
        } catch (ClassCastException e7) {
            throw new PKCSIOException("malformed data: " + e7.getMessage(), e7);
        } catch (IllegalArgumentException e10) {
            throw new PKCSIOException(z.f(e10, new StringBuilder("malformed data: ")), e10);
        }
    }

    public ContentInfo[] getContentInfos() {
        ASN1Sequence aSN1Sequence = ASN1Sequence.getInstance(ASN1OctetString.getInstance(this.pfx.getAuthSafe().getContent()).getOctets());
        ContentInfo[] contentInfoArr = new ContentInfo[aSN1Sequence.size()];
        for (int i10 = 0; i10 != aSN1Sequence.size(); i10++) {
            contentInfoArr[i10] = ContentInfo.getInstance(aSN1Sequence.getObjectAt(i10));
        }
        return contentInfoArr;
    }

    public byte[] getEncoded() {
        return toASN1Structure().getEncoded();
    }

    public AlgorithmIdentifier getMacAlgorithmID() {
        MacData macData = this.pfx.getMacData();
        if (macData != null) {
            return macData.getMac().getAlgorithmId();
        }
        return null;
    }

    public boolean hasMac() {
        return this.pfx.getMacData() != null;
    }

    public boolean isMacValid(PKCS12MacCalculatorBuilderProvider pKCS12MacCalculatorBuilderProvider, char[] cArr) throws PKCSException {
        MacDataGenerator macDataGenerator;
        if (!hasMac()) {
            throw new IllegalStateException("no MAC present on PFX");
        }
        MacData macData = this.pfx.getMacData();
        if (PKCSObjectIdentifiers.id_PBMAC1.equals((ASN1Primitive) macData.getMac().getAlgorithmId().getAlgorithm())) {
            PBMAC1Params pBMAC1Params = PBMAC1Params.getInstance(macData.getMac().getAlgorithmId().getParameters());
            if (pBMAC1Params == null) {
                throw new PKCSException("If the DigestAlgorithmIdentifier is id-PBMAC1, then the parameters field must contain valid PBMAC1-params parameters.");
            }
            macDataGenerator = new MacDataGenerator(pKCS12MacCalculatorBuilderProvider.get(new AlgorithmIdentifier(macData.getMac().getAlgorithmId().getAlgorithm(), pBMAC1Params)));
        } else {
            macDataGenerator = new MacDataGenerator(pKCS12MacCalculatorBuilderProvider.get(new AlgorithmIdentifier(macData.getMac().getAlgorithmId().getAlgorithm(), new PKCS12PBEParams(macData.getSalt(), macData.getIterationCount().intValue()))));
        }
        try {
            return Arrays.constantTimeAreEqual(macDataGenerator.build(cArr, ASN1OctetString.getInstance(this.pfx.getAuthSafe().getContent()).getOctets()).getEncoded(), this.pfx.getMacData().getEncoded());
        } catch (IOException e7) {
            throw new PKCSException(a.n(e7, new StringBuilder("unable to process AuthSafe: ")));
        }
    }

    public Pfx toASN1Structure() {
        return this.pfx;
    }

    public PKCS12PfxPdu(byte[] bArr) {
        this(parseBytes(bArr));
    }

    public byte[] getEncoded(String str) {
        return toASN1Structure().getEncoded(str);
    }
}
