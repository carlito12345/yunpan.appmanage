package com.hierynomus.asn1;

import com.hierynomus.asn1.encodingrules.ASN1Encoder;
import com.hierynomus.asn1.types.ASN1Object;

/* loaded from: classes.dex */
public abstract class ASN1Serializer<T extends ASN1Object> {
    protected final ASN1Encoder encoder;

    public ASN1Serializer(ASN1Encoder aSN1Encoder) {
        this.encoder = aSN1Encoder;
    }

    public abstract void serialize(T t10, ASN1OutputStream aSN1OutputStream);

    public abstract int serializedLength(T t10);
}
