package org.bouncycastle.tsp.cms;

import android.support.v4.media.session.a;
import java.io.IOException;
import java.io.OutputStream;
import l2.z;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.cms.AttributeTable;
import org.bouncycastle.asn1.cms.TimeStampAndCRL;
import org.bouncycastle.asn1.cms.TimeStampedData;
import org.bouncycastle.asn1.cms.TimeStampedDataParser;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.operator.DigestCalculator;
import org.bouncycastle.operator.DigestCalculatorProvider;
import org.bouncycastle.operator.OperatorCreationException;
import org.bouncycastle.tsp.TSPException;
import org.bouncycastle.tsp.TimeStampToken;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
class TimeStampDataUtil {
    private final MetaDataUtil metaDataUtil;
    private final TimeStampAndCRL[] timeStamps;

    public TimeStampDataUtil(TimeStampedData timeStampedData) {
        this.metaDataUtil = new MetaDataUtil(timeStampedData.getMetaData());
        this.timeStamps = timeStampedData.getTemporalEvidence().getTstEvidence().toTimeStampAndCRLArray();
    }

    private void compareDigest(TimeStampToken timeStampToken, byte[] bArr) throws ImprintDigestInvalidException {
        if (!Arrays.areEqual(bArr, timeStampToken.getTimeStampInfo().getMessageImprintDigest())) {
            throw new ImprintDigestInvalidException("hash calculated is different from MessageImprintDigest found in TimeStampToken", timeStampToken);
        }
    }

    public byte[] calculateNextHash(DigestCalculator digestCalculator) throws CMSException, IOException {
        TimeStampAndCRL timeStampAndCRL = this.timeStamps[r0.length - 1];
        OutputStream outputStream = digestCalculator.getOutputStream();
        try {
            outputStream.write(timeStampAndCRL.getEncoded(ASN1Encoding.DER));
            outputStream.close();
            return digestCalculator.getDigest();
        } catch (IOException e7) {
            throw new CMSException(a.n(e7, new StringBuilder("exception calculating hash: ")), e7);
        }
    }

    public String getFileName() {
        return this.metaDataUtil.getFileName();
    }

    public String getMediaType() {
        return this.metaDataUtil.getMediaType();
    }

    public DigestCalculator getMessageImprintDigestCalculator(DigestCalculatorProvider digestCalculatorProvider) throws OperatorCreationException, IOException {
        try {
            DigestCalculator digestCalculator = digestCalculatorProvider.get(new AlgorithmIdentifier(getTimeStampToken(this.timeStamps[0]).getTimeStampInfo().getMessageImprintAlgOID()));
            initialiseMessageImprintDigestCalculator(digestCalculator);
            return digestCalculator;
        } catch (CMSException e7) {
            throw new OperatorCreationException("unable to extract algorithm ID: " + e7.getMessage(), e7);
        }
    }

    public AttributeTable getOtherMetaData() {
        return new AttributeTable(this.metaDataUtil.getOtherMetaData());
    }

    public TimeStampToken getTimeStampToken(TimeStampAndCRL timeStampAndCRL) throws CMSException {
        try {
            return new TimeStampToken(timeStampAndCRL.getTimeStampToken());
        } catch (IOException e7) {
            throw new CMSException(a.n(e7, new StringBuilder("unable to parse token data: ")), e7);
        } catch (IllegalArgumentException e10) {
            throw new CMSException(z.f(e10, new StringBuilder("token data invalid: ")), e10);
        } catch (TSPException e11) {
            if (e11.getCause() instanceof CMSException) {
                throw ((CMSException) e11.getCause());
            }
            throw new CMSException("token data invalid: " + e11.getMessage(), e11);
        }
    }

    public TimeStampToken[] getTimeStampTokens() {
        TimeStampToken[] timeStampTokenArr = new TimeStampToken[this.timeStamps.length];
        int i10 = 0;
        while (true) {
            TimeStampAndCRL[] timeStampAndCRLArr = this.timeStamps;
            if (i10 >= timeStampAndCRLArr.length) {
                return timeStampTokenArr;
            }
            timeStampTokenArr[i10] = getTimeStampToken(timeStampAndCRLArr[i10]);
            i10++;
        }
    }

    public TimeStampAndCRL[] getTimeStamps() {
        return this.timeStamps;
    }

    public void initialiseMessageImprintDigestCalculator(DigestCalculator digestCalculator) throws CMSException, IOException {
        this.metaDataUtil.initialiseMessageImprintDigestCalculator(digestCalculator);
    }

    public void validate(DigestCalculatorProvider digestCalculatorProvider, byte[] bArr) throws ImprintDigestInvalidException, CMSException, IOException {
        int i10 = 0;
        while (true) {
            TimeStampAndCRL[] timeStampAndCRLArr = this.timeStamps;
            if (i10 >= timeStampAndCRLArr.length) {
                return;
            }
            try {
                TimeStampToken timeStampToken = getTimeStampToken(timeStampAndCRLArr[i10]);
                if (i10 > 0) {
                    DigestCalculator digestCalculator = digestCalculatorProvider.get(timeStampToken.getTimeStampInfo().getHashAlgorithm());
                    digestCalculator.getOutputStream().write(this.timeStamps[i10 - 1].getEncoded(ASN1Encoding.DER));
                    bArr = digestCalculator.getDigest();
                }
                compareDigest(timeStampToken, bArr);
                i10++;
            } catch (IOException e7) {
                throw new CMSException(a.n(e7, new StringBuilder("exception calculating hash: ")), e7);
            } catch (OperatorCreationException e10) {
                throw new CMSException("cannot create digest: " + e10.getMessage(), e10);
            }
        }
    }

    public TimeStampDataUtil(TimeStampedDataParser timeStampedDataParser) {
        this.metaDataUtil = new MetaDataUtil(timeStampedDataParser.getMetaData());
        this.timeStamps = timeStampedDataParser.getTemporalEvidence().getTstEvidence().toTimeStampAndCRLArray();
    }

    public void validate(DigestCalculatorProvider digestCalculatorProvider, byte[] bArr, TimeStampToken timeStampToken) throws ImprintDigestInvalidException, CMSException, IOException {
        try {
            byte[] encoded = timeStampToken.getEncoded();
            int i10 = 0;
            while (true) {
                TimeStampAndCRL[] timeStampAndCRLArr = this.timeStamps;
                if (i10 >= timeStampAndCRLArr.length) {
                    throw new ImprintDigestInvalidException("passed in token not associated with timestamps present", timeStampToken);
                }
                try {
                    TimeStampToken timeStampToken2 = getTimeStampToken(timeStampAndCRLArr[i10]);
                    if (i10 > 0) {
                        DigestCalculator digestCalculator = digestCalculatorProvider.get(timeStampToken2.getTimeStampInfo().getHashAlgorithm());
                        digestCalculator.getOutputStream().write(this.timeStamps[i10 - 1].getEncoded(ASN1Encoding.DER));
                        bArr = digestCalculator.getDigest();
                    }
                    compareDigest(timeStampToken2, bArr);
                    if (Arrays.areEqual(timeStampToken2.getEncoded(), encoded)) {
                        return;
                    } else {
                        i10++;
                    }
                } catch (IOException e7) {
                    throw new CMSException(a.n(e7, new StringBuilder("exception calculating hash: ")), e7);
                } catch (OperatorCreationException e10) {
                    throw new CMSException("cannot create digest: " + e10.getMessage(), e10);
                }
            }
        } catch (IOException e11) {
            throw new CMSException(a.n(e11, new StringBuilder("exception encoding timeStampToken: ")), e11);
        }
    }
}
