package com.rapid7.client.dcerpc;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum PFCFlag implements EnumWithValue<PFCFlag> {
    FIRST_FRAGMENT(1),
    LAST_FRAGMENT(2),
    PENDING_CANCEL(4),
    CONCURRENT_MULTIPLEXING(16),
    DID_NOT_EXECUTE(32),
    MAYBE(64),
    OBJECT_UUID(128);

    private final int value;

    PFCFlag(int i10) {
        this.value = i10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
