package r8;

import android.app.Activity;
import android.content.Context;
import com.hjq.permissions.manifest.AndroidManifestInfo;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.tools.PermissionVersion;
import java.util.List;

/* loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static List b(IPermission iPermission, Context context) {
        return null;
    }

    public static int c(IPermission iPermission, Context context) {
        return iPermission.getFromAndroidVersion(context);
    }

    public static List d(IPermission iPermission, Context context) {
        return null;
    }

    public static String e(IPermission iPermission, Context context) {
        return null;
    }

    public static List f(IPermission iPermission, Context context) {
        return iPermission.getPermissionSettingIntents(context, true);
    }

    public static int g(IPermission iPermission, Context context) {
        return 0;
    }

    public static int h(IPermission iPermission, Context context) {
        return 0;
    }

    public static boolean i(IPermission iPermission, Context context) {
        if (iPermission.getForegroundPermissions(context) == null) {
            return false;
        }
        return !r0.isEmpty();
    }

    public static boolean j(IPermission iPermission, Context context) {
        return iPermission.isGrantedPermission(context, true);
    }

    public static boolean k(IPermission iPermission, Context context) {
        return iPermission.getFromAndroidVersion(context) <= PermissionVersion.getSdkVersion();
    }

    public static void a(IPermission iPermission, Activity activity, List list, AndroidManifestInfo androidManifestInfo) {
    }
}
