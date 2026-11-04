package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class ElGamalPrivateKeySpec extends ElGamalKeySpec {

    /* renamed from: x, reason: collision with root package name */
    private BigInteger f12146x;

    public ElGamalPrivateKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f12146x = bigInteger;
    }

    public BigInteger getX() {
        return this.f12146x;
    }
}
