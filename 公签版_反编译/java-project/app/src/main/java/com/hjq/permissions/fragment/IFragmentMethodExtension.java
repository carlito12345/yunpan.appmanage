package com.hjq.permissions.fragment;

import com.hjq.permissions.core.OnPermissionFragmentCallback;
import com.hjq.permissions.core.PermissionChannelImpl;

/* loaded from: classes.dex */
public interface IFragmentMethodExtension<M> {
    void commitFragmentAttach(M m10);

    void commitFragmentDetach();

    PermissionChannelImpl getPermissionChannelImpl();

    void setNonSystemRestartMark(boolean z);

    void setPermissionFragmentCallback(OnPermissionFragmentCallback onPermissionFragmentCallback);
}
