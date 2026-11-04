package com.hierynomus.mssmb2;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum SMB2CompletionFilter implements EnumWithValue<SMB2CompletionFilter> {
    FILE_NOTIFY_CHANGE_FILE_NAME(1),
    FILE_NOTIFY_CHANGE_DIR_NAME(2),
    FILE_NOTIFY_CHANGE_ATTRIBUTES(4),
    FILE_NOTIFY_CHANGE_SIZE(8),
    FILE_NOTIFY_CHANGE_LAST_WRITE(16),
    FILE_NOTIFY_CHANGE_LAST_ACCESS(32),
    FILE_NOTIFY_CHANGE_CREATION(64),
    FILE_NOTIFY_CHANGE_EA(128),
    FILE_NOTIFY_CHANGE_SECURITY(256),
    FILE_NOTIFY_CHANGE_STREAM_NAME(512),
    FILE_NOTIFY_CHANGE_STREAM_SIZE(1024),
    FILE_NOTIFY_CHANGE_STREAM_WRITE(2048);

    private long value;

    SMB2CompletionFilter(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
