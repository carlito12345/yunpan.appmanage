package org.bouncycastle.crypto.agreement.ecjpake;

import org.bouncycastle.math.ec.ECPoint;

/* loaded from: classes3.dex */
public class ECJPAKERound2Payload {

    /* renamed from: a, reason: collision with root package name */
    private final ECPoint f11878a;
    private final ECSchnorrZKP knowledgeProofForX2s;
    private final String participantId;

    public ECJPAKERound2Payload(String str, ECPoint eCPoint, ECSchnorrZKP eCSchnorrZKP) {
        ECJPAKEUtil.validateNotNull(str, "participantId");
        ECJPAKEUtil.validateNotNull(eCPoint, "a");
        ECJPAKEUtil.validateNotNull(eCSchnorrZKP, "knowledgeProofForX2s");
        this.participantId = str;
        this.f11878a = eCPoint;
        this.knowledgeProofForX2s = eCSchnorrZKP;
    }

    public ECPoint getA() {
        return this.f11878a;
    }

    public ECSchnorrZKP getKnowledgeProofForX2s() {
        return this.knowledgeProofForX2s;
    }

    public String getParticipantId() {
        return this.participantId;
    }
}
