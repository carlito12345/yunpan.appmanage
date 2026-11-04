package androidx.activity;

import android.app.ActivityManager;
import android.view.View;

/* loaded from: classes.dex */
public abstract class i {
    public static void a(View view) {
        view.cancelPendingInputEvents();
    }

    public static void b(View view) {
        view.cancelPendingInputEvents();
    }

    public static final boolean c(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }
}
