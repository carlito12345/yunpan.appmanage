package com.hierynomus.asn1.types;

import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public enum ASN1Encoding {
    PRIMITIVE(0),
    CONSTRUCTED(32);

    private int value;

    ASN1Encoding(int i10) {
        this.value = i10;
    }

    public static ASN1Encoding parseEncoding(byte b10) {
        return (b10 & HebrewProber.SPACE) == 0 ? PRIMITIVE : CONSTRUCTED;
    }

    public int getValue() {
        return this.value;
    }
}
