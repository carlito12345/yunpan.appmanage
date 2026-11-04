package com.hjq.permissions.fragment.impl.androidx;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.a;
import androidx.fragment.app.d1;
import androidx.fragment.app.j0;
import com.hjq.permissions.core.OnPermissionFragmentCallback;
import com.hjq.permissions.fragment.IFragmentMethod;

/* loaded from: classes.dex */
public abstract class PermissionAndroidXFragment extends Fragment implements IFragmentMethod<j0, d1> {
    @Override // com.hjq.permissions.fragment.IFragmentMethodExtension
    public void commitFragmentDetach() {
        d1 fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            return;
        }
        a aVar = new a(fragmentManager);
        aVar.i(this);
        aVar.d(true);
    }

    @Override // com.hjq.permissions.fragment.IFragmentMethodNative
    public /* bridge */ /* synthetic */ Activity getActivity() {
        return getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        getPermissionChannelImpl().onFragmentActivityResult(i10, i11, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getPermissionChannelImpl().onFragmentDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        getPermissionChannelImpl().onFragmentRequestPermissionsResult(i10, strArr, iArr);
    }

    @Override // androidx.fragment.app.Fragment
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
    public void commitFragmentAttach(d1 d1Var) {
        if (d1Var == null) {
            return;
        }
        a aVar = new a(d1Var);
        aVar.f(0, this, toString(), 1);
        aVar.d(true);
    }
}
