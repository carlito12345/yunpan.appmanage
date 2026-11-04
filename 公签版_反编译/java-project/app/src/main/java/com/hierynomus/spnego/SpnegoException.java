package com.hierynomus.spnego;

import java.io.IOException;

/* loaded from: classes.dex */
public class SpnegoException extends Exception {
    public SpnegoException(String str) {
        super(str);
    }

    public SpnegoException(String str, IOException iOException) {
        super(str, iOException);
    }
}
