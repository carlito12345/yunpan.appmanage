package com.yunpan.appmanage.util;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class MyLog {
    static final String TAG = "MyLog";
    static final String msg_normal = "normal";

    public static void d(String str) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            Class.forName("android.util.Log").getMethod("d", String.class, String.class).invoke(null, TAG, str);
        } catch (Exception unused) {
        }
    }

    public static void normal() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            Class.forName("android.util.Log").getMethod("d", String.class, String.class).invoke(null, TAG, msg_normal);
        } catch (Exception unused) {
        }
    }

    public static void write(String str, String str2, String str3) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            Class.forName("android.util.Log").getMethod(str, String.class, String.class).invoke(null, str2, str3);
        } catch (Exception unused) {
        }
    }

    public static void d(String str, String str2) {
        try {
            Class.forName("android.util.Log").getMethod("d", String.class, String.class).invoke(null, str, str2);
        } catch (Exception unused) {
        }
    }
}
