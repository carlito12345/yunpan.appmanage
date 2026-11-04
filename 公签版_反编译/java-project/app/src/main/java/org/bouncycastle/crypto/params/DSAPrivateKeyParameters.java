package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class DSAPrivateKeyParameters extends DSAKeyParameters {

    /* renamed from: x, reason: collision with root package name */
    private BigInteger f12058x;

    public DSAPrivateKeyParameters(BigInteger bigInteger, DSAParameters dSAParameters) {
        super(true, dSAParameters);
        this.f12058x = bigInteger;
    }

    public BigInteger getX() {
        return this.f12058x;
    }
}
