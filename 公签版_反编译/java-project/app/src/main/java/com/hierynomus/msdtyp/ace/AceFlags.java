package com.hierynomus.msdtyp.ace;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum AceFlags implements EnumWithValue<AceFlags> {
    CONTAINER_INHERIT_ACE(2),
    FAILED_ACCESS_ACE_FLAG(128),
    INHERIT_ONLY_ACE(8),
    INHERITED_ACE(16),
    NO_PROPAGATE_INHERIT_ACE(4),
    OBJECT_INHERIT_ACE(1),
    SUCCESSFUL_ACCESS_ACE_FLAG(64);

    private long value;

    AceFlags(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
