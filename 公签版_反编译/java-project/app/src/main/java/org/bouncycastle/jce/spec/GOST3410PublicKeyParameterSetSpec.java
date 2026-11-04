package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class GOST3410PublicKeyParameterSetSpec {

    /* renamed from: a, reason: collision with root package name */
    private BigInteger f12152a;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f12153p;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f12154q;

    public GOST3410PublicKeyParameterSetSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f12153p = bigInteger;
        this.f12154q = bigInteger2;
        this.f12152a = bigInteger3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410PublicKeyParameterSetSpec)) {
            return false;
        }
        GOST3410PublicKeyParameterSetSpec gOST3410PublicKeyParameterSetSpec = (GOST3410PublicKeyParameterSetSpec) obj;
        return this.f12152a.equals(gOST3410PublicKeyParameterSetSpec.f12152a) && this.f12153p.equals(gOST3410PublicKeyParameterSetSpec.f12153p) && this.f12154q.equals(gOST3410PublicKeyParameterSetSpec.f12154q);
    }

    public BigInteger getA() {
        return this.f12152a;
    }

    public BigInteger getP() {
        return this.f12153p;
    }

    public BigInteger getQ() {
        return this.f12154q;
    }

    public int hashCode() {
        return (this.f12152a.hashCode() ^ this.f12153p.hashCode()) ^ this.f12154q.hashCode();
    }
}
