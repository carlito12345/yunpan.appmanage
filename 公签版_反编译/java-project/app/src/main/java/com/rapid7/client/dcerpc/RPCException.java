package com.rapid7.client.dcerpc;

import com.rapid7.client.dcerpc.mserref.SystemErrorCode;
import java.io.IOException;

/* loaded from: classes.dex */
public class RPCException extends IOException {
    private final SystemErrorCode errorCode;
    private final int returnValue;

    public RPCException(String str, int i10) {
        super(formatMessage(str, i10));
        this.returnValue = i10;
        this.errorCode = SystemErrorCode.getErrorCode(i10);
    }

    private static String formatMessage(String str, int i10) {
        String str2;
        SystemErrorCode errorCode = SystemErrorCode.getErrorCode(i10);
        if (errorCode == null) {
            str2 = "";
        } else {
            str2 = "(" + errorCode + ")";
        }
        return String.format("%s returned error code: 0x%08X %s", str, Integer.valueOf(i10), str2);
    }

    public SystemErrorCode getErrorCode() {
        return this.errorCode;
    }

    public int getReturnValue() {
        return this.returnValue;
    }

    public boolean hasErrorCode() {
        return this.errorCode != null;
    }
}
