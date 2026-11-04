package com.hierynomus.asn1;

import com.hierynomus.asn1.encodingrules.ASN1Decoder;
import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;
import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class ASN1InputStream extends FilterInputStream implements Iterable<ASN1Object> {
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) ASN1InputStream.class);
    private final ASN1Decoder decoder;

    public ASN1InputStream(ASN1Decoder aSN1Decoder, InputStream inputStream) {
        super(inputStream);
        this.decoder = aSN1Decoder;
    }

    @Override // java.lang.Iterable
    public Iterator<ASN1Object> iterator() {
        return new Iterator<ASN1Object>() { // from class: com.hierynomus.asn1.ASN1InputStream.1
            @Override // java.util.Iterator
            public boolean hasNext() {
                try {
                    return ASN1InputStream.this.available() > 0;
                } catch (IOException unused) {
                    return false;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Remove not supported on ASN.1 InputStream iterator");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public ASN1Object next() {
                try {
                    return ASN1InputStream.this.readObject();
                } catch (Exception e7) {
                    throw new NoSuchElementException(e7.getMessage());
                }
            }
        };
    }

    public int readLength() {
        return this.decoder.readLength(this);
    }

    public <T extends ASN1Object> T readObject() {
        try {
            ASN1Tag<? extends ASN1Object> tag = this.decoder.readTag(this);
            Logger logger2 = logger;
            logger2.trace("Read ASN.1 tag {}", tag);
            int length = this.decoder.readLength(this);
            logger2.trace("Read ASN.1 object length: {}", Integer.valueOf(length));
            T t10 = (T) tag.newParser(this.decoder).parse(tag, this.decoder.readValue(length, this));
            logger2.debug("Read ASN.1 object: {}", t10);
            return t10;
        } catch (ASN1ParseException e7) {
            throw e7;
        } catch (Exception e10) {
            throw new ASN1ParseException(e10, "Cannot parse ASN.1 object from stream", new Object[0]);
        }
    }

    public ASN1Tag readTag() {
        return this.decoder.readTag(this);
    }

    public byte[] readValue(int i10) {
        return this.decoder.readValue(i10, this);
    }

    public ASN1InputStream(ASN1Decoder aSN1Decoder, byte[] bArr) {
        super(new ByteArrayInputStream(bArr));
        this.decoder = aSN1Decoder;
    }
}
