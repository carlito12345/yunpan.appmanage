package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.List;

/* loaded from: classes.dex */
public final class AccessMediaLocationPermission extends DangerousPermission {
    public static final Parcelable.Creator<AccessMediaLocationPermission> CREATOR = new Parcelable.Creator<AccessMediaLocationPermission>() { // from class: com.hjq.permissions.permission.dangerous.AccessMediaLocationPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessMediaLocationPermission createFromParcel(Parcel parcel) {
            return new AccessMediaLocationPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessMediaLocationPermission[] newArray(int i10) {
            return new AccessMediaLocationPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.ACCESS_MEDIA_LOCATION";

    private boolean isGrantedReadMediaPermission(Context context, boolean z) {
        return (!PermissionVersion.isAndroid13() || PermissionVersion.getTargetSdkVersion(context) < 33) ? (!PermissionVersion.isAndroid11() || PermissionVersion.getTargetSdkVersion(context) < 30) ? PermissionLists.getReadExternalStoragePermission().isGrantedPermission(context, z) : PermissionLists.getReadExternalStoragePermission().isGrantedPermission(context, z) || PermissionLists.getManageExternalStoragePermission().isGrantedPermission(context, z) : PermissionLists.getReadMediaImagesPermission().isGrantedPermission(context, z) || PermissionLists.getReadMediaVideoPermission().isGrantedPermission(context, z) || PermissionLists.getManageExternalStoragePermission().isGrantedPermission(context, z);
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        int i16 = -1;
        for (int i17 = 0; i17 < list.size(); i17++) {
            IPermission iPermission = list.get(i17);
            if (PermissionUtils.equalsPermission(iPermission, this)) {
                i11 = i17;
            } else if (PermissionUtils.equalsPermission(iPermission, "android.permission.READ_MEDIA_IMAGES")) {
                i10 = i17;
            } else if (PermissionUtils.equalsPermission(iPermission, "android.permission.READ_MEDIA_VIDEO")) {
                i12 = i17;
            } else if (PermissionUtils.equalsPermission(iPermission, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED")) {
                i13 = i17;
            } else if (PermissionUtils.equalsPermission(iPermission, "android.permission.MANAGE_EXTERNAL_STORAGE")) {
                i14 = i17;
            } else if (PermissionUtils.equalsPermission(iPermission, "android.permission.READ_EXTERNAL_STORAGE")) {
                i15 = i17;
            } else if (PermissionUtils.equalsPermission(iPermission, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                i16 = i17;
            }
        }
        if (i10 != -1 && i10 > i11) {
            throw new IllegalArgumentException("Please place the " + getPermissionName() + "\" permission after the \"android.permission.READ_MEDIA_IMAGES\" permission");
        }
        if (i12 != -1 && i12 > i11) {
            throw new IllegalArgumentException("Please place the \"" + getPermissionName() + "\" permission after the \"android.permission.READ_MEDIA_VIDEO\" permission");
        }
        if (i13 != -1 && i13 > i11) {
            throw new IllegalArgumentException("Please place the \"" + getPermissionName() + "\" permission after the \"android.permission.READ_MEDIA_VISUAL_USER_SELECTED\" permission");
        }
        if (i14 != -1 && i14 > i11) {
            throw new IllegalArgumentException("Please place the \"" + getPermissionName() + "\" permission after the \"android.permission.MANAGE_EXTERNAL_STORAGE\" permission");
        }
        if (i15 != -1 && i15 > i11) {
            throw new IllegalArgumentException("Please place the \"" + getPermissionName() + "\" permission after the \"android.permission.READ_EXTERNAL_STORAGE\" permission");
        }
        if (i16 != -1 && i16 > i11) {
            throw new IllegalArgumentException("Please place the \"" + getPermissionName() + "\" permission after the \"android.permission.WRITE_EXTERNAL_STORAGE\" permission");
        }
        if (PermissionVersion.getTargetSdkVersion(activity) < 33) {
            if (PermissionUtils.containsPermission(list, "android.permission.READ_EXTERNAL_STORAGE") || PermissionUtils.containsPermission(list, "android.permission.MANAGE_EXTERNAL_STORAGE")) {
                return;
            }
            throw new IllegalArgumentException("You must add \"android.permission.READ_EXTERNAL_STORAGE\" or \"android.permission.MANAGE_EXTERNAL_STORAGE\" rights to apply for \"" + getPermissionName() + "\" rights");
        }
        if (PermissionUtils.containsPermission(list, "android.permission.READ_MEDIA_IMAGES") || PermissionUtils.containsPermission(list, "android.permission.READ_MEDIA_VIDEO") || PermissionUtils.containsPermission(list, "android.permission.MANAGE_EXTERNAL_STORAGE")) {
            return;
        }
        throw new IllegalArgumentException("You must add \"android.permission.READ_MEDIA_IMAGES\" or \"android.permission.READ_MEDIA_VIDEO\" or \"android.permission.MANAGE_EXTERNAL_STORAGE\" rights to apply for \"" + getPermissionName() + "\" rights");
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 29;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.ACCESS_MEDIA_LOCATION";
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByLowVersion(Activity activity) {
        return PermissionLists.getReadExternalStoragePermission().isDoNotAskAgainPermission(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByStandardVersion(Activity activity) {
        return isGrantedReadMediaPermission(activity, true) && super.isDoNotAskAgainPermissionByStandardVersion(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByLowVersion(Context context, boolean z) {
        return PermissionLists.getReadExternalStoragePermission().isGrantedPermission(context, z);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByStandardVersion(Context context, boolean z) {
        return isGrantedReadMediaPermission(context, z) && super.isGrantedPermissionByStandardVersion(context, z);
    }

    public AccessMediaLocationPermission() {
    }

    private AccessMediaLocationPermission(Parcel parcel) {
        super(parcel);
    }
}
