package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileAlignmentInformation implements FileQueryableInformation {
    private long alignmentRequirement;

    public FileAlignmentInformation(long j10) {
        this.alignmentRequirement = j10;
    }

    public long getAlignmentRequirement() {
        return this.alignmentRequirement;
    }
}
