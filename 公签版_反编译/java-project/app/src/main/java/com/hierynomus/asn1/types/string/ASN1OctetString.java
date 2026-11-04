package com.hierynomus.asn1.types.string;

import com.hierynomus.asn1.ASN1OutputStream;
import com.hierynomus.asn1.ASN1Parser;
import com.hierynomus.asn1.ASN1Serializer;
import com.hierynomus.asn1.encodingrules.ASN1Decoder;
import com.hierynomus.asn1.encodingrules.ASN1Encoder;
import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ASN1OctetString extends ASN1String<byte[]> {

    public static class Parser extends ASN1Parser<ASN1OctetString> {
        public Parser(ASN1Decoder aSN1Decoder) {
            super(aSN1Decoder);
        }

        @Override // com.hierynomus.asn1.ASN1Parser
        public /* bridge */ /* synthetic */ ASN1Object parse(ASN1Tag aSN1Tag, byte[] bArr) {
            return parse((ASN1Tag<ASN1OctetString>) aSN1Tag, bArr);
        }

        @Override // com.hierynomus.asn1.ASN1Parser
        public ASN1OctetString parse(ASN1Tag<ASN1OctetString> aSN1Tag, byte[] bArr) {
            return new ASN1OctetString(aSN1Tag, bArr);
        }
    }

    public static class Serializer extends ASN1Serializer<ASN1OctetString> {
        public Serializer(ASN1Encoder aSN1Encoder) {
            super(aSN1Encoder);
        }

        @Override // com.hierynomus.asn1.ASN1Serializer
        public void serialize(ASN1OctetString aSN1OctetString, ASN1OutputStream aSN1OutputStream) throws IOException {
            aSN1OutputStream.write(aSN1OctetString.valueBytes);
        }

        @Override // com.hierynomus.asn1.ASN1Serializer
        public int serializedLength(ASN1OctetString aSN1OctetString) {
            return aSN1OctetString.valueBytes.length;
        }
    }

    public ASN1OctetString(byte[] bArr) {
        super(ASN1Tag.OCTET_STRING, bArr);
    }

    @Override // com.hierynomus.asn1.types.string.ASN1String
    public int length() {
        return this.valueBytes.length;
    }

    @Override // com.hierynomus.asn1.types.ASN1Object
    public String valueString() {
        return Arrays.toString(this.valueBytes);
    }

    public ASN1OctetString(ASN1Tag<?> aSN1Tag, byte[] bArr) {
        super(aSN1Tag, bArr);
    }

    @Override // com.hierynomus.asn1.types.ASN1Object
    public byte[] getValue() {
        byte[] bArr = this.valueBytes;
        return Arrays.copyOf(bArr, bArr.length);
    }
}
