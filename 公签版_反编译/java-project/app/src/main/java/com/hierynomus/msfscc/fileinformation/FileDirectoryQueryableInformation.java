package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public abstract class FileDirectoryQueryableInformation implements FileInformation {
    private long fileIndex;
    private final String fileName;
    private long nextOffset;

    public FileDirectoryQueryableInformation(long j10, long j11, String str) {
        this.nextOffset = j10;
        this.fileIndex = j11;
        this.fileName = str;
    }

    public long getFileIndex() {
        return this.fileIndex;
    }

    public String getFileName() {
        return this.fileName;
    }

    public long getNextOffset() {
        return this.nextOffset;
    }
}
