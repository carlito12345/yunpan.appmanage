package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.a;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionGroups;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.PermissionNames;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import g.b;
import java.util.List;

/* loaded from: classes.dex */
public final class BluetoothScanPermission extends DangerousPermission {
    public static final Parcelable.Creator<BluetoothScanPermission> CREATOR = new Parcelable.Creator<BluetoothScanPermission>() { // from class: com.hjq.permissions.permission.dangerous.BluetoothScanPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothScanPermission createFromParcel(Parcel parcel) {
            return new BluetoothScanPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothScanPermission[] newArray(int i10) {
            return new BluetoothScanPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.BLUETOOTH_SCAN";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (getFromAndroidVersion(activity) > BasePermission.getMinSdkVersion(activity, androidManifestInfo)) {
            BasePermission.checkPermissionRegistrationStatus(list2, "android.permission.BLUETOOTH_ADMIN", 30);
            BasePermission.checkPermissionRegistrationStatus(list2, PermissionNames.ACCESS_FINE_LOCATION, 30);
        }
        if (PermissionUtils.containsPermission(list, PermissionNames.ACCESS_FINE_LOCATION) || permissionManifestInfo == null || permissionManifestInfo.neverForLocation()) {
            return;
        }
        String strS = permissionManifestInfo.maxSdkVersion != Integer.MAX_VALUE ? a.s(new StringBuilder("android:maxSdkVersion=\""), permissionManifestInfo.maxSdkVersion, "\" ") : "";
        StringBuilder sb2 = new StringBuilder("If your app doesn't use ");
        sb2.append(permissionManifestInfo.name);
        sb2.append(" to get physical location, please change the <uses-permission android:name=\"");
        a.C(sb2, permissionManifestInfo.name, "\" ", strS, "/> node in the manifest file to <uses-permission android:name=\"");
        a.C(sb2, permissionManifestInfo.name, "\" android:usesPermissionFlags=\"neverForLocation\" ", strS, "/> node, if your app need use \"");
        throw new IllegalArgumentException(b.l(permissionManifestInfo.name, "\" to get physical location, also need to add \"android.permission.ACCESS_FINE_LOCATION\" permissions", sb2));
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 31;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public int getMinTargetSdkVersion(Context context) {
        return 23;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public List<IPermission> getOldPermissions(Context context) {
        return PermissionUtils.asArrayList(PermissionLists.getAccessFineLocationPermission());
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public String getPermissionGroup(Context context) {
        return PermissionVersion.isAndroid12() ? PermissionGroups.NEARBY_DEVICES : PermissionGroups.LOCATION;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.BLUETOOTH_SCAN";
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByLowVersion(Activity activity) {
        return PermissionLists.getAccessFineLocationPermission().isDoNotAskAgainPermission(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByLowVersion(Context context, boolean z) {
        return PermissionLists.getAccessFineLocationPermission().isGrantedPermission(context, z);
    }

    public BluetoothScanPermission() {
    }

    private BluetoothScanPermission(Parcel parcel) {
        super(parcel);
    }
}
