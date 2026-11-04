package com.hjq.permissions.tools;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.hjq.permissions.permission.PermissionChannel;
import com.hjq.permissions.permission.base.IPermission;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class PermissionApi {
    public static synchronized void addOldPermissionsByNewPermissions(Context context, List<IPermission> list) {
        List<IPermission> oldPermissions;
        int i10 = -1;
        while (true) {
            i10++;
            if (i10 < list.size()) {
                IPermission iPermission = list.get(i10);
                if (PermissionVersion.getSdkVersion() < iPermission.getFromAndroidVersion(context) && (oldPermissions = iPermission.getOldPermissions(context)) != null && !oldPermissions.isEmpty()) {
                    for (IPermission iPermission2 : oldPermissions) {
                        if (!PermissionUtils.containsPermission(list, iPermission2)) {
                            i10++;
                            list.add(i10, iPermission2);
                        }
                    }
                }
            }
        }
    }

    public static boolean containsPermissionByStartActivity(Context context, List<IPermission> list) {
        if (list != null && !list.isEmpty()) {
            Iterator<IPermission> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().getPermissionChannel(context) == PermissionChannel.START_ACTIVITY) {
                    return true;
                }
            }
        }
        return false;
    }

    public static List<Intent> getBestPermissionSettingIntent(Context context, List<IPermission> list, boolean z) {
        if (list == null || list.isEmpty()) {
            return PermissionSettingPage.getCommonPermissionSettingIntent(context);
        }
        ArrayList arrayList = new ArrayList(list);
        for (IPermission iPermission : list) {
            if (iPermission.getFromAndroidVersion(context) > PermissionVersion.getSdkVersion()) {
                arrayList.remove(iPermission);
            } else {
                List<IPermission> oldPermissions = iPermission.getOldPermissions(context);
                if (oldPermissions != null && !oldPermissions.isEmpty() && (iPermission.getPermissionChannel(context) == PermissionChannel.START_ACTIVITY || containsPermissionByStartActivity(context, oldPermissions))) {
                    arrayList.removeAll(oldPermissions);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return PermissionSettingPage.getCommonPermissionSettingIntent(context);
        }
        if (arrayList.size() == 1) {
            return ((IPermission) arrayList.get(0)).getPermissionSettingIntents(context, z);
        }
        List<Intent> permissionSettingIntents = ((IPermission) arrayList.get(0)).getPermissionSettingIntents(context, z);
        int i10 = 1;
        while (i10 < arrayList.size()) {
            List<Intent> permissionSettingIntents2 = ((IPermission) arrayList.get(i10)).getPermissionSettingIntents(context, z);
            if (!PermissionUtils.equalsIntentList(permissionSettingIntents2, permissionSettingIntents)) {
                break;
            }
            if (i10 == arrayList.size() - 1) {
                return permissionSettingIntents2;
            }
            i10++;
            permissionSettingIntents = permissionSettingIntents2;
        }
        return PermissionSettingPage.getCommonPermissionSettingIntent(context);
    }

    public static List<IPermission> getDeniedPermissions(Context context, List<IPermission> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (IPermission iPermission : list) {
            if (!iPermission.isGrantedPermission(context)) {
                arrayList.add(iPermission);
            }
        }
        return arrayList;
    }

    public static List<IPermission> getGrantedPermissions(Context context, List<IPermission> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (IPermission iPermission : list) {
            if (iPermission.isGrantedPermission(context)) {
                arrayList.add(iPermission);
            }
        }
        return arrayList;
    }

    public static int getMaxIntervalTimeByPermissions(Context context, List<IPermission> list) {
        int iMax = 0;
        if (list == null) {
            return 0;
        }
        Iterator<IPermission> it = list.iterator();
        while (it.hasNext()) {
            int requestIntervalTime = it.next().getRequestIntervalTime(context);
            if (requestIntervalTime != 0) {
                iMax = Math.max(iMax, requestIntervalTime);
            }
        }
        return iMax;
    }

    public static int getMaxWaitTimeByPermissions(Context context, List<IPermission> list) {
        int iMax = 0;
        if (list == null) {
            return 0;
        }
        Iterator<IPermission> it = list.iterator();
        while (it.hasNext()) {
            int resultWaitTime = it.next().getResultWaitTime(context);
            if (resultWaitTime != 0) {
                iMax = Math.max(iMax, resultWaitTime);
            }
        }
        return iMax;
    }

    public static boolean isDoNotAskAgainPermissions(Activity activity, List<IPermission> list) {
        Iterator<IPermission> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().isDoNotAskAgainPermission(activity)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isGrantedPermissions(Context context, List<IPermission> list) {
        if (list.isEmpty()) {
            return false;
        }
        Iterator<IPermission> it = list.iterator();
        while (it.hasNext()) {
            if (!it.next().isGrantedPermission(context)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isHealthPermission(IPermission iPermission) {
        return iPermission.getPermissionName().startsWith("android.permission.health.");
    }
}
