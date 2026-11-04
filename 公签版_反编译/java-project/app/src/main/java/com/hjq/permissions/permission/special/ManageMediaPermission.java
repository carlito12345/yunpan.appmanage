package com.hjq.permissions.permission.special;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ManageMediaPermission extends SpecialPermission {
    public static final Parcelable.Creator<ManageMediaPermission> CREATOR = new Parcelable.Creator<ManageMediaPermission>() { // from class: com.hjq.permissions.permission.special.ManageMediaPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ManageMediaPermission createFromParcel(Parcel parcel) {
            return new ManageMediaPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ManageMediaPermission[] newArray(int i10) {
            return new ManageMediaPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.MANAGE_MEDIA";

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 31;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.MANAGE_MEDIA";
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        ArrayList arrayList = new ArrayList(3);
        if (PermissionVersion.isAndroid12()) {
            Intent intent = new Intent("android.settings.REQUEST_MANAGE_MEDIA");
            intent.setData(getPackageNameUri(context));
            arrayList.add(intent);
            arrayList.add(new Intent("android.settings.REQUEST_MANAGE_MEDIA"));
        }
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (PermissionVersion.isAndroid12()) {
            return MediaStore.canManageMedia(context);
        }
        return true;
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return true;
    }

    public ManageMediaPermission() {
    }

    private ManageMediaPermission(Parcel parcel) {
        super(parcel);
    }
}
