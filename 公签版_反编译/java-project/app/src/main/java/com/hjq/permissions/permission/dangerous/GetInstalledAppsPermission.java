package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionChannel;
import com.hjq.permissions.permission.PermissionPageType;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionSettingPage;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;
import o8.b;

/* loaded from: classes.dex */
public final class GetInstalledAppsPermission extends DangerousPermission {
    public static final Parcelable.Creator<GetInstalledAppsPermission> CREATOR = new Parcelable.Creator<GetInstalledAppsPermission>() { // from class: com.hjq.permissions.permission.dangerous.GetInstalledAppsPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetInstalledAppsPermission createFromParcel(Parcel parcel) {
            return new GetInstalledAppsPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GetInstalledAppsPermission[] newArray(int i10) {
            return new GetInstalledAppsPermission[i10];
        }
    };
    private static final int MIUI_OP_GET_INSTALLED_APPS_DEFAULT_VALUE = 10022;
    private static final String MIUI_OP_GET_INSTALLED_APPS_FIELD_NAME = "OP_GET_INSTALLED_APPS";
    private static final String ONE_UI_GET_APP_LIST_PERMISSION_NAME = "com.samsung.android.permission.GET_APP_LIST";
    public static final String PERMISSION_NAME = "com.android.permission.GET_INSTALLED_APPS";

    private String getOpsNameByFlyme(Context context) {
        return context.getPackageName() + "_op_56";
    }

    private static boolean isSupportRequestPermissionByFlyme() {
        if (!b.h()) {
            return false;
        }
        String str = b.l;
        if (str == null) {
            str = "";
        }
        return b.a(str) >= 9;
    }

    private static boolean isSupportRequestPermissionByMiui() {
        if (b.k()) {
            return BasePermission.isExistOpPermission(MIUI_OP_GET_INSTALLED_APPS_FIELD_NAME);
        }
        return false;
    }

    private static boolean isSupportRequestPermissionByOneUi(Context context) throws PackageManager.NameNotFoundException {
        if (!(b.f11670j == 76334938)) {
            return false;
        }
        try {
            PermissionInfo permissionInfo = context.getPackageManager().getPermissionInfo(ONE_UI_GET_APP_LIST_PERMISSION_NAME, 0);
            if (permissionInfo != null) {
                return (PermissionVersion.isAndroid9() ? permissionInfo.getProtection() : permissionInfo.protectionLevel & 15) == 1;
            }
        } catch (PackageManager.NameNotFoundException e7) {
            e7.printStackTrace();
        }
        return false;
    }

    private boolean isSupportRequestPermissionBySystem(Context context) throws PackageManager.NameNotFoundException {
        try {
            PermissionInfo permissionInfo = context.getPackageManager().getPermissionInfo(getPermissionName(), 0);
            if (permissionInfo != null) {
                return (PermissionVersion.isAndroid9() ? permissionInfo.getProtection() : permissionInfo.protectionLevel & 15) == 1;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "oem_installed_apps_runtime_permission_enable") == 1;
        } catch (Settings.SettingNotFoundException unused2) {
            return false;
        }
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (PermissionVersion.getTargetSdkVersion(activity) < 30) {
            return;
        }
        PermissionVersion.isAndroid11();
        if (BasePermission.findPermissionInfoByList(list2, "android.permission.QUERY_ALL_PACKAGES") == null && androidManifestInfo.queriesPackageList.isEmpty()) {
            throw new IllegalStateException(g.b.A("Please register permissions in the AndroidManifest.xml file <uses-permission android:name=\"", "android.permission.QUERY_ALL_PACKAGES", "\" />, or add the app package name to the <queries> tag in the AndroidManifest.xml file"));
        }
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 17;
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.IPermission
    public PermissionChannel getPermissionChannel(Context context) {
        if (PermissionVersion.isAndroid6()) {
            if (isSupportRequestPermissionBySystem(context)) {
                return PermissionChannel.REQUEST_PERMISSIONS;
            }
            if (isSupportRequestPermissionByOneUi(context)) {
                return PermissionChannel.START_ACTIVITY;
            }
            if (isSupportRequestPermissionByFlyme()) {
                return PermissionChannel.START_ACTIVITY;
            }
        }
        return PermissionChannel.START_ACTIVITY;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "com.android.permission.GET_INSTALLED_APPS";
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.IPermission
    public PermissionPageType getPermissionPageType(Context context) {
        return getPermissionChannel(context) == PermissionChannel.REQUEST_PERMISSIONS ? PermissionPageType.TRANSPARENT_ACTIVITY : PermissionPageType.OPAQUE_ACTIVITY;
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList();
        if ((b.j() && b.m()) || (b.l() && b.m())) {
            arrayList.add(PermissionSettingPage.getXiaoMiApplicationPermissionPageIntent(context));
        } else if (b.h()) {
            arrayList.add(PermissionSettingPage.getMeiZuApplicationPermissionPageIntent(context));
        }
        arrayList.add(getApplicationDetailsSettingIntent(context));
        arrayList.add(BasePermission.getManageApplicationSettingIntent());
        arrayList.add(BasePermission.getApplicationSettingIntent());
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.IPermission
    public boolean isDoNotAskAgainPermission(Activity activity) {
        if (PermissionVersion.isAndroid6()) {
            if (isSupportRequestPermissionBySystem(activity)) {
                return isDoNotAskAgainPermissionByStandardVersion(activity);
            }
            if (isSupportRequestPermissionByOneUi(activity)) {
                return false;
            }
        }
        if (PermissionVersion.isAndroid4_4() && b.k() && isSupportRequestPermissionByMiui() && b.m()) {
            return !r8.b.j(this, activity);
        }
        return false;
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (PermissionVersion.isAndroid6()) {
            if (isSupportRequestPermissionBySystem(context)) {
                return BasePermission.checkSelfPermission(context, getPermissionName());
            }
            if (isSupportRequestPermissionByOneUi(context)) {
                return BasePermission.checkSelfPermission(context, ONE_UI_GET_APP_LIST_PERMISSION_NAME);
            }
            if (isSupportRequestPermissionByFlyme()) {
                int i10 = Settings.Secure.getInt(context.getContentResolver(), getOpsNameByFlyme(context), -1);
                return i10 == 4 || i10 == 6;
            }
        }
        if (PermissionVersion.isAndroid4_4() && isSupportRequestPermissionByMiui() && b.m()) {
            return BasePermission.checkOpPermission(context, MIUI_OP_GET_INSTALLED_APPS_FIELD_NAME, MIUI_OP_GET_INSTALLED_APPS_DEFAULT_VALUE, true);
        }
        return true;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public boolean isSupportRequestPermission(Context context) {
        boolean zK = r8.b.k(this, context);
        if (zK) {
            if (PermissionVersion.isAndroid6() && (isSupportRequestPermissionBySystem(context) || isSupportRequestPermissionByOneUi(context))) {
                return true;
            }
            if (PermissionVersion.isAndroid4_4() && b.k() && isSupportRequestPermissionByMiui()) {
                return b.m();
            }
        }
        return zK;
    }

    public GetInstalledAppsPermission() {
    }

    private GetInstalledAppsPermission(Parcel parcel) {
        super(parcel);
    }
}
