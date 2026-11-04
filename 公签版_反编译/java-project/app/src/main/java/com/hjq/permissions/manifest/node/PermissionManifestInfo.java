package com.hjq.permissions.manifest.node;

import com.hjq.permissions.tools.PermissionVersion;

/* loaded from: classes.dex */
public final class PermissionManifestInfo {
    public static final int DEFAULT_MAX_SDK_VERSION = Integer.MAX_VALUE;
    private static final int REQUESTED_PERMISSION_NEVER_FOR_LOCATION;
    public int maxSdkVersion = Integer.MAX_VALUE;
    public String name;
    public int usesPermissionFlags;

    static {
        if (PermissionVersion.isAndroid12()) {
            REQUESTED_PERMISSION_NEVER_FOR_LOCATION = 65536;
        } else {
            REQUESTED_PERMISSION_NEVER_FOR_LOCATION = 65536;
        }
    }

    public boolean neverForLocation() {
        return (this.usesPermissionFlags & REQUESTED_PERMISSION_NEVER_FOR_LOCATION) != 0;
    }
}
