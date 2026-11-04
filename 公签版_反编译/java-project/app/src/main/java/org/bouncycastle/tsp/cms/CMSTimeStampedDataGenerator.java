package org.bouncycastle.tsp.cms;

import android.support.v4.media.session.a;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.BEROctetString;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.cms.CMSObjectIdentifiers;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.cms.Evidence;
import org.bouncycastle.asn1.cms.TimeStampAndCRL;
import org.bouncycastle.asn1.cms.TimeStampTokenEvidence;
import org.bouncycastle.asn1.cms.TimeStampedData;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.tsp.TimeStampToken;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes3.dex */
public class CMSTimeStampedDataGenerator extends CMSTimeStampedGenerator {
    public CMSTimeStampedData generate(TimeStampToken timeStampToken) {
        return generate(timeStampToken, (InputStream) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CMSTimeStampedData generate(TimeStampToken timeStampToken, InputStream inputStream) throws CMSException {
        BEROctetString bEROctetString;
        if (inputStream != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                Streams.pipeAll(inputStream, byteArrayOutputStream);
                bEROctetString = byteArrayOutputStream.size() != 0 ? new BEROctetString(byteArrayOutputStream.toByteArray()) : null;
            } catch (IOException e7) {
                throw new CMSException(a.n(e7, new StringBuilder("exception encapsulating content: ")), e7);
            }
        }
        return new CMSTimeStampedData(new ContentInfo(CMSObjectIdentifiers.timestampedData, new TimeStampedData(this.dataUri != null ? new DERIA5String(this.dataUri.toString()) : null, this.metaData, bEROctetString, new Evidence(new TimeStampTokenEvidence(new TimeStampAndCRL(timeStampToken.toCMSSignedData().toASN1Structure()))))));
    }

    public CMSTimeStampedData generate(TimeStampToken timeStampToken, byte[] bArr) {
        return generate(timeStampToken, new ByteArrayInputStream(bArr));
    }
}
