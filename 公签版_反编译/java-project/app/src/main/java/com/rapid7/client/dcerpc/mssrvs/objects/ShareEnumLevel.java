package com.rapid7.client.dcerpc.mssrvs.objects;

/* loaded from: classes.dex */
public enum ShareEnumLevel {
    SHARE_INFO_0_CONTAINER(0),
    SHARE_INFO_1_CONTAINER(1),
    SHARE_INFO_2_CONTAINER(2),
    SHARE_INFO_501_CONTAINER(501),
    SHARE_INFO_502_CONTAINER(502),
    SHARE_INFO_503_CONTAINER(503);

    private final int infoLevel;

    ShareEnumLevel(int i10) {
        this.infoLevel = i10;
    }

    public int getInfoLevel() {
        return this.infoLevel;
    }
}
