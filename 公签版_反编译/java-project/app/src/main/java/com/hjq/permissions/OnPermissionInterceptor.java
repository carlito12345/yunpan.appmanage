package com.hjq.permissions;

import android.app.Activity;
import com.hjq.permissions.fragment.factory.PermissionFragmentFactory;
import com.hjq.permissions.permission.base.IPermission;
import java.util.List;

/* loaded from: classes.dex */
public interface OnPermissionInterceptor {
    void dispatchPermissionRequest(Activity activity, List<IPermission> list, PermissionFragmentFactory<?, ?> permissionFragmentFactory, OnPermissionDescription onPermissionDescription, OnPermissionCallback onPermissionCallback);

    void onRequestPermissionEnd(Activity activity, boolean z, List<IPermission> list, List<IPermission> list2, List<IPermission> list3, OnPermissionCallback onPermissionCallback);

    void onRequestPermissionStart(Activity activity, List<IPermission> list, PermissionFragmentFactory<?, ?> permissionFragmentFactory, OnPermissionDescription onPermissionDescription, OnPermissionCallback onPermissionCallback);
}
