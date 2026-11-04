package com.hierynomus.msfscc.fileinformation;

import com.hierynomus.msdtyp.FileTime;

/* loaded from: classes.dex */
public class FileBasicInformation implements FileQueryableInformation, FileSettableInformation {
    public static final FileTime DONT_SET = new FileTime(0);
    public static final FileTime DONT_UPDATE = new FileTime(-1);
    private final FileTime changeTime;
    private final FileTime creationTime;
    private long fileAttributes;
    private final FileTime lastAccessTime;
    private final FileTime lastWriteTime;

    public FileBasicInformation(FileTime fileTime, FileTime fileTime2, FileTime fileTime3, FileTime fileTime4, long j10) {
        this.creationTime = fileTime;
        this.lastAccessTime = fileTime2;
        this.lastWriteTime = fileTime3;
        this.changeTime = fileTime4;
        this.fileAttributes = j10;
    }

    public FileTime getChangeTime() {
        return this.changeTime;
    }

    public FileTime getCreationTime() {
        return this.creationTime;
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
