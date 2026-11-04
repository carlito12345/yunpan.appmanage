package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2LeaseState implements EnumWithValue<SMB2LeaseState> {
    SMB2_LEASE_NONE(0),
    SMB2_LEASE_READ_CACHING(1),
    SMB2_LEASE_HANDLE_CACHING(2),
    SMB2_LEASE_WRITE_CACHING(4);

    private final long value;

    SMB2LeaseState(long j10) {
        this.value = j10;
    }

    public static boolean isHandle(long j10) {
        return (j10 & SMB2_LEASE_HANDLE_CACHING.value) != 0;
    }

    public static boolean isRead(long j10) {
        return (j10 & SMB2_LEASE_READ_CACHING.value) != 0;
    }

    public static boolean isReadHandle(long j10) {
        return isRead(j10) && isHandle(j10);
    }

    public static boolean isWrite(long j10) {
        return (j10 & SMB2_LEASE_WRITE_CACHING.value) != 0;
    }

    public static long readHandle() {
        return SMB2_LEASE_READ_CACHING.value | SMB2_LEASE_HANDLE_CACHING.value;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
