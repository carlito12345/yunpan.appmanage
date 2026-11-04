package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class CramerShoupPublicKeyParameters extends CramerShoupKeyParameters {

    /* renamed from: c, reason: collision with root package name */
    private BigInteger f12044c;

    /* renamed from: d, reason: collision with root package name */
    private BigInteger f12045d;

    /* renamed from: h, reason: collision with root package name */
    private BigInteger f12046h;

    public CramerShoupPublicKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        super(false, cramerShoupParameters);
        this.f12044c = bigInteger;
        this.f12045d = bigInteger2;
        this.f12046h = bigInteger3;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupPublicKeyParameters)) {
            return false;
        }
        CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters = (CramerShoupPublicKeyParameters) obj;
        return cramerShoupPublicKeyParameters.getC().equals(this.f12044c) && cramerShoupPublicKeyParameters.getD().equals(this.f12045d) && cramerShoupPublicKeyParameters.getH().equals(this.f12046h) && super.equals(obj);
    }

    public BigInteger getC() {
        return this.f12044c;
    }

    public BigInteger getD() {
        return this.f12045d;
    }

    public BigInteger getH() {
        return this.f12046h;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public int hashCode() {
        return ((this.f12044c.hashCode() ^ this.f12045d.hashCode()) ^ this.f12046h.hashCode()) ^ super.hashCode();
    }
}
