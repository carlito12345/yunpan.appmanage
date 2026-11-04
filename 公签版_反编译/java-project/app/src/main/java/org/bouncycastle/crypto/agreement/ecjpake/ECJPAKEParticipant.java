package org.bouncycastle.crypto.agreement.ecjpake;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Exceptions;

/* loaded from: classes3.dex */
public class ECJPAKEParticipant {
    public static final int STATE_INITIALIZED = 0;
    public static final int STATE_KEY_CALCULATED = 50;
    public static final int STATE_ROUND_1_CREATED = 10;
    public static final int STATE_ROUND_1_VALIDATED = 20;
    public static final int STATE_ROUND_2_CREATED = 30;
    public static final int STATE_ROUND_2_VALIDATED = 40;
    public static final int STATE_ROUND_3_CREATED = 60;
    public static final int STATE_ROUND_3_VALIDATED = 70;

    /* renamed from: b, reason: collision with root package name */
    private ECPoint f11871b;
    private final Digest digest;
    private ECCurve.AbstractFp ecCurve;

    /* renamed from: g, reason: collision with root package name */
    private ECPoint f11872g;
    private ECPoint gx1;
    private ECPoint gx2;
    private ECPoint gx3;
    private ECPoint gx4;

    /* renamed from: h, reason: collision with root package name */
    private BigInteger f11873h;

    /* renamed from: n, reason: collision with root package name */
    private BigInteger f11874n;
    private final String participantId;
    private String partnerParticipantId;
    private char[] password;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f11875q;
    private final SecureRandom random;
    private int state;

    /* renamed from: x1, reason: collision with root package name */
    private BigInteger f11876x1;

    /* renamed from: x2, reason: collision with root package name */
    private BigInteger f11877x2;

    public ECJPAKEParticipant(String str, char[] cArr) {
        this(str, cArr, ECJPAKECurves.NIST_P256);
    }

    private BigInteger calculateS() {
        try {
            return ECJPAKEUtil.calculateS(this.f11874n, this.password);
        } catch (CryptoException e7) {
            throw Exceptions.illegalStateException(e7.getMessage(), e7);
        }
    }

    public BigInteger calculateKeyingMaterial() {
        int i10 = this.state;
        if (i10 >= 50) {
            throw new IllegalStateException("Key already calculated for " + this.participantId);
        }
        if (i10 < 40) {
            throw new IllegalStateException("Round2 payload must be validated prior to creating key for " + this.participantId);
        }
        BigInteger bigIntegerCalculateS = calculateS();
        Arrays.fill(this.password, (char) 0);
        this.password = null;
        BigInteger bigIntegerCalculateKeyingMaterial = ECJPAKEUtil.calculateKeyingMaterial(this.f11874n, this.gx4, this.f11877x2, bigIntegerCalculateS, this.f11871b);
        this.f11876x1 = null;
        this.f11877x2 = null;
        this.f11871b = null;
        this.state = 50;
        return bigIntegerCalculateKeyingMaterial;
    }

    public ECJPAKERound1Payload createRound1PayloadToSend() {
        if (this.state >= 10) {
            throw new IllegalStateException("Round1 payload already created for " + this.participantId);
        }
        this.f11876x1 = ECJPAKEUtil.generateX1(this.f11874n, this.random);
        this.f11877x2 = ECJPAKEUtil.generateX1(this.f11874n, this.random);
        this.gx1 = ECJPAKEUtil.calculateGx(this.f11872g, this.f11876x1);
        this.gx2 = ECJPAKEUtil.calculateGx(this.f11872g, this.f11877x2);
        ECSchnorrZKP eCSchnorrZKPCalculateZeroKnowledgeProof = ECJPAKEUtil.calculateZeroKnowledgeProof(this.f11872g, this.f11874n, this.f11876x1, this.gx1, this.digest, this.participantId, this.random);
        ECSchnorrZKP eCSchnorrZKPCalculateZeroKnowledgeProof2 = ECJPAKEUtil.calculateZeroKnowledgeProof(this.f11872g, this.f11874n, this.f11877x2, this.gx2, this.digest, this.participantId, this.random);
        this.state = 10;
        return new ECJPAKERound1Payload(this.participantId, this.gx1, this.gx2, eCSchnorrZKPCalculateZeroKnowledgeProof, eCSchnorrZKPCalculateZeroKnowledgeProof2);
    }

