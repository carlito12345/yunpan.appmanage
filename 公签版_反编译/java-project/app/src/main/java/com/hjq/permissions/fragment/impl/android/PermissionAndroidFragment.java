package com.hjq.permissions.fragment.impl.android;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Intent;
import com.hjq.permissions.core.OnPermissionFragmentCallback;
import com.hjq.permissions.fragment.IFragmentMethod;

/* loaded from: classes.dex */
public abstract class PermissionAndroidFragment extends Fragment implements IFragmentMethod<Activity, FragmentManager> {
    @Override // com.hjq.permissions.fragment.IFragmentMethodExtension
    public void commitFragmentDetach() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            return;
        }
        fragmentManager.beginTransaction().remove(this).commitAllowingStateLoss();
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        getPermissionChannelImpl().onFragmentActivityResult(i10, i11, intent);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getPermissionChannelImpl().onFragmentDestroy();
    }

    @Override // android.app.Fragment
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i10, strArr, iArr);
        getPermissionChannelImpl().onFragmentRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        getPermissionChannelImpl().onFragmentResume();
    }

    @Override // com.hjq.permissions.fragment.IFragmentMethodExtension
    public void setNonSystemRestartMark(boolean z) {
        getPermissionChannelImpl().setNonSystemRestartMark(z);
    }

    @Override // com.hjq.permissions.fragment.IFragmentMethodExtension
    public void setPermissionFragmentCallback(OnPermissionFragmentCallback onPermissionFragmentCallback) {
        getPermissionChannelImpl().setPermissionFragmentCallback(onPermissionFragmentCallback);
    }

    @Override // com.hjq.permissions.fragment.IFragmentMethodExtension
    public void commitFragmentAttach(FragmentManager fragmentManager) {
        if (fragmentManager == null) {
            return;
        }
        fragmentManager.beginTransaction().add(this, toString()).commitAllowingStateLoss();
    }
}
