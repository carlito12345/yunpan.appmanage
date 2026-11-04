package org.bouncycastle.eac;

import g.b;
import java.io.IOException;
import java.io.OutputStream;
import l2.z;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ParsingException;
import org.bouncycastle.asn1.eac.CVCertificateRequest;
import org.bouncycastle.asn1.eac.PublicKeyDataObject;
import org.bouncycastle.eac.operator.EACSignatureVerifier;

/* loaded from: classes3.dex */
public class EACCertificateRequestHolder {
    private CVCertificateRequest request;

    public EACCertificateRequestHolder(CVCertificateRequest cVCertificateRequest) {
        this.request = cVCertificateRequest;
    }

    private static CVCertificateRequest parseBytes(byte[] bArr) throws IOException {
        try {
            return CVCertificateRequest.getInstance(bArr);
        } catch (ClassCastException e7) {
            throw new EACIOException("malformed data: " + e7.getMessage(), e7);
        } catch (IllegalArgumentException e10) {
            throw new EACIOException(z.f(e10, new StringBuilder("malformed data: ")), e10);
        } catch (ASN1ParsingException e11) {
            if (e11.getCause() instanceof IOException) {
                throw ((IOException) e11.getCause());
            }
            throw new EACIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    public PublicKeyDataObject getPublicKeyDataObject() {
        return this.request.getPublicKey();
    }

    public boolean isInnerSignatureValid(EACSignatureVerifier eACSignatureVerifier) throws EACException, IOException {
        try {
            OutputStream outputStream = eACSignatureVerifier.getOutputStream();
            outputStream.write(this.request.getCertificateBody().getEncoded(ASN1Encoding.DER));
            outputStream.close();
            return eACSignatureVerifier.verify(this.request.getInnerSignature());
        } catch (Exception e7) {
            throw new EACException(b.z(e7, new StringBuilder("unable to process signature: ")), e7);
        }
    }

    public CVCertificateRequest toASN1Structure() {
        return this.request;
    }

    public EACCertificateRequestHolder(byte[] bArr) {
        this(parseBytes(bArr));
    }
}
