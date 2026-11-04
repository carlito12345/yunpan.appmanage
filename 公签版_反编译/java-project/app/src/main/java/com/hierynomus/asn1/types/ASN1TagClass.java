package com.hierynomus.asn1.types;

/* loaded from: classes.dex */
public enum ASN1TagClass {
    UNIVERSAL(0),
    APPLICATION(64),
    CONTEXT_SPECIFIC(128),
    PRIVATE(192);

    private int value;

    ASN1TagClass(int i10) {
        this.value = i10;
    }

    public static ASN1TagClass parseClass(byte b10) {
        int i10 = b10 & 192;
        for (ASN1TagClass aSN1TagClass : values()) {
            if (aSN1TagClass.value == i10) {
                return aSN1TagClass;
            }
        }
        throw new IllegalStateException("Could not parse ASN.1 Tag Class (should be impossible)");
    }

    public int getValue() {
        return this.value;
    }
}
