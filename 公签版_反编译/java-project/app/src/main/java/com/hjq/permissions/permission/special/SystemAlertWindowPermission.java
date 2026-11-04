package com.hjq.permissions.permission.special;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionSettingPage;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class SystemAlertWindowPermission extends SpecialPermission {
    public static final Parcelable.Creator<SystemAlertWindowPermission> CREATOR = new Parcelable.Creator<SystemAlertWindowPermission>() { // from class: com.hjq.permissions.permission.special.SystemAlertWindowPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SystemAlertWindowPermission createFromParcel(Parcel parcel) {
            return new SystemAlertWindowPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SystemAlertWindowPermission[] newArray(int i10) {
            return new SystemAlertWindowPermission[i10];
        }
    };
    private static final int OP_SYSTEM_ALERT_WINDOW_DEFAULT_VALUE = 24;
    private static final String OP_SYSTEM_ALERT_WINDOW_FIELD_NAME = "OP_SYSTEM_ALERT_WINDOW";
    public static final String PERMISSION_NAME = "android.permission.SYSTEM_ALERT_WINDOW";

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 17;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.SYSTEM_ALERT_WINDOW";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(7);
        if (PermissionVersion.isAndroid6()) {
            if (PermissionVersion.isAndroid11() && !o8.b.i() && o8.b.k() && o8.b.m()) {
                arrayList.add(PermissionSettingPage.getXiaoMiApplicationPermissionPageIntent(context));
            } else if (o8.b.h()) {
                arrayList.add(PermissionSettingPage.getMeiZuApplicationPermissionPageIntent(context));
            }
            Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
            intent.setData(getPackageNameUri(context));
            arrayList.add(intent);
            arrayList.add(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION"));
        } else if (o8.b.g()) {
            Intent intent2 = new Intent();
            intent2.setClassName("com.huawei.systemmanager", "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity");
            Intent intent3 = new Intent();
            intent3.setClassName("com.huawei.systemmanager", "com.huawei.notificationmanager.ui.NotificationManagmentActivity");
            String str = o8.b.l;
            if (str == null) {
                str = "";
            }
            if (str.startsWith("3.0")) {
                arrayList.add(intent3);
                arrayList.add(intent2);
            } else {
                arrayList.add(intent2);
                arrayList.add(intent3);
            }
            arrayList.addAll(PermissionSettingPage.getHuaWeiMobileManagerAppIntent(context));
        } else if (o8.b.k()) {
            if (o8.b.m()) {
                arrayList.add(PermissionSettingPage.getXiaoMiApplicationPermissionPageIntent(context));
            }
            arrayList.addAll(PermissionSettingPage.getXiaoMiMobileManagerAppIntent(context));
        } else if (o8.b.h()) {
            arrayList.add(PermissionSettingPage.getMeiZuApplicationPermissionPageIntent(context));
        } else {
            int i10 = o8.b.f11670j;
            if (i10 == -1680767897) {
                Intent intent4 = new Intent();
                intent4.setClassName("com.oppo.safe", "com.oppo.safe.permission.PermissionTopActivity");
                arrayList.add(intent4);
                arrayList.addAll(PermissionSettingPage.getOppoSafeCenterAppIntent(context));
            } else if (i10 == -294058204) {
                arrayList.addAll(PermissionSettingPage.getVivoMobileManagerAppIntent(context));
            } else if (i10 == 76334938) {
                arrayList.add(PermissionSettingPage.getOneUiPermissionPageIntent(context));
            } else if (i10 == 1805724132 && !PermissionVersion.isAndroid5_1()) {
                arrayList.addAll(PermissionSettingPage.getSmartisanPermissionPageIntent());
                arrayList.addAll(PermissionSettingPage.getSmartisanSecurityCenterAppIntent(context));
            }
        }
        arrayList.add(getApplicationDetailsSettingIntent(context));
        arrayList.add(BasePermission.getManageApplicationSettingIntent());
        arrayList.add(BasePermission.getApplicationSettingIntent());
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (PermissionVersion.isAndroid6()) {
            return Settings.canDrawOverlays(context);
        }
        if (PermissionVersion.isAndroid4_4()) {
            return BasePermission.checkOpPermission(context, OP_SYSTEM_ALERT_WINDOW_FIELD_NAME, 24, true);
        }
        return true;
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return true;
    }

    public SystemAlertWindowPermission() {
    }

    private SystemAlertWindowPermission(Parcel parcel) {
        super(parcel);
    }
}
