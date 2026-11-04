package com.hjq.permissions.manager;

import android.app.Activity;
import android.view.Display;
import android.view.WindowManager;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class ActivityOrientationManager {
    private static final Map<Integer, Integer> ACTIVITY_ORIENTATION_MAP = new HashMap();

    private ActivityOrientationManager() {
    }

    private static int getIntKeyByActivity(Activity activity) {
        return activity.hashCode();
    }

    private static boolean isActivityReverse(Activity activity) {
        Display defaultDisplay;
        if (PermissionVersion.isAndroid11()) {
            defaultDisplay = activity.getDisplay();
        } else {
            WindowManager windowManager = activity.getWindowManager();
            defaultDisplay = windowManager != null ? windowManager.getDefaultDisplay() : null;
        }
        if (defaultDisplay == null) {
            return false;
        }
        int rotation = defaultDisplay.getRotation();
        return rotation == 2 || rotation == 3;
    }

    public static synchronized void lockActivityOrientation(Activity activity) {
        try {
        } catch (IllegalStateException e7) {
            e7.printStackTrace();
        } finally {
        }
        if (activity.getRequestedOrientation() != -1) {
            return;
        }
        int i10 = activity.getResources().getConfiguration().orientation;
        if (i10 == 1) {
            int i11 = isActivityReverse(activity) ? 9 : 1;
            activity.setRequestedOrientation(i11);
            ACTIVITY_ORIENTATION_MAP.put(Integer.valueOf(getIntKeyByActivity(activity)), Integer.valueOf(i11));
        } else if (i10 == 2) {
            int i12 = isActivityReverse(activity) ? 8 : 0;
            activity.setRequestedOrientation(i12);
            ACTIVITY_ORIENTATION_MAP.put(Integer.valueOf(getIntKeyByActivity(activity)), Integer.valueOf(i12));
        }
    }

    public static synchronized void unlockActivityOrientation(Activity activity) {
        if (activity.getRequestedOrientation() == -1) {
            return;
        }
        Map<Integer, Integer> map = ACTIVITY_ORIENTATION_MAP;
        Integer num = map.get(Integer.valueOf(getIntKeyByActivity(activity)));
        if (num == null) {
            return;
        }
        if (num.intValue() == -1) {
            return;
        }
        activity.setRequestedOrientation(-1);
        map.remove(Integer.valueOf(getIntKeyByActivity(activity)));
    }
}
