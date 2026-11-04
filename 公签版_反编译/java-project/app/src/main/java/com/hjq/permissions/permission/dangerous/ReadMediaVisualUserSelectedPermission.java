package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.permission.PermissionGroups;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionUtils;
import java.util.List;

/* loaded from: classes.dex */
public final class ReadMediaVisualUserSelectedPermission extends DangerousPermission {
    public static final Parcelable.Creator<ReadMediaVisualUserSelectedPermission> CREATOR = new Parcelable.Creator<ReadMediaVisualUserSelectedPermission>() { // from class: com.hjq.permissions.permission.dangerous.ReadMediaVisualUserSelectedPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadMediaVisualUserSelectedPermission createFromParcel(Parcel parcel) {
            return new ReadMediaVisualUserSelectedPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadMediaVisualUserSelectedPermission[] newArray(int i10) {
            return new ReadMediaVisualUserSelectedPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.READ_MEDIA_VISUAL_USER_SELECTED";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        if (PermissionUtils.containsPermission(list, "android.permission.READ_MEDIA_IMAGES") || PermissionUtils.containsPermission(list, "android.permission.READ_MEDIA_VIDEO")) {
            return;
        }
        throw new IllegalArgumentException("You cannot request the \"" + getPermissionName() + "\" permission alone. must add either \"android.permission.READ_MEDIA_IMAGES\" or \"android.permission.READ_MEDIA_VIDEO\" permission, or maybe both");
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 34;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public int getMinTargetSdkVersion(Context context) {
        return 33;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public String getPermissionGroup(Context context) {
        return PermissionGroups.IMAGE_AND_VIDEO_MEDIA;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.READ_MEDIA_VISUAL_USER_SELECTED";
    }

    public ReadMediaVisualUserSelectedPermission() {
    }

    private ReadMediaVisualUserSelectedPermission(Parcel parcel) {
        super(parcel);
    }
}
