package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2OplockLevel implements EnumWithValue<SMB2OplockLevel> {
    SMB2_OPLOCK_LEVEL_NONE(0),
    SMB2_OPLOCK_LEVEL_II(1),
    SMB2_OPLOCK_LEVEL_EXCLUSIVE(8),
    SMB2_OPLOCK_LEVEL_BATCH(9),
    SMB2_OPLOCK_LEVEL_LEASE(255);

    private final long value;

    SMB2OplockLevel(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
