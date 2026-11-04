package com.hjq.permissions.permission.special;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import android.service.notification.NotificationListenerService;
import android.text.TextUtils;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.IntentFilterManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.manifest.node.ServiceManifestInfo;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class BindNotificationListenerServicePermission extends SpecialPermission {
    public static final Parcelable.Creator<BindNotificationListenerServicePermission> CREATOR = new Parcelable.Creator<BindNotificationListenerServicePermission>() { // from class: com.hjq.permissions.permission.special.BindNotificationListenerServicePermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindNotificationListenerServicePermission createFromParcel(Parcel parcel) {
            return new BindNotificationListenerServicePermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindNotificationListenerServicePermission[] newArray(int i10) {
            return new BindNotificationListenerServicePermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE";
    private static final String SETTING_ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    private final String mNotificationListenerServiceClassName;

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public void checkCompliance(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo) {
        super.checkCompliance(activity, list, androidManifestInfo);
        if (TextUtils.isEmpty(this.mNotificationListenerServiceClassName)) {
            throw new IllegalArgumentException("Pass the ServiceClass parameter as empty");
        }
        if (PermissionUtils.isClassExist(this.mNotificationListenerServiceClassName)) {
            return;
        }
        throw new IllegalArgumentException(g.b.l(this.mNotificationListenerServiceClassName, " is an invalid class", new StringBuilder("The passed-in ")));
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        for (ServiceManifestInfo serviceManifestInfo : androidManifestInfo.serviceInfoList) {
            if (serviceManifestInfo != null && PermissionUtils.reverseEqualsString(this.mNotificationListenerServiceClassName, serviceManifestInfo.name)) {
                String str = serviceManifestInfo.permission;
                if (str == null || !PermissionUtils.equalsPermission(this, str)) {
                    throw new IllegalArgumentException("Please register permission node in the AndroidManifest.xml file, for example: <service android:name=\"" + this.mNotificationListenerServiceClassName + "\" android:permission=\"" + getPermissionName() + "\" />");
                }
                PermissionVersion.isAndroid4_3();
                List<IntentFilterManifestInfo> list3 = serviceManifestInfo.intentFilterInfoList;
                if (list3 != null) {
                    Iterator<IntentFilterManifestInfo> it = list3.iterator();
                    while (it.hasNext()) {
                        if (it.next().actionList.contains("android.service.notification.NotificationListenerService")) {
                            return;
                        }
                    }
                }
                throw new IllegalArgumentException(android.support.v4.media.session.a.u(new StringBuilder("Please add an intent filter for \""), this.mNotificationListenerServiceClassName, "\" in the AndroidManifest.xml file.\n", g.b.A("\t\t<intent-filter>\n\t\t    <action android:name=\"", "android.service.notification.NotificationListenerService", "\" />\n\t\t</intent-filter>")));
            }
        }
        throw new IllegalArgumentException(g.b.l(this.mNotificationListenerServiceClassName, "\" component is not registered in the AndroidManifest.xml file", new StringBuilder("The \"")));
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 18;
    }

    public String getNotificationListenerServiceClassName() {
        return this.mNotificationListenerServiceClassName;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(3);
        if (PermissionVersion.isAndroid11() && PermissionUtils.isClassExist(this.mNotificationListenerServiceClassName)) {
            Intent intent = new Intent("android.settings.NOTIFICATION_LISTENER_DETAIL_SETTINGS");
            intent.putExtra("android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME", new ComponentName(context, this.mNotificationListenerServiceClassName).flattenToString());
            arrayList.add(intent);
        }
        PermissionVersion.isAndroid5_1();
        arrayList.add(new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"));
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (!PermissionVersion.isAndroid4_3()) {
            return true;
        }
        NotificationManager notificationManager = PermissionVersion.isAndroid6() ? (NotificationManager) context.getSystemService(NotificationManager.class) : (NotificationManager) context.getSystemService("notification");
        String str = PermissionUtils.isClassExist(this.mNotificationListenerServiceClassName) ? this.mNotificationListenerServiceClassName : null;
        if (PermissionVersion.isAndroid8_1() && notificationManager != null && str != null) {
            return notificationManager.isNotificationListenerAccessGranted(new ComponentName(context, str));
        }
        String string = Settings.Secure.getString(context.getContentResolver(), SETTING_ENABLED_NOTIFICATION_LISTENERS);
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        for (String str2 : string.split(":")) {
            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str2);
            if (componentNameUnflattenFromString != null) {
                if (str != null) {
                    if (context.getPackageName().equals(componentNameUnflattenFromString.getPackageName()) && str.equals(componentNameUnflattenFromString.getClassName())) {
                        return true;
                    }
                } else if (context.getPackageName().equals(componentNameUnflattenFromString.getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeString(this.mNotificationListenerServiceClassName);
    }

    public BindNotificationListenerServicePermission(Class<? extends NotificationListenerService> cls) {
        this(cls.getName());
    }

    public BindNotificationListenerServicePermission(String str) {
        this.mNotificationListenerServiceClassName = str;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private BindNotificationListenerServicePermission(Parcel parcel) {
        String string = parcel.readString();
        Objects.requireNonNull(string);
        this(string);
    }
}
