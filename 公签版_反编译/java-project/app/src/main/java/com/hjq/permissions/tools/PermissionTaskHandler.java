package com.hjq.permissions.tools;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* loaded from: classes.dex */
public final class PermissionTaskHandler {
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());

    public static void cancelTask(Object obj) {
        HANDLER.removeCallbacksAndMessages(obj);
    }

    public static void sendTask(Runnable runnable, long j10) {
        HANDLER.postDelayed(runnable, j10);
    }

    public static void sendTask(Runnable runnable, Object obj, long j10) {
        if (j10 < 0) {
            j10 = 0;
        }
        HANDLER.postAtTime(runnable, obj, SystemClock.uptimeMillis() + j10);
    }
}
