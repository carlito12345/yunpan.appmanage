package fa;

import android.app.ActivityManagerNative;
import android.app.AppOpsManager;
import android.app.IActivityManager;
import android.content.ComponentName;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.hardware.input.IInputManager;
import android.os.Build;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.provider.Settings;
import android.system.Os;
import com.android.internal.app.IAppOpsService;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.PermissionNames;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.shizuku.IUserService;
import com.yunpan.appmanage.shizuku.UserService;

/* loaded from: classes.dex */
public final class o0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5726a = false;

    /* renamed from: b, reason: collision with root package name */
    public final j0 f5727b = new j0(this);

    /* renamed from: c, reason: collision with root package name */
    public final k0 f5728c = new k0(this);

    /* renamed from: d, reason: collision with root package name */
    public final l0 f5729d = new l0(this);

    /* renamed from: e, reason: collision with root package name */
    public IUserService f5730e = null;

    /* renamed from: f, reason: collision with root package name */
    public final com.bumptech.glide.manager.s f5731f;

    /* renamed from: g, reason: collision with root package name */
    public final m0 f5732g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f5733h;

    public o0() {
        com.bumptech.glide.manager.s sVar = new com.bumptech.glide.manager.s(new ComponentName(AppStart.f3772h.getPackageName(), UserService.class.getName()));
        sVar.f3411b = false;
        sVar.f3413d = "shizuku";
        this.f5731f = sVar;
        this.f5732g = new m0(this);
        this.f5733h = false;
    }

    public static o0 a() {
        return n0.f5722a;
    }

    public static IActivityManager b() {
        return Build.VERSION.SDK_INT >= 26 ? IActivityManager.Stub.asInterface(new hi.c(hi.g.a("activity"))) : ActivityManagerNative.asInterface(new hi.c(hi.g.a("activity")));
    }

    public static IInputManager c() {
        return IInputManager.Stub.asInterface(new hi.c(hi.g.a("input")));
    }

    public static void e() {
        if (Process.myUid() == 1000) {
            return;
        }
        AppStart appStartB = AppStart.b();
        String packageName = AppStart.b().getPackageName();
        if (Build.VERSION.SDK_INT > 23) {
            IAppOpsService iAppOpsServiceAsInterface = IAppOpsService.Stub.asInterface(new hi.c(hi.g.a("appops")));
            if (!XXPermissions.isGrantedPermission(appStartB, PermissionLists.getWriteSettingsPermission())) {
                try {
                    iAppOpsServiceAsInterface.setMode(AppOpsManager.permissionToOpCode("android.permission.WRITE_SETTINGS"), Os.getuid(), packageName, 0);
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
            if (!XXPermissions.isGrantedPermission(appStartB, PermissionLists.getReadExternalStoragePermission())) {
                try {
                    iAppOpsServiceAsInterface.setMode(AppOpsManager.permissionToOpCode("android.permission.READ_EXTERNAL_STORAGE"), Os.getuid(), packageName, 0);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (!XXPermissions.isGrantedPermission(appStartB, PermissionLists.getWriteExternalStoragePermission())) {
                try {
                    iAppOpsServiceAsInterface.setMode(AppOpsManager.permissionToOpCode("android.permission.WRITE_EXTERNAL_STORAGE"), Os.getuid(), packageName, 0);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            if (!XXPermissions.isGrantedPermission(appStartB, PermissionLists.getPackageUsageStatsPermission())) {
                try {
                    iAppOpsServiceAsInterface.setMode(AppOpsManager.strOpToOp("android:get_usage_stats"), Os.getuid(), packageName, 0);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
            if (!XXPermissions.isGrantedPermission(appStartB, PermissionLists.getAnswerPhoneCallsPermission())) {
                try {
                    iAppOpsServiceAsInterface.setMode(AppOpsManager.permissionToOpCode(PermissionNames.ANSWER_PHONE_CALLS), Os.getuid(), packageName, 0);
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
            }
            if (!XXPermissions.isGrantedPermission(appStartB, PermissionLists.getSystemAlertWindowPermission())) {
                try {
                    iAppOpsServiceAsInterface.setMode(AppOpsManager.permissionToOpCode("android.permission.SYSTEM_ALERT_WINDOW"), Os.getuid(), packageName, 0);
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
            }
            if (!XXPermissions.isGrantedPermission(appStartB, PermissionLists.getRequestInstallPackagesPermission())) {
                try {
                    iAppOpsServiceAsInterface.setMode(AppOpsManager.permissionToOpCode("android.permission.REQUEST_INSTALL_PACKAGES"), Os.getuid(), packageName, 0);
                } catch (Exception e15) {
                    e15.printStackTrace();
                }
            }
        }
        IPackageManager iPackageManagerAsInterface = IPackageManager.Stub.asInterface(new hi.c(hi.g.a("package")));
        if (!p000if.a.b0(appStartB)) {
            try {
                iPackageManagerAsInterface.grantRuntimePermission(packageName, "android.permission.WRITE_SECURE_SETTINGS", 0);
            } catch (Exception e16) {
                e16.printStackTrace();
            }
        }
        if (AppStart.b().f3775c.checkPermission("android.permission.DUMP", packageName) != 0) {
            try {
                iPackageManagerAsInterface.grantRuntimePermission(packageName, "android.permission.DUMP", 0);
            } catch (Exception e17) {
                e17.printStackTrace();
            }
        }
        if (AppStart.b().f3775c.checkPermission("android.permission.READ_LOGS", packageName) != 0) {
            try {
                iPackageManagerAsInterface.grantRuntimePermission(packageName, "android.permission.READ_LOGS", 0);
            } catch (Exception e18) {
                e18.printStackTrace();
            }
        }
        if (Settings.Global.getInt(appStartB.getContentResolver(), "verifier_verify_adb_installs", 1) != 0) {
            Settings.Global.putInt(com.yunpan.appmanage.util.k.f().f4035a.getContentResolver(), "verifier_verify_adb_installs", 0);
        }
        if (Settings.Global.getInt(appStartB.getContentResolver(), "package_verifier_enable", 1) != 0) {
            Settings.Global.putInt(com.yunpan.appmanage.util.k.f().f4035a.getContentResolver(), "package_verifier_enable", 0);
        }
        if (Settings.Global.getInt(appStartB.getContentResolver(), "install_non_market_apps", 1) != 1) {
            Settings.Global.putInt(com.yunpan.appmanage.util.k.f().f4035a.getContentResolver(), "install_non_market_apps", 1);
        }
    }

    public static boolean f() throws PackageManager.NameNotFoundException {
        try {
            AppStart.f3772h.f3775c.getApplicationInfo("moe.shizuku.privileged.api", 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final void d() {
        if (this.f5733h || com.yunpan.appmanage.util.v.f4106a.f4136p || !f()) {
            return;
        }
        this.f5733h = true;
        try {
            hi.b.a(this.f5727b);
            k0 k0Var = this.f5728c;
            synchronized (hi.b.f8218k) {
                hi.b.l.add(new hi.a(k0Var));
            }
            hi.b.b(this.f5729d);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public final void g() {
        m0 m0Var = this.f5732g;
        com.bumptech.glide.manager.s sVar = this.f5731f;
        if (!f()) {
            throw new Exception("请先安装Shizuku");
        }
        if (hi.b.f8214g) {
            throw new Exception("请先升级Shizuku版本");
        }
        IBinder iBinder = hi.b.f8208a;
        if (iBinder == null || !iBinder.pingBinder()) {
            throw new Exception("请先激活Shizuku");
        }
        try {
            hi.b.m(sVar);
        } catch (Exception unused) {
        }
        this.f5730e = null;
        try {
            if (hi.b.f() == 0) {
                hi.b.e(sVar, m0Var);
                return;
            }
            if (hi.b.l()) {
                throw new Exception("请在shizuku中允许" + AppStart.f3772h.getString(R.string.app_name) + "使用");
            }
            try {
                ((df.a) hi.b.j()).k();
                throw new Exception("请先允许权限");
            } catch (RemoteException e7) {
                throw new RuntimeException(e7);
            }
        } catch (Exception e10) {
            throw new Exception(String.valueOf(e10.getMessage()));
        }
    }
}
