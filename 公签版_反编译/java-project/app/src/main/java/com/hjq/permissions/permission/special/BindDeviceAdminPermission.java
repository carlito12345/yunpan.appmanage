package com.hjq.permissions.permission.special;

import android.app.Activity;
import android.app.admin.DeviceAdminReceiver;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.BroadcastReceiverManifestInfo;
import com.hjq.permissions.manifest.node.IntentFilterManifestInfo;
import com.hjq.permissions.manifest.node.MetaDataManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionNames;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class BindDeviceAdminPermission extends SpecialPermission {
    public static final Parcelable.Creator<BindDeviceAdminPermission> CREATOR = new Parcelable.Creator<BindDeviceAdminPermission>() { // from class: com.hjq.permissions.permission.special.BindDeviceAdminPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindDeviceAdminPermission createFromParcel(Parcel parcel) {
            return new BindDeviceAdminPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindDeviceAdminPermission[] newArray(int i10) {
            return new BindDeviceAdminPermission[i10];
        }
    };
    private final String mDeviceAdminReceiverClassName;
    private final String mExtraAddExplanation;

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public void checkCompliance(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo) {
        super.checkCompliance(activity, list, androidManifestInfo);
        if (TextUtils.isEmpty(this.mDeviceAdminReceiverClassName)) {
            throw new IllegalArgumentException("Pass the BroadcastReceiverClass parameter as empty");
        }
        if (PermissionUtils.isClassExist(this.mDeviceAdminReceiverClassName)) {
            return;
        }
        throw new IllegalArgumentException(g.b.l(this.mDeviceAdminReceiverClassName, " is an invalid class", new StringBuilder("The passed-in ")));
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        for (BroadcastReceiverManifestInfo broadcastReceiverManifestInfo : androidManifestInfo.receiverInfoList) {
            if (broadcastReceiverManifestInfo != null && PermissionUtils.reverseEqualsString(this.mDeviceAdminReceiverClassName, broadcastReceiverManifestInfo.name)) {
                String str = broadcastReceiverManifestInfo.permission;
                if (str == null || !PermissionUtils.equalsPermission(this, str)) {
                    throw new IllegalArgumentException("Please register permission node in the AndroidManifest.xml file, for example: <receiver android:name=\"" + this.mDeviceAdminReceiverClassName + "\" android:permission=\"" + getPermissionName() + "\" />");
                }
                List<IntentFilterManifestInfo> list3 = broadcastReceiverManifestInfo.intentFilterInfoList;
                if (list3 != null) {
                    Iterator<IntentFilterManifestInfo> it = list3.iterator();
                    while (it.hasNext()) {
                        if (it.next().actionList.contains("android.app.action.DEVICE_ADMIN_ENABLED")) {
                            List<MetaDataManifestInfo> list4 = broadcastReceiverManifestInfo.metaDataInfoList;
                            if (list4 != null) {
                                for (MetaDataManifestInfo metaDataManifestInfo : list4) {
                                    if ("android.app.device_admin".equals(metaDataManifestInfo.name) && metaDataManifestInfo.resource != 0) {
                                        return;
                                    }
                                }
                            }
                            throw new IllegalArgumentException(g.b.l(this.mDeviceAdminReceiverClassName, "\" in the AndroidManifest.xml file.\n\t\t<meta-data>\n\t\t    android:name=\"android.app.device_admin\"\n\t\t    android:resource=\"@xml/device_admin_config\" />", new StringBuilder("Please add an meta data for \"")));
                        }
                    }
                }
                throw new IllegalArgumentException(g.b.l(this.mDeviceAdminReceiverClassName, "\" in the AndroidManifest.xml file.\n\t\t<intent-filter>\n\t\t    <action android:name=\"android.app.action.DEVICE_ADMIN_ENABLED\" />\n\t\t</intent-filter>", new StringBuilder("Please add an intent filter for \"")));
            }
        }
        throw new IllegalArgumentException(g.b.l(this.mDeviceAdminReceiverClassName, "\" component is not registered in the AndroidManifest.xml file", new StringBuilder("The \"")));
    }

    public String getDeviceAdminReceiverClassName() {
        return this.mDeviceAdminReceiverClassName;
    }

    public String getExtraAddExplanation() {
        return this.mExtraAddExplanation;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 8;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return PermissionNames.BIND_DEVICE_ADMIN;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(2);
        Intent intent = new Intent("android.app.action.ADD_DEVICE_ADMIN");
        intent.putExtra("android.app.extra.DEVICE_ADMIN", new ComponentName(context, this.mDeviceAdminReceiverClassName));
        intent.putExtra("android.app.extra.ADD_EXPLANATION", this.mExtraAddExplanation);
        arrayList.add(intent);
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        DevicePolicyManager devicePolicyManager = PermissionVersion.isAndroid6() ? (DevicePolicyManager) context.getSystemService(DevicePolicyManager.class) : (DevicePolicyManager) context.getSystemService("device_policy");
        if (devicePolicyManager == null) {
            return false;
        }
        return devicePolicyManager.isAdminActive(new ComponentName(context, this.mDeviceAdminReceiverClassName));
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeString(this.mDeviceAdminReceiverClassName);
        parcel.writeString(this.mExtraAddExplanation);
    }

    public BindDeviceAdminPermission(Class<? extends DeviceAdminReceiver> cls, String str) {
        this(cls.getName(), str);
    }

    public BindDeviceAdminPermission(String str, String str2) {
        this.mDeviceAdminReceiverClassName = str;
        this.mExtraAddExplanation = str2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private BindDeviceAdminPermission(Parcel parcel) {
        String string = parcel.readString();
        Objects.requireNonNull(string);
        this(string, parcel.readString());
    }
}
