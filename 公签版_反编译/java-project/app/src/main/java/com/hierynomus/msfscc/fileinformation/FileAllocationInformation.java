package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileAllocationInformation implements FileSettableInformation {
    private long allocationSize;

    public FileAllocationInformation(long j10) {
        this.allocationSize = j10;
    }

    public long getAllocationSize() {
        return this.allocationSize;
    }
}
