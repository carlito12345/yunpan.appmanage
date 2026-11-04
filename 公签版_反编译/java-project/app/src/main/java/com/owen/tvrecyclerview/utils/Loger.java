package com.owen.tvrecyclerview.utils;

import android.text.TextUtils;
import android.util.Log;

/* loaded from: classes.dex */
public class Loger {
    private static final String customTagPrefix = "[TVRV_LOG]";
    public static boolean isDebug = false;

    private Loger() {
    }

    public static void d(String str) {
        if (isDebug) {
            generateTag();
        }
    }

    public static void e(String str) {
        if (isDebug) {
            generateTag();
        }
    }

    private static String generateTag() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        String className = stackTraceElement.getClassName();
        String str = String.format("%s.%s(L:%d)", className.substring(className.lastIndexOf(".") + 1), stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber()));
        return TextUtils.isEmpty(customTagPrefix) ? str : "[TVRV_LOG]:".concat(str);
    }

    public static void i(String str) {
        if (isDebug) {
            generateTag();
        }
    }

    public static void v(String str) {
        if (isDebug) {
            generateTag();
        }
    }

    public static void w(String str) {
        if (isDebug) {
            generateTag();
        }
    }

    public static void wtf(String str) {
        if (isDebug) {
            Log.wtf(generateTag(), str);
        }
    }

    public static void d(String str, Throwable th2) {
        if (isDebug) {
            generateTag();
        }
    }

    public static void e(String str, Throwable th2) {
        if (isDebug) {
            generateTag();
        }
    }

    public static void i(String str, Throwable th2) {
        if (isDebug) {
            generateTag();
        }
    }

    public static void v(String str, Throwable th2) {
        if (isDebug) {
            generateTag();
        }
    }

    public static void w(String str, Throwable th2) {
        if (isDebug) {
            generateTag();
        }
    }

    public static void wtf(String str, Throwable th2) {
        if (isDebug) {
            Log.wtf(generateTag(), str, th2);
        }
    }

    public static void w(Throwable th2) {
        if (isDebug) {
            generateTag();
        }
    }

    public static void wtf(Throwable th2) {
        if (isDebug) {
            Log.wtf(generateTag(), th2);
        }
    }
}
