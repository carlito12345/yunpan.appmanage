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
public final class PackageUsageStatsPermission extends SpecialPermission {
    public static final Parcelable.Creator<PackageUsageStatsPermission> CREATOR = new Parcelable.Creator<PackageUsageStatsPermission>() { // from class: com.hjq.permissions.permission.special.PackageUsageStatsPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PackageUsageStatsPermission createFromParcel(Parcel parcel) {
            return new PackageUsageStatsPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PackageUsageStatsPermission[] newArray(int i10) {
            return new PackageUsageStatsPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.PACKAGE_USAGE_STATS";

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 21;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.PACKAGE_USAGE_STATS";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(3);
        if (PermissionVersion.isAndroid10()) {
            Intent intent = new Intent("android.settings.USAGE_ACCESS_SETTINGS");
            intent.setData(getPackageNameUri(context));
            arrayList.add(intent);
        }
        if (PermissionVersion.isAndroid5()) {
            arrayList.add(new Intent("android.settings.USAGE_ACCESS_SETTINGS"));
        }
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (PermissionVersion.isAndroid5()) {
            return BasePermission.checkOpPermission(context, "android:get_usage_stats", false);
        }
        return true;
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return true;
    }

    public PackageUsageStatsPermission() {
    }

    private PackageUsageStatsPermission(Parcel parcel) {
        super(parcel);
    }
}
