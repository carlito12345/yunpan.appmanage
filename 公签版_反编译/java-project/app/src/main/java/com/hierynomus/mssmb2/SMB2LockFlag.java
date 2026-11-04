package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2LockFlag implements EnumWithValue<SMB2LockFlag> {
    SMB2_LOCKFLAG_SHARED_LOCK(1),
    SMB2_LOCKFLAG_EXCLUSIVE_LOCK(2),
    SMB2_LOCKFLAG_UNLOCK(4),
    SMB2_LOCKFLAG_FAIL_IMMEDIATELY(16);

    private long value;

    SMB2LockFlag(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
