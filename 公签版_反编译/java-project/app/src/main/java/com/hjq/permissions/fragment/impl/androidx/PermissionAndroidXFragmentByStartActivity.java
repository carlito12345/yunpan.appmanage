package com.hjq.permissions.fragment.impl.androidx;

import com.hjq.permissions.core.PermissionChannelImpl;
import com.hjq.permissions.core.PermissionChannelImplByStartActivity;

/* loaded from: classes.dex */
public final class PermissionAndroidXFragmentByStartActivity extends PermissionAndroidXFragment {
    private final PermissionChannelImpl mPermissionChannelImpl = new PermissionChannelImplByStartActivity(this);

    @Override // com.hjq.permissions.fragment.IFragmentMethodExtension
    public PermissionChannelImpl getPermissionChannelImpl() {
        return this.mPermissionChannelImpl;
    }
}
