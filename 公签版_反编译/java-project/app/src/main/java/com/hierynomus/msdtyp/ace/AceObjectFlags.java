package com.hierynomus.msdtyp.ace;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum AceObjectFlags implements EnumWithValue<AceObjectFlags> {
    NONE(0),
    ACE_OBJECT_TYPE_PRESENT(1),
    ACE_INHERITED_OBJECT_TYPE_PRESENT(2);

    private long value;

    AceObjectFlags(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
