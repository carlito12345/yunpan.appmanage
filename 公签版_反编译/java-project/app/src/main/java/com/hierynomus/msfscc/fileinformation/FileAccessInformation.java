package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileAccessInformation implements FileQueryableInformation {
    private int accessFlags;

    public FileAccessInformation(int i10) {
        this.accessFlags = i10;
    }

    public int getAccessFlags() {
        return this.accessFlags;
    }
}
