package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileRenameInformation implements FileSettableInformation {
    private final String fileName;
    private final int fileNameLength;
    private final boolean replaceIfExists;
    private final long rootDirectory;

    public FileRenameInformation(boolean z, long j10, String str) {
        this.replaceIfExists = z;
        this.rootDirectory = j10;
        this.fileNameLength = str.length();
        this.fileName = str;
    }

    public String getFileName() {
        return this.fileName;
    }

    public int getFileNameLength() {
        return this.fileNameLength;
    }

    public long getRootDirectory() {
        return this.rootDirectory;
    }

    public boolean isReplaceIfExists() {
        return this.replaceIfExists;
    }
}
