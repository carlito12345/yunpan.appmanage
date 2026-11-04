package com.hierynomus.smbj.common;

import com.hierynomus.protocol.commons.concurrent.ExceptionWrapper;
import java.io.IOException;

/* loaded from: classes.dex */
public class SMBException extends IOException {
    public static final ExceptionWrapper<SMBException> Wrapper = new ExceptionWrapper<SMBException>() { // from class: com.hierynomus.smbj.common.SMBException.1
        @Override // com.hierynomus.protocol.commons.concurrent.ExceptionWrapper
        public SMBException wrap(Throwable th2) {
            return th2 instanceof SMBException ? (SMBException) th2 : new SMBException(th2);
        }
    };

    public SMBException(String str) {
        super(str);
    }

    public SMBException(Throwable th2) {
        super(th2);
    }
}
