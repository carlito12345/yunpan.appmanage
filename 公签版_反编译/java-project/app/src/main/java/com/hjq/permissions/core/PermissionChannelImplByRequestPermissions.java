package com.hjq.permissions.core;

import a2.h;
import android.app.Activity;
import com.hjq.permissions.fragment.IFragmentMethod;
import com.hjq.permissions.manager.AlreadyRequestPermissionsManager;
import com.hjq.permissions.manager.PermissionRequestCodeManager;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.tools.PermissionUtils;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.List;

/* loaded from: classes.dex */
public final class PermissionChannelImplByRequestPermissions extends PermissionChannelImpl {
    public PermissionChannelImplByRequestPermissions(IFragmentMethod<?, ?> iFragmentMethod) {
        super(iFragmentMethod);
    }

    @Override // com.hjq.permissions.core.PermissionChannelImpl, com.hjq.permissions.fragment.IFragmentCallback
    public void onFragmentRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        if (i10 != getPermissionRequestCode()) {
            return;
        }
        PermissionRequestCodeManager.releaseRequestCode(i10);
        notificationPermissionCallback();
    }

    @Override // com.hjq.permissions.core.PermissionChannelImpl
    public void startPermissionRequest(Activity activity, List<IPermission> list, int i10) {
        if (!PermissionVersion.isAndroid6()) {
            sendTask(new h(12, this), 0L);
        } else {
            requestPermissions(PermissionUtils.convertPermissionArray(list), i10);
            AlreadyRequestPermissionsManager.addAlreadyRequestPermissions(list);
        }
    }
}
