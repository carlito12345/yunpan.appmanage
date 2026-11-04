package com.hjq.permissions;

import android.app.Activity;
import com.hjq.permissions.fragment.factory.PermissionFragmentFactory;
import java.util.List;

/* loaded from: classes.dex */
final class DefaultPermissionInterceptor implements OnPermissionInterceptor {
    @Override // com.hjq.permissions.OnPermissionInterceptor
    public final /* synthetic */ void dispatchPermissionRequest(Activity activity, List list, PermissionFragmentFactory permissionFragmentFactory, OnPermissionDescription onPermissionDescription, OnPermissionCallback onPermissionCallback) {
        a.a(this, activity, list, permissionFragmentFactory, onPermissionDescription, onPermissionCallback);
    }

    @Override // com.hjq.permissions.OnPermissionInterceptor
    public final /* synthetic */ void onRequestPermissionEnd(Activity activity, boolean z, List list, List list2, List list3, OnPermissionCallback onPermissionCallback) {
        a.b(this, activity, z, list, list2, list3, onPermissionCallback);
    }

    @Override // com.hjq.permissions.OnPermissionInterceptor
    public final /* synthetic */ void onRequestPermissionStart(Activity activity, List list, PermissionFragmentFactory permissionFragmentFactory, OnPermissionDescription onPermissionDescription, OnPermissionCallback onPermissionCallback) {
        a.c(this, activity, list, permissionFragmentFactory, onPermissionDescription, onPermissionCallback);
    }
}
