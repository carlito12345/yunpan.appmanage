package com.hjq.permissions;

import android.app.Activity;
import com.hjq.permissions.core.PermissionRequestMainLogic;
import com.hjq.permissions.fragment.factory.PermissionFragmentFactory;
import java.util.List;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static void a(OnPermissionInterceptor onPermissionInterceptor, Activity activity, List list, PermissionFragmentFactory permissionFragmentFactory, OnPermissionDescription onPermissionDescription, OnPermissionCallback onPermissionCallback) {
        new PermissionRequestMainLogic(activity, list, permissionFragmentFactory, onPermissionInterceptor, onPermissionDescription, onPermissionCallback).request();
    }

    public static void b(OnPermissionInterceptor onPermissionInterceptor, Activity activity, boolean z, List list, List list2, List list3, OnPermissionCallback onPermissionCallback) {
        if (onPermissionCallback == null) {
            return;
        }
        onPermissionCallback.onPermissionResult(list2, list3);
    }

    public static void c(OnPermissionInterceptor onPermissionInterceptor, Activity activity, List list, PermissionFragmentFactory permissionFragmentFactory, OnPermissionDescription onPermissionDescription, OnPermissionCallback onPermissionCallback) {
        onPermissionInterceptor.dispatchPermissionRequest(activity, list, permissionFragmentFactory, onPermissionDescription, onPermissionCallback);
    }
}
