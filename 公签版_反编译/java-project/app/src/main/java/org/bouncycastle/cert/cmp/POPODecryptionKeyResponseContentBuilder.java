package org.bouncycastle.cert.cmp;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.cmp.POPODecKeyRespContent;

/* loaded from: classes3.dex */
public class POPODecryptionKeyResponseContentBuilder {

    /* renamed from: v, reason: collision with root package name */
    private ASN1EncodableVector f11863v = new ASN1EncodableVector();

    public POPODecryptionKeyResponseContentBuilder addChallengeResponse(byte[] bArr) {
        this.f11863v.add(new ASN1Integer(new BigInteger(bArr)));
        return this;
    }

    public POPODecryptionKeyResponseContent build() {
        return new POPODecryptionKeyResponseContent(POPODecKeyRespContent.getInstance(new DERSequence(this.f11863v)));
    }
}
