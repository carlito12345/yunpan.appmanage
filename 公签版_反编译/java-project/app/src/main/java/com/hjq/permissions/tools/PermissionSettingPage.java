package com.hjq.permissions.tools;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.hjq.permissions.permission.base.IPermission;
import java.util.ArrayList;
import java.util.List;
import o8.b;

/* loaded from: classes.dex */
public final class PermissionSettingPage {
    private static final String[] HUA_WEI_MOBILE_MANAGER_APP_PACKAGE_NAMES = {"com.huawei.systemmanager"};
    private static final String[] XIAO_MI_MOBILE_MANAGER_APP_PACKAGE_NAMES = {"com.miui.securitycenter"};
    private static final String[] OPPO_SAFE_CENTER_APP_PACKAGE_NAMES = {"com.coloros.safecenter", "com.oplus.safecenter", "com.color.safecenter", "com.oppo.safe"};
    private static final String[] VIVO_MOBILE_MANAGER_APP_PACKAGE_NAMES = {"com.bairenkeji.icaller", "com.iqoo.secure"};
    private static final String SMARTISAN_SECURITY_COMPONENT_APP_PACKAGE_NAME = "com.smartisanos.security";
    private static final String[] SMARTISAN_SECURITY_CENTER_APP_PACKAGE_NAMES = {"com.smartisanos.securitycenter", SMARTISAN_SECURITY_COMPONENT_APP_PACKAGE_NAME};

    public static Intent getAndroidSettingsIntent() {
        return new Intent("android.settings.SETTINGS");
    }

    public static Intent getApplicationDetailsSettingsIntent(Context context, IPermission... iPermissionArr) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(PermissionUtils.getPackageNameUri(context));
        if (iPermissionArr != null && iPermissionArr.length > 0 && b.f11670j == -1680767897) {
            Bundle bundle = new Bundle();
            List<String> listConvertPermissionList = PermissionUtils.convertPermissionList(iPermissionArr);
            bundle.putStringArrayList("permissionList", listConvertPermissionList instanceof ArrayList ? (ArrayList) listConvertPermissionList : new ArrayList<>(listConvertPermissionList));
            intent.putExtras(bundle);
            intent.putExtra("isGetPermission", true);
        }
        return intent;
    }

    public static Intent getApplicationSettingsIntent() {
        return new Intent("android.settings.APPLICATION_SETTINGS");
    }

    public static List<Intent> getCommonPermissionSettingIntent(Context context) {
        return getCommonPermissionSettingIntent(context, null);
    }

    public static List<Intent> getHuaWeiMobileManagerAppIntent(Context context) {
        ArrayList arrayList = new ArrayList(1);
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            for (String str : HUA_WEI_MOBILE_MANAGER_APP_PACKAGE_NAMES) {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
                if (launchIntentForPackage != null) {
                    arrayList.add(launchIntentForPackage);
                }
            }
        }
        return arrayList;
    }

    public static Intent getManageApplicationSettingsIntent() {
        return new Intent("android.settings.MANAGE_APPLICATIONS_SETTINGS");
    }

    public static Intent getMeiZuApplicationPermissionPageIntent(Context context) {
        return new Intent("com.meizu.safe.security.SHOW_APPSEC").putExtra("packageName", context.getPackageName());
    }

    public static Intent getOneUiPermissionPageIntent(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.android.settings.Settings$AppOpsDetailsActivity");
        Bundle bundle = new Bundle();
        bundle.putString("package", context.getPackageName());
        intent.putExtra(":settings:show_fragment_args", bundle);
        intent.setData(PermissionUtils.getPackageNameUri(context));
        return intent;
    }

    public static List<Intent> getOppoSafeCenterAppIntent(Context context) {
        String[] strArr = OPPO_SAFE_CENTER_APP_PACKAGE_NAMES;
        ArrayList arrayList = new ArrayList(strArr.length);
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            for (String str : strArr) {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
                if (launchIntentForPackage != null) {
                    arrayList.add(launchIntentForPackage);
                }
            }
        }
        return arrayList;
    }

    public static List<Intent> getSmartisanPermissionPageIntent() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new Intent("com.smartisanos.security.action.PACKAGE_OVERVIEW"));
        Intent intent = new Intent();
        intent.setClassName(SMARTISAN_SECURITY_COMPONENT_APP_PACKAGE_NAME, "com.smartisanos.security.PackagesOverview");
        arrayList.add(intent);
        return arrayList;
    }

    public static List<Intent> getSmartisanSecurityCenterAppIntent(Context context) {
        String[] strArr = SMARTISAN_SECURITY_CENTER_APP_PACKAGE_NAMES;
        ArrayList arrayList = new ArrayList(strArr.length);
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            for (String str : strArr) {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
                if (launchIntentForPackage != null) {
                    arrayList.add(launchIntentForPackage);
                }
            }
        }
        return arrayList;
    }

    public static List<Intent> getVivoMobileManagerAppIntent(Context context) {
        String[] strArr = VIVO_MOBILE_MANAGER_APP_PACKAGE_NAMES;
        ArrayList arrayList = new ArrayList(strArr.length);
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            for (String str : strArr) {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
                if (launchIntentForPackage != null) {
                    arrayList.add(launchIntentForPackage);
                }
            }
        }
        return arrayList;
    }

    public static Intent getXiaoMiApplicationPermissionPageIntent(Context context) {
        return new Intent("miui.intent.action.APP_PERM_EDITOR").putExtra("extra_pkgname", context.getPackageName());
    }

    public static List<Intent> getXiaoMiMobileManagerAppIntent(Context context) {
        String[] strArr = XIAO_MI_MOBILE_MANAGER_APP_PACKAGE_NAMES;
        ArrayList arrayList = new ArrayList(strArr.length + 2);
        arrayList.add(new Intent("miui.intent.action.APP_MANAGER"));
        arrayList.add(new Intent("miui.intent.action.SECURITY_CENTER"));
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            for (String str : strArr) {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
                if (launchIntentForPackage != null) {
                    arrayList.add(launchIntentForPackage);
                }
            }
        }
        return arrayList;
    }

    public static List<Intent> getCommonPermissionSettingIntent(Context context, IPermission... iPermissionArr) {
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(getApplicationDetailsSettingsIntent(context, iPermissionArr));
        arrayList.add(getManageApplicationSettingsIntent());
        arrayList.add(getApplicationSettingsIntent());
        arrayList.add(getAndroidSettingsIntent());
        return arrayList;
    }
}
