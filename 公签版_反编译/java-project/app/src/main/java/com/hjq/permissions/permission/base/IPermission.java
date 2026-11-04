package com.hjq.permissions.permission.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.permission.PermissionChannel;
import com.hjq.permissions.permission.PermissionPageType;
import java.util.List;

/* loaded from: classes.dex */
public interface IPermission extends Parcelable {
    void checkCompliance(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo);

    List<IPermission> getForegroundPermissions(Context context);

    int getFromAndroidVersion(Context context);

    int getMinTargetSdkVersion(Context context);

    List<IPermission> getOldPermissions(Context context);

    PermissionChannel getPermissionChannel(Context context);

    String getPermissionGroup(Context context);

    String getPermissionName();

    PermissionPageType getPermissionPageType(Context context);

    List<Intent> getPermissionSettingIntents(Context context);

    List<Intent> getPermissionSettingIntents(Context context, boolean z);

    int getRequestIntervalTime(Context context);

    int getResultWaitTime(Context context);

    boolean isBackgroundPermission(Context context);

    boolean isDoNotAskAgainPermission(Activity activity);

    boolean isGrantedPermission(Context context);

    boolean isGrantedPermission(Context context, boolean z);

    boolean isSupportRequestPermission(Context context);
}
