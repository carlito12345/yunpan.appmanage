package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileInternalInformation implements FileQueryableInformation {
    private long indexNumber;

    public FileInternalInformation(long j10) {
        this.indexNumber = j10;
    }

    public long getIndexNumber() {
        return this.indexNumber;
    }
}
