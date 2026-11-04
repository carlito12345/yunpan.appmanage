package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.permission.PermissionGroups;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.List;

/* loaded from: classes.dex */
public final class BodySensorsPermission extends DangerousPermission {
    public static final Parcelable.Creator<BodySensorsPermission> CREATOR = new Parcelable.Creator<BodySensorsPermission>() { // from class: com.hjq.permissions.permission.dangerous.BodySensorsPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BodySensorsPermission createFromParcel(Parcel parcel) {
            return new BodySensorsPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BodySensorsPermission[] newArray(int i10) {
            return new BodySensorsPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.BODY_SENSORS";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        if (PermissionVersion.getTargetSdkVersion(activity) < 36) {
            return;
        }
        throw new IllegalArgumentException("When the project targetSdkVersion is greater than or equal to 36, the \"" + getPermissionName() + "\" permission cannot be requested, but the \"android.permission.health.READ_HEART_RATE\" permission should be requested instead");
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 23;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public String getPermissionGroup(Context context) {
        return PermissionGroups.SENSORS;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.BODY_SENSORS";
    }

    public BodySensorsPermission() {
    }

    private BodySensorsPermission(Parcel parcel) {
        super(parcel);
    }
}
