package com.hjq.permissions.manager;

import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.tools.PermissionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class AlreadyRequestPermissionsManager {
    private static final List<String> ALREADY_REQUEST_PERMISSIONS_LIST = new ArrayList();

    private AlreadyRequestPermissionsManager() {
    }

    public static void addAlreadyRequestPermissions(List<IPermission> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<IPermission> it = list.iterator();
        while (it.hasNext()) {
            String permissionName = it.next().getPermissionName();
            List<String> list2 = ALREADY_REQUEST_PERMISSIONS_LIST;
            if (!PermissionUtils.containsPermission(list2, permissionName)) {
                list2.add(permissionName);
            }
        }
    }

    public static boolean isAlreadyRequestPermissions(IPermission iPermission) {
        if (iPermission == null) {
            return false;
        }
        return PermissionUtils.containsPermission(ALREADY_REQUEST_PERMISSIONS_LIST, iPermission.getPermissionName());
    }
}
