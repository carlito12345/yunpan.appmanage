package org.bouncycastle.internal.asn1.oiw;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;

/* loaded from: classes3.dex */
public class ElGamalParameter extends ASN1Object {

    /* renamed from: g, reason: collision with root package name */
    ASN1Integer f12100g;

    /* renamed from: p, reason: collision with root package name */
    ASN1Integer f12101p;

    public ElGamalParameter(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f12101p = new ASN1Integer(bigInteger);
        this.f12100g = new ASN1Integer(bigInteger2);
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
        return this.f12100g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f12101p.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(this.f12101p, this.f12100g);
    }

    private ElGamalParameter(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f12101p = (ASN1Integer) objects.nextElement();
        this.f12100g = (ASN1Integer) objects.nextElement();
    }
}
