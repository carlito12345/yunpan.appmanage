package com.hierynomus.asn1.encodingrules.ber;

import com.hierynomus.asn1.ASN1ParseException;
import com.hierynomus.asn1.encodingrules.ASN1Decoder;
import com.hierynomus.asn1.types.ASN1Encoding;
import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;
import com.hierynomus.asn1.types.ASN1TagClass;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class BERDecoder implements ASN1Decoder {
    @Override // com.hierynomus.asn1.encodingrules.ASN1Decoder
    public int readLength(InputStream inputStream) throws IOException {
        try {
            int i10 = inputStream.read();
            if (i10 <= 127) {
                return i10;
            }
            int i11 = i10 & 127;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                i12 = (i12 << 8) + inputStream.read();
            }
            if (i12 != 0) {
                return i12;
            }
            throw new ASN1ParseException("The indefinite length form is not (yet) supported!");
        } catch (IOException e7) {
            throw new ASN1ParseException("Unable to read the length of the ASN.1 object.", e7);
        }
    }

    @Override // com.hierynomus.asn1.encodingrules.ASN1Decoder
    public ASN1Tag<? extends ASN1Object> readTag(InputStream inputStream) throws IOException {
        try {
            int i10 = inputStream.read();
            byte b10 = (byte) i10;
            ASN1TagClass aSN1TagClass = ASN1TagClass.parseClass(b10);
            ASN1Encoding encoding = ASN1Encoding.parseEncoding(b10);
            int i11 = i10 & 31;
            if (i11 <= 30) {
                return ASN1Tag.forTag(aSN1TagClass, i11).asEncoded(encoding);
            }
            int i12 = inputStream.read();
            if ((i12 & 127) == 0) {
                throw new ASN1ParseException("corrupted stream - invalid high tag number found");
            }
            int i13 = 0;
            while (i12 >= 0 && (i12 & 128) != 0) {
                i13 = ((i12 & 127) | i13) << 7;
                i12 = inputStream.read();
            }
            if (i12 >= 0) {
                return ASN1Tag.forTag(aSN1TagClass, (i12 & 127) | i13).asEncoded(encoding);
            }
            throw new ASN1ParseException("EOF found inside tag value.");
        } catch (IOException e7) {
            throw new ASN1ParseException("Unable to parse ASN.1 tag", e7);
        }
    }

    @Override // com.hierynomus.asn1.encodingrules.ASN1Decoder
    public byte[] readValue(int i10, InputStream inputStream) throws IOException {
        try {
            byte[] bArr = new byte[i10];
            int i11 = 0;
            while (i11 < i10) {
                int i12 = inputStream.read(bArr, i11, i10 - i11);
                if (i12 == -1) {
                    break;
                }
                i11 += i12;
            }
            return bArr;
        } catch (IOException e7) {
            throw new ASN1ParseException("Unable to read the value of the ASN.1 object", e7);
        }
    }
}
