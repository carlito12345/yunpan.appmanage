package com.hierynomus.asn1.encodingrules;

import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;
import java.io.InputStream;

/* loaded from: classes.dex */
public interface ASN1Decoder {
    int readLength(InputStream inputStream);

    ASN1Tag<? extends ASN1Object> readTag(InputStream inputStream);

    byte[] readValue(int i10, InputStream inputStream);
}
