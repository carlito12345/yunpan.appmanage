package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.manifest.node.ActivityManifestInfo;
import com.hjq.permissions.manifest.node.IntentFilterManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.permission.PermissionGroups;
import com.hjq.permissions.permission.PermissionPageType;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.permission.common.DangerousPermission;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ta.q;

/* loaded from: classes.dex */
public abstract class HealthDataBasePermission extends DangerousPermission {
    public HealthDataBasePermission() {
    }

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByManifestFile(Activity activity, List<IPermission> list, AndroidManifestInfo androidManifestInfo, List<PermissionManifestInfo> list2, PermissionManifestInfo permissionManifestInfo) {
        super.checkSelfByManifestFile(activity, list, androidManifestInfo, list2, permissionManifestInfo);
        PermissionVersion.isAndroid16();
        PermissionVersion.isAndroid16();
        Iterator<ActivityManifestInfo> it = androidManifestInfo.activityInfoList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            List<IntentFilterManifestInfo> list3 = it.next().intentFilterInfoList;
            if (list3 != null) {
                Iterator<IntentFilterManifestInfo> it2 = list3.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    IntentFilterManifestInfo next = it2.next();
                    if (next.actionList.contains("android.intent.action.VIEW_PERMISSION_USAGE") && next.categoryList.contains("android.intent.category.HEALTH_PERMISSIONS")) {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    break;
                }
            }
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Please add an intent filter for \"" + activity.getClass() + "\" in the AndroidManifest.xml file.\n" + q.l("\t\t<intent-filter>\n\t\t    <action android:name=\"", "android.intent.action.VIEW_PERMISSION_USAGE", "\" />\n\t\t    <category android:name=\"", "android.intent.category.HEALTH_PERMISSIONS", "\" />\n\t\t</intent-filter>"));
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public String getPermissionGroup(Context context) {
        return PermissionGroups.HEALTH;
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.IPermission
    public PermissionPageType getPermissionPageType(Context context) {
        return PermissionPageType.OPAQUE_ACTIVITY;
    }

    @Override // com.hjq.permissions.permission.common.DangerousPermission, com.hjq.permissions.permission.base.IPermission
    public List<Intent> getPermissionSettingIntents(Context context, boolean z) {
        List<Intent> permissionSettingIntents = super.getPermissionSettingIntents(context, z);
        if (PermissionVersion.isAndroid14() && !PermissionVersion.isAndroid16()) {
            ArrayList arrayList = new ArrayList(3);
            if (!PermissionVersion.isAndroid15()) {
                Intent intent = new Intent("android.health.connect.action.MANAGE_HEALTH_PERMISSIONS");
                intent.putExtra("android.intent.extra.PACKAGE_NAME", context.getPackageName());
                arrayList.add(intent);
                arrayList.add(new Intent("android.health.connect.action.MANAGE_HEALTH_PERMISSIONS"));
            }
            arrayList.add(new Intent("android.health.connect.action.HEALTH_HOME_SETTINGS"));
            permissionSettingIntents.addAll(0, arrayList);
        }
        return permissionSettingIntents;
    }

    public HealthDataBasePermission(Parcel parcel) {
        super(parcel);
    }
}
