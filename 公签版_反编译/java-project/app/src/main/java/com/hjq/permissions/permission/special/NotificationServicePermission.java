package com.hjq.permissions.permission.special;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class NotificationServicePermission extends SpecialPermission {
    public static final Parcelable.Creator<NotificationServicePermission> CREATOR = new Parcelable.Creator<NotificationServicePermission>() { // from class: com.hjq.permissions.permission.special.NotificationServicePermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotificationServicePermission createFromParcel(Parcel parcel) {
            return new NotificationServicePermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NotificationServicePermission[] newArray(int i10) {
            return new NotificationServicePermission[i10];
        }
    };
    private static final int OP_POST_NOTIFICATION_DEFAULT_VALUE = 11;
    private static final String OP_POST_NOTIFICATION_FIELD_NAME = "OP_POST_NOTIFICATION";
    public static final String PERMISSION_NAME = "android.permission.NOTIFICATION_SERVICE";
    private final String mNotificationChannelId;

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        if (PermissionVersion.getTargetSdkVersion(activity) >= 33) {
            BasePermission.checkPermissionRegistrationStatus(BasePermission.findPermissionInfoByList(list2, "android.permission.POST_NOTIFICATIONS"), "android.permission.POST_NOTIFICATIONS", Integer.MAX_VALUE);
        }
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 19;
    }

    public String getNotificationChannelId() {
        return this.mNotificationChannelId;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.NOTIFICATION_SERVICE";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(8);
        if (PermissionVersion.isAndroid8()) {
            Intent intent = new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            NotificationChannel notificationChannel = (notificationManager == null || TextUtils.isEmpty(this.mNotificationChannelId)) ? null : notificationManager.getNotificationChannel(this.mNotificationChannelId);
            if (notificationChannel != null && notificationManager.areNotificationsEnabled()) {
                intent.setAction("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
                intent.putExtra("android.provider.extra.CHANNEL_ID", notificationChannel.getId());
                if (PermissionVersion.isAndroid11()) {
                    intent.putExtra("android.provider.extra.CONVERSATION_ID", notificationChannel.getConversationId());
                }
                arrayList.add(intent);
            }
            Intent intent2 = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
            intent2.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
            arrayList.add(intent2);
        }
        if (PermissionVersion.isAndroid5()) {
            Intent intent3 = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
            intent3.putExtra("app_package", context.getPackageName());
            intent3.putExtra("app_uid", context.getApplicationInfo().uid);
            arrayList.add(intent3);
        }
        if (PermissionVersion.isAndroid13()) {
            arrayList.add(new Intent("android.settings.ALL_APPS_NOTIFICATION_SETTINGS"));
        }
        arrayList.add(getApplicationDetailsSettingIntent(context));
        arrayList.add(BasePermission.getManageApplicationSettingIntent());
        arrayList.add(BasePermission.getApplicationSettingIntent());
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (!PermissionVersion.isAndroid4_4()) {
            return true;
        }
        if (!PermissionVersion.isAndroid7()) {
            return BasePermission.checkOpPermission(context, OP_POST_NOTIFICATION_FIELD_NAME, 11, true);
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        if (notificationManager == null) {
            return BasePermission.checkOpPermission(context, OP_POST_NOTIFICATION_FIELD_NAME, 11, true);
        }
        if (!notificationManager.areNotificationsEnabled()) {
            return false;
        }
        if (TextUtils.isEmpty(this.mNotificationChannelId) || !PermissionVersion.isAndroid8()) {
            return true;
        }
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel(this.mNotificationChannelId);
        return (notificationChannel == null || notificationChannel.getImportance() == 0) ? false : true;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeString(this.mNotificationChannelId);
    }

    public NotificationServicePermission() {
        this((String) null);
    }

    public NotificationServicePermission(String str) {
        this.mNotificationChannelId = str;
    }

    private NotificationServicePermission(Parcel parcel) {
        this(parcel.readString());
    }
}
