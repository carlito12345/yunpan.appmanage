package com.hjq.permissions.permission.special;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.ApplicationManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ManageExternalStoragePermission extends SpecialPermission {
    public static final Parcelable.Creator<ManageExternalStoragePermission> CREATOR = new Parcelable.Creator<ManageExternalStoragePermission>() { // from class: com.hjq.permissions.permission.special.ManageExternalStoragePermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ManageExternalStoragePermission createFromParcel(Parcel parcel) {
            return new ManageExternalStoragePermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ManageExternalStoragePermission[] newArray(int i10) {
            return new ManageExternalStoragePermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.MANAGE_EXTERNAL_STORAGE";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        ApplicationManifestInfo applicationManifestInfo;
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (getFromAndroidVersion(activity) > BasePermission.getMinSdkVersion(activity, androidManifestInfo)) {
            BasePermission.checkPermissionRegistrationStatus(list2, "android.permission.READ_EXTERNAL_STORAGE", 29);
            BasePermission.checkPermissionRegistrationStatus(list2, "android.permission.WRITE_EXTERNAL_STORAGE", 29);
        }
        if (!PermissionUtils.containsPermission(list, "android.permission.ACCESS_MEDIA_LOCATION") && (applicationManifestInfo = androidManifestInfo.applicationInfo) != null && PermissionVersion.getTargetSdkVersion(activity) >= 29 && !applicationManifestInfo.requestLegacyExternalStorage) {
            throw new IllegalStateException("Please register the android:requestLegacyExternalStorage=\"true\" attribute in the AndroidManifest.xml file, otherwise it will cause incompatibility with the old version");
        }
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        if (PermissionUtils.containsPermission(list, "android.permission.READ_EXTERNAL_STORAGE") || PermissionUtils.containsPermission(list, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            throw new IllegalArgumentException("If you have applied for \"" + getPermissionName() + "\" permissions, do not apply for the \"android.permission.READ_EXTERNAL_STORAGE\" or \"android.permission.WRITE_EXTERNAL_STORAGE\" permissions");
        }
        if (PermissionUtils.containsPermission(list, "android.permission.READ_MEDIA_IMAGES") || PermissionUtils.containsPermission(list, "android.permission.READ_MEDIA_VIDEO") || PermissionUtils.containsPermission(list, "android.permission.READ_MEDIA_AUDIO")) {
            throw new IllegalArgumentException("Because the \"" + getPermissionName() + "\" permission range is very large, you can read media files with it, and there is no need to apply for additional media permissions.");
        }
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 30;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public List<IPermission> getOldPermissions(Context context) {
        return PermissionUtils.asArrayList(PermissionLists.getReadExternalStoragePermission(), PermissionLists.getWriteExternalStoragePermission());
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.MANAGE_EXTERNAL_STORAGE";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(3);
        if (PermissionVersion.isAndroid11()) {
            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
            intent.setData(getPackageNameUri(context));
            arrayList.add(intent);
            arrayList.add(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"));
        }
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        return !PermissionVersion.isAndroid11() ? (!PermissionVersion.isAndroid10() || Environment.isExternalStorageLegacy()) && PermissionLists.getReadExternalStoragePermission().isGrantedPermission(context, z) && PermissionLists.getWriteExternalStoragePermission().isGrantedPermission(context, z) : Environment.isExternalStorageManager();
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return true;
    }

    public ManageExternalStoragePermission() {
    }

    private ManageExternalStoragePermission(Parcel parcel) {
        super(parcel);
    }
}
