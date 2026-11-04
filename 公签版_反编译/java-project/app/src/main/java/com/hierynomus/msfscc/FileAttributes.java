package com.hierynomus.msfscc;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum FileAttributes implements EnumWithValue<FileAttributes> {
    FILE_ATTRIBUTE_ARCHIVE(32),
    FILE_ATTRIBUTE_COMPRESSED(2048),
    FILE_ATTRIBUTE_DIRECTORY(16),
    FILE_ATTRIBUTE_ENCRYPTED(16384),
    FILE_ATTRIBUTE_HIDDEN(2),
    FILE_ATTRIBUTE_NORMAL(128),
    FILE_ATTRIBUTE_NOT_CONTENT_INDEXED(8192),
    FILE_ATTRIBUTE_OFFLINE(4096),
    FILE_ATTRIBUTE_READONLY(1),
    FILE_ATTRIBUTE_REPARSE_POINT(1024),
    FILE_ATTRIBUTE_SPARSE_FILE(512),
    FILE_ATTRIBUTE_SYSTEM(4),
    FILE_ATTRIBUTE_TEMPORARY(256),
    FILE_ATTRIBUTE_INTEGRITY_STREAM(32768),
    FILE_ATTRIBUTE_NO_SCRUB_DATA(131072);

    private long value;

    FileAttributes(long j10) {
        this.value = j10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}
