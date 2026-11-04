package com.hjq.permissions.fragment.impl.android;

import com.hjq.permissions.core.PermissionChannelImpl;
import com.hjq.permissions.core.PermissionChannelImplByRequestPermissions;

/* loaded from: classes.dex */
public final class PermissionAndroidFragmentByRequestPermissions extends PermissionAndroidFragment {
    private final PermissionChannelImpl mPermissionChannelImpl = new PermissionChannelImplByRequestPermissions(this);

    @Override // com.hjq.permissions.fragment.IFragmentMethodExtension
    public PermissionChannelImpl getPermissionChannelImpl() {
        return this.mPermissionChannelImpl;
    }
}
