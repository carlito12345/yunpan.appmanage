package com.hjq.permissions.manifest;

import com.hjq.permissions.manifest.node.ActivityManifestInfo;
import com.hjq.permissions.manifest.node.ApplicationManifestInfo;
import com.hjq.permissions.manifest.node.BroadcastReceiverManifestInfo;
import com.hjq.permissions.manifest.node.PermissionManifestInfo;
import com.hjq.permissions.manifest.node.ServiceManifestInfo;
import com.hjq.permissions.manifest.node.UsesSdkManifestInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class AndroidManifestInfo {
    public ApplicationManifestInfo applicationInfo;
    public UsesSdkManifestInfo usesSdkInfo;
    public String packageName = "";
    public final List<PermissionManifestInfo> permissionInfoList = new ArrayList();
    public final List<String> queriesPackageList = new ArrayList();
    public final List<ActivityManifestInfo> activityInfoList = new ArrayList();
    public final List<ServiceManifestInfo> serviceInfoList = new ArrayList();
    public final List<BroadcastReceiverManifestInfo> receiverInfoList = new ArrayList();
}
