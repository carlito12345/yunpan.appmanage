package com.hjq.permissions.core;

import a2.h;
import android.app.Activity;
import android.content.Intent;
import com.hjq.permissions.fragment.IFragmentMethod;
import com.hjq.permissions.manager.AlreadyRequestPermissionsManager;
import com.hjq.permissions.manager.PermissionRequestCodeManager;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.start.StartActivityAgent;
import com.hjq.permissions.tools.PermissionApi;
import java.util.List;

/* loaded from: classes.dex */
public final class PermissionChannelImplByStartActivity extends PermissionChannelImpl {
    private int mIgnoreActivityResultCount;

    public PermissionChannelImplByStartActivity(IFragmentMethod<?, ?> iFragmentMethod) {
        super(iFragmentMethod);
        this.mIgnoreActivityResultCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startPermissionRequest$0() {
        this.mIgnoreActivityResultCount++;
    }

    @Override // com.hjq.permissions.core.PermissionChannelImpl, com.hjq.permissions.fragment.IFragmentCallback
    public void onFragmentActivityResult(int i10, int i11, Intent intent) {
        if (i10 != getPermissionRequestCode()) {
            return;
        }
        int i12 = this.mIgnoreActivityResultCount;
        if (i12 > 0) {
            this.mIgnoreActivityResultCount = i12 - 1;
        } else {
            PermissionRequestCodeManager.releaseRequestCode(i10);
            notificationPermissionCallback();
        }
    }

    @Override // com.hjq.permissions.core.PermissionChannelImpl
    public void startPermissionRequest(Activity activity, List<IPermission> list, int i10) {
        StartActivityAgent.startActivityForResult(activity, getStartActivityDelegate(), PermissionApi.getBestPermissionSettingIntent(activity, list, false), i10, new h(13, this));
        AlreadyRequestPermissionsManager.addAlreadyRequestPermissions(list);
    }
}
