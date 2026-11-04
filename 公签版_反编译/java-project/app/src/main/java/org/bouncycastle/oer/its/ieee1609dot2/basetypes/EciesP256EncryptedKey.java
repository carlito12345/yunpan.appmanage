package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class EciesP256EncryptedKey extends ASN1Object {

    /* renamed from: c, reason: collision with root package name */
    private final ASN1OctetString f12242c;

    /* renamed from: t, reason: collision with root package name */
    private final ASN1OctetString f12243t;

    /* renamed from: v, reason: collision with root package name */
    private final EccP256CurvePoint f12244v;

    public static class Builder {

        /* renamed from: c, reason: collision with root package name */
        private ASN1OctetString f12245c;

        /* renamed from: t, reason: collision with root package name */
        private ASN1OctetString f12246t;

        /* renamed from: v, reason: collision with root package name */
        private EccP256CurvePoint f12247v;

        public EciesP256EncryptedKey createEciesP256EncryptedKey() {
            return new EciesP256EncryptedKey(this.f12247v, this.f12245c, this.f12246t);
        }

        public Builder setC(ASN1OctetString aSN1OctetString) {
            this.f12245c = aSN1OctetString;
            return this;
        }

        public Builder setT(ASN1OctetString aSN1OctetString) {
            this.f12246t = aSN1OctetString;
            return this;
        }

        public Builder setV(EccP256CurvePoint eccP256CurvePoint) {
            this.f12247v = eccP256CurvePoint;
            return this;
        }

        public Builder setC(byte[] bArr) {
            this.f12245c = new DEROctetString(Arrays.clone(bArr));
            return this;
        }

        public Builder setT(byte[] bArr) {
            this.f12246t = new DEROctetString(Arrays.clone(bArr));
            return this;
        }
    }

    private EciesP256EncryptedKey(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f12244v = EccP256CurvePoint.getInstance(aSN1Sequence.getObjectAt(0));
        this.f12242c = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(1));
        this.f12243t = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(2));
    }

    public static Builder builder() {
        return new Builder();
    }

    public static EciesP256EncryptedKey getInstance(Object obj) {
        if (obj instanceof EciesP256EncryptedKey) {
            return (EciesP256EncryptedKey) obj;
        }
        if (obj != null) {
            return new EciesP256EncryptedKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public ASN1OctetString getC() {
        return this.f12242c;
    }

    public ASN1OctetString getT() {
        return this.f12243t;
    }

    public EccP256CurvePoint getV() {
        return this.f12244v;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(new ASN1Encodable[]{this.f12244v, this.f12242c, this.f12243t});
    }

    public EciesP256EncryptedKey(EccP256CurvePoint eccP256CurvePoint, ASN1OctetString aSN1OctetString, ASN1OctetString aSN1OctetString2) {
        this.f12244v = eccP256CurvePoint;
        this.f12242c = aSN1OctetString;
        this.f12243t = aSN1OctetString2;
    }
}
