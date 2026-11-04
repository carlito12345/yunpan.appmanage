package com.hierynomus.asn1.types.string;

import com.hierynomus.asn1.ASN1InputStream;
import com.hierynomus.asn1.ASN1OutputStream;
import com.hierynomus.asn1.ASN1ParseException;
import com.hierynomus.asn1.ASN1Parser;
import com.hierynomus.asn1.ASN1Serializer;
import com.hierynomus.asn1.encodingrules.ASN1Decoder;
import com.hierynomus.asn1.encodingrules.ASN1Encoder;
import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;
import com.hierynomus.asn1.util.Checks;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.BitSet;

/* loaded from: classes.dex */
public class ASN1BitString extends ASN1String<boolean[]> {
    private boolean[] bits;
    private int unusedBits;

    public static class Parser extends ASN1Parser<ASN1BitString> {
        public Parser(ASN1Decoder aSN1Decoder) {
            super(aSN1Decoder);
        }

        @Override // com.hierynomus.asn1.ASN1Parser
        public /* bridge */ /* synthetic */ ASN1Object parse(ASN1Tag aSN1Tag, byte[] bArr) {
            return parse((ASN1Tag<ASN1BitString>) aSN1Tag, bArr);
        }

        @Override // com.hierynomus.asn1.ASN1Parser
        public ASN1BitString parse(ASN1Tag<ASN1BitString> aSN1Tag, byte[] bArr) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
            if (!aSN1Tag.isConstructed()) {
                return new ASN1BitString(aSN1Tag, Arrays.copyOfRange(bArr, 1, bArr.length), bArr[0]);
            }
            try {
                ASN1InputStream aSN1InputStream = new ASN1InputStream(this.decoder, bArr);
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte b10 = 0;
                    while (aSN1InputStream.available() > 0) {
                        ASN1Tag tag = aSN1InputStream.readTag();
                        Checks.checkState(tag.getTag() == aSN1Tag.getTag(), "Expected an ASN.1 BIT STRING as Constructed object, got: %s", tag);
                        byte[] value = aSN1InputStream.readValue(aSN1InputStream.readLength());
                        byteArrayOutputStream.write(value, 1, value.length - 1);
                        if (aSN1InputStream.available() <= 0) {
                            b10 = value[0];
                        }
                    }
                    ASN1BitString aSN1BitString = new ASN1BitString(aSN1Tag, byteArrayOutputStream.toByteArray(), b10);
                    aSN1InputStream.close();
                    return aSN1BitString;
                } catch (Throwable th2) {
                    try {
                        aSN1InputStream.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            } catch (IOException e7) {
                throw new ASN1ParseException(e7, "Unable to parse Constructed ASN.1 BIT STRING", new Object[0]);
            }
        }
    }

    public static class Serializer extends ASN1Serializer<ASN1BitString> {
        public Serializer(ASN1Encoder aSN1Encoder) {
            super(aSN1Encoder);
        }

        @Override // com.hierynomus.asn1.ASN1Serializer
        public void serialize(ASN1BitString aSN1BitString, ASN1OutputStream aSN1OutputStream) throws IOException {
            aSN1OutputStream.write(aSN1BitString.unusedBits);
            aSN1OutputStream.write(aSN1BitString.valueBytes);
        }

        @Override // com.hierynomus.asn1.ASN1Serializer
        public int serializedLength(ASN1BitString aSN1BitString) {
            return aSN1BitString.valueBytes.length + 1;
        }
    }

    private boolean[] constructBits() {
        int length = length();
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < length; i10++) {
            zArr[i10] = isSet(i10);
        }
        return zArr;
    }

    private static byte[] constructBytes(boolean[] zArr) {
        int length = (zArr.length / 8) + (zArr.length % 8 > 0 ? 1 : 0);
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = 0;
            for (int i11 = 0; i11 < 8; i11++) {
                int i12 = (i10 * 8) + i11;
                bArr[i10] = (byte) (bArr[i10] + (((i12 >= zArr.length || !zArr[i12]) ? 0 : 1) << (7 - i11)));
            }
        }
        return bArr;
    }

    public boolean isSet(int i10) {
        return ((1 << (7 - (i10 % 8))) & this.valueBytes[i10 / 8]) != 0;
    }

    @Override // com.hierynomus.asn1.types.string.ASN1String
    public int length() {
        return (this.valueBytes.length * 8) - this.unusedBits;
    }

    @Override // com.hierynomus.asn1.types.ASN1Object
    public String valueString() {
        return Arrays.toString(this.bits);
    }

    private ASN1BitString(ASN1Tag<ASN1BitString> aSN1Tag, byte[] bArr, int i10) {
        super(aSN1Tag, bArr);
        this.unusedBits = i10;
        this.bits = constructBits();
    }

    @Override // com.hierynomus.asn1.types.ASN1Object
    public boolean[] getValue() {
        boolean[] zArr = this.bits;
        return Arrays.copyOf(zArr, zArr.length);
    }

    public ASN1BitString(byte[] bArr, int i10) {
        this(ASN1Tag.BIT_STRING, bArr, i10);
    }

    private static byte[] constructBytes(BitSet bitSet) {
        int length = (bitSet.length() / 8) + 1;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = 0;
            for (int i11 = 0; i11 < 8; i11++) {
                bArr[i10] = (byte) (bArr[i10] + ((bitSet.get((i10 * 8) + i11) ? 1 : 0) << (7 - i11)));
            }
        }
        return bArr;
    }

    public ASN1BitString(boolean[] zArr) {
        super(ASN1Tag.BIT_STRING, constructBytes(zArr));
        this.bits = zArr;
        this.unusedBits = 8 - (zArr.length % 8);
    }

    public ASN1BitString(BitSet bitSet) {
        this(ASN1Tag.BIT_STRING, constructBytes(bitSet), 0);
    }
}
