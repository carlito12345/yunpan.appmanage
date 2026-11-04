package com.hjq.permissions.fragment.factory;

import androidx.fragment.app.d1;
import androidx.fragment.app.j0;
import com.hjq.permissions.core.OnPermissionFragmentCallback;
import com.hjq.permissions.fragment.impl.androidx.PermissionAndroidXFragment;
import com.hjq.permissions.fragment.impl.androidx.PermissionAndroidXFragmentByRequestPermissions;
import com.hjq.permissions.fragment.impl.androidx.PermissionAndroidXFragmentByStartActivity;
import com.hjq.permissions.manager.PermissionRequestCodeManager;
import com.hjq.permissions.permission.PermissionChannel;
import com.hjq.permissions.permission.base.IPermission;
import java.util.List;

/* loaded from: classes.dex */
public final class PermissionFragmentFactoryByAndroidX extends PermissionFragmentFactory<j0, d1> {
    public PermissionFragmentFactoryByAndroidX(j0 j0Var, d1 d1Var) {
        super(j0Var, d1Var);
    }

    @Override // com.hjq.permissions.fragment.factory.PermissionFragmentFactory
    public void createAndCommitFragment(List<IPermission> list, PermissionChannel permissionChannel, OnPermissionFragmentCallback onPermissionFragmentCallback) {
        PermissionChannel permissionChannel2 = PermissionChannel.REQUEST_PERMISSIONS;
        PermissionAndroidXFragment permissionAndroidXFragmentByRequestPermissions = permissionChannel == permissionChannel2 ? new PermissionAndroidXFragmentByRequestPermissions() : new PermissionAndroidXFragmentByStartActivity();
        int i10 = 65535;
        if (permissionChannel == permissionChannel2) {
            try {
                getActivity().getClass();
            } catch (IllegalArgumentException unused) {
                i10 = 255;
            } catch (Exception unused2) {
            }
        }
        permissionAndroidXFragmentByRequestPermissions.setArguments(generatePermissionArguments(list, PermissionRequestCodeManager.generateRandomRequestCode(i10)));
        permissionAndroidXFragmentByRequestPermissions.setNonSystemRestartMark(true);
        permissionAndroidXFragmentByRequestPermissions.setPermissionFragmentCallback(onPermissionFragmentCallback);
        permissionAndroidXFragmentByRequestPermissions.commitFragmentAttach((PermissionAndroidXFragment) getFragmentManager());
    }
}
