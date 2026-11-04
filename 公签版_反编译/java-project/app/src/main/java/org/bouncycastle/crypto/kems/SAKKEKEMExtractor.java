package org.bouncycastle.crypto.kems;

import com.hsae.autosdk.source.SourceConst;
import java.math.BigInteger;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.EncapsulatedSecretExtractor;
import org.bouncycastle.crypto.params.SAKKEPrivateKeyParameters;
import org.bouncycastle.crypto.params.SAKKEPublicKeyParameters;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes3.dex */
public class SAKKEKEMExtractor implements EncapsulatedSecretExtractor {
    private final ECPoint K_bs;
    private final ECPoint P;
    private final ECPoint Z_S;
    private final ECCurve curve;
    private final Digest digest;
    private final BigInteger identifier;

    /* renamed from: n, reason: collision with root package name */
    private final int f11993n;

    /* renamed from: p, reason: collision with root package name */
    private final BigInteger f11994p;

    /* renamed from: q, reason: collision with root package name */
    private final BigInteger f11995q;

    public SAKKEKEMExtractor(SAKKEPrivateKeyParameters sAKKEPrivateKeyParameters) {
        SAKKEPublicKeyParameters publicParams = sAKKEPrivateKeyParameters.getPublicParams();
        this.curve = publicParams.getCurve();
        BigInteger q8 = publicParams.getQ();
        this.f11995q = q8;
        ECPoint point = publicParams.getPoint();
        this.P = point;
        this.f11994p = publicParams.getPrime();
        this.Z_S = publicParams.getZ();
        BigInteger identifier = publicParams.getIdentifier();
        this.identifier = identifier;
        this.K_bs = point.multiply(identifier.add(sAKKEPrivateKeyParameters.getMasterSecret()).modInverse(q8)).normalize();
        this.f11993n = publicParams.getN();
        this.digest = publicParams.getDigest();
    }

    public static BigInteger computePairing(ECPoint eCPoint, ECPoint eCPoint2, BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = BigInteger.ONE;
        BigInteger[] bigIntegerArrFp2Multiply = {bigInteger3, BigInteger.ZERO};
        BigInteger bigIntegerSubtract = bigInteger2.subtract(bigInteger3);
        int iBitLength = bigIntegerSubtract.bitLength();
        BigInteger bigInteger4 = eCPoint2.getAffineXCoord().toBigInteger();
        BigInteger bigInteger5 = eCPoint2.getAffineYCoord().toBigInteger();
        BigInteger bigInteger6 = eCPoint.getAffineXCoord().toBigInteger();
        BigInteger bigInteger7 = eCPoint.getAffineYCoord().toBigInteger();
        BigInteger bigIntegerValueOf = BigInteger.valueOf(3L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(2L);
        ECPoint eCPointNormalize = eCPoint;
        for (int i10 = iBitLength - 2; i10 >= 0; i10--) {
            BigInteger bigInteger8 = eCPointNormalize.getAffineXCoord().toBigInteger();
            BigInteger bigInteger9 = eCPointNormalize.getAffineYCoord().toBigInteger();
            BigInteger bigIntegerMod = bigIntegerValueOf.multiply(bigInteger8.multiply(bigInteger8).subtract(BigInteger.ONE)).multiply(bigInteger9.multiply(bigIntegerValueOf2).modInverse(bigInteger)).mod(bigInteger);
            BigInteger[] bigIntegerArrFp2PointSquare = fp2PointSquare(bigIntegerArrFp2Multiply[0], bigIntegerArrFp2Multiply[1], bigInteger);
            bigIntegerArrFp2Multiply = fp2Multiply(bigIntegerArrFp2PointSquare[0], bigIntegerArrFp2PointSquare[1], bigIntegerMod.multiply(bigInteger4.add(bigInteger8)).subtract(bigInteger9), bigInteger5, bigInteger);
            eCPointNormalize = eCPointNormalize.twice().normalize();
            if (bigIntegerSubtract.testBit(i10)) {
                BigInteger bigInteger10 = eCPointNormalize.getAffineXCoord().toBigInteger();
                BigInteger bigInteger11 = eCPointNormalize.getAffineYCoord().toBigInteger();
                bigIntegerArrFp2Multiply = fp2Multiply(bigIntegerArrFp2Multiply[0], bigIntegerArrFp2Multiply[1], bigInteger11.subtract(bigInteger7).multiply(bigInteger10.subtract(bigInteger6).modInverse(bigInteger)).mod(bigInteger).multiply(bigInteger4.add(bigInteger10)).subtract(bigInteger11), bigInteger5, bigInteger);
                eCPointNormalize = eCPointNormalize.add(eCPoint).normalize();
            }
        }
        BigInteger[] bigIntegerArrFp2PointSquare2 = fp2PointSquare(bigIntegerArrFp2Multiply[0], bigIntegerArrFp2Multiply[1], bigInteger);
        BigInteger[] bigIntegerArrFp2PointSquare3 = fp2PointSquare(bigIntegerArrFp2PointSquare2[0], bigIntegerArrFp2PointSquare2[1], bigInteger);
        return bigIntegerArrFp2PointSquare3[1].multiply(bigIntegerArrFp2PointSquare3[0].modInverse(bigInteger)).mod(bigInteger);
    }

    public static BigInteger[] fp2Multiply(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
        return new BigInteger[]{bigInteger.multiply(bigInteger3).subtract(bigInteger2.multiply(bigInteger4)).mod(bigInteger5), bigInteger.multiply(bigInteger4).add(bigInteger2.multiply(bigInteger3)).mod(bigInteger5)};
    }

    public static BigInteger[] fp2PointSquare(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return new BigInteger[]{bigInteger.add(bigInteger2).mod(bigInteger3).multiply(bigInteger.subtract(bigInteger2).mod(bigInteger3)).mod(bigInteger3), bigInteger.multiply(bigInteger2).multiply(BigInteger.valueOf(2L)).mod(bigInteger3)};
    }

    @Override // org.bouncycastle.crypto.EncapsulatedSecretExtractor
    public byte[] extractSecret(byte[] bArr) {
        ECPoint eCPointDecodePoint = this.curve.decodePoint(Arrays.copyOfRange(bArr, 0, 257));
        BigInteger bigIntegerFromUnsignedByteArray = BigIntegers.fromUnsignedByteArray(bArr, 257, 16);
        BigInteger bigIntegerComputePairing = computePairing(eCPointDecodePoint, this.K_bs, this.f11994p, this.f11995q);
        BigInteger bigIntegerMod = bigIntegerFromUnsignedByteArray.xor(SAKKEKEMSGenerator.hashToIntegerRange(bigIntegerComputePairing.toByteArray(), BigInteger.ONE.shiftLeft(this.f11993n), this.digest)).mod(this.f11994p);
        BigInteger bigInteger = this.identifier;
        if (eCPointDecodePoint.equals(this.P.multiply(bigInteger).normalize().add(this.Z_S).multiply(SAKKEKEMSGenerator.hashToIntegerRange(Arrays.concatenate(bigIntegerMod.toByteArray(), bigInteger.toByteArray()), this.f11995q, this.digest)).normalize())) {
            return BigIntegers.asUnsignedByteArray(this.f11993n / 8, bigIntegerMod);
        }
        throw new IllegalStateException("Validation of R_bS failed");
    }

    @Override // org.bouncycastle.crypto.EncapsulatedSecretExtractor
    public int getEncapsulationLength() {
        return SourceConst.IOCTL_AM_VOLUME;
    }
}
