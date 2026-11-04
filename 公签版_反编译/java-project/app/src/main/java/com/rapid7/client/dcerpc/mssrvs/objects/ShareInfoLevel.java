package com.rapid7.client.dcerpc.mssrvs.objects;

/* loaded from: classes.dex */
public enum ShareInfoLevel {
    LPSHARE_INFO_0(0),
    LPSHARE_INFO_1(1),
    LPSHARE_INFO_2(2),
    LPSHARE_INFO_501(501),
    LPSHARE_INFO_502(502),
    LPSHARE_INFO_503(503);

    private final int infoLevel;

    ShareInfoLevel(int i10) {
        this.infoLevel = i10;
    }

    public int getInfoLevel() {
        return this.infoLevel;
    }
}
