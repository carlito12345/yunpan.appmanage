package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FilePositionInformation implements FileQueryableInformation {
    private long currentByteOffset;

    public FilePositionInformation(long j10) {
        this.currentByteOffset = j10;
    }

    public long getCurrentByteOffset() {
        return this.currentByteOffset;
    }
}
