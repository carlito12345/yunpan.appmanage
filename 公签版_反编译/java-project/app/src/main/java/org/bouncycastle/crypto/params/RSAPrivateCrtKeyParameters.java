package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class RSAPrivateCrtKeyParameters extends RSAKeyParameters {
    private BigInteger dP;
    private BigInteger dQ;

    /* renamed from: e, reason: collision with root package name */
    private BigInteger f12081e;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f12082p;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f12083q;
    private BigInteger qInv;

    public RSAPrivateCrtKeyParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        this(bigInteger, bigInteger2, bigInteger3, bigInteger4, bigInteger5, bigInteger6, bigInteger7, bigInteger8, false);
    }

    public BigInteger getDP() {
        return this.dP;
    }

    public BigInteger getDQ() {
        return this.dQ;
    }

    public BigInteger getP() {
        return this.f12082p;
    }

    public BigInteger getPublicExponent() {
        return this.f12081e;
    }

    public BigInteger getQ() {
        return this.f12083q;
    }

    public BigInteger getQInv() {
        return this.qInv;
    }

    public RSAPrivateCrtKeyParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8, boolean z) {
        super(true, bigInteger, bigInteger3, z);
        this.f12081e = bigInteger2;
        this.f12082p = bigInteger4;
        this.f12083q = bigInteger5;
        this.dP = bigInteger6;
        this.dQ = bigInteger7;
        this.qInv = bigInteger8;
    }
}
