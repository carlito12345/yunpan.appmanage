package com.hierynomus.msfscc.fileinformation;

import com.hierynomus.msdtyp.FileTime;

/* loaded from: classes.dex */
public class FileBothDirectoryInformation extends FileDirectoryQueryableInformation {
    private final long allocationSize;
    private final FileTime changeTime;
    private final FileTime creationTime;
    private final long eaSize;
    private final long endOfFile;
    private final long fileAttributes;
    private final FileTime lastAccessTime;
    private final FileTime lastWriteTime;
    private final String shortName;

    public FileBothDirectoryInformation(long j10, long j11, String str, FileTime fileTime, FileTime fileTime2, FileTime fileTime3, FileTime fileTime4, long j12, long j13, long j14, long j15, String str2) {
        super(j10, j11, str);
        this.creationTime = fileTime;
        this.lastAccessTime = fileTime2;
        this.lastWriteTime = fileTime3;
        this.changeTime = fileTime4;
        this.endOfFile = j12;
        this.allocationSize = j13;
        this.fileAttributes = j14;
        this.eaSize = j15;
        this.shortName = str2;
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

    public long getEaSize() {
        return this.eaSize;
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

    public String getShortName() {
        return this.shortName;
    }
}
