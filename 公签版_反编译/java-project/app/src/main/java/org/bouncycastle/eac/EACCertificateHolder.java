package org.bouncycastle.eac;

import g.b;
import java.io.IOException;
import java.io.OutputStream;
import l2.z;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ParsingException;
import org.bouncycastle.asn1.eac.CVCertificate;
import org.bouncycastle.asn1.eac.PublicKeyDataObject;
import org.bouncycastle.eac.operator.EACSignatureVerifier;

/* loaded from: classes3.dex */
public class EACCertificateHolder {
    private CVCertificate cvCertificate;

    public EACCertificateHolder(CVCertificate cVCertificate) {
        this.cvCertificate = cVCertificate;
    }

    private static CVCertificate parseBytes(byte[] bArr) throws IOException {
        try {
            return CVCertificate.getInstance(bArr);
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
        return this.cvCertificate.getBody().getPublicKey();
    }

    public boolean isSignatureValid(EACSignatureVerifier eACSignatureVerifier) throws EACException, IOException {
        try {
            OutputStream outputStream = eACSignatureVerifier.getOutputStream();
            outputStream.write(this.cvCertificate.getBody().getEncoded(ASN1Encoding.DER));
            outputStream.close();
            return eACSignatureVerifier.verify(this.cvCertificate.getSignature());
        } catch (Exception e7) {
            throw new EACException(b.z(e7, new StringBuilder("unable to process signature: ")), e7);
        }
    }

    public CVCertificate toASN1Structure() {
        return this.cvCertificate;
    }

    public EACCertificateHolder(byte[] bArr) {
        this(parseBytes(bArr));
    }
}
