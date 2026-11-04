package com.hjq.permissions.permission.special;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import com.hjq.permissions.permission.PermissionPageType;
import com.hjq.permissions.permission.base.BasePermission;
import com.hjq.permissions.permission.common.SpecialPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class RequestIgnoreBatteryOptimizationsPermission extends SpecialPermission {
    public static final Parcelable.Creator<RequestIgnoreBatteryOptimizationsPermission> CREATOR = new Parcelable.Creator<RequestIgnoreBatteryOptimizationsPermission>() { // from class: com.hjq.permissions.permission.special.RequestIgnoreBatteryOptimizationsPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequestIgnoreBatteryOptimizationsPermission createFromParcel(Parcel parcel) {
            return new RequestIgnoreBatteryOptimizationsPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequestIgnoreBatteryOptimizationsPermission[] newArray(int i10) {
            return new RequestIgnoreBatteryOptimizationsPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS";

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 23;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS";
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.IPermission
    @SuppressLint({"BatteryLife"})
    public PermissionPageType getPermissionPageType(Context context) {
        if (PermissionVersion.isAndroid11() && (o8.b.i() || o8.b.k())) {
            return PermissionPageType.OPAQUE_ACTIVITY;
        }
        if (o8.b.f11670j == -1680767897) {
            String str = o8.b.l;
            if (str == null) {
                str = "";
            }
            if (o8.b.a(str) == 15) {
                return PermissionPageType.OPAQUE_ACTIVITY;
            }
        }
        if (PermissionVersion.isAndroid6() && !r8.b.j(this, context)) {
            Intent intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
            intent.setData(getPackageNameUri(context));
            if (PermissionUtils.areActivityIntent(context, intent)) {
                return PermissionPageType.TRANSPARENT_ACTIVITY;
            }
        }
        return PermissionPageType.OPAQUE_ACTIVITY;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    @Override // com.hjq.permissions.permission.base.IPermission
    @SuppressLint({"BatteryLife"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        Intent intent;
        Intent intent2;
        ArrayList arrayList = new ArrayList(7);
        if (PermissionVersion.isAndroid6()) {
            intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
            intent.setData(getPackageNameUri(context));
            if (isGrantedPermission(context, z) && !o8.b.i()) {
                intent = null;
            }
        }
        if (PermissionVersion.isAndroid12()) {
            intent2 = new Intent("android.settings.VIEW_ADVANCED_POWER_USAGE_DETAIL");
            intent2.setData(getPackageNameUri(context));
        } else {
            intent2 = null;
        }
        Intent intent3 = PermissionVersion.isAndroid6() ? new Intent("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS") : null;
        if (!z || (PermissionVersion.isAndroid11() && (o8.b.i() || o8.b.k()))) {
            if (intent != null) {
                arrayList.add(intent);
            }
            if (intent2 != null) {
                arrayList.add(intent2);
            }
            if (intent3 != null) {
                arrayList.add(intent3);
            }
        } else {
            if (intent2 != null) {
                arrayList.add(intent2);
            }
            if (intent3 != null) {
                arrayList.add(intent3);
            }
            if (intent != null) {
                arrayList.add(intent);
            }
        }
        if (o8.b.i() || o8.b.k()) {
            arrayList.add(getApplicationDetailsSettingIntent(context));
            arrayList.add(BasePermission.getManageApplicationSettingIntent());
            arrayList.add(BasePermission.getApplicationSettingIntent());
        }
        arrayList.add(getAndroidSettingIntent());
        return arrayList;
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public int getResultWaitTime(Context context) {
        if (!r8.b.k(this, context)) {
            return 0;
        }
        if (!o8.b.i()) {
            if (o8.b.k() && PermissionVersion.isAndroid11()) {
                return 1000;
            }
            return super.getResultWaitTime(context);
        }
        if (PermissionVersion.isAndroid15()) {
            return super.getResultWaitTime(context);
        }
        if (!PermissionVersion.isAndroid14()) {
            return 1000;
        }
        String str = o8.b.l;
        if (str == null) {
            str = "";
        }
        if (o8.b.a(str) < 2) {
            return 1000;
        }
        return super.getResultWaitTime(context);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public boolean isGrantedPermission(Context context, boolean z) {
        if (!PermissionVersion.isAndroid6()) {
            return true;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService(PowerManager.class);
        if (powerManager == null) {
            return false;
        }
        return powerManager.isIgnoringBatteryOptimizations(context.getPackageName());
    }

    @Override // com.hjq.permissions.permission.common.SpecialPermission, com.hjq.permissions.permission.base.BasePermission
    public boolean isRegisterPermissionByManifestFile() {
        return true;
    }

    public RequestIgnoreBatteryOptimizationsPermission() {
    }

    private RequestIgnoreBatteryOptimizationsPermission(Parcel parcel) {
        super(parcel);
    }
}
