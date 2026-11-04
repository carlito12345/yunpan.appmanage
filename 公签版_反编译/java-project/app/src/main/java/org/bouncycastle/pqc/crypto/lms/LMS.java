package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
class LMS {
    static final short D_INTR = -31869;
    static final short D_LEAF = -32126;

    public static LMSPrivateKeyParameters generateKeys(LMSigParameters lMSigParameters, LMOtsParameters lMOtsParameters, int i10, byte[] bArr, byte[] bArr2) {
        if (bArr2 != null && bArr2.length >= lMSigParameters.getM()) {
            return new LMSPrivateKeyParameters(lMSigParameters, lMOtsParameters, i10, bArr, 1 << lMSigParameters.getH(), bArr2);
        }
        throw new IllegalArgumentException("root seed is less than " + lMSigParameters.getM());
    }

    public static LMSSignature generateSign(LMSContext lMSContext) {
        return new LMSSignature(lMSContext.getPrivateKey().getQ(), LM_OTS.lm_ots_generate_signature(lMSContext.getPrivateKey(), lMSContext.getQ(), lMSContext.getC()), lMSContext.getSigParams(), lMSContext.getPath());
    }

    public static boolean verifySignature(LMSPublicKeyParameters lMSPublicKeyParameters, LMSContext lMSContext) {
        LMSSignature lMSSignature = (LMSSignature) lMSContext.getSignature();
        LMSigParameters parameter = lMSSignature.getParameter();
        int h7 = parameter.getH();
        byte[][] y6 = lMSSignature.getY();
        byte[] bArrLm_ots_validate_signature_calculate = LM_OTS.lm_ots_validate_signature_calculate(lMSContext);
        int q8 = (1 << h7) + lMSSignature.getQ();
        byte[] i10 = lMSPublicKeyParameters.getI();
        Digest digest = DigestUtil.getDigest(parameter);
        int digestSize = digest.getDigestSize();
        byte[] bArr = new byte[digestSize];
        digest.update(i10, 0, i10.length);
        LmsUtils.u32str(q8, digest);
        LmsUtils.u16str(D_LEAF, digest);
        digest.update(bArrLm_ots_validate_signature_calculate, 0, bArrLm_ots_validate_signature_calculate.length);
        digest.doFinal(bArr, 0);
        int i11 = 0;
        while (q8 > 1) {
            if ((q8 & 1) == 1) {
                digest.update(i10, 0, i10.length);
                LmsUtils.u32str(q8 / 2, digest);
                LmsUtils.u16str(D_INTR, digest);
                byte[] bArr2 = y6[i11];
                digest.update(bArr2, 0, bArr2.length);
                digest.update(bArr, 0, digestSize);
            } else {
                digest.update(i10, 0, i10.length);
                LmsUtils.u32str(q8 / 2, digest);
                LmsUtils.u16str(D_INTR, digest);
                digest.update(bArr, 0, digestSize);
                byte[] bArr3 = y6[i11];
                digest.update(bArr3, 0, bArr3.length);
            }
            digest.doFinal(bArr, 0);
            q8 /= 2;
            i11++;
            if (i11 == y6.length && q8 > 1) {
                return false;
            }
        }
        return lMSPublicKeyParameters.matchesT1(bArr);
    }

    public static LMSSignature generateSign(LMSPrivateKeyParameters lMSPrivateKeyParameters, byte[] bArr) {
        LMSContext lMSContextGenerateLMSContext = lMSPrivateKeyParameters.generateLMSContext();
        lMSContextGenerateLMSContext.update(bArr, 0, bArr.length);
        return generateSign(lMSContextGenerateLMSContext);
    }

    public static boolean verifySignature(LMSPublicKeyParameters lMSPublicKeyParameters, LMSSignature lMSSignature, byte[] bArr) {
        LMSContext lMSContextGenerateOtsContext = lMSPublicKeyParameters.generateOtsContext(lMSSignature);
        LmsUtils.byteArray(bArr, lMSContextGenerateOtsContext);
        return verifySignature(lMSPublicKeyParameters, lMSContextGenerateOtsContext);
    }

    public static boolean verifySignature(LMSPublicKeyParameters lMSPublicKeyParameters, byte[] bArr, byte[] bArr2) {
        LMSContext lMSContextGenerateLMSContext = lMSPublicKeyParameters.generateLMSContext(bArr);
        LmsUtils.byteArray(bArr2, lMSContextGenerateLMSContext);
        return verifySignature(lMSPublicKeyParameters, lMSContextGenerateLMSContext);
    }
}
