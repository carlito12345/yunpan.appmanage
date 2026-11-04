package com.hierynomus.protocol.transport;

import com.hierynomus.protocol.commons.concurrent.ExceptionWrapper;
import java.io.IOException;

/* loaded from: classes.dex */
public class TransportException extends IOException {
    public static final ExceptionWrapper<TransportException> Wrapper = new ExceptionWrapper<TransportException>() { // from class: com.hierynomus.protocol.transport.TransportException.1
        @Override // com.hierynomus.protocol.commons.concurrent.ExceptionWrapper
        public TransportException wrap(Throwable th2) {
            return th2 instanceof TransportException ? (TransportException) th2 : new TransportException(th2);
        }
    };

    public TransportException(Throwable th2) {
        super(th2);
    }

    public TransportException(String str) {
        super(str);
    }

    public TransportException(String str, Throwable th2) {
        super(str, th2);
    }
}
