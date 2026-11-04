package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2CreateDisposition implements EnumWithValue<SMB2CreateDisposition> {
    FILE_SUPERSEDE(0),
    FILE_OPEN(1),
    FILE_CREATE(2),
    FILE_OPEN_IF(3),
    FILE_OVERWRITE(4),
    FILE_OVERWRITE_IF(5);

    private long value;

    SMB2CreateDisposition(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
