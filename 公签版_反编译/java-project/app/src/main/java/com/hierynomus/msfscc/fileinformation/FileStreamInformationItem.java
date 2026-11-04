package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileStreamInformationItem {
    private long allocSize;
    private String name;
    private long size;

    public FileStreamInformationItem(long j10, long j11, String str) {
        this.size = j10;
        this.allocSize = j11;
        this.name = str;
    }

    public long getAllocSize() {
        return this.allocSize;
    }

    public String getName() {
        return this.name;
    }

    public long getSize() {
        return this.size;
    }
}
