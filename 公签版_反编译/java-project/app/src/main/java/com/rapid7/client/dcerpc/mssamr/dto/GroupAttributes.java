package com.rapid7.client.dcerpc.mssamr.dto;

/* loaded from: classes.dex */
public enum GroupAttributes {
    SE_GROUP_MANDATORY(1),
    SE_GROUP_ENABLED_BY_DEFAULT(2),
    SE_GROUP_ENABLED(4);

    private final int mask;

    GroupAttributes(int i10) {
        this.mask = i10;
    }

    public boolean isSet(int i10) {
        int i11 = this.mask;
        return (i10 & i11) == i11;
    }
}
