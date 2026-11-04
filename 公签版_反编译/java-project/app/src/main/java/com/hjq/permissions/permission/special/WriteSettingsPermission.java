package com.hjq.permissions.permission.special;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class WriteSettingsPermission extends SpecialPermission {
    public static final Parcelable.Creator<WriteSettingsPermission> CREATOR = new Parcelable.Creator<WriteSettingsPermission>() { // from class: com.hjq.permissions.permission.special.WriteSettingsPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WriteSettingsPermission createFromParcel(Parcel parcel) {
            return new WriteSettingsPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WriteSettingsPermission[] newArray(int i10) {
            return new WriteSettingsPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.WRITE_SETTINGS";

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 23;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.WRITE_SETTINGS";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(6);
        if (PermissionVersion.isAndroid6()) {
            Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
            intent.setData(getPackageNameUri(context));
            arrayList.add(intent);
            arrayList.add(new Intent("android.settings.action.MANAGE_WRITE_SETTINGS"));
        }
        arrayList.add(getApplicationDetailsSettingIntent(context));
        arrayList.add(BasePermission.getManageApplicationSettingIntent());
        arrayList.add(BasePermission.getApplicationSettingIntent());
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (PermissionVersion.isAndroid6()) {
            return Settings.System.canWrite(context);
        }
        return true;
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return true;
    }

    public WriteSettingsPermission() {
    }

    private WriteSettingsPermission(Parcel parcel) {
        super(parcel);
    }
}
