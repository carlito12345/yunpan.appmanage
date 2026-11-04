package com.hjq.permissions.permission.special;

import android.accessibilityservice.AccessibilityService;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.IntentFilterManifestInfo;
import com.hjq.permissions.manifest.node.MetaDataManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.manifest.node.ServiceManifestInfo;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionUtils;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class BindAccessibilityServicePermission extends SpecialPermission {
    public static final Parcelable.Creator<BindAccessibilityServicePermission> CREATOR = new Parcelable.Creator<BindAccessibilityServicePermission>() { // from class: com.hjq.permissions.permission.special.BindAccessibilityServicePermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindAccessibilityServicePermission createFromParcel(Parcel parcel) {
            return new BindAccessibilityServicePermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindAccessibilityServicePermission[] newArray(int i10) {
            return new BindAccessibilityServicePermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.BIND_ACCESSIBILITY_SERVICE";
    private final String mAccessibilityServiceClassName;

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public void checkCompliance(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo) {
        super.checkCompliance(activity, list, androidManifestInfo);
        if (TextUtils.isEmpty(this.mAccessibilityServiceClassName)) {
            throw new IllegalArgumentException("Pass the ServiceClass parameter as empty");
        }
        if (PermissionUtils.isClassExist(this.mAccessibilityServiceClassName)) {
            return;
        }
        throw new IllegalArgumentException(g.b.l(this.mAccessibilityServiceClassName, " is an invalid class", new StringBuilder("The passed-in ")));
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        for (ServiceManifestInfo serviceManifestInfo : androidManifestInfo.serviceInfoList) {
            if (serviceManifestInfo != null && PermissionUtils.reverseEqualsString(this.mAccessibilityServiceClassName, serviceManifestInfo.name)) {
                String str = serviceManifestInfo.permission;
                if (str == null || !PermissionUtils.equalsPermission(this, str)) {
                    throw new IllegalArgumentException("Please register permission node in the AndroidManifest.xml file, for example: <service android:name=\"" + this.mAccessibilityServiceClassName + "\" android:permission=\"" + getPermissionName() + "\" />");
                }
                List<IntentFilterManifestInfo> list3 = serviceManifestInfo.intentFilterInfoList;
                if (list3 != null) {
                    Iterator<IntentFilterManifestInfo> it = list3.iterator();
                    while (it.hasNext()) {
                        if (it.next().actionList.contains("android.accessibilityservice.AccessibilityService")) {
                            List<MetaDataManifestInfo> list4 = serviceManifestInfo.metaDataInfoList;
                            if (list4 != null) {
                                for (MetaDataManifestInfo metaDataManifestInfo : list4) {
                                    if ("android.accessibilityservice".equals(metaDataManifestInfo.name) && metaDataManifestInfo.resource != 0) {
                                        return;
                                    }
                                }
                            }
                            throw new IllegalArgumentException(g.b.l(this.mAccessibilityServiceClassName, "\" in the AndroidManifest.xml file.\n\t\t<meta-data>\n\t\t    android:name=\"android.accessibilityservice\"\n\t\t    android:resource=\"@xml/accessibility_service_config\" />", new StringBuilder("Please add an meta data for \"")));
                        }
                    }
                }
                throw new IllegalArgumentException(g.b.l(this.mAccessibilityServiceClassName, "\" in the AndroidManifest.xml file.\n\t\t<intent-filter>\n\t\t    <action android:name=\"android.accessibilityservice.AccessibilityService\" />\n\t\t</intent-filter>", new StringBuilder("Please add an intent filter for \"")));
            }
        }
        throw new IllegalArgumentException(g.b.l(this.mAccessibilityServiceClassName, "\" component is not registered in the AndroidManifest.xml file", new StringBuilder("The \"")));
    }

    public String getAccessibilityServiceClassName() {
        return this.mAccessibilityServiceClassName;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 16;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.BIND_ACCESSIBILITY_SERVICE";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_accessibility_services");
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        String str = PermissionUtils.isClassExist(this.mAccessibilityServiceClassName) ? this.mAccessibilityServiceClassName : null;
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
        parcel.writeString(this.mAccessibilityServiceClassName);
    }

    public BindAccessibilityServicePermission(Class<? extends AccessibilityService> cls) {
        this(cls.getName());
    }

    public BindAccessibilityServicePermission(String str) {
        this.mAccessibilityServiceClassName = str;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private BindAccessibilityServicePermission(Parcel parcel) {
        String string = parcel.readString();
        Objects.requireNonNull(string);
        this(string);
    }
}
