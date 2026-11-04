package com.hjq.permissions;

import com.hjq.permissions.permission.base.IPermission;
import java.util.List;

/* loaded from: classes.dex */
public interface OnPermissionCallback {
    void onPermissionResult(List<IPermission> list, List<IPermission> list2);
}
