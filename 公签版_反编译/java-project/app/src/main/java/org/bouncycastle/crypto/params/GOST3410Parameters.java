package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class GOST3410Parameters implements CipherParameters {

    /* renamed from: a, reason: collision with root package name */
    private BigInteger f12071a;

    /* renamed from: p, reason: collision with root package name */
    private BigInteger f12072p;

    /* renamed from: q, reason: collision with root package name */
    private BigInteger f12073q;
    private GOST3410ValidationParameters validation;

    public GOST3410Parameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f12072p = bigInteger;
        this.f12073q = bigInteger2;
        this.f12071a = bigInteger3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410Parameters)) {
            return false;
        }
        GOST3410Parameters gOST3410Parameters = (GOST3410Parameters) obj;
        return gOST3410Parameters.getP().equals(this.f12072p) && gOST3410Parameters.getQ().equals(this.f12073q) && gOST3410Parameters.getA().equals(this.f12071a);
    }

    public BigInteger getA() {
        return this.f12071a;
    }

    public BigInteger getP() {
        return this.f12072p;
    }

    public BigInteger getQ() {
        return this.f12073q;
    }

    public GOST3410ValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (this.f12072p.hashCode() ^ this.f12073q.hashCode()) ^ this.f12071a.hashCode();
    }

    public GOST3410Parameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, GOST3410ValidationParameters gOST3410ValidationParameters) {
        this.f12071a = bigInteger3;
        this.f12072p = bigInteger;
        this.f12073q = bigInteger2;
        this.validation = gOST3410ValidationParameters;
    }
}
