package com.hierynomus.smbj.auth;

import com.hierynomus.protocol.transport.TransportException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.Key;
import org.ietf.jgss.GSSContext;

/* loaded from: classes.dex */
class ExtendedGSSContext {
    private static final Method inquireSecContext = getInquireSecContextMethod();
    private static Object krb5GetSessionKeyConst;

    private ExtendedGSSContext() {
    }

    private static Method getInquireSecContextMethod() throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls;
        Class<?> cls2;
        try {
            cls2 = Class.forName("com.sun.security.jgss.ExtendedGSSContext", false, SpnegoAuthenticator.class.getClassLoader());
            cls = Class.forName("com.sun.security.jgss.InquireType");
        } catch (ClassNotFoundException e7) {
            try {
                Class<?> cls3 = Class.forName("com.ibm.security.jgss.ExtendedGSSContext", false, SpnegoAuthenticator.class.getClassLoader());
                cls = Class.forName("com.ibm.security.jgss.InquireType");
                cls2 = cls3;
            } catch (ClassNotFoundException e10) {
                IllegalStateException illegalStateException = new IllegalStateException("The code is running in an unknown java vm");
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(illegalStateException, e7);
                } catch (Exception unused) {
                }
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(illegalStateException, e10);
                    throw illegalStateException;
                } catch (Exception unused2) {
                    throw illegalStateException;
                }
            }
        }
        krb5GetSessionKeyConst = Enum.valueOf(cls.asSubclass(Enum.class), "KRB5_GET_SESSION_KEY");
        try {
            return cls2.getDeclaredMethod("inquireSecContext", cls);
        } catch (NoSuchMethodException e11) {
            throw new IllegalStateException(e11);
        }
    }

    public static Key krb5GetSessionKey(GSSContext gSSContext) throws TransportException {
        try {
            return (Key) inquireSecContext.invoke(gSSContext, krb5GetSessionKeyConst);
        } catch (Throwable th2) {
            throw new TransportException(th2);
        }
    }
}
