package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class ElGamalParameters implements CipherParameters {

    /* renamed from: g, reason: collision with root package name */
    private BigInteger f12067g;
    private int l;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f12068p;

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ElGamalParameters)) {
            return false;
        }
        ElGamalParameters elGamalParameters = (ElGamalParameters) obj;
        return elGamalParameters.getP().equals(this.f12068p) && elGamalParameters.getG().equals(this.f12067g) && elGamalParameters.getL() == this.l;
    }

    public BigInteger getG() {
        return this.f12067g;
    }

    public int getL() {
        return this.l;
    }

    public BigInteger getP() {
        return this.f12068p;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) + this.l;
    }

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2, int i10) {
        this.f12067g = bigInteger2;
        this.f12068p = bigInteger;
        this.l = i10;
    }
}
