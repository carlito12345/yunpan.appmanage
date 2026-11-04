package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2ShareCapabilities implements EnumWithValue<SMB2ShareCapabilities> {
    SMB2_SHARE_CAP_DFS(8),
    SMB2_SHARE_CAP_CONTINUOUS_AVAILABILITY(16),
    SMB2_SHARE_CAP_SCALEOUT(32),
    SMB2_SHARE_CAP_CLUSTER(64),
    SMB2_SHARE_CAP_ASYMMETRIC(128);

    private long value;

    SMB2ShareCapabilities(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
