package com.hjq.permissions.permission.base;

import android.app.Activity;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Parcel;
import com.hierynomus.security.jce.a;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.manifest.node.UsesSdkManifestInfo;
import com.hjq.permissions.tools.PermissionSettingPage;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import m0.h;
import r8.b;

/* loaded from: classes.dex */
public abstract class BasePermission implements IPermission {
    public static final int MODE_UNKNOWN = -1;

    public BasePermission() {
    }

    public static boolean checkOpPermission(Context context, String str, boolean z) {
        int opPermissionMode = getOpPermissionMode(context, str);
        return opPermissionMode == -1 ? z : opPermissionMode == 0;
    }

    public static void checkPermissionRegistrationStatus(PermissionManifestInfo permissionManifestInfo, String str) {
        checkPermissionRegistrationStatus(permissionManifestInfo, str, Integer.MAX_VALUE);
    }

    public static boolean checkSelfPermission(Context context, String str) {
        return context.checkSelfPermission(str) == 0;
    }

    public static PermissionManifestInfo findPermissionInfoByList(List<PermissionManifestInfo> list, String str) {
        for (PermissionManifestInfo permissionManifestInfo : list) {
            if (PermissionUtils.equalsPermission(permissionManifestInfo.name, str)) {
                return permissionManifestInfo;
            }
        }
        return null;
    }

    public static Intent getApplicationSettingIntent() {
        return PermissionSettingPage.getApplicationSettingsIntent();
    }

    public static Intent getManageApplicationSettingIntent() {
        return PermissionSettingPage.getManageApplicationSettingsIntent();
    }

    public static int getMinSdkVersion(Context context, AndroidManifestInfo androidManifestInfo) {
        UsesSdkManifestInfo usesSdkManifestInfo;
        if (PermissionVersion.isAndroid7()) {
            return context.getApplicationInfo().minSdkVersion;
        }
        if (androidManifestInfo == null || (usesSdkManifestInfo = androidManifestInfo.usesSdkInfo) == null) {
            return 17;
        }
        return usesSdkManifestInfo.minSdkVersion;
    }

    public static int getOpPermissionMode(Context context, String str) {
        AppOpsManager appOpsManagerG = PermissionVersion.isAndroid6() ? h.g(context.getSystemService(a.e())) : h.g(context.getSystemService("appops"));
        if (appOpsManagerG == null) {
            return -1;
        }
        try {
            return PermissionVersion.isAndroid10() ? appOpsManagerG.unsafeCheckOpNoThrow(str, context.getApplicationInfo().uid, context.getPackageName()) : appOpsManagerG.checkOpNoThrow(str, context.getApplicationInfo().uid, context.getPackageName());
        } catch (Throwable th2) {
            th2.printStackTrace();
            return -1;
        }
    }

    public static boolean isExistOpPermission(String str) throws NoSuchFieldException {
        try {
            Class.forName(a.e().getName()).getDeclaredField(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean shouldShowRequestPermissionRationale(Activity activity, String str) {
        if (PermissionVersion.getSdkVersion() == 31) {
            try {
                return ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(activity.getApplication().getPackageManager(), str)).booleanValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e7) {
                e7.printStackTrace();
            }
        }
        return activity.shouldShowRequestPermissionRationale(str);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public void checkCompliance(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo) {
        checkSelfByTargetSdkVersion(activity);
        if (androidManifestInfo != null) {
            List<PermissionManifestInfo> list2 = androidManifestInfo.permissionInfoList;
            checkSelfByManifestFile(activity, list, androidManifestInfo, list2, findPermissionInfoByList(list2, getPermissionName()));
        }
        checkSelfByRequestPermissions(activity, list);
    }

    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        if (isRegisterPermissionByManifestFile()) {
            checkPermissionRegistrationStatus(permissionManifestInfo, getPermissionName());
        }
    }

    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
    }

    public void checkSelfByTargetSdkVersion(Context context) {
        int minTargetSdkVersion = getMinTargetSdkVersion(context);
        if (PermissionVersion.getTargetSdkVersion(context) >= minTargetSdkVersion) {
            return;
        }
        throw new IllegalStateException("Request \"" + getPermissionName() + "\" permission, The targetSdkVersion SDK must be " + minTargetSdkVersion + " or more, if you do not want to upgrade targetSdkVersion, please apply with the old permission");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof IPermission) {
            return PermissionUtils.equalsPermission(this, (IPermission) obj);
        }
        if (obj instanceof String) {
            return PermissionUtils.equalsPermission(this, (String) obj);
        }
        return false;
    }

