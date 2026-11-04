package com.hjq.permissions.permission.special;

import android.app.Activity;
import android.app.AlarmManager;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ScheduleExactAlarmPermission extends SpecialPermission {
    public static final Parcelable.Creator<ScheduleExactAlarmPermission> CREATOR = new Parcelable.Creator<ScheduleExactAlarmPermission>() { // from class: com.hjq.permissions.permission.special.ScheduleExactAlarmPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScheduleExactAlarmPermission createFromParcel(Parcel parcel) {
            return new ScheduleExactAlarmPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScheduleExactAlarmPermission[] newArray(int i10) {
            return new ScheduleExactAlarmPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.SCHEDULE_EXACT_ALARM";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        PermissionVersion.isAndroid13();
        if (PermissionVersion.getTargetSdkVersion(activity) < 33 || BasePermission.findPermissionInfoByList(list2, "android.permission.USE_EXACT_ALARM") == null) {
            BasePermission.checkPermissionRegistrationStatus(list2, getPermissionName());
        } else {
            BasePermission.checkPermissionRegistrationStatus(list2, getPermissionName(), 32);
        }
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 31;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.SCHEDULE_EXACT_ALARM";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(6);
        if (PermissionVersion.isAndroid12()) {
            Intent intent = new Intent("android.settings.REQUEST_SCHEDULE_EXACT_ALARM");
            intent.setData(getPackageNameUri(context));
            arrayList.add(intent);
            arrayList.add(new Intent("android.settings.REQUEST_SCHEDULE_EXACT_ALARM"));
        }
        arrayList.add(getApplicationDetailsSettingIntent(context));
        arrayList.add(BasePermission.getManageApplicationSettingIntent());
        arrayList.add(BasePermission.getApplicationSettingIntent());
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (!PermissionVersion.isAndroid12()) {
            return true;
        }
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(AlarmManager.class);
        if (alarmManager == null) {
            return false;
        }
        return alarmManager.canScheduleExactAlarms();
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return false;
    }

    public ScheduleExactAlarmPermission() {
    }

    private ScheduleExactAlarmPermission(Parcel parcel) {
        super(parcel);
    }
}
