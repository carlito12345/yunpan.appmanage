package com.hierynomus.smbfs;

import com.hierynomus.msfscc.fileinformation.FileAllInformation;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileTime;

/* loaded from: classes.dex */
class SmbFileAttributes implements BasicFileAttributes {
    private final FileAllInformation fileInformation;

    public SmbFileAttributes(FileAllInformation fileAllInformation) {
        this.fileInformation = fileAllInformation;
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public FileTime creationTime() {
        return FileTimes.fromSmb(this.fileInformation.getBasicInformation().getCreationTime());
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public Object fileKey() {
        return null;
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public boolean isDirectory() {
        return this.fileInformation.getStandardInformation().isDirectory();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public boolean isOther() {
        return false;
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public boolean isRegularFile() {
        return !this.fileInformation.getStandardInformation().isDirectory();
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public boolean isSymbolicLink() {
        return false;
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public FileTime lastAccessTime() {
        return FileTimes.fromSmb(this.fileInformation.getBasicInformation().getLastAccessTime());
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public FileTime lastModifiedTime() {
        return FileTimes.fromSmb(this.fileInformation.getBasicInformation().getLastWriteTime());
    }

    @Override // java.nio.file.attribute.BasicFileAttributes
    public long size() {
        return this.fileInformation.getStandardInformation().getEndOfFile();
    }
}
