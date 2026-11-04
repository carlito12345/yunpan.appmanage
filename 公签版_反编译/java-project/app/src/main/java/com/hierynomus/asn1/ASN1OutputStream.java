package com.hierynomus.asn1;

import com.hierynomus.asn1.encodingrules.ASN1Encoder;
import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class ASN1OutputStream extends FilterOutputStream {
    private final ASN1Encoder encoder;

    public ASN1OutputStream(ASN1Encoder aSN1Encoder, OutputStream outputStream) {
        super(outputStream);
        this.encoder = aSN1Encoder;
    }

    private int lengthBytes(int i10) {
        int i11 = 1;
        while (i10 > 255) {
            i11++;
            i10 >>= 8;
        }
        return i11;
    }

    private void writeLength(int i10) throws IOException {
        if (i10 < 127) {
            write(i10);
            return;
        }
        int iLengthBytes = lengthBytes(i10);
        write(iLengthBytes | 128);
        while (iLengthBytes > 0) {
            write(i10 >> ((iLengthBytes - 1) * 8));
            iLengthBytes--;
        }
    }

    private void writeTag(ASN1Tag aSN1Tag) throws IOException {
        write((byte) (aSN1Tag.getTag() | aSN1Tag.getAsn1TagClass().getValue() | aSN1Tag.getAsn1Encoding().getValue()));
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i10, i11);
    }

    public void writeObject(ASN1Object aSN1Object) throws IOException {
        writeTag(aSN1Object.getTag());
        ASN1Serializer aSN1SerializerNewSerializer = aSN1Object.getTag().newSerializer(this.encoder);
        writeLength(aSN1SerializerNewSerializer.serializedLength(aSN1Object));
        aSN1SerializerNewSerializer.serialize(aSN1Object, this);
    }
}
