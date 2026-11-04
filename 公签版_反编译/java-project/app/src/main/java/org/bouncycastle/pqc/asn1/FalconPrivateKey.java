package org.bouncycastle.pqc.asn1;

import l2.z;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.Arrays;

/* loaded from: classes3.dex */
public class FalconPrivateKey extends ASN1Object {
    private byte[] F;

    /* renamed from: f, reason: collision with root package name */
    private byte[] f12261f;

    /* renamed from: g, reason: collision with root package name */
    private byte[] f12262g;
    private FalconPublicKey publicKey;
    private int version;

    public FalconPrivateKey(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this(i10, bArr, bArr2, bArr3, null);
    }

    public static FalconPrivateKey getInstance(Object obj) {
        if (obj instanceof FalconPrivateKey) {
            return (FalconPrivateKey) obj;
        }
        if (obj != null) {
            return new FalconPrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public byte[] getF() {
        return Arrays.clone(this.F);
    }

    public byte[] getG() {
        return Arrays.clone(this.f12262g);
    }

    public FalconPublicKey getPublicKey() {
        return this.publicKey;
    }

    public int getVersion() {
        return this.version;
    }

    public byte[] getf() {
        return Arrays.clone(this.f12261f);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.version));
        aSN1EncodableVector.add(new DEROctetString(this.f12261f));
        aSN1EncodableVector.add(new DEROctetString(this.f12262g));
        aSN1EncodableVector.add(new DEROctetString(this.F));
        FalconPublicKey falconPublicKey = this.publicKey;
        if (falconPublicKey != null) {
            aSN1EncodableVector.add(new FalconPublicKey(falconPublicKey.getH()));
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public FalconPrivateKey(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, FalconPublicKey falconPublicKey) {
        this.version = i10;
        this.f12261f = bArr;
        this.f12262g = bArr2;
        this.F = bArr3;
        this.publicKey = falconPublicKey;
    }

    private FalconPrivateKey(ASN1Sequence aSN1Sequence) {
        int iB = z.b(aSN1Sequence, 0);
        this.version = iB;
        if (iB != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f12261f = z.z(aSN1Sequence, 1);
        this.f12262g = z.z(aSN1Sequence, 2);
        this.F = z.z(aSN1Sequence, 3);
        if (aSN1Sequence.size() == 5) {
            this.publicKey = FalconPublicKey.getInstance(aSN1Sequence.getObjectAt(4));
        }
    }
}
