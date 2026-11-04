package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class NaccacheSternKeyParameters extends AsymmetricKeyParameter {

    /* renamed from: g, reason: collision with root package name */
    private BigInteger f12078g;
    int lowerSigmaBound;

    /* renamed from: n, reason: collision with root package name */
    private BigInteger f12079n;

    public NaccacheSternKeyParameters(boolean z, BigInteger bigInteger, BigInteger bigInteger2, int i10) {
        super(z);
        this.f12078g = bigInteger;
        this.f12079n = bigInteger2;
        this.lowerSigmaBound = i10;
    }

    public BigInteger getG() {
        return this.f12078g;
    }

    public int getLowerSigmaBound() {
        return this.lowerSigmaBound;
    }

    public BigInteger getModulus() {
        return this.f12079n;
    }
}
