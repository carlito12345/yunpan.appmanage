package com.hjq.permissions.start;

import android.app.Activity;
import android.content.Intent;

/* loaded from: classes.dex */
public final class StartActivityDelegateByActivity implements IStartActivityDelegate {
    private final Activity mActivity;

    public StartActivityDelegateByActivity(Activity activity) {
        this.mActivity = activity;
    }

    @Override // com.hjq.permissions.start.IStartActivityDelegate
    public void startActivity(Intent intent) {
        this.mActivity.startActivity(intent);
    }

    @Override // com.hjq.permissions.start.IStartActivityDelegate
    public void startActivityForResult(Intent intent, int i10) {
        this.mActivity.startActivityForResult(intent, i10);
    }
}
