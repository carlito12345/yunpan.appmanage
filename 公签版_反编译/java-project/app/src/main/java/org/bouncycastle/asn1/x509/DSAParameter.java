package org.bouncycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import l2.z;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;

/* loaded from: classes3.dex */
public class DSAParameter extends ASN1Object {

    /* renamed from: g, reason: collision with root package name */
    ASN1Integer f11842g;

    /* renamed from: p, reason: collision with root package name */
    ASN1Integer f11843p;

    /* renamed from: q, reason: collision with root package name */
    ASN1Integer f11844q;

    public DSAParameter(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f11843p = new ASN1Integer(bigInteger);
        this.f11844q = new ASN1Integer(bigInteger2);
        this.f11842g = new ASN1Integer(bigInteger3);
    }

    public static DSAParameter getInstance(Object obj) {
        if (obj instanceof DSAParameter) {
            return (DSAParameter) obj;
        }
        if (obj != null) {
            return new DSAParameter(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public BigInteger getG() {
        return this.f11842g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f11843p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f11844q.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(3);
        aSN1EncodableVector.add(this.f11843p);
        aSN1EncodableVector.add(this.f11844q);
        aSN1EncodableVector.add(this.f11842g);
        return new DERSequence(aSN1EncodableVector);
    }

    private DSAParameter(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException(z.o(aSN1Sequence, new StringBuilder("Bad sequence size: ")));
        }
        Enumeration objects = aSN1Sequence.getObjects();
        this.f11843p = ASN1Integer.getInstance(objects.nextElement());
        this.f11844q = ASN1Integer.getInstance(objects.nextElement());
        this.f11842g = ASN1Integer.getInstance(objects.nextElement());
    }

    public static DSAParameter getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }
}
