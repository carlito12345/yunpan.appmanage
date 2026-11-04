package org.bouncycastle.cert.cmp;

import l2.z;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.cmp.PKIBody;
import org.bouncycastle.asn1.cmp.PKIHeader;
import org.bouncycastle.asn1.cmp.PKIMessage;
import org.bouncycastle.cert.CertIOException;

/* loaded from: classes3.dex */
public class GeneralPKIMessage {
    private final PKIMessage pkiMessage;

    public GeneralPKIMessage(PKIMessage pKIMessage) {
        this.pkiMessage = pKIMessage;
    }

    private static PKIMessage parseBytes(byte[] bArr) throws CertIOException {
        try {
            return PKIMessage.getInstance(ASN1Primitive.fromByteArray(bArr));
        } catch (ClassCastException e7) {
            throw new CertIOException("malformed data: " + e7.getMessage(), e7);
        } catch (IllegalArgumentException e10) {
            throw new CertIOException(z.f(e10, new StringBuilder("malformed data: ")), e10);
        }
    }

    public PKIBody getBody() {
        return this.pkiMessage.getBody();
    }

    public PKIHeader getHeader() {
        return this.pkiMessage.getHeader();
    }

    public boolean hasProtection() {
        return this.pkiMessage.getProtection() != null;
    }

    public PKIMessage toASN1Structure() {
        return this.pkiMessage;
    }

    public GeneralPKIMessage(byte[] bArr) {
        this(parseBytes(bArr));
    }
}
