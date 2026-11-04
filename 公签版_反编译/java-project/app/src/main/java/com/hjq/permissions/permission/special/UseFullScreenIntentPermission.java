package com.hjq.permissions.permission.special;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class UseFullScreenIntentPermission extends SpecialPermission {
    public static final Parcelable.Creator<UseFullScreenIntentPermission> CREATOR = new Parcelable.Creator<UseFullScreenIntentPermission>() { // from class: com.hjq.permissions.permission.special.UseFullScreenIntentPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UseFullScreenIntentPermission createFromParcel(Parcel parcel) {
            return new UseFullScreenIntentPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UseFullScreenIntentPermission[] newArray(int i10) {
            return new UseFullScreenIntentPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.USE_FULL_SCREEN_INTENT";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        if (!PermissionUtils.containsPermission(list, "android.permission.NOTIFICATION_SERVICE") && !PermissionUtils.containsPermission(list, "android.permission.POST_NOTIFICATIONS")) {
            throw new IllegalArgumentException("The \"" + getPermissionName() + "\" needs to be used together with the notification permission. (\"android.permission.NOTIFICATION_SERVICE\" or \"android.permission.POST_NOTIFICATIONS\")");
        }
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < list.size(); i13++) {
            IPermission iPermission = list.get(i13);
            if (PermissionUtils.equalsPermission(iPermission, getPermissionName())) {
                i11 = i13;
            } else if (PermissionUtils.equalsPermission(iPermission, "android.permission.NOTIFICATION_SERVICE")) {
                i10 = i13;
            } else if (PermissionUtils.equalsPermission(iPermission, "android.permission.POST_NOTIFICATIONS")) {
                i12 = i13;
            }
        }
        if (i10 != -1 && i10 > i11) {
            throw new IllegalArgumentException("Please place the " + getPermissionName() + "\" permission after the \"android.permission.NOTIFICATION_SERVICE\" permission");
        }
        if (i12 == -1 || i12 <= i11) {
            return;
        }
        throw new IllegalArgumentException("Please place the \"" + getPermissionName() + "\" permission after the \"android.permission.POST_NOTIFICATIONS\" permission");
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 34;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.USE_FULL_SCREEN_INTENT";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(6);
        if (PermissionVersion.isAndroid14()) {
            Intent intent = new Intent("android.settings.MANAGE_APP_USE_FULL_SCREEN_INTENT");
            intent.setData(getPackageNameUri(context));
            arrayList.add(intent);
        }
        if (o8.b.i() || o8.b.k()) {
            arrayList.add(getAndroidSettingIntent());
            return arrayList;
        }
        if (PermissionVersion.isAndroid8()) {
            Intent intent2 = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
            intent2.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
            arrayList.add(intent2);
        }
        arrayList.add(getApplicationDetailsSettingIntent(context));
        arrayList.add(BasePermission.getManageApplicationSettingIntent());
        arrayList.add(BasePermission.getApplicationSettingIntent());
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (!PermissionVersion.isAndroid14()) {
            return true;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        if (notificationManager == null) {
            return false;
        }
        return notificationManager.canUseFullScreenIntent();
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return true;
    }

    public UseFullScreenIntentPermission() {
    }

    private UseFullScreenIntentPermission(Parcel parcel) {
        super(parcel);
    }
}
