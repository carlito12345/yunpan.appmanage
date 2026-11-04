package me.jessyan.autosize.utils;

/* loaded from: classes.dex */
public class AutoSizeLog {
    private static final String TAG = "AndroidAutoSize";
    private static boolean debug;

    private AutoSizeLog() {
        throw new IllegalStateException("you can't instantiate me!");
    }

    public static void d(String str) {
    }

    public static void e(String str) {
    }

    public static boolean isDebug() {
        return debug;
    }

    public static void setDebug(boolean z) {
        debug = z;
    }

    public static void w(String str) {
    }
}
