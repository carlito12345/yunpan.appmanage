package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2ImpersonationLevel implements EnumWithValue<SMB2ImpersonationLevel> {
    Anonymous(0),
    Identification(1),
    Impersonation(2),
    Delegate(3);

    private long value;

    SMB2ImpersonationLevel(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
