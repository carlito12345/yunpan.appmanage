package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionUtils;
import java.util.List;

/* loaded from: classes.dex */
public final class PostNotificationsPermission extends DangerousPermission {
    public static final Parcelable.Creator<PostNotificationsPermission> CREATOR = new Parcelable.Creator<PostNotificationsPermission>() { // from class: com.hjq.permissions.permission.dangerous.PostNotificationsPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PostNotificationsPermission createFromParcel(Parcel parcel) {
            return new PostNotificationsPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PostNotificationsPermission[] newArray(int i10) {
            return new PostNotificationsPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.POST_NOTIFICATIONS";

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 33;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public List<IPermission> getOldPermissions(Context context) {
        return PermissionUtils.asArrayList(PermissionLists.getNotificationServicePermission());
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.POST_NOTIFICATIONS";
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        return PermissionLists.getNotificationServicePermission().getPermissionSettingIntents(context, z);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isDoNotAskAgainPermissionByLowVersion(Activity activity) {
        return PermissionLists.getNotificationServicePermission().isDoNotAskAgainPermission(activity);
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission
    public boolean isGrantedPermissionByLowVersion(Context context, boolean z) {
        return PermissionLists.getNotificationServicePermission().isGrantedPermission(context, z);
    }

    public PostNotificationsPermission() {
    }

    private PostNotificationsPermission(Parcel parcel) {
        super(parcel);
    }
}
