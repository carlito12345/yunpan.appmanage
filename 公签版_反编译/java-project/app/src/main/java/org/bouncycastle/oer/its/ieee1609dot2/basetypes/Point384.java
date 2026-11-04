package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes3.dex */
public class Point384 extends ASN1Object {

    /* renamed from: x, reason: collision with root package name */
    private final ASN1OctetString f12253x;

    /* renamed from: y, reason: collision with root package name */
    private final ASN1OctetString f12254y;

    public static class Builder {

        /* renamed from: x, reason: collision with root package name */
        private ASN1OctetString f12255x;

        /* renamed from: y, reason: collision with root package name */
        private ASN1OctetString f12256y;

        public Point384 createPoint384() {
            return new Point384(this.f12255x, this.f12256y);
        }

        public Builder setX(BigInteger bigInteger) {
            this.f12255x = new DEROctetString(BigIntegers.asUnsignedByteArray(48, bigInteger));
            return this;
        }

        public Builder setY(BigInteger bigInteger) {
            this.f12256y = new DEROctetString(BigIntegers.asUnsignedByteArray(48, bigInteger));
            return this;
        }

        public Builder setX(ASN1OctetString aSN1OctetString) {
            this.f12255x = aSN1OctetString;
            return this;
        }

        public Builder setY(ASN1OctetString aSN1OctetString) {
            this.f12256y = aSN1OctetString;
            return this;
        }

        public Builder setX(byte[] bArr) {
            this.f12255x = new DEROctetString(bArr);
            return this;
        }

        public Builder setY(byte[] bArr) {
            this.f12256y = new DEROctetString(bArr);
            return this;
        }
    }

    public Point384(ASN1OctetString aSN1OctetString, ASN1OctetString aSN1OctetString2) {
        if (aSN1OctetString.getOctets().length != 48) {
            throw new IllegalArgumentException("x must be 48 bytes long");
        }
        if (aSN1OctetString2.getOctets().length != 48) {
            throw new IllegalArgumentException("y must be 48 bytes long");
        }
        this.f12253x = aSN1OctetString;
        this.f12254y = aSN1OctetString2;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Point384 getInstance(Object obj) {
        if (obj instanceof Point384) {
            return (Point384) obj;
        }
        if (obj != null) {
            return new Point384(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public ASN1OctetString getX() {
        return this.f12253x;
    }

    public ASN1OctetString getY() {
        return this.f12254y;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(new ASN1Encodable[]{this.f12253x, this.f12254y});
    }

    private Point384(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        ASN1OctetString aSN1OctetString = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(0));
        this.f12253x = aSN1OctetString;
        ASN1OctetString aSN1OctetString2 = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(1));
        this.f12254y = aSN1OctetString2;
        if (aSN1OctetString.getOctets().length != 48) {
            throw new IllegalArgumentException("x must be 48 bytes long");
        }
        if (aSN1OctetString2.getOctets().length != 48) {
            throw new IllegalArgumentException("y must be 48 bytes long");
        }
    }
}
