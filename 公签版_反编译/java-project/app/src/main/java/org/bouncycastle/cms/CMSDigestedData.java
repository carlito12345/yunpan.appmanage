package org.bouncycastle.cms;

import android.support.v4.media.session.a;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.cms.DigestedData;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.operator.DigestCalculator;
import org.bouncycastle.operator.DigestCalculatorProvider;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Encodable;

/* loaded from: classes3.dex */
public class CMSDigestedData implements Encodable {
    private ContentInfo contentInfo;
    private DigestedData digestedData;

    public CMSDigestedData(InputStream inputStream) {
        this(CMSUtils.readContentInfo(inputStream));
    }

    public ASN1ObjectIdentifier getContentType() {
        return this.contentInfo.getContentType();
    }

    public AlgorithmIdentifier getDigestAlgorithm() {
        return this.digestedData.getDigestAlgorithm();
    }

    public CMSProcessable getDigestedContent() throws CMSException {
        ContentInfo encapContentInfo = this.digestedData.getEncapContentInfo();
        try {
            return new CMSProcessableByteArray(encapContentInfo.getContentType(), ((ASN1OctetString) encapContentInfo.getContent()).getOctets());
        } catch (Exception e7) {
            throw new CMSException("exception reading digested stream.", e7);
        }
    }

    @Override // org.bouncycastle.util.Encodable
    public byte[] getEncoded() {
        return this.contentInfo.getEncoded();
    }

    public ContentInfo toASN1Structure() {
        return this.contentInfo;
    }

    public boolean verify(DigestCalculatorProvider digestCalculatorProvider) throws CMSException, IOException {
        try {
            ContentInfo encapContentInfo = this.digestedData.getEncapContentInfo();
            DigestCalculator digestCalculator = digestCalculatorProvider.get(this.digestedData.getDigestAlgorithm());
            digestCalculator.getOutputStream().write(((ASN1OctetString) encapContentInfo.getContent()).getOctets());
            return Arrays.areEqual(this.digestedData.getDigest(), digestCalculator.getDigest());
        } catch (IOException e7) {
            throw new CMSException(a.n(e7, new StringBuilder("unable process content: ")), e7);
        } catch (OperatorCreationException e10) {
            throw new CMSException("unable to create digest calculator: " + e10.getMessage(), e10);
        }
    }

    public CMSDigestedData(ContentInfo contentInfo) throws CMSException {
        this.contentInfo = contentInfo;
        try {
            this.digestedData = DigestedData.getInstance(contentInfo.getContent());
        } catch (ClassCastException e7) {
            throw new CMSException("Malformed content.", e7);
        } catch (IllegalArgumentException e10) {
            throw new CMSException("Malformed content.", e10);
        }
    }

    public CMSDigestedData(byte[] bArr) {
        this(CMSUtils.readContentInfo(bArr));
    }
}
