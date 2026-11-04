package com.hierynomus.msfscc.fileinformation;

import com.hierynomus.msdtyp.FileTime;

/* loaded from: classes.dex */
public class FileDirectoryInformation extends FileDirectoryQueryableInformation {
    private final long allocationSize;
    private final FileTime changeTime;
    private final FileTime creationTime;
    private final long endOfFile;
    private final long fileAttributes;
    private final FileTime lastAccessTime;
    private final FileTime lastWriteTime;

    public FileDirectoryInformation(long j10, long j11, String str, FileTime fileTime, FileTime fileTime2, FileTime fileTime3, FileTime fileTime4, long j12, long j13, long j14) {
        super(j10, j11, str);
        this.creationTime = fileTime;
        this.lastAccessTime = fileTime2;
        this.lastWriteTime = fileTime3;
        this.changeTime = fileTime4;
        this.endOfFile = j12;
        this.allocationSize = j13;
        this.fileAttributes = j14;
    }

    public long getAllocationSize() {
        return this.allocationSize;
    }

    public FileTime getChangeTime() {
        return this.changeTime;
    }

    public FileTime getCreationTime() {
        return this.creationTime;
    }

    public long getEndOfFile() {
        return this.endOfFile;
    }

    public long getFileAttributes() {
        return this.fileAttributes;
    }

    public FileTime getLastAccessTime() {
        return this.lastAccessTime;
    }

    public FileTime getLastWriteTime() {
        return this.lastWriteTime;
    }
}
