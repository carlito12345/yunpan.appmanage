package com.hjq.permissions.fragment.impl.androidx;

import com.hjq.permissions.core.PermissionChannelImpl;
import com.hjq.permissions.core.PermissionChannelImplByRequestPermissions;

/* loaded from: classes.dex */
public final class PermissionAndroidXFragmentByRequestPermissions extends PermissionAndroidXFragment {
    private final PermissionChannelImpl mPermissionChannelImpl = new PermissionChannelImplByRequestPermissions(this);

    @Override // com.hjq.permissions.fragment.IFragmentMethodExtension
    public PermissionChannelImpl getPermissionChannelImpl() {
        return this.mPermissionChannelImpl;
    }
}
