package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2ChangeNotifyFlags implements EnumWithValue<SMB2ChangeNotifyFlags> {
    WATCH_TREE(1);

    private long value;

    SMB2ChangeNotifyFlags(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
