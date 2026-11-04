package com.hierynomus.smbj.common;

import com.hierynomus.protocol.commons.concurrent.ExceptionWrapper;

/* loaded from: classes.dex */
public class SMBRuntimeException extends RuntimeException {
    public static final ExceptionWrapper<SMBRuntimeException> Wrapper = new ExceptionWrapper<SMBRuntimeException>() { // from class: com.hierynomus.smbj.common.SMBRuntimeException.1
        @Override // com.hierynomus.protocol.commons.concurrent.ExceptionWrapper
        public SMBRuntimeException wrap(Throwable th2) {
            return th2 instanceof SMBRuntimeException ? (SMBRuntimeException) th2 : new SMBRuntimeException(th2);
        }
    };

    public SMBRuntimeException(Throwable th2) {
        super(th2);
    }

    public SMBRuntimeException(String str) {
        super(str);
    }

    public SMBRuntimeException(String str, Throwable th2) {
        super(str, th2);
    }
}