    public Intent getAndroidSettingIntent() {
        return PermissionSettingPage.getAndroidSettingsIntent();
    }

    public Intent getApplicationDetailsSettingIntent(Context context) {
        return PermissionSettingPage.getApplicationDetailsSettingsIntent(context, this);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public /* synthetic */ List getForegroundPermissions(Context context) {
        return b.b(this, context);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public /* synthetic */ int getMinTargetSdkVersion(Context context) {
        return b.c(this, context);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public /* synthetic */ List getOldPermissions(Context context) {
        return b.d(this, context);
    }

    public Uri getPackageNameUri(Context context) {
        return PermissionUtils.getPackageNameUri(context);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public /* synthetic */ String getPermissionGroup(Context context) {
        return b.e(this, context);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public final /* synthetic */ List getPermissionSettingIntents(Context context) {
        return b.f(this, context);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public /* synthetic */ int getRequestIntervalTime(Context context) {
        return b.g(this, context);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public /* synthetic */ int getResultWaitTime(Context context) {
        return b.h(this, context);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public /* synthetic */ boolean isBackgroundPermission(Context context) {
        return b.i(this, context);
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public final /* synthetic */ boolean isGrantedPermission(Context context) {
        return b.j(this, context);
    }

    public abstract boolean isRegisterPermissionByManifestFile();

    @Override // com.hjq.permissions.permission.base.IPermission
    public /* synthetic */ boolean isSupportRequestPermission(Context context) {
        return b.k(this, context);
    }

    public String toString() {
        return getPermissionName();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
    }

    public BasePermission(Parcel parcel) {
    }

    public static boolean checkOpPermission(Context context, String str, int i10, boolean z) throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException {
        int opPermissionMode = getOpPermissionMode(context, str, i10);
        return opPermissionMode == -1 ? z : opPermissionMode == 0;
    }

    public static void checkPermissionRegistrationStatus(List<PermissionManifestInfo> list, String str) {
        checkPermissionRegistrationStatus(list, str, Integer.MAX_VALUE);
    }

    public static void checkPermissionRegistrationStatus(List<PermissionManifestInfo> list, String str, int i10) {
        checkPermissionRegistrationStatus(list != null ? findPermissionInfoByList(list, str) : null, str, i10);
    }

    public static void checkPermissionRegistrationStatus(PermissionManifestInfo permissionManifestInfo, String str, int i10) {
        String strI;
        if (permissionManifestInfo != null) {
            int i11 = permissionManifestInfo.maxSdkVersion;
            if (i11 < i10) {
                StringBuilder sb2 = new StringBuilder("The AndroidManifest.xml file <uses-permission android:name=\"");
                sb2.append(str);
                sb2.append("\" android:maxSdkVersion=\"");
                sb2.append(i11);
                sb2.append("\" /> does not meet the requirements, ");
                if (i10 != Integer.MAX_VALUE) {
                    strI = da.b.a(i10, "the minimum requirement for maxSdkVersion is ");
                } else {
                    strI = g.b.i("please delete the android:maxSdkVersion=\"", i11, "\" attribute");
                }
                sb2.append(strI);
                throw new IllegalArgumentException(sb2.toString());
            }
            return;
        }
        throw new IllegalStateException(g.b.A("Please register permissions in the AndroidManifest.xml file <uses-permission android:name=\"", str, "\" />"));
    }

    public static int getOpPermissionMode(Context context, String str, int i10) throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException {
        AppOpsManager appOpsManagerG;
        if (PermissionVersion.isAndroid6()) {
            appOpsManagerG = h.g(context.getSystemService(a.e()));
        } else {
            appOpsManagerG = h.g(context.getSystemService("appops"));
        }
        if (appOpsManagerG == null) {
            return -1;
        }
        try {
            Class<?> cls = Class.forName(a.e().getName());
            try {
                i10 = cls.getDeclaredField(str).getInt(null);
            } catch (NoSuchFieldException unused) {
            }
            Class<?> cls2 = Integer.TYPE;
            return ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManagerG, Integer.valueOf(i10), Integer.valueOf(context.getApplicationInfo().uid), context.getPackageName())).intValue();
        } catch (Exception e7) {
            e7.printStackTrace();
            return -1;
        }
    }
}
