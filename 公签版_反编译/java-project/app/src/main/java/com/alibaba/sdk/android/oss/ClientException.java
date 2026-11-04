package com.alibaba.sdk.android.oss;

import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import da.b;

/* loaded from: classes.dex */
public class ClientException extends Exception {
    private Boolean canceled;

    public ClientException() {
        this.canceled = Boolean.FALSE;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (getCause() == null) {
            return message;
        }
        return getCause().getMessage() + SignParameters.NEW_LINE + message;
    }

    public Boolean isCanceledException() {
        return this.canceled;
    }

    public ClientException(String str) {
        super(b.c("[ErrorMessage]: ", str));
        this.canceled = Boolean.FALSE;
    }

    public ClientException(Throwable th2) {
        super(th2);
        this.canceled = Boolean.FALSE;
    }

    public ClientException(String str, Throwable th2) {
        this(str, th2, Boolean.FALSE);
    }

    public ClientException(String str, Throwable th2, Boolean bool) {
        super(b.c("[ErrorMessage]: ", str), th2);
        this.canceled = bool;
        OSSLog.logThrowable2Local(this);
    }
}
