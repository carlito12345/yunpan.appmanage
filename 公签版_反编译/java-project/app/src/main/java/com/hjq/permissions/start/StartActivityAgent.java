package com.hjq.permissions.start;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import com.hjq.permissions.tools.PermissionSettingPage;
import com.hjq.permissions.tools.PermissionUtils;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class StartActivityAgent {
    public static void startActivity(Context context, List<Intent> list) {
        startActivity(context, new StartActivityDelegateByContext(context), list);
    }

    public static void startActivityForResult(Activity activity, List<Intent> list, int i10) {
        startActivityForResult(activity, new StartActivityDelegateByActivity(activity), list, i10);
    }

    public static void startActivity(Activity activity, List<Intent> list) {
        startActivity(activity, new StartActivityDelegateByActivity(activity), list);
    }

    public static void startActivityForResult(Fragment fragment, List<Intent> list, int i10) {
        startActivityForResult(fragment.getActivity(), new StartActivityDelegateByFragmentAndroid(fragment), list, i10);
    }

    public static void startActivity(Fragment fragment, List<Intent> list) {
        startActivity(fragment.getActivity(), new StartActivityDelegateByFragmentAndroid(fragment), list);
    }

    public static void startActivityForResult(androidx.fragment.app.Fragment fragment, List<Intent> list, int i10) {
        startActivityForResult(fragment.getActivity(), new StartActivityDelegateByFragmentAndroidX(fragment), list, i10);
    }

    public static void startActivity(androidx.fragment.app.Fragment fragment, List<Intent> list) {
        startActivity(fragment.getActivity(), new StartActivityDelegateByFragmentAndroidX(fragment), list);
    }

    public static void startActivityForResult(Context context, IStartActivityDelegate iStartActivityDelegate, List<Intent> list, int i10) {
        startActivityForResult(context, iStartActivityDelegate, list, i10, null);
    }

    public static void startActivity(Context context, IStartActivityDelegate iStartActivityDelegate, List<Intent> list) {
        Iterator<Intent> it = list.iterator();
        while (it.hasNext()) {
            if (!PermissionUtils.areActivityIntent(context, it.next())) {
                it.remove();
            }
        }
        if (list.isEmpty()) {
            list.add(PermissionSettingPage.getAndroidSettingsIntent());
        }
        for (Intent intent : list) {
            if (intent != null) {
                try {
                    iStartActivityDelegate.startActivity(intent);
                    return;
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
        }
    }

    public static void startActivityForResult(Context context, IStartActivityDelegate iStartActivityDelegate, List<Intent> list, int i10, Runnable runnable) {
        Iterator<Intent> it = list.iterator();
        while (it.hasNext()) {
            if (!PermissionUtils.areActivityIntent(context, it.next())) {
                it.remove();
            }
        }
        if (list.isEmpty()) {
            list.add(PermissionSettingPage.getAndroidSettingsIntent());
        }
        Iterator<Intent> it2 = list.iterator();
        while (it2.hasNext()) {
            Intent next = it2.next();
            if (next != null) {
                try {
                    iStartActivityDelegate.startActivityForResult(next, i10);
                    return;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    if (it2.hasNext() && runnable != null) {
                        runnable.run();
                    }
                }
            }
        }
    }
}
