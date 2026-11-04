package org.bouncycastle.cert.crmf;

import android.support.v4.media.session.a;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.x509.ExtensionsGenerator;
import org.bouncycastle.cert.CertIOException;

/* loaded from: classes3.dex */
class CRMFUtil {
    public static void addExtension(ExtensionsGenerator extensionsGenerator, ASN1ObjectIdentifier aSN1ObjectIdentifier, boolean z, ASN1Encodable aSN1Encodable) throws CertIOException {
        try {
            extensionsGenerator.addExtension(aSN1ObjectIdentifier, z, aSN1Encodable);
        } catch (IOException e7) {
            throw new CertIOException(a.n(e7, new StringBuilder("cannot encode extension: ")), e7);
        }
    }

    public static void derEncodeToStream(ASN1Object aSN1Object, OutputStream outputStream) throws IOException {
        try {
            aSN1Object.encodeTo(outputStream, ASN1Encoding.DER);
            outputStream.close();
        } catch (IOException e7) {
            throw new CRMFRuntimeException(a.n(e7, new StringBuilder("unable to DER encode object: ")), e7);
        }
    }
}
