package com.hjq.permissions.fragment.factory;

import android.app.Activity;
import android.os.Bundle;
import com.hjq.permissions.core.OnPermissionFragmentCallback;
import com.hjq.permissions.core.PermissionChannelImpl;
import com.hjq.permissions.permission.PermissionChannel;
import com.hjq.permissions.permission.base.IPermission;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class PermissionFragmentFactory<A extends Activity, M> {
    private final A mActivity;
    private final M mFragmentManager;

    public PermissionFragmentFactory(A a10, M m10) {
        this.mActivity = a10;
        this.mFragmentManager = m10;
    }

    public abstract void createAndCommitFragment(List<IPermission> list, PermissionChannel permissionChannel, OnPermissionFragmentCallback onPermissionFragmentCallback);

    public Bundle generatePermissionArguments(List<IPermission> list, int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt(PermissionChannelImpl.REQUEST_CODE, i10);
        if (list instanceof ArrayList) {
            bundle.putParcelableArrayList(PermissionChannelImpl.REQUEST_PERMISSIONS, (ArrayList) list);
        } else {
            bundle.putParcelableArrayList(PermissionChannelImpl.REQUEST_PERMISSIONS, new ArrayList<>(list));
        }
        return bundle;
    }

    public A getActivity() {
        return this.mActivity;
    }

    public M getFragmentManager() {
        return this.mFragmentManager;
    }
}
