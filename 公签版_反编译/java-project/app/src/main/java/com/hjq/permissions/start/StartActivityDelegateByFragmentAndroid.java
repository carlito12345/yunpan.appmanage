package com.hjq.permissions.start;

import android.app.Fragment;
import android.content.Intent;

/* loaded from: classes.dex */
public final class StartActivityDelegateByFragmentAndroid implements IStartActivityDelegate {
    private final Fragment mFragment;

    public StartActivityDelegateByFragmentAndroid(Fragment fragment) {
        this.mFragment = fragment;
    }

    @Override // com.hjq.permissions.start.IStartActivityDelegate
    public void startActivity(Intent intent) {
        this.mFragment.startActivity(intent);
    }

    @Override // com.hjq.permissions.start.IStartActivityDelegate
    public void startActivityForResult(Intent intent, int i10) {
        this.mFragment.startActivityForResult(intent, i10);
    }
}
