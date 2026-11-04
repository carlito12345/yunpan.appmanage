package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2GlobalCapability implements EnumWithValue<SMB2GlobalCapability> {
    SMB2_GLOBAL_CAP_DFS(1),
    SMB2_GLOBAL_CAP_LEASING(2),
    SMB2_GLOBAL_CAP_LARGE_MTU(4),
    SMB2_GLOBAL_CAP_MULTI_CHANNEL(8),
    SMB2_GLOBAL_CAP_PERSISTENT_HANDLES(16),
    SMB2_GLOBAL_CAP_DIRECTORY_LEASING(32),
    SMB2_GLOBAL_CAP_ENCRYPTION(64);


    /* renamed from: i, reason: collision with root package name */
    private long f3739i;

    SMB2GlobalCapability(long j10) {
        this.f3739i = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.f3739i;
    }
}
