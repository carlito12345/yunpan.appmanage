package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.tools.PermissionUtils;
import java.util.List;

/* loaded from: classes.dex */
public final class ReadHealthRatePermission extends HealthDataBasePermission {
    public static final Parcelable.Creator<ReadHealthRatePermission> CREATOR = new Parcelable.Creator<ReadHealthRatePermission>() { // from class: com.hjq.permissions.permission.dangerous.ReadHealthRatePermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadHealthRatePermission createFromParcel(Parcel parcel) {
            return new ReadHealthRatePermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadHealthRatePermission[] newArray(int i10) {
            return new ReadHealthRatePermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.health.READ_HEART_RATE";

    @Override // com.hjq.permissions.permission.dangerous.HealthDataBasePermission, com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (getFromAndroidVersion(activity) > BasePermission.getMinSdkVersion(activity, androidManifestInfo)) {
            BasePermission.checkPermissionRegistrationStatus(list2, "android.permission.BODY_SENSORS", 33);
        }
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 34;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public List<IPermission> getOldPermissions(Context context) {
        return PermissionUtils.asArrayList(PermissionLists.getBodySensorsPermission());
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.health.READ_HEART_RATE";
    }

    public ReadHealthRatePermission() {
    }

    private ReadHealthRatePermission(Parcel parcel) {
        super(parcel);
    }
}
