package com.hjq.permissions.permission.special;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class AccessNotificationPolicyPermission extends SpecialPermission {
    public static final Parcelable.Creator<AccessNotificationPolicyPermission> CREATOR = new Parcelable.Creator<AccessNotificationPolicyPermission>() { // from class: com.hjq.permissions.permission.special.AccessNotificationPolicyPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessNotificationPolicyPermission createFromParcel(Parcel parcel) {
            return new AccessNotificationPolicyPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessNotificationPolicyPermission[] newArray(int i10) {
            return new AccessNotificationPolicyPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.ACCESS_NOTIFICATION_POLICY";

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 23;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.ACCESS_NOTIFICATION_POLICY";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        int i10;
        int i11;
        ArrayList arrayList = new ArrayList(6);
        if (PermissionVersion.isAndroid10() && (i10 = o8.b.f11670j) != 1583864138 && i10 != -182666708 && i10 != -1801284559 && !o8.b.g() && (i11 = o8.a.f11660a) != 2141820391 && i11 != 68924490) {
            Intent intent = new Intent("android.settings.NOTIFICATION_POLICY_ACCESS_DETAIL_SETTINGS");
            intent.setData(getPackageNameUri(context));
            arrayList.add(intent);
        }
        if (PermissionVersion.isAndroid6()) {
            arrayList.add(new Intent("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"));
        }
        arrayList.add(getApplicationDetailsSettingIntent(context));
        arrayList.add(BasePermission.getManageApplicationSettingIntent());
        arrayList.add(BasePermission.getApplicationSettingIntent());
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (!PermissionVersion.isAndroid6()) {
            return true;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        if (notificationManager == null) {
            return false;
        }
        return notificationManager.isNotificationPolicyAccessGranted();
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return true;
    }

    public AccessNotificationPolicyPermission() {
    }

    private AccessNotificationPolicyPermission(Parcel parcel) {
        super(parcel);
    }
}