    public ECJPAKERound2Payload createRound2PayloadToSend() {
        int i10 = this.state;
        if (i10 >= 30) {
            throw new IllegalStateException("Round2 payload already created for " + this.participantId);
        }
        if (i10 < 20) {
            throw new IllegalStateException("Round1 payload must be validated prior to creating Round2 payload for " + this.participantId);
        }
        ECPoint eCPointCalculateGA = ECJPAKEUtil.calculateGA(this.gx1, this.gx3, this.gx4);
        BigInteger bigIntegerCalculateX2s = ECJPAKEUtil.calculateX2s(this.f11874n, this.f11877x2, calculateS());
        ECPoint eCPointCalculateA = ECJPAKEUtil.calculateA(eCPointCalculateGA, bigIntegerCalculateX2s);
        ECSchnorrZKP eCSchnorrZKPCalculateZeroKnowledgeProof = ECJPAKEUtil.calculateZeroKnowledgeProof(eCPointCalculateGA, this.f11874n, bigIntegerCalculateX2s, eCPointCalculateA, this.digest, this.participantId, this.random);
        this.state = 30;
        return new ECJPAKERound2Payload(this.participantId, eCPointCalculateA, eCSchnorrZKPCalculateZeroKnowledgeProof);
    }

    public ECJPAKERound3Payload createRound3PayloadToSend(BigInteger bigInteger) {
        int i10 = this.state;
        if (i10 >= 60) {
            throw new IllegalStateException("Round3 payload already created for " + this.participantId);
        }
        if (i10 >= 50) {
            BigInteger bigIntegerCalculateMacTag = ECJPAKEUtil.calculateMacTag(this.participantId, this.partnerParticipantId, this.gx1, this.gx2, this.gx3, this.gx4, bigInteger, this.digest);
            this.state = 60;
            return new ECJPAKERound3Payload(this.participantId, bigIntegerCalculateMacTag);
        }
        throw new IllegalStateException("Keying material must be calculated prior to creating Round3 payload for " + this.participantId);
    }

    public int getState() {
        return this.state;
    }

    public void validateRound1PayloadReceived(ECJPAKERound1Payload eCJPAKERound1Payload) throws CryptoException {
        if (this.state >= 20) {
            throw new IllegalStateException("Validation already attempted for round1 payload for" + this.participantId);
        }
        this.partnerParticipantId = eCJPAKERound1Payload.getParticipantId();
        this.gx3 = eCJPAKERound1Payload.getGx1();
        this.gx4 = eCJPAKERound1Payload.getGx2();
        ECSchnorrZKP knowledgeProofForX1 = eCJPAKERound1Payload.getKnowledgeProofForX1();
        ECSchnorrZKP knowledgeProofForX2 = eCJPAKERound1Payload.getKnowledgeProofForX2();
        ECJPAKEUtil.validateParticipantIdsDiffer(this.participantId, eCJPAKERound1Payload.getParticipantId());
        ECJPAKEUtil.validateZeroKnowledgeProof(this.f11872g, this.gx3, knowledgeProofForX1, this.f11875q, this.f11874n, this.ecCurve, this.f11873h, eCJPAKERound1Payload.getParticipantId(), this.digest);
        ECJPAKEUtil.validateZeroKnowledgeProof(this.f11872g, this.gx4, knowledgeProofForX2, this.f11875q, this.f11874n, this.ecCurve, this.f11873h, eCJPAKERound1Payload.getParticipantId(), this.digest);
        this.state = 20;
    }

