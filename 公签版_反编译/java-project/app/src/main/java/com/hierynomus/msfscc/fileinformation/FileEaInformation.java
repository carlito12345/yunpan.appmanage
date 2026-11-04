package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileEaInformation implements FileQueryableInformation {
    private long eaSize;

    public FileEaInformation(long j10) {
        this.eaSize = j10;
    }

    public long getEaSize() {
        return this.eaSize;
    }
}
