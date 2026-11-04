package org.bouncycastle.cert.cmp;

import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.cmp.Challenge;
import org.bouncycastle.asn1.cmp.PKIBody;
import org.bouncycastle.asn1.cmp.POPODecKeyChallContent;
import org.bouncycastle.operator.DigestCalculator;
import org.bouncycastle.operator.DigestCalculatorProvider;
import org.bouncycastle.operator.OperatorCreationException;

/* loaded from: classes3.dex */
public class POPODecryptionKeyChallengeContent {
    private final ASN1Sequence content;
    private final DigestCalculatorProvider owfCalcProvider;

    public POPODecryptionKeyChallengeContent(POPODecKeyChallContent pOPODecKeyChallContent, DigestCalculatorProvider digestCalculatorProvider) {
        this.content = ASN1Sequence.getInstance(pOPODecKeyChallContent.toASN1Primitive());
        this.owfCalcProvider = digestCalculatorProvider;
    }

    public static POPODecryptionKeyChallengeContent fromPKIBody(PKIBody pKIBody, DigestCalculatorProvider digestCalculatorProvider) {
        if (pKIBody.getType() == 5) {
            return new POPODecryptionKeyChallengeContent(POPODecKeyChallContent.getInstance(pKIBody.getContent()), digestCalculatorProvider);
        }
        throw new IllegalArgumentException("content of PKIBody wrong type: " + pKIBody.getType());
    }

    public POPODecKeyChallContent toASN1Structure() {
        return POPODecKeyChallContent.getInstance(this.content);
    }

    public ChallengeContent[] toChallengeArray() throws CMPException {
        int size = this.content.size();
        ChallengeContent[] challengeContentArr = new ChallengeContent[size];
        DigestCalculator digestCalculator = null;
        for (int i10 = 0; i10 != size; i10++) {
            Challenge challenge = Challenge.getInstance(this.content.getObjectAt(i10));
            if (challenge.getOwf() != null) {
                try {
                    digestCalculator = this.owfCalcProvider.get(challenge.getOwf());
                } catch (OperatorCreationException e7) {
                    throw new CMPException(e7.getMessage(), e7);
                }
            }
            challengeContentArr[i10] = new ChallengeContent(Challenge.getInstance(this.content.getObjectAt(i10)), digestCalculator);
        }
        return challengeContentArr;
    }
}
