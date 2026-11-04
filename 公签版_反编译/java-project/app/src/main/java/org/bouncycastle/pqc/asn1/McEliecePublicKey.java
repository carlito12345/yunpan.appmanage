package org.bouncycastle.pqc.asn1;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.pqc.legacy.math.linearalgebra.GF2Matrix;

/* loaded from: classes3.dex */
public class McEliecePublicKey extends ASN1Object {

    /* renamed from: g, reason: collision with root package name */
    private final GF2Matrix f12271g;

    /* renamed from: n, reason: collision with root package name */
    private final int f12272n;

    /* renamed from: t, reason: collision with root package name */
    private final int f12273t;

    public McEliecePublicKey(int i10, int i11, GF2Matrix gF2Matrix) {
        this.f12272n = i10;
        this.f12273t = i11;
        this.f12271g = new GF2Matrix(gF2Matrix);
    }

    public static McEliecePublicKey getInstance(Object obj) {
        if (obj instanceof McEliecePublicKey) {
            return (McEliecePublicKey) obj;
        }
        if (obj != null) {
            return new McEliecePublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GF2Matrix getG() {
        return new GF2Matrix(this.f12271g);
    }

    public int getN() {
        return this.f12272n;
    }

    public int getT() {
        return this.f12273t;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.f12272n));
        aSN1EncodableVector.add(new ASN1Integer(this.f12273t));
        aSN1EncodableVector.add(new DEROctetString(this.f12271g.getEncoded()));
        return new DERSequence(aSN1EncodableVector);
    }

    private McEliecePublicKey(ASN1Sequence aSN1Sequence) {
        this.f12272n = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).intValueExact();
        this.f12273t = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intValueExact();
        this.f12271g = new GF2Matrix(((ASN1OctetString) aSN1Sequence.getObjectAt(2)).getOctets());
    }
}
