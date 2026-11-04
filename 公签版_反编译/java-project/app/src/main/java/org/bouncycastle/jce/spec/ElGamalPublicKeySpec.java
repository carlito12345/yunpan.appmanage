package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class ElGamalPublicKeySpec extends ElGamalKeySpec {

    /* renamed from: y, reason: collision with root package name */
    private BigInteger f12147y;

    public ElGamalPublicKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f12147y = bigInteger;
    }

    public BigInteger getY() {
        return this.f12147y;
    }
}
