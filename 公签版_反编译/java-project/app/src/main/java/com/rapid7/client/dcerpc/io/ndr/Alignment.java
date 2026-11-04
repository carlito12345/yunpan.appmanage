package com.rapid7.client.dcerpc.io.ndr;

/* loaded from: classes.dex */
public enum Alignment {
    ONE((byte) 1),
    TWO((byte) 2),
    FOUR((byte) 4),
    EIGHT((byte) 8);

    private final byte offByOneAlignment;

    Alignment(byte b10) {
        this.offByOneAlignment = (byte) (b10 - 1);
    }

    public byte getOffByOneAlignment() {
        return this.offByOneAlignment;
    }
}
