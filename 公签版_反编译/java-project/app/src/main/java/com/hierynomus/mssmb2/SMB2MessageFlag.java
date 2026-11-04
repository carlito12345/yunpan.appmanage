package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2MessageFlag implements EnumWithValue<SMB2MessageFlag> {
    SMB2_FLAGS_SERVER_TO_REDIR(1),
    SMB2_FLAGS_ASYNC_COMMAND(2),
    SMB2_FLAGS_RELATED_OPERATIONS(4),
    SMB2_FLAGS_SIGNED(8),
    SMB2_FLAGS_PRIORITY_MASK(112),
    SMB2_FLAGS_DFS_OPERATIONS(268435456),
    SMB2_FLAGS_REPLAY_OPERATION(536870912);

    private long value;

    SMB2MessageFlag(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
