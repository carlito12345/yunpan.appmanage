package org.bouncycastle.cms;

import android.support.v4.media.session.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;

/* loaded from: classes3.dex */
public class PKCS7TypedStream extends CMSTypedStream {
    private final ASN1Encodable content;

    public PKCS7TypedStream(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        super(aSN1ObjectIdentifier);
        this.content = aSN1Encodable;
    }

    @Override // org.bouncycastle.cms.CMSTypedStream
    public void drain() {
        this.content.toASN1Primitive();
    }

    public ASN1Encodable getContent() {
        return this.content;
    }

    @Override // org.bouncycastle.cms.CMSTypedStream
    public InputStream getContentStream() {
        try {
            return getContentStream(this.content);
        } catch (IOException e7) {
            throw new CMSRuntimeException(a.n(e7, new StringBuilder("unable to convert content to stream: ")), e7);
        }
    }

    private InputStream getContentStream(ASN1Encodable aSN1Encodable) {
        int i10;
        byte[] encoded = aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER);
        int i11 = 1;
        if ((encoded[0] & 31) == 31) {
            do {
                i10 = encoded[i11] & 128;
                i11++;
            } while (i10 != 0);
        }
        int i12 = i11 + 1;
        byte b10 = encoded[i11];
        if ((b10 & 128) != 0) {
            i12 += b10 & Byte.MAX_VALUE;
        }
        return new ByteArrayInputStream(encoded, i12, encoded.length - i12);
    }
}
