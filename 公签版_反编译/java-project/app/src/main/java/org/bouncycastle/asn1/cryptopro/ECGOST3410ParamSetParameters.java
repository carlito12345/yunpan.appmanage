package org.bouncycastle.asn1.cryptopro;

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

/* loaded from: classes.dex */
public class ECGOST3410ParamSetParameters extends ASN1Object {

    /* renamed from: a, reason: collision with root package name */
    ASN1Integer f11817a;

    /* renamed from: b, reason: collision with root package name */
    ASN1Integer f11818b;

    /* renamed from: p, reason: collision with root package name */
    ASN1Integer f11819p;

    /* renamed from: q, reason: collision with root package name */
    ASN1Integer f11820q;

    /* renamed from: x, reason: collision with root package name */
    ASN1Integer f11821x;

    /* renamed from: y, reason: collision with root package name */
    ASN1Integer f11822y;

    public ECGOST3410ParamSetParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i10, BigInteger bigInteger5) {
        this.f11817a = new ASN1Integer(bigInteger);
        this.f11818b = new ASN1Integer(bigInteger2);
        this.f11819p = new ASN1Integer(bigInteger3);
        this.f11820q = new ASN1Integer(bigInteger4);
        this.f11821x = new ASN1Integer(i10);
        this.f11822y = new ASN1Integer(bigInteger5);
    }

    public static ECGOST3410ParamSetParameters getInstance(Object obj) {
        if (obj == null || (obj instanceof ECGOST3410ParamSetParameters)) {
            return (ECGOST3410ParamSetParameters) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new ECGOST3410ParamSetParameters((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException(z.g(obj, "Invalid GOST3410Parameter: "));
    }

    public BigInteger getA() {
        return this.f11817a.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f11819p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f11820q.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(6);
        aSN1EncodableVector.add(this.f11817a);
        aSN1EncodableVector.add(this.f11818b);
        aSN1EncodableVector.add(this.f11819p);
        aSN1EncodableVector.add(this.f11820q);
        aSN1EncodableVector.add(this.f11821x);
        aSN1EncodableVector.add(this.f11822y);
        return new DERSequence(aSN1EncodableVector);
    }

    public ECGOST3410ParamSetParameters(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f11817a = (ASN1Integer) objects.nextElement();
        this.f11818b = (ASN1Integer) objects.nextElement();
        this.f11819p = (ASN1Integer) objects.nextElement();
        this.f11820q = (ASN1Integer) objects.nextElement();
        this.f11821x = (ASN1Integer) objects.nextElement();
        this.f11822y = (ASN1Integer) objects.nextElement();
    }

    public static ECGOST3410ParamSetParameters getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }
}
