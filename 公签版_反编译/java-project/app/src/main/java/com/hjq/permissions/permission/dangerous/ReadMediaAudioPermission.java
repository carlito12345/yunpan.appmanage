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
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionUtils;
import java.util.List;

/* loaded from: classes.dex */
public final class ReadMediaAudioPermission extends DangerousPermission {
    public static final Parcelable.Creator<ReadMediaAudioPermission> CREATOR = new Parcelable.Creator<ReadMediaAudioPermission>() { // from class: com.hjq.permissions.permission.dangerous.ReadMediaAudioPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadMediaAudioPermission createFromParcel(Parcel parcel) {
            return new ReadMediaAudioPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadMediaAudioPermission[] newArray(int i10) {
            return new ReadMediaAudioPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.READ_MEDIA_AUDIO";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (getFromAndroidVersion(activity) > BasePermission.getMinSdkVersion(activity, androidManifestInfo)) {
            BasePermission.checkPermissionRegistrationStatus(list2, "android.permission.READ_EXTERNAL_STORAGE", 32);
        }
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        if (PermissionUtils.containsPermission(list, "android.permission.READ_EXTERNAL_STORAGE")) {
            throw new IllegalArgumentException("You have added the \"" + getPermissionName() + "\" permission, please do not add the \"android.permission.READ_EXTERNAL_STORAGE\" permission, this conflicts with the framework's automatic compatibility policy.");
        }
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 33;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public List<IPermission> getOldPermissions(Context context) {
        return PermissionUtils.asArrayList(PermissionLists.getReadExternalStoragePermission());
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.READ_MEDIA_AUDIO";
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByLowVersion(Activity activity) {
        return PermissionLists.getReadExternalStoragePermission().isDoNotAskAgainPermission(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByLowVersion(Context context, boolean z) {
        return PermissionLists.getReadExternalStoragePermission().isGrantedPermission(context, z);
    }

    public ReadMediaAudioPermission() {
    }

    private ReadMediaAudioPermission(Parcel parcel) {
        super(parcel);
    }
}
