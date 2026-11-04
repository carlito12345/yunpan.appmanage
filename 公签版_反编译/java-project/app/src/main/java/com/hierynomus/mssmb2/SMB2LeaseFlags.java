package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2LeaseFlags implements EnumWithValue<SMB2LeaseFlags> {
    SMB2_LEASE_FLAG_NONE(0),
    SMB2_LEASE_FLAG_BREAK_IN_PROGRESS(2),
    SMB2_LEASE_FLAG_PARENT_LEASE_KEY_SET(4);

    private final long value;

    SMB2LeaseFlags(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
