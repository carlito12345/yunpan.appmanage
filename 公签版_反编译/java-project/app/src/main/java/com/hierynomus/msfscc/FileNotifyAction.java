package com.hierynomus.msfscc;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum FileNotifyAction implements EnumWithValue<FileNotifyAction> {
    FILE_ACTION_ADDED(1),
    FILE_ACTION_REMOVED(2),
    FILE_ACTION_MODIFIED(3),
    FILE_ACTION_RENAMED_OLD_NAME(4),
    FILE_ACTION_RENAMED_NEW_NAME(5),
    FILE_ACTION_ADDED_STREAM(6),
    FILE_ACTION_REMOVED_STREAM(7),
    FILE_ACTION_MODIFIED_STREAM(8),
    FILE_ACTION_REMOVED_BY_DELETE(9),
    FILE_ACTION_ID_NOT_TUNNELLED(10),
    FILE_ACTION_TUNNELLED_ID_COLLISION(11);

    private long value;

    FileNotifyAction(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
