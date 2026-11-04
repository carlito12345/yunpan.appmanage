package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2CreateAction implements EnumWithValue<SMB2CreateAction> {
    FILE_SUPERSEDED(0),
    FILE_OPENED(1),
    FILE_CREATED(2),
    FILE_OVERWRITTEN(3);

    private long value;

    SMB2CreateAction(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
