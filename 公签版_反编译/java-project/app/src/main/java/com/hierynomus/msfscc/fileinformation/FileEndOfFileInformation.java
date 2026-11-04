package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileEndOfFileInformation implements FileSettableInformation {
    private long endOfFile;

    public FileEndOfFileInformation(long j10) {
        if (j10 < 0) {
            throw new IllegalArgumentException("endOfFile MUST be greater than or equal to 0");
        }
        this.endOfFile = j10;
    }

    public long getEndOfFile() {
        return this.endOfFile;
    }
}
