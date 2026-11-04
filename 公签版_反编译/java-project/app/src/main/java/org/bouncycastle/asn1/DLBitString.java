package org.bouncycastle.asn1;

/* loaded from: classes.dex */
public class DLBitString extends ASN1BitString {
    public DLBitString(byte b10, int i10) {
        super(b10, i10);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z) {
        aSN1OutputStream.writeEncodingDL(z, 3, this.contents);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z) {
        return ASN1OutputStream.getLengthOfEncodingDL(z, this.contents.length);
    }

    @Override // org.bouncycastle.asn1.ASN1BitString, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }

    public DLBitString(int i10) {
        super(ASN1BitString.getBytes(i10), ASN1BitString.getPadBits(i10));
    }

    public static void encode(ASN1OutputStream aSN1OutputStream, boolean z, byte b10, byte[] bArr, int i10, int i11) {
        aSN1OutputStream.writeEncodingDL(z, 3, b10, bArr, i10, i11);
    }

    public static int encodedLength(boolean z, int i10) {
        return ASN1OutputStream.getLengthOfEncodingDL(z, i10);
    }

    public DLBitString(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER), 0);
    }

    public static void encode(ASN1OutputStream aSN1OutputStream, boolean z, byte[] bArr, int i10, int i11) {
        aSN1OutputStream.writeEncodingDL(z, 3, bArr, i10, i11);
    }

    public DLBitString(byte[] bArr) {
        this(bArr, 0);
    }

    public DLBitString(byte[] bArr, int i10) {
        super(bArr, i10);
    }

    public DLBitString(byte[] bArr, boolean z) {
        super(bArr, z);
    }
}