    public void validateRound2PayloadReceived(ECJPAKERound2Payload eCJPAKERound2Payload) throws CryptoException {
        int i10 = this.state;
        if (i10 >= 40) {
            throw new IllegalStateException("Validation already attempted for round2 payload for" + this.participantId);
        }
        if (i10 < 20) {
            throw new IllegalStateException("Round1 payload must be validated prior to validating Round2 payload for " + this.participantId);
        }
        ECPoint eCPointCalculateGA = ECJPAKEUtil.calculateGA(this.gx3, this.gx1, this.gx2);
        this.f11871b = eCJPAKERound2Payload.getA();
        ECSchnorrZKP knowledgeProofForX2s = eCJPAKERound2Payload.getKnowledgeProofForX2s();
        ECJPAKEUtil.validateParticipantIdsDiffer(this.participantId, eCJPAKERound2Payload.getParticipantId());
        ECJPAKEUtil.validateParticipantIdsEqual(this.partnerParticipantId, eCJPAKERound2Payload.getParticipantId());
        ECJPAKEUtil.validateZeroKnowledgeProof(eCPointCalculateGA, this.f11871b, knowledgeProofForX2s, this.f11875q, this.f11874n, this.ecCurve, this.f11873h, eCJPAKERound2Payload.getParticipantId(), this.digest);
        this.state = 40;
    }

    public void validateRound3PayloadReceived(ECJPAKERound3Payload eCJPAKERound3Payload, BigInteger bigInteger) throws CryptoException {
        int i10 = this.state;
        if (i10 >= 70) {
            throw new IllegalStateException("Validation already attempted for round3 payload for" + this.participantId);
        }
        if (i10 < 50) {
            throw new IllegalStateException("Keying material must be calculated validated prior to validating Round3 payload for " + this.participantId);
        }
        ECJPAKEUtil.validateParticipantIdsDiffer(this.participantId, eCJPAKERound3Payload.getParticipantId());
        ECJPAKEUtil.validateParticipantIdsEqual(this.partnerParticipantId, eCJPAKERound3Payload.getParticipantId());
        ECJPAKEUtil.validateMacTag(this.participantId, this.partnerParticipantId, this.gx1, this.gx2, this.gx3, this.gx4, bigInteger, this.digest, eCJPAKERound3Payload.getMacTag());
        this.gx1 = null;
        this.gx2 = null;
        this.gx3 = null;
        this.gx4 = null;
        this.state = 70;
    }

    public ECJPAKEParticipant(String str, char[] cArr, ECJPAKECurve eCJPAKECurve) {
        this(str, cArr, eCJPAKECurve, SHA256Digest.newInstance(), CryptoServicesRegistrar.getSecureRandom());
    }

    public ECJPAKEParticipant(String str, char[] cArr, ECJPAKECurve eCJPAKECurve, Digest digest, SecureRandom secureRandom) {
        ECJPAKEUtil.validateNotNull(str, "participantId");
        ECJPAKEUtil.validateNotNull(cArr, "password");
        ECJPAKEUtil.validateNotNull(eCJPAKECurve, "curve params");
        ECJPAKEUtil.validateNotNull(digest, CMSAttributeTableGenerator.DIGEST);
        ECJPAKEUtil.validateNotNull(secureRandom, "random");
        if (cArr.length == 0) {
            throw new IllegalArgumentException("Password must not be empty.");
        }
        this.participantId = str;
        this.password = Arrays.copyOf(cArr, cArr.length);
        this.ecCurve = eCJPAKECurve.getCurve();
        this.f11872g = eCJPAKECurve.getG();
        this.f11873h = eCJPAKECurve.getH();
        this.f11874n = eCJPAKECurve.getN();
        this.f11875q = eCJPAKECurve.getQ();
        this.digest = digest;
        this.random = secureRandom;
        this.state = 0;
    }
}
