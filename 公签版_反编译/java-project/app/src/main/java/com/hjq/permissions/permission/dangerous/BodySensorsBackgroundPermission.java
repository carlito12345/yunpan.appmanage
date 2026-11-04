package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionGroups;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.PermissionPageType;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.List;
import o8.b;

/* loaded from: classes.dex */
public final class BodySensorsBackgroundPermission extends DangerousPermission {
    public static final Parcelable.Creator<BodySensorsBackgroundPermission> CREATOR = new Parcelable.Creator<BodySensorsBackgroundPermission>() { // from class: com.hjq.permissions.permission.dangerous.BodySensorsBackgroundPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BodySensorsBackgroundPermission createFromParcel(Parcel parcel) {
            return new BodySensorsBackgroundPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BodySensorsBackgroundPermission[] newArray(int i10) {
            return new BodySensorsBackgroundPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.BODY_SENSORS_BACKGROUND";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        BasePermission.checkPermissionRegistrationStatus(list2, "android.permission.BODY_SENSORS");
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        if (PermissionVersion.getTargetSdkVersion(activity) >= 36) {
            throw new IllegalArgumentException("When the project targetSdkVersion is greater than or equal to 36, the \"" + getPermissionName() + "\" permission cannot be requested, but the \"android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND\" permission should be requested instead");
        }
        if (!PermissionUtils.containsPermission(list, "android.permission.BODY_SENSORS")) {
            throw new IllegalArgumentException("Applying for background sensor permissions must contain \"android.permission.BODY_SENSORS\"");
        }
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < list.size(); i12++) {
            IPermission iPermission = list.get(i12);
            if (PermissionUtils.equalsPermission(iPermission, this)) {
                i11 = i12;
            } else if (PermissionUtils.equalsPermission(iPermission, "android.permission.BODY_SENSORS")) {
                i10 = i12;
            }
        }
        if (i10 == -1 || i10 <= i11) {
            return;
        }
        throw new IllegalArgumentException("Please place the " + getPermissionName() + "\" permission after the \"android.permission.BODY_SENSORS\" permission");
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public List<IPermission> getForegroundPermissions(Context context) {
        return PermissionUtils.asArrayList(PermissionLists.getBodySensorsPermission());
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 33;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public String getPermissionGroup(Context context) {
        return PermissionGroups.SENSORS;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.BODY_SENSORS_BACKGROUND";
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.IPermission
    public PermissionPageType getPermissionPageType(Context context) {
        int i10;
        return (b.i() || b.k() || (i10 = b.f11670j) == -1801284559 || i10 == 1583864138 || i10 == -182666708 || b.g()) ? PermissionPageType.TRANSPARENT_ACTIVITY : PermissionPageType.OPAQUE_ACTIVITY;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public int getRequestIntervalTime(Context context) {
        return r8.b.k(this, context) ? 150 : 0;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public boolean isBackgroundPermission(Context context) {
        return true;
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByLowVersion(Activity activity) {
        return PermissionLists.getBodySensorsPermission().isDoNotAskAgainPermission(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByStandardVersion(Activity activity) {
        return !PermissionLists.getBodySensorsPermission().isGrantedPermission(activity) ? PermissionLists.getBodySensorsPermission().isDoNotAskAgainPermission(activity) : super.isDoNotAskAgainPermissionByStandardVersion(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByLowVersion(Context context, boolean z) {
        return PermissionLists.getBodySensorsPermission().isGrantedPermission(context, z);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByStandardVersion(Context context, boolean z) {
        if (PermissionLists.getBodySensorsPermission().isGrantedPermission(context, z)) {
            return super.isGrantedPermissionByStandardVersion(context, z);
        }
        return false;
    }

    public BodySensorsBackgroundPermission() {
    }

    private BodySensorsBackgroundPermission(Parcel parcel) {
        super(parcel);
    }
}
