package fa;

import android.content.Intent;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.magica.MagicaService;
import com.yunpan.appmanage.service.StartService;
import j$.nio.charset.StandardCharsets;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final class h0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5684a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5685b;

    /* renamed from: c, reason: collision with root package name */
    public String f5686c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5687d;

    /* renamed from: e, reason: collision with root package name */
    public gh.a f5688e;

    /* renamed from: f, reason: collision with root package name */
    public long f5689f;

    /* renamed from: g, reason: collision with root package name */
    public final f0 f5690g;

    public h0() {
        this.f5684a = false;
        this.f5685b = false;
        this.f5687d = false;
        this.f5688e = null;
        this.f5689f = 0;
        this.f5690g = new f0();
    }

    public static void a() {
        DecimalFormat r22 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k r23 = com.yunpan.appmanage.util.j.f4033a;
        if (r23.f4055k == false) goto L5;
    L48:
        u9.d.r(new String[]{"settings put global install_non_market_apps 1"}).e0(null);
        if (com.yunpan.appmanage.util.v.f4106a.K == false) goto L62;
    L55:
        u9.d.r(new String[]{"setprop sys.jsbd.apk_verify 1"}).e0(null);
        return;
    L51:
        if (u9.d.r(new String[]{"getprop sys.jsbd.apk_verify"}).l0().k().get(0) != "1") goto L54;
        return;
    L54:
        throw new Exception();     // Catch: Exception -> L55
    L62:
        return;
    L5:
        if (XXPermissions.isGrantedPermission(r23.f4035a, PermissionLists.getWriteSettingsPermission()) == true) goto L7;
        i("WRITE_SETTINGS");
    L7:
        j("android.permission.WRITE_SECURE_SETTINGS");
        j("android.permission.DUMP");
        j("android.permission.READ_LOGS");
        int r32 = Build.VERSION.SDK_INT;
        if (r32 < 23) goto L22;
        if (XXPermissions.isGrantedPermission(r23.f4035a, PermissionLists.getPackageUsageStatsPermission()) == true) goto L13;
        j("android.permission.PACKAGE_USAGE_STATS");
        i("GET_USAGE_STATS");
    L13:
        if (XXPermissions.isGrantedPermission(r23.f4035a, PermissionLists.getAnswerPhoneCallsPermission()) == true) goto L15;
        i("ANSWER_PHONE_CALLS");
    L15:
        j("android.permission.GET_APP_OPS_STATS");
        if (XXPermissions.isGrantedPermissions(r23.f4035a, new IPermission[]{PermissionLists.getReadExternalStoragePermission(), PermissionLists.getWriteExternalStoragePermission()}) == true) goto L19;
        i("READ_EXTERNAL_STORAGE");
        i("WRITE_EXTERNAL_STORAGE");
    L19:
        if (XXPermissions.isGrantedPermission(r23.f4035a, PermissionLists.getSystemAlertWindowPermission()) == true) goto L22;
        i("SYSTEM_ALERT_WINDOW");
    L22:
        if (XXPermissions.isGrantedPermission(r23.f4035a, PermissionLists.getRequestInstallPackagesPermission()) == true) goto L29;
        if (r32 != 30) goto L27;
        Toaster.showLong("自动授权中，如果闪退请重新打开");
        Thread.sleep(2555);     // Catch: Exception -> L57
    L27:
        i("REQUEST_INSTALL_PACKAGES");
    L29:
        if (Build.VERSION.SDK_INT < 18) goto L48;
        com.yunpan.appmanage.util.k r24 = com.yunpan.appmanage.util.j.f4033a;
        String r33 = Settings.Secure.getString(r24.f4035a.getContentResolver(), "enabled_notification_listeners");
        String r5 = "";
        if (r33 != null) goto L33;
    L34:
        r33 = "";
    L36:
        if (android.support.v4.media.session.a.D(new StringBuilder(), r24.f4041d, "/", r33) == true) goto L48;
        StringBuilder r34 = d0.f.b(r33, ":");
        r34.append(r24.f4041d);
        r34.append("/");
        r34.append(StartService.class.getName());
        String r35 = r34.toString().replace("::", "");
        if (r35.startsWith(":") == false) goto L41;
        r35 = r35.substring(1);
    L41:
        if (r35.endsWith(":") == false) goto L43;
        r35 = android.support.v4.media.session.a.l(1, 0, r35);
    L43:
        Settings.Secure.putString(r24.f4035a.getContentResolver(), "enabled_notification_listeners", r35);
        Settings.Secure.putInt(r24.f4035a.getContentResolver(), "notification_enabled", 1);
        StringBuilder r36 = new StringBuilder("cmd notification allow_listener");
        if (r24.f4060n == 0) goto L47;
        r5 = " --user " + r24.f4060n;
    L47:
        r36.append(r5);
        r36.append(" ");
        r36.append(r24.f4041d);
        r36.append("/");
        r36.append(StartService.class.getName());
        u9.d.r(new String[]{r36.toString()}).l0();
        goto L48
    L33:
        if (r33.equals("null") == false) goto L36;
        goto L34
    }

    public static boolean b() {
        androidx.room.s r02 = u9.d.r(new String[]{Name.MARK}).l0();
        r02.k().addAll(r02.j());
        return r02.k().toString().contains("uid=0(root");
    }

    public static h0 c() {
        return g0.f5682a;
    }

    public static void i(String r4) {
        StringBuilder r02 = new StringBuilder();
        DecimalFormat r12 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k r13 = com.yunpan.appmanage.util.j.f4033a;
        String r32 = "";
        if (r13.f4047g == false) goto L5;
        String r22 = "cmd ";
    L6:
        r02.append(r22);
        r02.append("appops set");
        if (r13.f4060n == 0) goto L10;
        r32 = " --user " + r13.f4060n;
    L10:
        r02.append(r32);
        r02.append(" ");
        r02.append(AppStart.f3772h.getPackageName());
        r02.append(" ");
        r02.append(r4);
        r02.append(" allow");
        u9.d.r(new String[]{r02.toString()}).e0(null);
        return;
    L5:
        r22 = "";
        goto L6
    }

    public static void j(String r72) {
        DecimalFormat r22 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k r23 = com.yunpan.appmanage.util.j.f4033a;
        if (r23.f4060n != 0) goto L5;
        u9.d.r(new String[]{"pm grant " + AppStart.f3772h.getPackageName() + " " + r72}).e0(null);
        return;
    L5:
        u9.d.r(new String[]{"pm grant --user " + r23.f4060n + " " + AppStart.f3772h.getPackageName() + " " + r72}).e0(null);
    }

    public final String d() {
        String r12 = this.f5686c;
        if (r12 == null) goto L34;
        return r12;
    L34:
        if (AppStart.f3772h.getCacheDir().getParentFile().getParentFile().getName().length() >= 4) goto L15;
        if (Integer.valueOf(AppStart.f3772h.getCacheDir().getParentFile().getParentFile().getName()).intValue() <= 0) goto L15;
        String r13 = AppStart.f3772h.getExternalCacheDir().getParentFile().getParentFile().getParentFile().getParentFile().getPath();     // Catch: Exception -> L13
        this.f5686c = r13;     // Catch: Exception -> L13
        if (r13.isEmpty() == true) goto L15;
        return this.f5686c;
    L15:
        if (Build.VERSION.SDK_INT < 19) goto L27;
        ExecutorService r14 = u9.d.f15554a;
        v9.c.a();
        androidx.room.s r15 = u9.d.r(new String[]{"ls -l /sdcard"}).l0();
        String r22 = r15.k().toString();
        if (r15.q() == false) goto L27;
        if (r22.contains("storage/") == false) goto L27;
        String r16 = r22.substring(r22.lastIndexOf("storage/"));
        this.f5686c = r16;
        if (r16.contains("]") == false) goto L24;
        String r17 = this.f5686c;
        this.f5686c = r17.substring(0, r17.indexOf("]"));
    L24:
        if (this.f5686c.startsWith("/") == true) goto L27;
        this.f5686c = "/" + this.f5686c;
    L27:
        if (this.f5686c != null) goto L33;
        if (Environment.getExternalStorageState().contains("mounted") == false) goto L31;
        this.f5686c = Environment.getExternalStorageDirectory().getAbsolutePath();
        goto L33
    L31:
        this.f5686c = "";
    L33:
        return this.f5686c;
    }

    public final void e() {
        b r22 = a.f5646a;
        DecimalFormat r62 = com.yunpan.appmanage.util.k.f4034u0;     // Catch: Exception -> L7
        com.yunpan.appmanage.util.k r63 = com.yunpan.appmanage.util.j.f4033a;     // Catch: Exception -> L7
        int r72 = p000if.a.T();     // Catch: Exception -> L7
        r63.f4060n = r72;     // Catch: Exception -> L7
        if (r72 <= 0) goto L9;
        r63.f4062o = "/data/media/" + r63.f4060n;     // Catch: Exception -> L7
    L9:
        com.yunpan.appmanage.util.w r64 = com.yunpan.appmanage.util.v.f4106a;     // Catch: Exception -> L7
        if (r64.f4144u != (-1)) goto L29;
        androidx.room.s r73 = u9.d.r(new String[]{"stat -c '%n' '/mnt/'*"}).l0();     // Catch: Exception -> L7
        String r92 = r73.k() + r73.j().toString();     // Catch: Exception -> L7
        if (r92.contains("invalid option") == false) goto L15;
    L26:
        r64.f4144u = 0;     // Catch: Exception -> L7
        r64.f4123i.l("mReadDirMode", 0);     // Catch: Exception -> L137
    L28:
        r64.m();     // Catch: Exception -> L7
        goto L29
    L15:
        if (r92.contains("nut found") == true) goto L26;
        if (r92.contains("/") == false) goto L26;
        if (r73.k().size() <= 5) goto L22;
        int r74 = 1;
    L23:
        r64.f4144u = r74;     // Catch: Exception -> L7
        r64.f4123i.l("mReadDirMode", Integer.valueOf(r74));     // Catch: Exception -> L136
    L25:
        r64.m();     // Catch: Exception -> L7
        goto L29
    L22:
        r74 = 0;
    L29:
        r22.g();     // Catch: Exception -> L7
        u9.d.r(new String[]{"setprop persist.sv.enable_adb_install 1"}).l0();     // Catch: Exception -> L7
        if (r64.K == true) goto L160;
    L147:
        if (u9.d.r(new String[]{"getprop | grep vecentek"}).l0().k().isEmpty() == true) goto L40;
        u9.d.r(new String[]{"setprop vecentek.model 1"}).e0(null);     // Catch: Exception -> L138
    L40:
        com.yunpan.appmanage.util.w r65 = com.yunpan.appmanage.util.v.f4106a;     // Catch: Exception -> L7
        if (r65.f4108a0 == true) goto L94;
        String r66 = r65.f4110b0;     // Catch: Exception -> L7
        if (new File("/system/bin/su").exists() == true) goto L54;
        if (new File("/system/xbin/su").exists() == false) goto L149;
    L54:
        if (com.yunpan.appmanage.util.a0.g("/system/bin/su_guanjia") == false) goto L57;
        r66 = "su_guanjia";
    L57:
        if (r66.trim().equals("su") == true) goto L61;
        androidx.room.s r67 = u9.d.r(new String[]{r66}).l0();     // Catch: Exception -> L7
        String r75 = r67.k().toString() + r67.j();     // Catch: Exception -> L7
        if (r67.q() == false) goto L61;
        r75.endsWith("> ");     // Catch: Exception -> L7
    L61:
        boolean r68 = b();     // Catch: Exception -> L7
        if (r68 == false) goto L64;
    L83:
        if (r68 == false) goto L91;
        if (r22.f() == true) goto L87;
    L88:
        u9.d.r(new String[]{b.a(AppStart.f3772h)}).e0(null);     // Catch: Exception -> L7
    L89:
        com.yunpan.appmanage.util.j.f4033a.f4049h = true;     // Catch: Exception -> L7
        this.f5684a = true;     // Catch: Exception -> L7
        a();     // Catch: Exception -> L7
        g();     // Catch: Exception -> L7
    L97:
        if (this.f5684a == false) goto L100;
        DecimalFormat r69 = com.yunpan.appmanage.util.k.f4034u0;
        if (com.yunpan.appmanage.util.j.f4033a.f4058m == false) goto L100;
        return;
    L100:
        h.f5683a.h(null);
        gh.a r5 = new gh.a();     // Catch: Throwable -> L109 Exception -> L111
        this.f5688e = r5;     // Catch: Throwable -> L109 Exception -> L111
        r5.f3251a = NoConst.MIN_HEARTBEAT_INTERVAL;     // Catch: Throwable -> L109 Exception -> L111
        r5.c("", 23);     // Catch: Throwable -> L109 Exception -> L111
        gh.a r52 = this.f5688e;     // Catch: Throwable -> L109 Exception -> L111
        BufferedInputStream r610 = r52.r;     // Catch: Throwable -> L109 Exception -> L111
        gh.c r53 = r52.f6177s;     // Catch: Throwable -> L109 Exception -> L111
        r53.write("id\n".getBytes(StandardCharsets.UTF_8));     // Catch: Throwable -> L109 Exception -> L111
        r53.flush();     // Catch: Throwable -> L109 Exception -> L111
        Thread.sleep(333);     // Catch: Throwable -> L109 Exception -> L111
        this.f5689f = System.currentTimeMillis();     // Catch: Throwable -> L109 Exception -> L111
        new fg.b(new a2.h(19, this), 1).start();     // Catch: Throwable -> L109 Exception -> L111
        ByteArrayOutputStream r76 = new ByteArrayOutputStream();     // Catch: Throwable -> L109 Exception -> L111
        byte[] r82 = new byte[1024];     // Catch: Throwable -> L109 Exception -> L111
    L103:
        if (this.f5688e.f() == false) goto L115;
        if (r610 == null) goto L115;
        if (r610.available() <= 0) goto L115;
        int r93 = r610.read(r82);     // Catch: Throwable -> L109 Exception -> L111 SocketTimeoutException -> L112
    L113:
        if (r93 <= 0) goto L115;
        r76.write(r82, 0, r93);     // Catch: Throwable -> L109 Exception -> L111
    L112:
        r93 = 0;
    L115:
        byte[] r611 = r76.toByteArray();     // Catch: Throwable -> L109 Exception -> L111
        Charset r83 = StandardCharsets.UTF_8;     // Catch: Throwable -> L109 Exception -> L111
        String r02 = new String(r611, r83);     // Catch: Throwable -> L109 Exception -> L111
        r76.reset();     // Catch: Throwable -> L109 Exception -> L111
        System.out.getClass();     // Catch: Throwable -> L109 Exception -> L111
        if (r02.contains("uid=0(root") == false) goto L124;
        r53.write((b.a(AppStart.f3772h) + SignParameters.NEW_LINE).getBytes(r83));     // Catch: Throwable -> L109 Exception -> L111
        r53.flush();     // Catch: Throwable -> L109 Exception -> L111
        Thread.sleep(1000);     // Catch: Throwable -> L109 Exception -> L111
        if (r22.f() == false) goto L124;
        if (r22.f5651b.getUid() != 0) goto L124;
        AppStart.f3772h.f3773a.b(new oa.g(r22.f5651b.getNewProcess()));     // Catch: Throwable -> L109 Exception -> L111
        Thread.sleep(50);     // Catch: Throwable -> L109 Exception -> L111
        if (b() == false) goto L124;
        this.f5684a = true;     // Catch: Throwable -> L109 Exception -> L111
        this.f5685b = true;     // Catch: Throwable -> L109 Exception -> L111
        a();     // Catch: Throwable -> L109 Exception -> L111
        g();     // Catch: Throwable -> L109 Exception -> L111
    L124:
        gh.a r03 = this.f5688e;
        if (r03 == null) goto L169;
    L155:
        r03.d();     // Catch: Exception -> L140
        return;
    L172:
        return;
    L169:
        return;
    L109:
        th = move-exception;
        gh.a r12 = this.f5688e;
        if (r12 != null) goto L151;
    L131:
        throw th;
    L151:
        r12.d();     // Catch: Exception -> L141
    L132:
        r03 = this.f5688e;
        if (r03 != null) goto L155;
        return;
    L87:
        if (r22.f5651b.getUid() == 0) goto L89;
    L91:
        if (com.yunpan.appmanage.util.j.f4033a.f4053j == false) goto L97;
        a();     // Catch: Exception -> L7
        goto L97
    L64:
        if (r22.f() == false) goto L83;
        if (r22.f5651b.getUid() != 0) goto L83;
        h0 r77 = g0.f5682a;     // Catch: Exception -> L76
        if (r77.d().isEmpty() == false) goto L70;
    L78:
        AppStart.f3772h.f3773a.b(new oa.g(r22.f5651b.getNewProcess()));     // Catch: Exception -> L76
        Thread.sleep(50);     // Catch: Exception -> L76
        r68 = b();     // Catch: Exception -> L76
        System.out.getClass();     // Catch: Exception -> L76
        if (r68 == false) goto L83;
        this.f5685b = true;     // Catch: Exception -> L76
        goto L83
    L70:
        if (r22.f5651b.file_canReadAndWrite(r77.d()) == true) goto L78;
        if (r22.f5651b.file_canReadAndWrite("/data/media/" + com.yunpan.appmanage.util.j.f4033a.f4060n) == true) goto L78;
        throw new Exception("没有权限读取用户内部存储");     // Catch: Exception -> L76
    L76:
        e = move-exception;
        e.printStackTrace();     // Catch: Exception -> L7
    L149:
        if (new File("/system/bin/tclsu").exists() == true) goto L52;
        if (new File("/system/xbin/tclsu").exists() == false) goto L54;
    L52:
        r66 = "tclsu";
        goto L54
    L94:
        throw new Exception("不用root模式");     // Catch: Exception -> L7
    L160:
    L36:
        u9.d.r(new String[]{"setprop sys.jsbd.apk_verify 1"}).e0(null);     // Catch: Exception -> L7
        goto L147
    L32:
        if (((String) u9.d.r(new String[]{"getprop sys.jsbd.apk_verify"}).l0().k().get(0)).equals("1") == true) goto L147;
        throw new Exception();     // Catch: Exception -> L36
    L7:
        e = move-exception;
        e.printStackTrace();
        goto L97
    }

    public final boolean f() {
        if (com.yunpan.appmanage.util.v.f4106a.f4108a0 == false) goto L7;
        return false;
    L7:
        return this.f5684a;
    }

    public final void g() {
        u9.d.r(new String[]{"setenforce 0"}).l0();
        u9.d.r(new String[]{"setprop ro.secure 0"}).l0();
        Iterator r12 = u9.d.r(new String[]{"mount"}).l0().k().iterator();
        String r22 = "";
    L3:
        String r5 = " /";
        if (r12.hasNext() == false) goto L28;
        String r4 = (String) r12.next();
        if (r4.contains(" /system ") == true) goto L7;
        if (r4.contains(" /vendor ") == true) goto L10;
        if (r4.contains(" /oem ") == true) goto L13;
        if (r4.contains(" / ") == false) goto L3;
    L17:
        if (r4.contains("  ") == false) goto L19;
        r4 = r4.replaceAll("  ", " ");
        goto L17
    L19:
        String[] r62 = r4.split(" ");
        if (r62.length < 4) goto L3;
        if (r4.contains(" (ro,") == true) goto L24;
        if (r4.contains(" ro,") == false) goto L3;
        String r42 = r62[2];
        StringBuilder r72 = new StringBuilder("mount -o rw,remount -t ");
        r72.append(r62[2]);
        r72.append(" ");
        u9.d.r(new String[]{g.b.l(r62[0], r5, r72)}).l0();
        r22 = r42;
        goto L3
    L24:
        r22 = r62[4];
        StringBuilder r43 = new StringBuilder("mount -o rw,remount -t ");
        r43.append(r62[4]);
        r43.append(" ");
        u9.d.r(new String[]{g.b.l(r62[0], r5, r43)}).l0();
        goto L3
    L13:
        r5 = " /oem";
        goto L17
    L10:
        r5 = " /vendor";
        goto L17
    L7:
        r5 = " /system";
        goto L17
    L28:
        androidx.room.s r44 = u9.d.r(new String[]{"touch /system/app/111222"}).l0();
        if (r44.f2426b == 0) goto L36;
        if (r22.isEmpty() == false) goto L33;
        u9.d.r(new String[]{"mount -o remount,rw /oem"}).l0();
        u9.d.r(new String[]{"mount -o remount,rw /system"}).l0();
        u9.d.r(new String[]{"mount -o remount,rw /"}).l0();
    L34:
        r44 = u9.d.r(new String[]{"touch /system/app/111222"}).l0();
        goto L36
    L33:
        u9.d.r(new String[]{g.b.A("mount -o remount,rw -t ", r22, " /oem")}).l0();
        u9.d.r(new String[]{"mount -o remount,rw -t " + r22 + " /system"}).l0();
        u9.d.r(new String[]{"mount -o remount,rw -t " + r22 + " /"}).l0();
    L36:
        if (r44.f2426b != 0) goto L39;
        this.f5687d = true;
        DecimalFormat r13 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.f4058m = true;
        u9.d.r(new String[]{"rm -rf /system/app/111222"}).l0();
    L39:
        if (u9.d.r(new String[]{"touch /system/bin/111222"}).l0().f2426b != 0) goto L59;
        DecimalFormat r14 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.l = true;
        u9.d.r(new String[]{"rm -rf /system/bin/111222"}).l0();
        return;
    }

    public final boolean h() {
        if (Build.VERSION.SDK_INT >= 29) goto L11;
        return false;
    L11:
        a2.c.q(AppStart.f3772h, new Intent(AppStart.f3772h, MagicaService.class), androidx.emoji2.text.b.q(AppStart.f3772h), this.f5690g);     // Catch: Exception -> L10
        Thread.sleep(1000);     // Catch: Exception -> L10
        if (b() == false) goto L9;
        this.f5684a = true;     // Catch: Exception -> L10
        a();     // Catch: Exception -> L10
        g();     // Catch: Exception -> L10
        return true;
    L9:
        return false;
    }
}