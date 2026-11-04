package org.bouncycastle.cert.ocsp;

import java.io.IOException;
import java.io.OutputStream;
import l2.z;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.ocsp.ResponderID;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.operator.DigestCalculator;

/* loaded from: classes3.dex */
public class RespID {
    public static final AlgorithmIdentifier HASH_SHA1 = new AlgorithmIdentifier(OIWObjectIdentifiers.idSHA1, DERNull.INSTANCE);

    /* renamed from: id, reason: collision with root package name */
    ResponderID f11865id;

    public RespID(ResponderID responderID) {
        this.f11865id = responderID;
    }

    public boolean equals(Object obj) {
        if (obj instanceof RespID) {
            return this.f11865id.equals(((RespID) obj).f11865id);
        }
        return false;
    }

    public int hashCode() {
        return this.f11865id.hashCode();
    }

    public ResponderID toASN1Primitive() {
        return this.f11865id;
    }

    public RespID(X500Name x500Name) {
        this.f11865id = new ResponderID(x500Name);
    }

    public RespID(SubjectPublicKeyInfo subjectPublicKeyInfo, DigestCalculator digestCalculator) throws IOException, OCSPException {
        try {
            if (!digestCalculator.getAlgorithmIdentifier().equals(HASH_SHA1)) {
                throw new IllegalArgumentException("only SHA-1 can be used with RespID - found: " + digestCalculator.getAlgorithmIdentifier().getAlgorithm());
            }
            OutputStream outputStream = digestCalculator.getOutputStream();
            outputStream.write(subjectPublicKeyInfo.getPublicKeyData().getBytes());
            outputStream.close();
            this.f11865id = new ResponderID(new DEROctetString(digestCalculator.getDigest()));
        } catch (Exception e7) {
            throw new OCSPException(z.e(e7, "problem creating ID: "), e7);
        }
    }
}
