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
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionUtils;
import java.util.List;

/* loaded from: classes.dex */
public final class ReadPhoneNumbersPermission extends DangerousPermission {
    public static final Parcelable.Creator<ReadPhoneNumbersPermission> CREATOR = new Parcelable.Creator<ReadPhoneNumbersPermission>() { // from class: com.hjq.permissions.permission.dangerous.ReadPhoneNumbersPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadPhoneNumbersPermission createFromParcel(Parcel parcel) {
            return new ReadPhoneNumbersPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadPhoneNumbersPermission[] newArray(int i10) {
            return new ReadPhoneNumbersPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.READ_PHONE_NUMBERS";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (getFromAndroidVersion(activity) > BasePermission.getMinSdkVersion(activity, androidManifestInfo)) {
            BasePermission.checkPermissionRegistrationStatus(list2, PermissionNames.READ_PHONE_STATE, 25);
        }
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 26;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public List<IPermission> getOldPermissions(Context context) {
        return PermissionUtils.asArrayList(PermissionLists.getReadPhoneStatePermission());
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public String getPermissionGroup(Context context) {
        return PermissionGroups.PHONE;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.READ_PHONE_NUMBERS";
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByLowVersion(Activity activity) {
        return PermissionLists.getReadPhoneStatePermission().isDoNotAskAgainPermission(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByLowVersion(Context context, boolean z) {
        return PermissionLists.getReadPhoneStatePermission().isGrantedPermission(context, z);
    }

    public ReadPhoneNumbersPermission() {
    }

    private ReadPhoneNumbersPermission(Parcel parcel) {
        super(parcel);
    }
}
