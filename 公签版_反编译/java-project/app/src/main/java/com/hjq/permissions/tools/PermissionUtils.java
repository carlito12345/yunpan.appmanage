package com.hjq.permissions.tools;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import androidx.fragment.app.Fragment;
import com.hjq.permissions.permission.base.IPermission;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class PermissionUtils {
    public static boolean areActivityIntent(Context context, Intent intent) {
        PackageManager packageManager;
        if (intent == null || (packageManager = context.getPackageManager()) == null) {
            return false;
        }
        return PermissionVersion.isAndroid13() ? !packageManager.queryIntentActivities(intent, PackageManager.ResolveInfoFlags.of(65536L)).isEmpty() : !packageManager.queryIntentActivities(intent, 65536).isEmpty();
    }

    public static <T> ArrayList<T> asArrayList(T... tArr) {
        ArrayList<T> arrayList = new ArrayList<>(tArr != null ? tArr.length : 0);
        if (tArr != null && tArr.length != 0) {
            for (T t10 : tArr) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    public static boolean containsPermission(Collection<IPermission> collection, IPermission iPermission) {
        if (collection.isEmpty()) {
            return false;
        }
        Iterator<IPermission> it = collection.iterator();
        while (it.hasNext()) {
            if (equalsPermission(iPermission, it.next().getPermissionName())) {
                return true;
            }
        }
        return false;
    }

    public static String[] convertPermissionArray(List<IPermission> list) {
        if (list == null || list.isEmpty()) {
            return new String[0];
        }
        String[] strArr = new String[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            strArr[i10] = list.get(i10).getPermissionName();
        }
        return strArr;
    }

    public static List<String> convertPermissionList(IPermission[] iPermissionArr) {
        ArrayList arrayList = new ArrayList();
        if (iPermissionArr == null) {
            return arrayList;
        }
        for (IPermission iPermission : iPermissionArr) {
            arrayList.add(iPermission.getPermissionName());
        }
        return arrayList;
    }

    public static boolean equalsIntentList(List<Intent> list, List<Intent> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!list.get(i10).filterEquals(list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsPermission(String str, String str2) {
        return reverseEqualsString(str, str2);
    }

    public static boolean equalsString(String str, String str2) {
        int length;
        if (str == null || str2 == null || (length = str.length()) != str2.length()) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (str.charAt(i10) != str2.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    public static Activity findActivity(Context context) {
        while (!(context instanceof Activity)) {
            if (!(context instanceof ContextWrapper) || (context = ((ContextWrapper) context).getBaseContext()) == null) {
                return null;
            }
        }
        return (Activity) context;
    }

    public static Uri getPackageNameUri(Context context) {
        return Uri.parse("package:" + context.getPackageName());
    }

    public static boolean isActivityUnavailable(Activity activity) {
        return activity == null || activity.isDestroyed() || activity.isFinishing();
    }

    public static boolean isClassExist(String str) throws ClassNotFoundException {
        if (str == null || str.isEmpty()) {
            return false;
        }
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public static boolean isDebugMode(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static boolean isFragmentUnavailable(Fragment fragment) {
        return fragment == null || !fragment.isAdded() || fragment.isRemoving();
    }

    public static boolean reverseEqualsString(String str, String str2) {
        int length;
        if (str == null || str2 == null || (length = str.length()) != str2.length()) {
            return false;
        }
        for (int i10 = length - 1; i10 >= 0; i10--) {
            if (str.charAt(i10) != str2.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsPermission(IPermission iPermission, String str) {
        return reverseEqualsString(iPermission.getPermissionName(), str);
    }

    public static boolean isFragmentUnavailable(android.app.Fragment fragment) {
        return fragment == null || !fragment.isAdded() || fragment.isRemoving();
    }

    public static boolean equalsPermission(IPermission iPermission, IPermission iPermission2) {
        return reverseEqualsString(iPermission.getPermissionName(), iPermission2.getPermissionName());
    }

    public static boolean containsPermission(List<String> list, String str) {
        if (list.isEmpty()) {
            return false;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (equalsPermission(str, it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean containsPermission(Collection<IPermission> collection, String str) {
        if (collection.isEmpty()) {
            return false;
        }
        Iterator<IPermission> it = collection.iterator();
        while (it.hasNext()) {
            if (equalsPermission(it.next().getPermissionName(), str)) {
                return true;
            }
        }
        return false;
    }
}
