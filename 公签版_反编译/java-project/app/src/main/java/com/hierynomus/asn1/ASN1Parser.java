package com.hierynomus.asn1;

import com.hierynomus.asn1.encodingrules.ASN1Decoder;
import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;

/* loaded from: classes.dex */
public abstract class ASN1Parser<T extends ASN1Object> {
    protected ASN1Decoder decoder;

    public ASN1Parser(ASN1Decoder aSN1Decoder) {
        this.decoder = aSN1Decoder;
    }

    public abstract T parse(ASN1Tag<T> aSN1Tag, byte[] bArr);
}
