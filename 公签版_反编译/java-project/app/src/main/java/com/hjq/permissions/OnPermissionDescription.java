package com.hjq.permissions;

import android.app.Activity;
import com.hjq.permissions.permission.base.IPermission;
import java.util.List;

/* loaded from: classes.dex */
public interface OnPermissionDescription {
    void askWhetherRequestPermission(Activity activity, List<IPermission> list, Runnable runnable, Runnable runnable2);

    void onRequestPermissionEnd(Activity activity, List<IPermission> list);

    void onRequestPermissionStart(Activity activity, List<IPermission> list);
}
