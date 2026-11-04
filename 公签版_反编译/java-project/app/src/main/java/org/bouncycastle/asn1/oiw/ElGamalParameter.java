package org.bouncycastle.asn1.oiw;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;

/* loaded from: classes.dex */
public class ElGamalParameter extends ASN1Object {

    /* renamed from: g, reason: collision with root package name */
    ASN1Integer f11827g;

    /* renamed from: p, reason: collision with root package name */
    ASN1Integer f11828p;

    public ElGamalParameter(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f11828p = new ASN1Integer(bigInteger);
        this.f11827g = new ASN1Integer(bigInteger2);
    }

    public static ElGamalParameter getInstance(Object obj) {
        if (obj instanceof ElGamalParameter) {
            return (ElGamalParameter) obj;
        }
        if (obj != null) {
            return new ElGamalParameter(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public BigInteger getG() {
        return this.f11827g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f11828p.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(this.f11828p, this.f11827g);
    }

    private ElGamalParameter(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f11828p = (ASN1Integer) objects.nextElement();
        this.f11827g = (ASN1Integer) objects.nextElement();
    }
}
