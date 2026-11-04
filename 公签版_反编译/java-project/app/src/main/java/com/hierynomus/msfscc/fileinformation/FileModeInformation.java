package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileModeInformation implements FileQueryableInformation, FileSettableInformation {
    private int mode;

    public FileModeInformation(int i10) {
        this.mode = i10;
    }

    public int getMode() {
        return this.mode;
    }
}
