package com.alibaba.sdk.android.oss;

import da.b;

/* loaded from: classes.dex */
public class TaskCancelException extends Exception {
    public TaskCancelException() {
    }

    public TaskCancelException(String str) {
        super(b.c("[ErrorMessage]: ", str));
    }

    public TaskCancelException(Throwable th2) {
        super(th2);
    }
}
