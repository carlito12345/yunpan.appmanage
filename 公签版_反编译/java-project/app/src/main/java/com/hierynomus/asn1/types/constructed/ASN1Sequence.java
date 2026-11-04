package com.hierynomus.asn1.types.constructed;

import com.hierynomus.asn1.ASN1InputStream;
import com.hierynomus.asn1.ASN1OutputStream;
import com.hierynomus.asn1.ASN1ParseException;
import com.hierynomus.asn1.ASN1Parser;
import com.hierynomus.asn1.ASN1Serializer;
import com.hierynomus.asn1.encodingrules.ASN1Decoder;
import com.hierynomus.asn1.encodingrules.ASN1Encoder;
import com.hierynomus.asn1.types.ASN1Constructed;
import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ASN1Sequence extends ASN1Object<List<ASN1Object>> implements ASN1Constructed {
    private byte[] bytes;
    private final List<ASN1Object> objects;

    public static class Parser extends ASN1Parser<ASN1Sequence> {
        public Parser(ASN1Decoder aSN1Decoder) {
            super(aSN1Decoder);
        }

        @Override // com.hierynomus.asn1.ASN1Parser
        public /* bridge */ /* synthetic */ ASN1Object parse(ASN1Tag aSN1Tag, byte[] bArr) {
            return parse((ASN1Tag<ASN1Sequence>) aSN1Tag, bArr);
        }

        @Override // com.hierynomus.asn1.ASN1Parser
        public ASN1Sequence parse(ASN1Tag<ASN1Sequence> aSN1Tag, byte[] bArr) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
            ArrayList arrayList = new ArrayList();
            try {
                ASN1InputStream aSN1InputStream = new ASN1InputStream(this.decoder, bArr);
                try {
                    Iterator<ASN1Object> it = aSN1InputStream.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next());
                    }
                    aSN1InputStream.close();
                    return new ASN1Sequence(arrayList, bArr);
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
                throw new ASN1ParseException(e7, "Unable to parse the ASN.1 SEQUENCE contents.", new Object[0]);
            }
        }
    }

    public static class Serializer extends ASN1Serializer<ASN1Sequence> {
        public Serializer(ASN1Encoder aSN1Encoder) {
            super(aSN1Encoder);
        }

        private void calculateBytes(ASN1Sequence aSN1Sequence) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(this.encoder, byteArrayOutputStream);
            Iterator<ASN1Object> it = aSN1Sequence.iterator();
            while (it.hasNext()) {
                aSN1OutputStream.writeObject(it.next());
            }
            aSN1Sequence.bytes = byteArrayOutputStream.toByteArray();
        }

        @Override // com.hierynomus.asn1.ASN1Serializer
        public void serialize(ASN1Sequence aSN1Sequence, ASN1OutputStream aSN1OutputStream) throws IOException {
            if (aSN1Sequence.bytes != null) {
                aSN1OutputStream.write(aSN1Sequence.bytes);
                return;
            }
            Iterator<ASN1Object> it = aSN1Sequence.iterator();
            while (it.hasNext()) {
                aSN1OutputStream.writeObject(it.next());
            }
        }

        @Override // com.hierynomus.asn1.ASN1Serializer
        public int serializedLength(ASN1Sequence aSN1Sequence) throws IOException {
            if (aSN1Sequence.bytes == null) {
                calculateBytes(aSN1Sequence);
            }
            return aSN1Sequence.bytes.length;
        }
    }

    public ASN1Object get(int i10) {
        return this.objects.get(i10);
    }

    @Override // java.lang.Iterable
    public Iterator<ASN1Object> iterator() {
        return new ArrayList(this.objects).iterator();
    }

    public int size() {
        return this.objects.size();
    }

    private ASN1Sequence(List<ASN1Object> list, byte[] bArr) {
        super(ASN1Tag.SEQUENCE);
        this.objects = list;
        this.bytes = bArr;
    }

    @Override // com.hierynomus.asn1.types.ASN1Object
    public List<ASN1Object> getValue() {
        return new ArrayList(this.objects);
    }

    public ASN1Sequence(List<ASN1Object> list) {
        super(ASN1Tag.SEQUENCE);
        this.objects = list;
    }
}
