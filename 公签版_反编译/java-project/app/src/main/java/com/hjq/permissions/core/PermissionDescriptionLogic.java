package com.hjq.permissions.core;

import android.app.Activity;
import com.hjq.permissions.OnPermissionDescription;
import com.hjq.permissions.permission.base.IPermission;
import java.util.List;

/* loaded from: classes.dex */
public final class PermissionDescriptionLogic implements OnPermissionFragmentCallback {
    private final Activity mActivity;
    private final Runnable mFinishRunnable;
    private final OnPermissionDescription mPermissionDescription;
    private final List<IPermission> mPermissions;

    public PermissionDescriptionLogic(Activity activity, List<IPermission> list, Runnable runnable, OnPermissionDescription onPermissionDescription) {
        this.mActivity = activity;
        this.mPermissions = list;
        this.mPermissionDescription = onPermissionDescription;
        this.mFinishRunnable = runnable;
    }

    @Override // com.hjq.permissions.core.OnPermissionFragmentCallback
    public void onRequestPermissionAnomaly() {
        this.mPermissionDescription.onRequestPermissionEnd(this.mActivity, this.mPermissions);
    }

    @Override // com.hjq.permissions.core.OnPermissionFragmentCallback
    public void onRequestPermissionFinish() {
        this.mPermissionDescription.onRequestPermissionEnd(this.mActivity, this.mPermissions);
        this.mFinishRunnable.run();
    }

    @Override // com.hjq.permissions.core.OnPermissionFragmentCallback
    public void onRequestPermissionNow() {
        this.mPermissionDescription.onRequestPermissionStart(this.mActivity, this.mPermissions);
    }
}
