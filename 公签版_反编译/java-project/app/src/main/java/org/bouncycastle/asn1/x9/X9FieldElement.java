package org.bouncycastle.asn1.x9;

import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.math.ec.ECFieldElement;

/* loaded from: classes3.dex */
public class X9FieldElement extends ASN1Object {
    private static X9IntegerConverter converter = new X9IntegerConverter();

    /* renamed from: f, reason: collision with root package name */
    protected ECFieldElement f11860f;

    public X9FieldElement(ECFieldElement eCFieldElement) {
        this.f11860f = eCFieldElement;
    }

    public ECFieldElement getValue() {
        return this.f11860f;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DEROctetString(converter.integerToBytes(this.f11860f.toBigInteger(), converter.getByteLength(this.f11860f)));
    }
}
