package com.hierynomus.asn1.types.primitive;

import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Primitive;
import com.hierynomus.asn1.types.ASN1Tag;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class ASN1PrimitiveValue<T> extends ASN1Object<T> implements ASN1Primitive {
    protected byte[] valueBytes;

    public ASN1PrimitiveValue(ASN1Tag aSN1Tag) {
        super(aSN1Tag);
    }

    public int valueHash() {
        return Arrays.hashCode(this.valueBytes);
    }

    public ASN1PrimitiveValue(ASN1Tag aSN1Tag, byte[] bArr) {
        super(aSN1Tag);
        this.valueBytes = bArr;
    }
}
