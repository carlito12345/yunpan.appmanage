package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionGroups;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.PermissionNames;
import com.hjq.permissions.permission.PermissionPageType;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.List;
import o8.b;

/* loaded from: classes.dex */
public final class AccessBackgroundLocationPermission extends DangerousPermission {
    public static final Parcelable.Creator<AccessBackgroundLocationPermission> CREATOR = new Parcelable.Creator<AccessBackgroundLocationPermission>() { // from class: com.hjq.permissions.permission.dangerous.AccessBackgroundLocationPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessBackgroundLocationPermission createFromParcel(Parcel parcel) {
            return new AccessBackgroundLocationPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessBackgroundLocationPermission[] newArray(int i10) {
            return new AccessBackgroundLocationPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.ACCESS_BACKGROUND_LOCATION";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (PermissionVersion.getTargetSdkVersion(activity) < 31) {
            BasePermission.checkPermissionRegistrationStatus(list2, PermissionNames.ACCESS_FINE_LOCATION);
        } else {
            BasePermission.checkPermissionRegistrationStatus(list2, PermissionNames.ACCESS_COARSE_LOCATION);
            BasePermission.checkPermissionRegistrationStatus(list2, PermissionNames.ACCESS_FINE_LOCATION);
        }
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        if (PermissionVersion.getTargetSdkVersion(activity) >= 31 && PermissionUtils.containsPermission(list, PermissionNames.ACCESS_COARSE_LOCATION) && !PermissionUtils.containsPermission(list, PermissionNames.ACCESS_FINE_LOCATION)) {
            throw new IllegalArgumentException("Applying for background positioning permissions must include \"android.permission.ACCESS_FINE_LOCATION\"");
        }
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < list.size(); i13++) {
            IPermission iPermission = list.get(i13);
            if (PermissionUtils.equalsPermission(iPermission, this)) {
                i11 = i13;
            } else if (PermissionUtils.equalsPermission(iPermission, PermissionNames.ACCESS_FINE_LOCATION)) {
                i10 = i13;
            } else if (PermissionUtils.equalsPermission(iPermission, PermissionNames.ACCESS_COARSE_LOCATION)) {
                i12 = i13;
            }
        }
        if (i10 != -1 && i10 > i11) {
            throw new IllegalArgumentException("Please place the " + getPermissionName() + "\" permission after the \"android.permission.ACCESS_FINE_LOCATION\" permission");
        }
        if (i12 == -1 || i12 <= i11) {
            return;
        }
        throw new IllegalArgumentException("Please place the \"" + getPermissionName() + "\" permission after the \"android.permission.ACCESS_COARSE_LOCATION\" permission");
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public List<IPermission> getForegroundPermissions(Context context) {
        return PermissionVersion.isAndroid12() ? PermissionUtils.asArrayList(PermissionLists.getAccessFineLocationPermission(), PermissionLists.getAccessCoarseLocationPermission()) : PermissionUtils.asArrayList(PermissionLists.getAccessFineLocationPermission());
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 29;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public String getPermissionGroup(Context context) {
        return PermissionGroups.LOCATION;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.ACCESS_BACKGROUND_LOCATION";
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.IPermission
    public PermissionPageType getPermissionPageType(Context context) {
        int i10;
        return PermissionVersion.getSdkVersion() == getFromAndroidVersion(context) ? PermissionPageType.TRANSPARENT_ACTIVITY : (b.i() || b.k() || (i10 = b.f11670j) == -1801284559 || i10 == 1583864138 || i10 == -182666708 || b.g()) ? PermissionPageType.TRANSPARENT_ACTIVITY : PermissionPageType.OPAQUE_ACTIVITY;
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
        return PermissionLists.getAccessFineLocationPermission().isDoNotAskAgainPermission(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByStandardVersion(Activity activity) {
        if (PermissionVersion.isAndroid12()) {
            if (!PermissionLists.getAccessFineLocationPermission().isGrantedPermission(activity) && !PermissionLists.getAccessCoarseLocationPermission().isGrantedPermission(activity)) {
                return PermissionLists.getAccessFineLocationPermission().isDoNotAskAgainPermission(activity) && PermissionLists.getAccessCoarseLocationPermission().isDoNotAskAgainPermission(activity);
            }
        } else if (!PermissionLists.getAccessFineLocationPermission().isGrantedPermission(activity)) {
            return PermissionLists.getAccessFineLocationPermission().isDoNotAskAgainPermission(activity);
        }
        return super.isDoNotAskAgainPermissionByStandardVersion(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByLowVersion(Context context, boolean z) {
        return PermissionLists.getAccessFineLocationPermission().isGrantedPermission(context, z);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByStandardVersion(Context context, boolean z) {
        if (PermissionVersion.isAndroid12()) {
            if (!PermissionLists.getAccessFineLocationPermission().isGrantedPermission(context, z) && !PermissionLists.getAccessCoarseLocationPermission().isGrantedPermission(context, z)) {
                return false;
            }
        } else if (!PermissionLists.getAccessFineLocationPermission().isGrantedPermission(context, z)) {
            return false;
        }
        return super.isGrantedPermissionByStandardVersion(context, z);
    }

    public AccessBackgroundLocationPermission() {
    }

    private AccessBackgroundLocationPermission(Parcel parcel) {
        super(parcel);
    }
}
