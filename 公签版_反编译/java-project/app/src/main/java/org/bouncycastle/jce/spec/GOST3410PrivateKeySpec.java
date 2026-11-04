package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;

/* loaded from: classes3.dex */
public class GOST3410PrivateKeySpec implements KeySpec {

    /* renamed from: a, reason: collision with root package name */
    private BigInteger f12148a;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f12149p;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f12150q;

    /* renamed from: x, reason: collision with root package name */
    private BigInteger f12151x;

    public GOST3410PrivateKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f12151x = bigInteger;
        this.f12149p = bigInteger2;
        this.f12150q = bigInteger3;
        this.f12148a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f12148a;
    }

    public BigInteger getP() {
        return this.f12149p;
    }

    public BigInteger getQ() {
        return this.f12150q;
    }

    public BigInteger getX() {
        return this.f12151x;
    }
}
