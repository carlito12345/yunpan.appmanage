package com.hjq.permissions.permission.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import com.hjq.permissions.manager.AlreadyRequestPermissionsManager;
import com.hjq.permissions.permission.PermissionChannel;
import com.hjq.permissions.permission.PermissionPageType;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.tools.PermissionSettingPage;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;
import o8.b;

/* loaded from: classes.dex */
public abstract class DangerousPermission extends BasePermission {
    public DangerousPermission() {
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public PermissionChannel getPermissionChannel(Context context) {
        return PermissionChannel.REQUEST_PERMISSIONS;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public PermissionPageType getPermissionPageType(Context context) {
        return PermissionPageType.TRANSPARENT_ACTIVITY;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(5);
        if (b.l() && b.m()) {
            arrayList.add(PermissionSettingPage.getXiaoMiApplicationPermissionPageIntent(context));
        } else if (b.j() && b.m()) {
            String str = b.l;
            if (str == null) {
                str = "";
            }
            if (!str.matches("^2\\.0\\.[0-5]\\.\\d+$")) {
                arrayList.add(PermissionSettingPage.getXiaoMiApplicationPermissionPageIntent(context));
            }
        } else if (b.h()) {
            arrayList.add(PermissionSettingPage.getMeiZuApplicationPermissionPageIntent(context));
        }
        arrayList.add(getApplicationDetailsSettingIntent(context));
        arrayList.add(BasePermission.getManageApplicationSettingIntent());
        arrayList.add(BasePermission.getApplicationSettingIntent());
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isDoNotAskAgainPermission(Activity activity) {
        return getFromAndroidVersion(activity) > PermissionVersion.getSdkVersion() ? isDoNotAskAgainPermissionByLowVersion(activity) : isDoNotAskAgainPermissionByStandardVersion(activity);
    }

    public boolean isDoNotAskAgainPermissionByLowVersion(Activity activity) {
        return false;
    }

    public boolean isDoNotAskAgainPermissionByStandardVersion(Activity activity) {
        return PermissionVersion.isAndroid6() && AlreadyRequestPermissionsManager.isAlreadyRequestPermissions(this) && !BasePermission.checkSelfPermission(activity, getPermissionName()) && !BasePermission.shouldShowRequestPermissionRationale(activity, getPermissionName());
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        return getFromAndroidVersion(context) > PermissionVersion.getSdkVersion() ? isGrantedPermissionByLowVersion(context, z) : isGrantedPermissionByStandardVersion(context, z);
    }

    public boolean isGrantedPermissionByLowVersion(Context context, boolean z) {
        return true;
    }

    public boolean isGrantedPermissionByStandardVersion(Context context, boolean z) {
        if (PermissionVersion.isAndroid6()) {
            return BasePermission.checkSelfPermission(context, getPermissionName());
        }
        return true;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return true;
    }

    public DangerousPermission(Parcel parcel) {
        super(parcel);
    }
}
