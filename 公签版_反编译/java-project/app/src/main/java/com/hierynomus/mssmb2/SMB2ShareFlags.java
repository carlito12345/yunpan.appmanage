package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2ShareFlags implements EnumWithValue<SMB2ShareFlags> {
    SMB2_SHAREFLAG_MANUAL_CACHING(0),
    SMB2_SHAREFLAG_AUTO_CACHING(16),
    SMB2_SHAREFLAG_VDO_CACHING(32),
    SMB2_SHAREFLAG_NO_CACHING(48),
    SMB2_SHAREFLAG_DFS(1),
    SMB2_SHAREFLAG_DFS_ROOT(2),
    SMB2_SHAREFLAG_RESTRICT_EXCLUSIVE_OPENS(256),
    SMB2_SHAREFLAG_FORCE_SHARED_DELETE(512),
    SMB2_SHAREFLAG_ALLOW_NAMESPACE_CACHING(1024),
    SMB2_SHAREFLAG_ACCESS_BASED_DIRECTORY_ENUM(2048),
    SMB2_SHAREFLAG_FORCE_LEVELII_OPLOCK(4096),
    SMB2_SHAREFLAG_ENABLE_HASH_V1(8192),
    SMB2_SHAREFLAG_ENABLE_HASH_V2(16384),
    SMB2_SHAREFLAG_ENCRYPT_DATA(32768),
    SMB2_SHAREFLAG_IDENTITY_REMOTING(262144);

    private long value;

    SMB2ShareFlags(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
