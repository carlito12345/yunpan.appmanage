package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes3.dex */
public class ElGamalParameterSpec implements AlgorithmParameterSpec {

    /* renamed from: g, reason: collision with root package name */
    private BigInteger f12144g;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f12145p;

    public ElGamalParameterSpec(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f12145p = bigInteger;
        this.f12144g = bigInteger2;
    }

    public BigInteger getG() {
        return this.f12144g;
    }

    public BigInteger getP() {
        return this.f12145p;
    }
}
