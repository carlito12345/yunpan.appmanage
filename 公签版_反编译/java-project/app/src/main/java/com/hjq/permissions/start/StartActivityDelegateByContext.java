package com.hjq.permissions.start;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.hjq.permissions.tools.PermissionUtils;

/* loaded from: classes.dex */
public final class StartActivityDelegateByContext implements IStartActivityDelegate {
    private final Context mContext;

    public StartActivityDelegateByContext(Context context) {
        this.mContext = context;
    }

    @Override // com.hjq.permissions.start.IStartActivityDelegate
    public void startActivity(Intent intent) {
        Activity activityFindActivity = PermissionUtils.findActivity(this.mContext);
        if (activityFindActivity != null) {
            activityFindActivity.startActivity(intent);
        } else {
            intent.addFlags(268435456);
            this.mContext.startActivity(intent);
        }
    }

    @Override // com.hjq.permissions.start.IStartActivityDelegate
    public void startActivityForResult(Intent intent, int i10) {
        Activity activityFindActivity = PermissionUtils.findActivity(this.mContext);
        if (activityFindActivity != null) {
            activityFindActivity.startActivityForResult(intent, i10);
        } else {
            intent.addFlags(268435456);
            this.mContext.startActivity(intent);
        }
    }
}
