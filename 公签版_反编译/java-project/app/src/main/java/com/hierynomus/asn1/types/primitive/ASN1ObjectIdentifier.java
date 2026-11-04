package com.hierynomus.asn1.types.primitive;

import com.hierynomus.asn1.ASN1OutputStream;
import com.hierynomus.asn1.ASN1Parser;
import com.hierynomus.asn1.ASN1Serializer;
import com.hierynomus.asn1.encodingrules.ASN1Decoder;
import com.hierynomus.asn1.encodingrules.ASN1Encoder;
import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;
import com.hierynomus.asn1.util.Checks;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public class ASN1ObjectIdentifier extends ASN1PrimitiveValue<String> {
    private String oid;

    public static class Parser extends ASN1Parser<ASN1ObjectIdentifier> {
        public Parser(ASN1Decoder aSN1Decoder) {
            super(aSN1Decoder);
        }

        @Override // com.hierynomus.asn1.ASN1Parser
        public /* bridge */ /* synthetic */ ASN1Object parse(ASN1Tag aSN1Tag, byte[] bArr) {
            return parse((ASN1Tag<ASN1ObjectIdentifier>) aSN1Tag, bArr);
        }

        @Override // com.hierynomus.asn1.ASN1Parser
        public ASN1ObjectIdentifier parse(ASN1Tag<ASN1ObjectIdentifier> aSN1Tag, byte[] bArr) {
            int i10;
            Checks.checkArgument(bArr.length > 0, "An ASN.1 OBJECT IDENTIFIER should have at least a one byte value", new Object[0]);
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            StringBuilder sb2 = new StringBuilder();
            int i11 = byteArrayInputStream.read();
            sb2.append(i11 / 40);
            sb2.append('.');
            sb2.append(i11 % 40);
            while (byteArrayInputStream.available() > 0) {
                int i12 = byteArrayInputStream.read();
                if (i12 < 127) {
                    sb2.append('.');
                    sb2.append(i12);
                } else {
                    BigInteger bigIntegerValueOf = BigInteger.valueOf(i12 & 127);
                    do {
                        i10 = byteArrayInputStream.read();
                        bigIntegerValueOf = bigIntegerValueOf.shiftLeft(7).add(BigInteger.valueOf(i10 & 127));
                    } while (i10 > 127);
                    sb2.append('.');
                    sb2.append(bigIntegerValueOf);
                }
            }
            return new ASN1ObjectIdentifier(bArr, sb2.toString());
        }
    }

    public static class Serializer extends ASN1Serializer<ASN1ObjectIdentifier> {
        public Serializer(ASN1Encoder aSN1Encoder) {
            super(aSN1Encoder);
        }

        private void calculateBytes(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
            String str = aSN1ObjectIdentifier.oid;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            byteArrayOutputStream.write((Integer.parseInt(stringTokenizer.nextToken()) * 40) + Integer.parseInt(stringTokenizer.nextToken()));
            while (stringTokenizer.hasMoreTokens()) {
                BigInteger bigInteger = new BigInteger(stringTokenizer.nextToken());
                if (bigInteger.intValue() <= 0 || bigInteger.intValue() >= 127) {
                    for (int iBitLength = ((bigInteger.bitLength() / 7) + (bigInteger.bitLength() % 7 > 0 ? 1 : 0)) - 1; iBitLength >= 0; iBitLength--) {
                        byte bByteValue = (byte) (bigInteger.shiftRight(iBitLength * 7).byteValue() & Byte.MAX_VALUE);
                        if (iBitLength > 0) {
                            bByteValue = (byte) (bByteValue | 128);
                        }
                        byteArrayOutputStream.write(bByteValue);
                    }
                } else {
                    byteArrayOutputStream.write(bigInteger.intValue());
                }
            }
            aSN1ObjectIdentifier.valueBytes = byteArrayOutputStream.toByteArray();
        }

        @Override // com.hierynomus.asn1.ASN1Serializer
        public void serialize(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1OutputStream aSN1OutputStream) throws IOException {
            if (aSN1ObjectIdentifier.valueBytes == null) {
                calculateBytes(aSN1ObjectIdentifier);
            }
            aSN1OutputStream.write(aSN1ObjectIdentifier.valueBytes);
        }

        @Override // com.hierynomus.asn1.ASN1Serializer
        public int serializedLength(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
            if (aSN1ObjectIdentifier.valueBytes == null) {
                calculateBytes(aSN1ObjectIdentifier);
            }
            return aSN1ObjectIdentifier.valueBytes.length;
        }
    }

    @Override // com.hierynomus.asn1.types.primitive.ASN1PrimitiveValue
    public int valueHash() {
        return this.oid.hashCode();
    }

    public ASN1ObjectIdentifier(String str) {
        super(ASN1Tag.OBJECT_IDENTIFIER);
        this.oid = str;
    }

    @Override // com.hierynomus.asn1.types.ASN1Object
    public String getValue() {
        return this.oid;
    }

    private ASN1ObjectIdentifier(byte[] bArr, String str) {
        super(ASN1Tag.OBJECT_IDENTIFIER, bArr);
        this.oid = str;
    }
}
