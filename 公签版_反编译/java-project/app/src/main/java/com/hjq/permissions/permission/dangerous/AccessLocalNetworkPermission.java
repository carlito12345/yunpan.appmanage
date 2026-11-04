package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionGroups;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import java.util.List;

/* loaded from: classes.dex */
public final class AccessLocalNetworkPermission extends DangerousPermission {
    public static final Parcelable.Creator<AccessLocalNetworkPermission> CREATOR = new Parcelable.Creator<AccessLocalNetworkPermission>() { // from class: com.hjq.permissions.permission.dangerous.AccessLocalNetworkPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessLocalNetworkPermission createFromParcel(Parcel parcel) {
            return new AccessLocalNetworkPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessLocalNetworkPermission[] newArray(int i10) {
            return new AccessLocalNetworkPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.ACCESS_LOCAL_NETWORK";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (getFromAndroidVersion(activity) > BasePermission.getMinSdkVersion(activity, androidManifestInfo)) {
            BasePermission.checkPermissionRegistrationStatus(list2, "android.permission.INTERNET");
        }
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 37;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public String getPermissionGroup(Context context) {
        return PermissionGroups.NEARBY_DEVICES;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.ACCESS_LOCAL_NETWORK";
    }

    public AccessLocalNetworkPermission() {
    }

    private AccessLocalNetworkPermission(Parcel parcel) {
        super(parcel);
    }
}
