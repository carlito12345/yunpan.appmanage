package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;

/* loaded from: classes3.dex */
public class GOST3410PublicKeySpec implements KeySpec {

    /* renamed from: a, reason: collision with root package name */
    private BigInteger f12155a;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f12156p;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f12157q;

    /* renamed from: y, reason: collision with root package name */
    private BigInteger f12158y;

    public GOST3410PublicKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f12158y = bigInteger;
        this.f12156p = bigInteger2;
        this.f12157q = bigInteger3;
        this.f12155a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f12155a;
    }

    public BigInteger getP() {
        return this.f12156p;
    }

    public BigInteger getQ() {
        return this.f12157q;
    }

    public BigInteger getY() {
        return this.f12158y;
    }
}
