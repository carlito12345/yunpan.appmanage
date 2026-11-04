package com.hierynomus.msfscc.fileinformation;

/* loaded from: classes.dex */
public class FileDispositionInformation implements FileSettableInformation {
    private boolean deleteOnClose;

    public FileDispositionInformation() {
        this.deleteOnClose = true;
    }

    public boolean isDeleteOnClose() {
        return this.deleteOnClose;
    }

    public FileDispositionInformation(boolean z) {
        this.deleteOnClose = z;
    }
}
