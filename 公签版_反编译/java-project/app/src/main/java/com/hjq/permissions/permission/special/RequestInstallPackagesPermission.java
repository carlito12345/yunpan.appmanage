package com.hjq.permissions.permission.special;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class RequestInstallPackagesPermission extends SpecialPermission {
    public static final Parcelable.Creator<RequestInstallPackagesPermission> CREATOR = new Parcelable.Creator<RequestInstallPackagesPermission>() { // from class: com.hjq.permissions.permission.special.RequestInstallPackagesPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequestInstallPackagesPermission createFromParcel(Parcel parcel) {
            return new RequestInstallPackagesPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequestInstallPackagesPermission[] newArray(int i10) {
            return new RequestInstallPackagesPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.REQUEST_INSTALL_PACKAGES";

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 26;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.REQUEST_INSTALL_PACKAGES";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(6);
        if (PermissionVersion.isAndroid8()) {
            Intent intent = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
            intent.setData(getPackageNameUri(context));
            arrayList.add(intent);
            arrayList.add(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES"));
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
            return context.getPackageManager().canRequestPackageInstalls();
        }
        return true;
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return true;
    }

    public RequestInstallPackagesPermission() {
    }

    private RequestInstallPackagesPermission(Parcel parcel) {
        super(parcel);
    }
}
