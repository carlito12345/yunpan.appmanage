package com.hjq.permissions.permission.common;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import com.hjq.permissions.permission.PermissionChannel;
import com.hjq.permissions.permission.PermissionPageType;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.tools.PermissionVersion;
import com.hsae.autosdk.core.NoConst;
import o8.b;

/* loaded from: classes.dex */
public abstract class SpecialPermission extends BasePermission {
    public SpecialPermission() {
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public PermissionChannel getPermissionChannel(Context context) {
        return PermissionChannel.START_ACTIVITY;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public PermissionPageType getPermissionPageType(Context context) {
        return PermissionPageType.OPAQUE_ACTIVITY;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public int getResultWaitTime(Context context) {
        int i10;
        if (!isSupportRequestPermission(context)) {
            return 0;
        }
        int i11 = PermissionVersion.isAndroid11() ? 200 : NoConst.RECORDING_TIME_INTERVAL;
        if (!b.g() && (i10 = b.f11670j) != 1583864138 && i10 != -182666708) {
            return i11;
        }
        if (PermissionVersion.isAndroid8()) {
            return NoConst.RECORDING_TIME_INTERVAL;
        }
        return 500;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isDoNotAskAgainPermission(Activity activity) {
        return false;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return false;
    }

    public SpecialPermission(Parcel parcel) {
        super(parcel);
    }
}
