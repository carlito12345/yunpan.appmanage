package org.bouncycastle.pqc.asn1;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.pqc.legacy.math.linearalgebra.GF2Matrix;

/* loaded from: classes3.dex */
public class McElieceCCA2PublicKey extends ASN1Object {
    private final AlgorithmIdentifier digest;

    /* renamed from: g, reason: collision with root package name */
    private final GF2Matrix f12266g;

    /* renamed from: n, reason: collision with root package name */
    private final int f12267n;

    /* renamed from: t, reason: collision with root package name */
    private final int f12268t;

    public McElieceCCA2PublicKey(int i10, int i11, GF2Matrix gF2Matrix, AlgorithmIdentifier algorithmIdentifier) {
        this.f12267n = i10;
        this.f12268t = i11;
        this.f12266g = new GF2Matrix(gF2Matrix.getEncoded());
        this.digest = algorithmIdentifier;
    }

    public static McElieceCCA2PublicKey getInstance(Object obj) {
        if (obj instanceof McElieceCCA2PublicKey) {
            return (McElieceCCA2PublicKey) obj;
        }
        if (obj != null) {
            return new McElieceCCA2PublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public AlgorithmIdentifier getDigest() {
        return this.digest;
    }

    public GF2Matrix getG() {
        return this.f12266g;
    }

    public int getN() {
        return this.f12267n;
    }

    public int getT() {
        return this.f12268t;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.f12267n));
        aSN1EncodableVector.add(new ASN1Integer(this.f12268t));
        aSN1EncodableVector.add(new DEROctetString(this.f12266g.getEncoded()));
        aSN1EncodableVector.add(this.digest);
        return new DERSequence(aSN1EncodableVector);
    }

    private McElieceCCA2PublicKey(ASN1Sequence aSN1Sequence) {
        this.f12267n = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).intValueExact();
        this.f12268t = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intValueExact();
        this.f12266g = new GF2Matrix(((ASN1OctetString) aSN1Sequence.getObjectAt(2)).getOctets());
        this.digest = AlgorithmIdentifier.getInstance(aSN1Sequence.getObjectAt(3));
    }
}
