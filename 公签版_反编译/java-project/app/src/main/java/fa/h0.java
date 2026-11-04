package fa;

import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.magica.MagicaService;
import com.yunpan.appmanage.service.StartService;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final class h0 {

    /* renamed from: c, reason: collision with root package name */
    public String f5686c;

    /* renamed from: a, reason: collision with root package name */
    public boolean f5684a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5685b = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5687d = false;

    /* renamed from: e, reason: collision with root package name */
    public gh.a f5688e = null;

    /* renamed from: f, reason: collision with root package name */
    public long f5689f = 0;

    /* renamed from: g, reason: collision with root package name */
    public final f0 f5690g = new f0();

    public static void a() throws Exception {
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (!kVar.f4055k) {
            if (!XXPermissions.isGrantedPermission(kVar.f4035a, PermissionLists.getWriteSettingsPermission())) {
                i("WRITE_SETTINGS");
            }
            j("android.permission.WRITE_SECURE_SETTINGS");
            j("android.permission.DUMP");
            j("android.permission.READ_LOGS");
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 23) {
                if (!XXPermissions.isGrantedPermission(kVar.f4035a, PermissionLists.getPackageUsageStatsPermission())) {
                    j("android.permission.PACKAGE_USAGE_STATS");
                    i("GET_USAGE_STATS");
                }
                if (!XXPermissions.isGrantedPermission(kVar.f4035a, PermissionLists.getAnswerPhoneCallsPermission())) {
                    i("ANSWER_PHONE_CALLS");
                }
                j("android.permission.GET_APP_OPS_STATS");
                if (!XXPermissions.isGrantedPermissions(kVar.f4035a, new IPermission[]{PermissionLists.getReadExternalStoragePermission(), PermissionLists.getWriteExternalStoragePermission()})) {
                    i("READ_EXTERNAL_STORAGE");
                    i("WRITE_EXTERNAL_STORAGE");
                }
                if (!XXPermissions.isGrantedPermission(kVar.f4035a, PermissionLists.getSystemAlertWindowPermission())) {
                    i("SYSTEM_ALERT_WINDOW");
                }
            }
            if (!XXPermissions.isGrantedPermission(kVar.f4035a, PermissionLists.getRequestInstallPackagesPermission())) {
                if (i10 == 30) {
                    Toaster.showLong((CharSequence) "自动授权中，如果闪退请重新打开");
                    try {
                        Thread.sleep(2555L);
                    } catch (Exception unused) {
                    }
                }
                i("REQUEST_INSTALL_PACKAGES");
            }
            if (Build.VERSION.SDK_INT >= 18) {
                com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                String string = Settings.Secure.getString(kVar2.f4035a.getContentResolver(), "enabled_notification_listeners");
                String str = "";
                if (string == null || string.equals("null")) {
                    string = "";
                }
                if (!android.support.v4.media.session.a.D(new StringBuilder(), kVar2.f4041d, "/", string)) {
                    StringBuilder sbB = d0.f.b(string, ":");
                    sbB.append(kVar2.f4041d);
                    sbB.append("/");
                    sbB.append(StartService.class.getName());
                    String strReplace = sbB.toString().replace("::", "");
                    if (strReplace.startsWith(":")) {
                        strReplace = strReplace.substring(1);
                    }
                    if (strReplace.endsWith(":")) {
                        strReplace = android.support.v4.media.session.a.l(1, 0, strReplace);
                    }
                    Settings.Secure.putString(kVar2.f4035a.getContentResolver(), "enabled_notification_listeners", strReplace);
                    Settings.Secure.putInt(kVar2.f4035a.getContentResolver(), "notification_enabled", 1);
                    StringBuilder sb2 = new StringBuilder("cmd notification allow_listener");
                    if (kVar2.f4060n != 0) {
                        str = " --user " + kVar2.f4060n;
                    }
                    sb2.append(str);
                    sb2.append(" ");
                    sb2.append(kVar2.f4041d);
                    sb2.append("/");
                    sb2.append(StartService.class.getName());
                    u9.d.r(sb2.toString()).l0();
                }
            }
        }
        u9.d.r("settings put global install_non_market_apps 1").e0(null);
        if (com.yunpan.appmanage.util.v.f4106a.K) {
            try {
                if (u9.d.r("getprop sys.jsbd.apk_verify").l0().k().get(0) == "1") {
                } else {
                    throw new Exception();
                }
            } catch (Exception unused2) {
                u9.d.r("setprop sys.jsbd.apk_verify 1").e0(null);
            }
        }
    }

    public static boolean b() {
        androidx.room.s sVarL0 = u9.d.r(Name.MARK).l0();
        sVarL0.k().addAll(sVarL0.j());
        return sVarL0.k().toString().contains("uid=0(root");
    }

    public static h0 c() {
        return g0.f5682a;
    }

    public static void i(String str) {
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        String str2 = "";
        sb2.append(kVar.f4047g ? "cmd " : "");
        sb2.append("appops set");
        if (kVar.f4060n != 0) {
            str2 = " --user " + kVar.f4060n;
        }
        sb2.append(str2);
        sb2.append(" ");
        sb2.append(AppStart.f3772h.getPackageName());
        sb2.append(" ");
        sb2.append(str);
        sb2.append(" allow");
        u9.d.r(sb2.toString()).e0(null);
    }

    public static void j(String str) {
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (kVar.f4060n == 0) {
            u9.d.r("pm grant " + AppStart.f3772h.getPackageName() + " " + str).e0(null);
            return;
        }
        u9.d.r("pm grant --user " + kVar.f4060n + " " + AppStart.f3772h.getPackageName() + " " + str).e0(null);
    }

    public final String d() {
        String str = this.f5686c;
        if (str != null) {
            return str;
        }
        try {
            if (AppStart.f3772h.getCacheDir().getParentFile().getParentFile().getName().length() < 4 && Integer.valueOf(AppStart.f3772h.getCacheDir().getParentFile().getParentFile().getName()).intValue() > 0) {
                String path = AppStart.f3772h.getExternalCacheDir().getParentFile().getParentFile().getParentFile().getParentFile().getPath();
                this.f5686c = path;
                if (!path.isEmpty()) {
                    return this.f5686c;
                }
            }
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 19) {
            ExecutorService executorService = u9.d.f15554a;
            v9.c.a();
            androidx.room.s sVarL0 = u9.d.r("ls -l /sdcard").l0();
            String string = sVarL0.k().toString();
            if (sVarL0.q() && string.contains("storage/")) {
                String strSubstring = string.substring(string.lastIndexOf("storage/"));
                this.f5686c = strSubstring;
                if (strSubstring.contains("]")) {
                    String str2 = this.f5686c;
                    this.f5686c = str2.substring(0, str2.indexOf("]"));
                }
                if (!this.f5686c.startsWith("/")) {
                    this.f5686c = "/" + this.f5686c;
                }
            }
        }
        if (this.f5686c == null) {
            if (Environment.getExternalStorageState().contains("mounted")) {
                this.f5686c = Environment.getExternalStorageDirectory().getAbsolutePath();
            } else {
                this.f5686c = "";
            }
        }
        return this.f5686c;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:103:0x02ab
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:225)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:195)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:62)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x024f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e() {
        /*
            Method dump skipped, instructions count: 850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: fa.h0.e():void");
    }

    public final boolean f() {
        if (com.yunpan.appmanage.util.v.f4106a.f4108a0) {
            return false;
        }
        return this.f5684a;
    }

    public final void g() {
        u9.d.r("setenforce 0").l0();
        u9.d.r("setprop ro.secure 0").l0();
        Iterator it = u9.d.r("mount").l0().k().iterator();
        String str = "";
        while (true) {
            String str2 = " /";
            if (!it.hasNext()) {
                break;
            }
            String strReplaceAll = (String) it.next();
            if (strReplaceAll.contains(" /system ")) {
                str2 = " /system";
            } else if (strReplaceAll.contains(" /vendor ")) {
                str2 = " /vendor";
            } else if (strReplaceAll.contains(" /oem ")) {
                str2 = " /oem";
            } else if (strReplaceAll.contains(" / ")) {
            }
            while (strReplaceAll.contains("  ")) {
                strReplaceAll = strReplaceAll.replaceAll("  ", " ");
            }
            String[] strArrSplit = strReplaceAll.split(" ");
            if (strArrSplit.length >= 4) {
                if (strReplaceAll.contains(" (ro,")) {
                    str = strArrSplit[4];
                    StringBuilder sb2 = new StringBuilder("mount -o rw,remount -t ");
                    sb2.append(strArrSplit[4]);
                    sb2.append(" ");
                    u9.d.r(g.b.l(strArrSplit[0], str2, sb2)).l0();
                } else if (strReplaceAll.contains(" ro,")) {
                    String str3 = strArrSplit[2];
                    StringBuilder sb3 = new StringBuilder("mount -o rw,remount -t ");
                    sb3.append(strArrSplit[2]);
                    sb3.append(" ");
                    u9.d.r(g.b.l(strArrSplit[0], str2, sb3)).l0();
                    str = str3;
                }
            }
        }
        androidx.room.s sVarL0 = u9.d.r("touch /system/app/111222").l0();
        if (sVarL0.f2426b != 0) {
            if (str.isEmpty()) {
                u9.d.r("mount -o remount,rw /oem").l0();
                u9.d.r("mount -o remount,rw /system").l0();
                u9.d.r("mount -o remount,rw /").l0();
            } else {
                u9.d.r(g.b.A("mount -o remount,rw -t ", str, " /oem")).l0();
                u9.d.r("mount -o remount,rw -t " + str + " /system").l0();
                u9.d.r("mount -o remount,rw -t " + str + " /").l0();
            }
            sVarL0 = u9.d.r("touch /system/app/111222").l0();
        }
        if (sVarL0.f2426b == 0) {
            this.f5687d = true;
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.j.f4033a.f4058m = true;
            u9.d.r("rm -rf /system/app/111222").l0();
        }
        if (u9.d.r("touch /system/bin/111222").l0().f2426b == 0) {
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.j.f4033a.l = true;
            u9.d.r("rm -rf /system/bin/111222").l0();
        }
    }

    public final boolean h() throws InterruptedException {
        if (Build.VERSION.SDK_INT < 29) {
            return false;
        }
        try {
            AppStart.f3772h.bindIsolatedService(new Intent(AppStart.f3772h, (Class<?>) MagicaService.class), 1, "magica", AppStart.f3772h.getMainExecutor(), this.f5690g);
            Thread.sleep(1000L);
            if (b()) {
                this.f5684a = true;
                a();
                g();
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
