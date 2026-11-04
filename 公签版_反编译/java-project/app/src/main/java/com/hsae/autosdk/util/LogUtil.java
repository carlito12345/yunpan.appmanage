package com.hsae.autosdk.util;

import android.os.RemoteException;
import android.util.Log;
import com.hsae.d531mc.logservice.ILogService;

/* loaded from: classes.dex */
public final class LogUtil {
    public static final int DEBUG = 1;
    public static final int ERROR = 4;
    public static final int INFO = 2;
    public static final boolean SWITCH_LOG = true;
    public static final int VERBOSE = 0;
    public static final int WARNING = 3;
    public static boolean aggregateLog = true;

    public static void log(String str, String str2, int i10) {
    }

    public static void m10i(String str, String str2) {
        ILogService logger;
        if (!aggregateLog || (logger = LogConfigure.getInstance().getLogger()) == null) {
            return;
        }
        try {
            logger.mo1i(str, str2);
        } catch (RemoteException e7) {
            e7.toString();
        }
    }

    public static void m11i(String str, Exception exc) {
        m10i(str, prepareStackTrace(exc));
    }

    public static void m12e(String str, String str2, Throwable th2) {
    }

    public static void m13e(String str, String str2) {
        ILogService logger;
        if (!aggregateLog || (logger = LogConfigure.getInstance().getLogger()) == null) {
            return;
        }
        try {
            logger.mo2e(str, str2);
        } catch (RemoteException e7) {
            e7.toString();
        }
    }

    public static void m14e(String str, Exception exc) {
        m13e(str, prepareStackTrace(exc));
    }

    public static void m15d(String str, String str2) {
    }

    public static void m16d(String str, Exception exc) {
        m15d(str, prepareStackTrace(exc));
    }

    public static void m4w(String str, String str2, Throwable th2) {
    }

    public static void m5w(String str, String str2) {
        ILogService logger;
        if (!aggregateLog || (logger = LogConfigure.getInstance().getLogger()) == null) {
            return;
        }
        try {
            logger.mo0w(str, str2);
        } catch (RemoteException e7) {
            e7.toString();
        }
    }

    public static void m6w(String str, Exception exc) {
        m5w(str, prepareStackTrace(exc));
    }

    public static void m7v(String str, String str2) {
    }

    public static void m8v(String str, Exception exc) {
        m7v(str, prepareStackTrace(exc));
    }

    public static void m9i(String str, String str2, Throwable th2) {
    }

    public static String prepareStackTrace(Exception exc) {
        if (exc == null) {
            return null;
        }
        return Log.getStackTraceString(exc);
    }

    public static void recoveryMechanismDelay(int i10) throws InterruptedException {
        try {
            Thread.sleep(i10);
        } catch (InterruptedException unused) {
        }
    }

    public static void log(String str, String str2) {
        log(str, str2, 1);
    }
}
