package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.ApplicationManifestInfo;
import com.hjq.permissions.manifest.node.MetaDataManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionGroups;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.List;

/* loaded from: classes.dex */
public final class WriteExternalStoragePermission extends DangerousPermission {
    public static final Parcelable.Creator<WriteExternalStoragePermission> CREATOR = new Parcelable.Creator<WriteExternalStoragePermission>() { // from class: com.hjq.permissions.permission.dangerous.WriteExternalStoragePermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WriteExternalStoragePermission createFromParcel(Parcel parcel) {
            return new WriteExternalStoragePermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WriteExternalStoragePermission[] newArray(int i10) {
            return new WriteExternalStoragePermission[i10];
        }
    };
    static final String META_DATA_KEY_SCOPED_STORAGE = "ScopedStorage";
    public static final String PERMISSION_NAME = "android.permission.WRITE_EXTERNAL_STORAGE";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        boolean z;
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        ApplicationManifestInfo applicationManifestInfo = androidManifestInfo.applicationInfo;
        if (applicationManifestInfo == null) {
            return;
        }
        if (PermissionVersion.getTargetSdkVersion(activity) < 29) {
            BasePermission.checkPermissionRegistrationStatus(list2, getPermissionName());
            return;
        }
        if (PermissionVersion.getTargetSdkVersion(activity) < 30 || BasePermission.findPermissionInfoByList(list2, "android.permission.MANAGE_EXTERNAL_STORAGE") == null) {
            BasePermission.checkPermissionRegistrationStatus(list2, getPermissionName(), applicationManifestInfo.requestLegacyExternalStorage ? 29 : 28);
        } else {
            BasePermission.checkPermissionRegistrationStatus(list2, getPermissionName(), 29);
        }
        if (PermissionUtils.containsPermission(list, "android.permission.ACCESS_MEDIA_LOCATION")) {
            return;
        }
        int targetSdkVersion = PermissionVersion.getTargetSdkVersion(activity);
        List<MetaDataManifestInfo> list3 = applicationManifestInfo.metaDataInfoList;
        if (list3 != null) {
            for (MetaDataManifestInfo metaDataManifestInfo : list3) {
                if (META_DATA_KEY_SCOPED_STORAGE.equals(metaDataManifestInfo.name)) {
                    z = Boolean.parseBoolean(metaDataManifestInfo.value);
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        if (targetSdkVersion >= 29 && !applicationManifestInfo.requestLegacyExternalStorage && !z) {
            throw new IllegalStateException("Please register the android:requestLegacyExternalStorage=\"true\" attribute in the AndroidManifest.xml file, otherwise it will cause incompatibility with the old version");
        }
        if (targetSdkVersion >= 30 && !z) {
            throw new IllegalArgumentException("The storage permission application is abnormal. If you have adapted the scope storage, please register the <meta-data android:name=\"ScopedStorage\" android:value=\"true\" /> attribute in the AndroidManifest.xml file. If there is no adaptation scope storage, please use \"android.permission.MANAGE_EXTERNAL_STORAGE\" to apply for permission");
        }
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 23;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public String getPermissionGroup(Context context) {
        return PermissionGroups.STORAGE;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.WRITE_EXTERNAL_STORAGE";
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByStandardVersion(Activity activity) {
        if (PermissionVersion.isAndroid11() && PermissionVersion.getTargetSdkVersion(activity) >= 30) {
            return false;
        }
        if (PermissionVersion.getTargetSdkVersion(activity) < 29 || !PermissionVersion.isAndroid10() || Environment.isExternalStorageLegacy()) {
            return super.isDoNotAskAgainPermissionByStandardVersion(activity);
        }
        return false;
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByStandardVersion(Context context, boolean z) {
        if (PermissionVersion.isAndroid11() && PermissionVersion.getTargetSdkVersion(context) >= 30) {
            return true;
        }
        if (PermissionVersion.getTargetSdkVersion(context) < 29 || !PermissionVersion.isAndroid10() || Environment.isExternalStorageLegacy()) {
            return super.isGrantedPermissionByStandardVersion(context, z);
        }
        return true;
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return false;
    }

    public WriteExternalStoragePermission() {
    }

    private WriteExternalStoragePermission(Parcel parcel) {
        super(parcel);
    }
}
