package com.hjq.permissions.fragment.factory;

import android.app.Activity;
import android.app.FragmentManager;
import com.hjq.permissions.core.OnPermissionFragmentCallback;
import com.hjq.permissions.fragment.impl.android.PermissionAndroidFragment;
import com.hjq.permissions.fragment.impl.android.PermissionAndroidFragmentByRequestPermissions;
import com.hjq.permissions.fragment.impl.android.PermissionAndroidFragmentByStartActivity;
import com.hjq.permissions.manager.PermissionRequestCodeManager;
import com.hjq.permissions.permission.PermissionChannel;
import com.hjq.permissions.permission.base.IPermission;
import java.util.List;

/* loaded from: classes.dex */
public final class PermissionFragmentFactoryByAndroid extends PermissionFragmentFactory<Activity, FragmentManager> {
    public PermissionFragmentFactoryByAndroid(Activity activity, FragmentManager fragmentManager) {
        super(activity, fragmentManager);
    }

    @Override // com.hjq.permissions.fragment.factory.PermissionFragmentFactory
    public void createAndCommitFragment(List<IPermission> list, PermissionChannel permissionChannel, OnPermissionFragmentCallback onPermissionFragmentCallback) {
        PermissionAndroidFragment permissionAndroidFragmentByRequestPermissions = permissionChannel == PermissionChannel.REQUEST_PERMISSIONS ? new PermissionAndroidFragmentByRequestPermissions() : new PermissionAndroidFragmentByStartActivity();
        permissionAndroidFragmentByRequestPermissions.setArguments(generatePermissionArguments(list, PermissionRequestCodeManager.generateRandomRequestCode(65535)));
        permissionAndroidFragmentByRequestPermissions.setNonSystemRestartMark(true);
        permissionAndroidFragmentByRequestPermissions.setPermissionFragmentCallback(onPermissionFragmentCallback);
        permissionAndroidFragmentByRequestPermissions.commitFragmentAttach((PermissionAndroidFragment) getFragmentManager());
    }
}
