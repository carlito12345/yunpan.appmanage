package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileStandardInformation implements FileQueryableInformation {
    private long allocationSize;
    private boolean deletePending;
    private boolean directory;
    private long endOfFile;
    private long numberOfLinks;

    public FileStandardInformation(long j10, long j11, long j12, boolean z, boolean z4) {
        this.allocationSize = j10;
        this.endOfFile = j11;
        this.numberOfLinks = j12;
        this.deletePending = z;
        this.directory = z4;
    }

    public long getAllocationSize() {
        return this.allocationSize;
    }

    public long getEndOfFile() {
        return this.endOfFile;
    }

    public long getNumberOfLinks() {
        return this.numberOfLinks;
    }

    public boolean isDeletePending() {
        return this.deletePending;
    }

    public boolean isDirectory() {
        return this.directory;
    }
}
