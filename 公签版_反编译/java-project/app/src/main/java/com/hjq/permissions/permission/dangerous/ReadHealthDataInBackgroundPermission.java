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
import com.hjq.permissions.tools.PermissionApi;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.List;

/* loaded from: classes.dex */
public final class ReadHealthDataInBackgroundPermission extends HealthDataBasePermission {
    public static final Parcelable.Creator<ReadHealthDataInBackgroundPermission> CREATOR = new Parcelable.Creator<ReadHealthDataInBackgroundPermission>() { // from class: com.hjq.permissions.permission.dangerous.ReadHealthDataInBackgroundPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadHealthDataInBackgroundPermission createFromParcel(Parcel parcel) {
            return new ReadHealthDataInBackgroundPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadHealthDataInBackgroundPermission[] newArray(int i10) {
            return new ReadHealthDataInBackgroundPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND";

    @Override // com.hjq.permissions.permission.dangerous.HealthDataBasePermission, com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (getFromAndroidVersion(activity) > BasePermission.getMinSdkVersion(activity, androidManifestInfo)) {
            BasePermission.checkPermissionRegistrationStatus(list2, "android.permission.BODY_SENSORS_BACKGROUND", 34);
        }
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < list.size(); i13++) {
            IPermission iPermission = list.get(i13);
            if (PermissionUtils.equalsPermission(iPermission, this)) {
                i11 = i13;
            } else if (PermissionUtils.equalsPermission(iPermission, "android.permission.health.READ_HEALTH_DATA_HISTORY")) {
                i10 = i13;
            } else if (PermissionApi.isHealthPermission(iPermission)) {
                i12 = i13;
            }
        }
        if (i10 != -1 && i10 > i11) {
            throw new IllegalArgumentException("Please place the " + getPermissionName() + "\" permission after the \"android.permission.health.READ_HEALTH_DATA_HISTORY\" permission");
        }
        if (i12 == -1 || i12 <= i11) {
            return;
        }
        throw new IllegalArgumentException("Please place the \"" + getPermissionName() + "\" permission after the \"" + list.get(i12) + "\" permission");
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 35;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public List<IPermission> getOldPermissions(Context context) {
        if (PermissionVersion.isAndroid14()) {
            return null;
        }
        return PermissionUtils.asArrayList(PermissionLists.getBodySensorsBackgroundPermission());
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND";
    }

    public ReadHealthDataInBackgroundPermission() {
    }

    private ReadHealthDataInBackgroundPermission(Parcel parcel) {
        super(parcel);
    }
}
