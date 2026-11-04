package com.hierynomus.smbfs;

/* loaded from: classes.dex */
public class ToBeImplementedException extends UnsupportedOperationException {
    private static final long serialVersionUID = 1;

    private ToBeImplementedException() {
    }

    public static ToBeImplementedException toBeImplemented() {
        return new ToBeImplementedException();
    }
}
