package com.hjq.permissions;

import android.app.Activity;
import com.hjq.permissions.permission.base.IPermission;
import java.util.List;

/* loaded from: classes.dex */
final class DefaultPermissionDescription implements OnPermissionDescription {
    @Override // com.hjq.permissions.OnPermissionDescription
    public void askWhetherRequestPermission(Activity activity, List<IPermission> list, Runnable runnable, Runnable runnable2) {
        runnable.run();
    }

    @Override // com.hjq.permissions.OnPermissionDescription
    public void onRequestPermissionEnd(Activity activity, List<IPermission> list) {
    }

    @Override // com.hjq.permissions.OnPermissionDescription
    public void onRequestPermissionStart(Activity activity, List<IPermission> list) {
    }
}
