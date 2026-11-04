package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class DHPrivateKeyParameters extends DHKeyParameters {

    /* renamed from: x, reason: collision with root package name */
    private BigInteger f12052x;

    public DHPrivateKeyParameters(BigInteger bigInteger, DHParameters dHParameters) {
        super(true, dHParameters);
        this.f12052x = bigInteger;
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public boolean equals(Object obj) {
        return (obj instanceof DHPrivateKeyParameters) && ((DHPrivateKeyParameters) obj).getX().equals(this.f12052x) && super.equals(obj);
    }

    public BigInteger getX() {
        return this.f12052x;
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public int hashCode() {
        return this.f12052x.hashCode() ^ super.hashCode();
    }
}
