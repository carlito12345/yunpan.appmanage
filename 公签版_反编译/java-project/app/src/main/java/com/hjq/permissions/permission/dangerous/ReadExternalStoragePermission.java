package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.ApplicationManifestInfo;
import com.hjq.permissions.manifest.node.MetaDataManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionGroups;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.List;

/* loaded from: classes.dex */
public final class ReadExternalStoragePermission extends DangerousPermission {
    public static final Parcelable.Creator<ReadExternalStoragePermission> CREATOR = new Parcelable.Creator<ReadExternalStoragePermission>() { // from class: com.hjq.permissions.permission.dangerous.ReadExternalStoragePermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadExternalStoragePermission createFromParcel(Parcel parcel) {
            return new ReadExternalStoragePermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadExternalStoragePermission[] newArray(int i10) {
            return new ReadExternalStoragePermission[i10];
        }
    };
    static final String META_DATA_KEY_SCOPED_STORAGE = "ScopedStorage";
    public static final String PERMISSION_NAME = "android.permission.READ_EXTERNAL_STORAGE";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        ApplicationManifestInfo applicationManifestInfo;
        boolean z;
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (PermissionUtils.containsPermission(list, "android.permission.ACCESS_MEDIA_LOCATION") || (applicationManifestInfo = androidManifestInfo.applicationInfo) == null) {
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

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        if (PermissionVersion.getTargetSdkVersion(activity) >= 33) {
            throw new IllegalArgumentException("When the project targetSdkVersion >= 33, the \"android.permission.READ_EXTERNAL_STORAGE\" permission cannot be applied for, and some problems will occur.Because after testing, if targetSdkVersion >= 33 applies for \"android.permission.READ_EXTERNAL_STORAGE\" or \"android.permission.WRITE_EXTERNAL_STORAGE\", it will be directly rejected by the system and no authorization dialog box will be displayed.If the App has been adapted for scoped storage, the should be requested \"android.permission.READ_MEDIA_IMAGES\" or \"android.permission.READ_MEDIA_VIDEO\" or \"android.permission.READ_MEDIA_AUDIO\" permission.If the App does not need to adapt scoped storage, the should be requested \"android.permission.MANAGE_EXTERNAL_STORAGE\" permission");
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
        return "android.permission.READ_EXTERNAL_STORAGE";
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByStandardVersion(Activity activity) {
        return (!PermissionVersion.isAndroid13() || PermissionVersion.getTargetSdkVersion(activity) < 33) ? super.isDoNotAskAgainPermissionByStandardVersion(activity) : PermissionLists.getReadMediaImagesPermission().isDoNotAskAgainPermission(activity) && PermissionLists.getReadMediaVideoPermission().isDoNotAskAgainPermission(activity) && PermissionLists.getReadMediaAudioPermission().isDoNotAskAgainPermission(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByStandardVersion(Context context, boolean z) {
        return (!PermissionVersion.isAndroid13() || PermissionVersion.getTargetSdkVersion(context) < 33) ? super.isGrantedPermissionByStandardVersion(context, z) : PermissionLists.getReadMediaImagesPermission().isGrantedPermission(context, z) && PermissionLists.getReadMediaVideoPermission().isGrantedPermission(context, z) && PermissionLists.getReadMediaAudioPermission().isGrantedPermission(context, z);
    }

    public ReadExternalStoragePermission() {
    }

    private ReadExternalStoragePermission(Parcel parcel) {
        super(parcel);
    }
}
