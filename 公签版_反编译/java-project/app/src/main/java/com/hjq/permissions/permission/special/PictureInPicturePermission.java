package com.hjq.permissions.permission.special;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.ActivityManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class PictureInPicturePermission extends SpecialPermission {
    public static final Parcelable.Creator<PictureInPicturePermission> CREATOR = new Parcelable.Creator<PictureInPicturePermission>() { // from class: com.hjq.permissions.permission.special.PictureInPicturePermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PictureInPicturePermission createFromParcel(Parcel parcel) {
            return new PictureInPicturePermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PictureInPicturePermission[] newArray(int i10) {
            return new PictureInPicturePermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.PICTURE_IN_PICTURE";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        List<ActivityManifestInfo> list3 = androidManifestInfo.activityInfoList;
        for (int i10 = 0; i10 < list3.size(); i10++) {
            if (list3.get(i10).supportsPictureInPicture) {
                return;
            }
        }
        throw new IllegalArgumentException("No Activity was found to have registered the android:supportsPictureInPicture=\"true\" property, Please register this property to " + activity.getClass().getName() + " class by AndroidManifest.xml file, otherwise it will lead to can't apply for the permission");
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 26;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.PICTURE_IN_PICTURE";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(6);
        if (PermissionVersion.isAndroid8()) {
            Intent intent = new Intent("android.settings.PICTURE_IN_PICTURE_SETTINGS");
            intent.setData(getPackageNameUri(context));
            arrayList.add(intent);
            arrayList.add(new Intent("android.settings.PICTURE_IN_PICTURE_SETTINGS"));
        }
        arrayList.add(getApplicationDetailsSettingIntent(context));
        arrayList.add(BasePermission.getManageApplicationSettingIntent());
        arrayList.add(BasePermission.getApplicationSettingIntent());
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (PermissionVersion.isAndroid8()) {
            return BasePermission.checkOpPermission(context, "android:picture_in_picture", true);
        }
        return true;
    }

    public PictureInPicturePermission() {
    }

    private PictureInPicturePermission(Parcel parcel) {
        super(parcel);
    }
}
