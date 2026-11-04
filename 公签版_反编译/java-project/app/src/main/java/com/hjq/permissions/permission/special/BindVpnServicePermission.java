package com.hjq.permissions.permission.special;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.VpnService;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.IntentFilterManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.manifest.node.ServiceManifestInfo;
import com.hjq.permissions.permission.PermissionPageType;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class BindVpnServicePermission extends SpecialPermission {
    public static final Parcelable.Creator<BindVpnServicePermission> CREATOR = new Parcelable.Creator<BindVpnServicePermission>() { // from class: com.hjq.permissions.permission.special.BindVpnServicePermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindVpnServicePermission createFromParcel(Parcel parcel) {
            return new BindVpnServicePermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BindVpnServicePermission[] newArray(int i10) {
            return new BindVpnServicePermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.BIND_VPN_SERVICE";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        List<ServiceManifestInfo> list3 = androidManifestInfo.serviceInfoList;
        for (int i10 = 0; i10 < list3.size(); i10++) {
            ServiceManifestInfo serviceManifestInfo = list3.get(i10);
            String str = serviceManifestInfo.permission;
            if (str != null && PermissionUtils.equalsPermission(this, str)) {
                List<IntentFilterManifestInfo> list4 = serviceManifestInfo.intentFilterInfoList;
                if (list4 != null) {
                    Iterator<IntentFilterManifestInfo> it = list4.iterator();
                    while (it.hasNext()) {
                        if (it.next().actionList.contains("android.net.VpnService")) {
                            return;
                        }
                    }
                }
                throw new IllegalArgumentException(g.b.l(serviceManifestInfo.name, "\" in the AndroidManifest.xml file.\n\t\t<intent-filter>\n\t\t    <action android:name=\"android.net.VpnService\" />\n\t\t</intent-filter>", new StringBuilder("Please add an intent filter for \"")));
            }
        }
        throw new IllegalArgumentException("No Service was found to have registered the android:permission=\"" + getPermissionName() + "\" property, Please register this property to VpnService subclass by AndroidManifest.xml file, otherwise it will lead to can't apply for the permission");
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 14;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.BIND_VPN_SERVICE";
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0022, code lost:
    
        if ((r0 != null ? r0 : "").startsWith("15.0.0") != false) goto L15;
     */
    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.IPermission
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PermissionPageType getPermissionPageType(Context context) {
        if (o8.b.f11670j == -1680767897) {
            String str = o8.b.l;
            if (str == null) {
                str = "";
            }
            if (o8.b.a(str) < 16) {
                String str2 = o8.b.l;
            }
            return PermissionPageType.OPAQUE_ACTIVITY;
        }
        return VpnService.prepare(context) != null ? PermissionPageType.TRANSPARENT_ACTIVITY : PermissionPageType.OPAQUE_ACTIVITY;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(VpnService.prepare(context));
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        return VpnService.prepare(context) == null;
    }

    public BindVpnServicePermission() {
    }

    private BindVpnServicePermission(Parcel parcel) {
        super(parcel);
    }
}
