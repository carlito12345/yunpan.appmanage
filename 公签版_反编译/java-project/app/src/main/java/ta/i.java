package ta;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.UiModeManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.bluetooth.BluetoothAdapter;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.SystemClock;
import android.provider.Settings;
import com.desay_svautomotive.libsvcarinfo.CarInfoProxy;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.ui.ActivityTrans;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.b0;
import ha.pe;
import j$.util.DesugarTimeZone;
import java.io.IOException;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.simpleframework.xml.strategy.Name;
import wa.t;
import wa.u;
import wa.v;
import wa.w;
import z7.s;

/* loaded from: classes.dex */
public abstract class i {
    public static void a() throws InterruptedException {
        try {
            Thread.sleep(PopupConst.DURATION_POPUP);
        } catch (Exception unused) {
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        do {
            try {
                b();
            } catch (Exception unused2) {
            }
            try {
                Thread.sleep(15000L);
            } catch (Exception unused3) {
            }
        } while (System.currentTimeMillis() - jCurrentTimeMillis < 60100);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b() throws InterruptedException, SecurityException {
        u uVar = t.f17728a;
        String string = Settings.Secure.getString(uVar.f17735d.getContentResolver(), "enabled_accessibility_services");
        String strK = "";
        if (string == null || string.equals("null")) {
            string = "";
        }
        b0 b0Var = v.f17759a;
        b0Var.b();
        boolean zContains = ((String) b0Var.f4000c).contains(AppStart.f3772h.getPackageName() + "/" + AccService.class.getName());
        boolean zH0 = p000if.a.h0(AppStart.f3772h, AccService.class);
        if (zContains && zH0) {
            if (!uVar.f17739f) {
                boolean z = true;
                for (String str : ((String) b0Var.f4000c).split(":")) {
                    if (!str.isEmpty()) {
                        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                        if (!string.contains(componentNameUnflattenFromString.flattenToShortString()) && !string.contains(componentNameUnflattenFromString.flattenToString())) {
                            z = false;
                        }
                    }
                }
                if (z) {
                    return;
                }
            } else if (((String) b0Var.f4000c).equals(string)) {
                return;
            }
        }
        u uVar2 = t.f17728a;
        if (uVar2.f17753t) {
            w.c("isHasAutomation：" + zContains + "  isRunAcc：" + zH0);
        }
        if (uVar2.f17753t) {
            w.c("当前无障碍：".concat(string));
        }
        if (uVar2.f17737e) {
            if (uVar2.f17753t) {
                w.c("重启无障碍服务");
            }
            Settings.Secure.putString(uVar2.f17735d.getContentResolver(), "enabled_accessibility_services", "");
            Settings.Secure.putInt(uVar2.f17735d.getContentResolver(), "accessibility_enabled", 0);
            Thread.sleep(1111L);
            string = "";
        } else if (zContains && !zH0) {
            if (string.contains(AppStart.f3772h.getPackageName() + "/")) {
            }
        }
        if (uVar2.f17739f || string.isEmpty()) {
            if (((String) b0Var.f4000c).equals(string)) {
                if (uVar2.f17753t) {
                    w.c("无障碍服务正常，无需执行持久任务");
                    return;
                }
                return;
            }
            if (uVar2.f17753t) {
                w.c("执行无障碍保活任务，覆盖");
            }
            if (Settings.Secure.putString(uVar2.f17735d.getContentResolver(), "enabled_accessibility_services", (String) b0Var.f4000c)) {
                Settings.Secure.putInt(uVar2.f17735d.getContentResolver(), "accessibility_enabled", 1);
            }
            if (com.yunpan.appmanage.util.v.f4106a.S && fa.d.f5659a.f5662a) {
                u9.d.r(g.b.l((String) b0Var.f4000c, "'", new StringBuilder("settings put secure enabled_accessibility_services '"))).l0();
                u9.d.r("settings put secure accessibility_enabled 1").l0();
                return;
            }
            return;
        }
        String[] strArrSplit = string.split(":");
        HashSet hashSet = new HashSet();
        for (String str2 : strArrSplit) {
            if (!str2.isEmpty()) {
                try {
                    hashSet.add(ComponentName.unflattenFromString(str2).flattenToString());
                } catch (Exception unused) {
                }
            }
        }
        String[] strArrSplit2 = ((String) b0Var.f4000c).split(":");
        for (String str3 : strArrSplit2) {
            if (!str3.isEmpty() && !hashSet.contains(str3)) {
                strK = strK.isEmpty() ? str3 : g.b.k(strK, ":", str3);
            }
        }
        if (strK.isEmpty()) {
            if (t.f17728a.f17753t) {
                w.c("无障碍服务正常，无需执行持久任务");
                return;
            }
            return;
        }
        String strConcat = string.endsWith(":") ? string.concat(strK) : g.b.k(string, ":", strK);
        u uVar3 = t.f17728a;
        if (uVar3.f17753t) {
            w.c("执行无障碍保活任务，追加：".concat(strK));
        }
        if (Settings.Secure.putString(uVar3.f17735d.getContentResolver(), "enabled_accessibility_services", strConcat)) {
            Settings.Secure.putInt(uVar3.f17735d.getContentResolver(), "accessibility_enabled", 1);
        }
        if (com.yunpan.appmanage.util.v.f4106a.S && fa.d.f5659a.f5662a) {
            u9.d.r(g.b.A("settings put secure enabled_accessibility_services '", strConcat, "'")).l0();
            u9.d.r("settings put secure accessibility_enabled 1").l0();
        }
    }

    public static void c() {
        UsageEvents usageEventsQueryEvents;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 21) {
            ActivityManager activityManager = (ActivityManager) AppStart.f3772h.getSystemService("activity");
            do {
                List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(10);
                if (runningTasks != null && !runningTasks.isEmpty()) {
                    Iterator<ActivityManager.RunningTaskInfo> it = runningTasks.iterator();
                    while (it.hasNext()) {
                        if (!it.next().topActivity.flattenToString().endsWith(".FallbackHome")) {
                            return;
                        }
                    }
                }
            } while (System.currentTimeMillis() - jCurrentTimeMillis < 120000);
            p000if.a.H0(AppStart.f3772h);
            a0.w(AppStart.f3772h.getString(R.string.str_gj) + "检测到您无法开机，自动打开" + AppStart.f3772h.getString(R.string.app_name));
            return;
        }
        if (p000if.a.a0(AppStart.f3772h)) {
            ArrayList arrayList = new ArrayList();
            UsageStatsManager usageStatsManager = i10 < 23 ? (UsageStatsManager) AppStart.f3772h.getSystemService("usagestats") : (UsageStatsManager) AppStart.f3772h.getSystemService("usagestats");
            do {
                try {
                    Thread.sleep(PopupConst.DURATION_POPUP);
                    usageEventsQueryEvents = usageStatsManager.queryEvents((jCurrentTimeMillis - SystemClock.elapsedRealtime()) + 1000, System.currentTimeMillis() + 120000);
                } catch (Exception unused) {
                }
                if (usageEventsQueryEvents == null) {
                    return;
                }
                arrayList.clear();
                while (usageEventsQueryEvents.hasNextEvent()) {
                    UsageEvents.Event event = new UsageEvents.Event();
                    if (usageEventsQueryEvents.getNextEvent(event) && event.getEventType() == 1 && event.getPackageName() != null && event.getClassName() != null && !event.getPackageName().equals("android") && !event.getPackageName().equals("com.android.systemui")) {
                        arrayList.add(event.getPackageName() + "/" + event.getClassName());
                        PrintStream printStream = System.out;
                        event.getClassName();
                        printStream.getClass();
                    }
                }
                if (!arrayList.isEmpty()) {
                    String str = (String) arrayList.get(arrayList.size() - 1);
                    if (!str.endsWith(".FallbackHome") && ((!str.startsWith("com.android.settings/android.widget.") || arrayList.size() > 2) && !str.endsWith("com.jamdeo.tv.livetv.LiveTvActivity"))) {
                        return;
                    }
                }
            } while (System.currentTimeMillis() - jCurrentTimeMillis < 120000);
            p000if.a.H0(AppStart.f3772h);
            a0.w(AppStart.f3772h.getString(R.string.str_gj) + "检测到您无法开机，自动打开" + AppStart.f3772h.getString(R.string.app_name));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:256:0x0646  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0788 A[Catch: all -> 0x0038, TryCatch #1 {all -> 0x0038, blocks: (B:8:0x001e, B:10:0x002c, B:15:0x003c, B:17:0x004c, B:21:0x0064, B:24:0x0077, B:27:0x0087, B:30:0x0099, B:33:0x00a9, B:36:0x00b9, B:40:0x00e3, B:43:0x0112, B:46:0x0143, B:52:0x0160, B:61:0x0193, B:64:0x019e, B:67:0x01b4, B:70:0x01ca, B:73:0x01e0, B:76:0x0214, B:84:0x022f, B:87:0x0240, B:91:0x0256, B:90:0x0252, B:94:0x0265, B:95:0x027b, B:97:0x0281, B:101:0x0292, B:103:0x029c, B:105:0x02a6, B:106:0x02b0, B:108:0x02bf, B:109:0x02c3, B:112:0x02cc, B:126:0x0302, B:128:0x0309, B:129:0x0316, B:115:0x02e0, B:119:0x02ee, B:118:0x02ea, B:122:0x02f3, B:107:0x02bc, B:132:0x031f, B:136:0x032c, B:138:0x033a, B:143:0x0358, B:145:0x036e, B:149:0x0380, B:152:0x0390, B:153:0x0395, B:158:0x03ad, B:160:0x03c1, B:163:0x03d8, B:165:0x03ec, B:168:0x0403, B:171:0x043e, B:173:0x044c, B:174:0x0457, B:176:0x0468, B:180:0x047b, B:182:0x048d, B:183:0x0490, B:186:0x0499, B:188:0x04ab, B:189:0x04ae, B:193:0x04bd, B:195:0x04c1, B:197:0x04d8, B:200:0x04e0, B:202:0x04e8, B:204:0x04fc, B:207:0x0512, B:196:0x04d4, B:210:0x051b, B:212:0x051f, B:214:0x0536, B:217:0x053e, B:219:0x0546, B:221:0x055a, B:224:0x0570, B:225:0x0573, B:213:0x0532, B:228:0x057e, B:231:0x059c, B:234:0x05b0, B:237:0x05be, B:240:0x05d8, B:243:0x05ef, B:245:0x05f7, B:247:0x061e, B:248:0x0622, B:251:0x062f, B:253:0x063c, B:257:0x0647, B:262:0x0685, B:260:0x064e, B:285:0x0706, B:288:0x0719, B:291:0x0735, B:295:0x0759, B:297:0x0765, B:300:0x0788, B:302:0x0794, B:305:0x07b8, B:307:0x07c4, B:308:0x07d8, B:310:0x07e4, B:313:0x0800, B:315:0x0830, B:318:0x0839, B:320:0x0869, B:323:0x0872, B:326:0x0886, B:329:0x088f, B:332:0x0898, B:334:0x08a0, B:154:0x0396, B:139:0x0345, B:335:0x08a6, B:337:0x08b8, B:338:0x08c2, B:340:0x08ca, B:341:0x08d3, B:343:0x08f8, B:344:0x08fc), top: B:357:0x001e, inners: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void d() throws InterruptedException, IOException {
        long j10;
        boolean zQ;
        boolean zQ2;
        boolean z;
        int i10;
        z7.o oVarK = q4.a.K(u.a().f17735d);
        if (oVarK == null) {
            return;
        }
        for (int i11 = 0; i11 < oVarK.f19478a.size(); i11++) {
            try {
                s sVarG = oVarK.l(i11).g();
                if (sVarG.o("isOpen") == null || sVarG.o("isOpen").b()) {
                    int iE = sVarG.o("type").e();
                    if (iE == 100) {
                        Thread.sleep(sVarG.o("time").e() * 1000);
                    } else if (iE == 101) {
                        a0.w(sVarG.o("str1").i());
                    } else if (iE == 110) {
                        Intent intentL = p000if.a.L(sVarG.o("str1").i());
                        if (intentL != null) {
                            intentL.setFlags(268435456);
                            p000if.a.y0(u.a().f17735d, intentL);
                        }
                    } else if (iE == 113) {
                        Intent intentL2 = p000if.a.L(sVarG.o("str1").i());
                        if (intentL2 != null) {
                            intentL2.setFlags(268435456);
                            AppStart.b().startActivity(intentL2);
                        }
                    } else if (iE == 114) {
                        String strI = sVarG.o("str1").i();
                        Intent intent = new Intent(AppStart.b(), (Class<?>) ActivityTrans.class);
                        intent.setFlags(268435456);
                        intent.putExtra("packageName", strI);
                        p000if.a.y0(AppStart.b(), intent);
                    } else if (iE == 111) {
                        String strI2 = sVarG.o("str1").i();
                        String strI3 = sVarG.o("str2").i();
                        Intent intent2 = new Intent();
                        intent2.setComponent(new ComponentName(strI2, strI3));
                        intent2.addFlags(268435456);
                        p000if.a.y0(u.a().f17735d, intent2);
                    } else if (iE == 112) {
                        String strI4 = sVarG.o("str1").i();
                        String strI5 = sVarG.o("str2").i();
                        Intent intent3 = new Intent();
                        intent3.setComponent(new ComponentName(strI4, strI5));
                        intent3.addFlags(268435456);
                        p000if.a.x0(3, u.a().f17735d, intent3);
                    } else if (iE == 115) {
                        int i12 = u.a().f17735d.getResources().getConfiguration().uiMode & 48;
                        if (i12 == 32) {
                            i10 = 2;
                        } else if (i12 != 16) {
                            return;
                        } else {
                            i10 = 1;
                        }
                        Intent intent4 = new Intent();
                        intent4.setAction("AUTONAVI_STANDARD_BROADCAST_RECV");
                        intent4.putExtra("KEY_TYPE", 10048);
                        intent4.putExtra("EXTRA_DAY_NIGHT_MODE", i10);
                        intent4.setFlags(32);
                        p000if.a.x0(2, u.a().f17735d, intent4);
                    } else if (iE == 102 || iE == 104) {
                        wa.s.c().m(sVarG);
                    } else if (iE == 105) {
                        new ya.l(sVarG);
                    } else if (iE == 200) {
                        p000if.a.y0(u.a().f17735d, new Intent("android.settings.SETTINGS"));
                    } else if (iE == 202) {
                        p000if.a.y0(u.a().f17735d, new Intent("android.settings.BLUETOOTH_SETTINGS"));
                    } else if (iE == 201) {
                        p000if.a.y0(u.a().f17735d, new Intent("android.settings.WIFI_SETTINGS"));
                    } else if (iE == 403) {
                        Settings.Secure.putString(u.a().f17735d.getContentResolver(), "enabled_input_methods", sVarG.o("str1").i());
                        Settings.Secure.putString(u.a().f17735d.getContentResolver(), "default_input_method", sVarG.o("str1").i());
                    } else if (iE == 103) {
                        p000if.a.F0(u.a().f17735d);
                    } else if (iE == 500 || iE == 503) {
                        String strTrim = sVarG.o("str1").i().trim();
                        if (strTrim.startsWith("adb shell ")) {
                            strTrim = strTrim.substring(10).trim();
                        }
                        if (strTrim.startsWith("adb ")) {
                            strTrim = strTrim.substring(4).trim();
                        }
                        androidx.room.s sVarL0 = u9.d.r(strTrim.trim()).l0();
                        sVarL0.k().addAll(sVarL0.j());
                        String string = sVarL0.k().toString();
                        if (iE == 503) {
                            Toaster.show((CharSequence) string);
                        }
                    } else if (iE == 501) {
                        fa.a.e(sVarG.o("str1").i());
                    } else if (iE == 504) {
                        Toaster.show((CharSequence) (!fa.n.f5721a.d() ? null : fa.a.f(sVarG.o("str1").i())).getListStr());
                    } else if (iE == 502) {
                        Iterator it = u9.d.r(Name.MARK).l0().k().iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (((String) it.next()).contains("uid=0(root)")) {
                                    z = true;
                                    break;
                                }
                            } else {
                                z = false;
                                break;
                            }
                        }
                        String strI6 = sVarG.o("str1").i();
                        if (z) {
                            strI6 = strI6.trim();
                            if (strI6.startsWith("adb shell ")) {
                                strI6 = strI6.substring(10).trim();
                            }
                            u9.d.r(strI6).l0();
                        } else {
                            fa.a.e(strI6);
                        }
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        do {
                            Thread.sleep(1500L);
                            if (z) {
                                try {
                                    if (u9.d.r("ps -A | grep shizuku").l0().q()) {
                                        jCurrentTimeMillis = 0;
                                        break;
                                    }
                                } catch (Exception unused) {
                                }
                            } else if ((!fa.n.f5721a.d() ? null : fa.a.f("ps -A | grep shizuku")).code == 0) {
                                jCurrentTimeMillis = 0;
                                break;
                            }
                        } while (System.currentTimeMillis() - jCurrentTimeMillis < 6100);
                        if (jCurrentTimeMillis != 0) {
                            System.out.getClass();
                            if (z) {
                                u9.d.r(strI6).l0();
                            } else {
                                fa.a.e(strI6);
                            }
                        }
                    } else if (iE == 405) {
                        fa.a.e("adb tcpip 5555");
                    } else if (iE == 400) {
                        try {
                            if (Settings.Global.getInt(AppStart.b().getContentResolver(), "adb_enabled") != 1) {
                                Settings.Global.putInt(AppStart.b().getContentResolver(), "adb_enabled", 1);
                            }
                        } catch (Exception unused2) {
                        }
                        u9.d.r("echo a1 > /dev/hsaeio").l0();
                    } else if (iE == 700) {
                        try {
                            wa.g.d(AppStart.b());
                            wa.s.c().f17716m.getClass();
                            if (ag.c.l() != 1) {
                                wa.s.c().f17716m.getClass();
                                ag.c.g();
                            }
                        } catch (Throwable unused3) {
                        }
                    } else if (iE == 404) {
                        try {
                            if (Settings.Global.getInt(AppStart.b().getContentResolver(), "adb_enabled") != 1) {
                                throw new Exception();
                            }
                        } catch (Exception unused4) {
                            Settings.Global.putInt(AppStart.b().getContentResolver(), "adb_enabled", 1);
                        }
                    } else if (iE == 401) {
                        if (u9.d.r("setprop service.adb.tcp.port 5555").l0().q()) {
                            Thread.sleep(222L);
                            u9.d.r("setprop ctl.restart adbd").l0();
                            Thread.sleep(2222L);
                        }
                    } else if (iE == 411) {
                        if (u9.d.r("setprop persist.adb.tcp.port 5555").l0().q()) {
                            Thread.sleep(222L);
                            u9.d.r("setprop ctl.restart adbd").l0();
                            Thread.sleep(2222L);
                        }
                    } else if (iE == 600) {
                        com.bumptech.glide.d.D(AppStart.b().getContentResolver(), sVarG.o("type1").i(), sVarG.o("type2").i(), sVarG.o("key").i(), sVarG.o("value").i());
                    } else if (iE == 402) {
                        if (Settings.Global.getInt(AppStart.b().getContentResolver(), "adb_enabled") != 1) {
                            Settings.Global.putInt(AppStart.b().getContentResolver(), "adb_enabled", 1);
                        }
                        Thread.sleep(268L);
                        if (Settings.Global.getInt(AppStart.b().getContentResolver(), "adb_wifi_enabled") != 1) {
                            Settings.Global.putInt(AppStart.b().getContentResolver(), "adb_wifi_enabled", 1);
                        }
                    } else if (iE == 300) {
                        WifiManager wifiManager = (WifiManager) u.a().f17735d.getSystemService("wifi");
                        if (!wifiManager.isWifiEnabled()) {
                            wifiManager.setWifiEnabled(true);
                        }
                        Thread.sleep(268L);
                    } else if (iE == 301) {
                        WifiManager wifiManager2 = (WifiManager) u.a().f17735d.getSystemService("wifi");
                        if (wifiManager2.isWifiEnabled()) {
                            wifiManager2.setWifiEnabled(false);
                        }
                        Thread.sleep(268L);
                    } else if (iE == 310) {
                        int i13 = Build.VERSION.SDK_INT;
                        BluetoothAdapter adapter = i13 >= 18 ? b1.o.d(u.a().f17735d.getSystemService("bluetooth")).getAdapter() : BluetoothAdapter.getDefaultAdapter();
                        if (!adapter.isEnabled()) {
                            if (i13 < 33 || !fa.e.e().f5662a) {
                                zQ2 = false;
                            } else {
                                zQ2 = u9.d.r("cmd bluetooth enable").l0().q();
                                if (!zQ2) {
                                    zQ2 = u9.d.r("svc bluetooth enable").l0().q();
                                }
                            }
                            if (!zQ2) {
                                adapter.enable();
                            }
                        }
                    } else if (iE == 311) {
                        int i14 = Build.VERSION.SDK_INT;
                        BluetoothAdapter adapter2 = i14 >= 18 ? b1.o.d(u.a().f17735d.getSystemService("bluetooth")).getAdapter() : BluetoothAdapter.getDefaultAdapter();
                        if (adapter2.isEnabled()) {
                            if (i14 < 33 || !fa.e.e().f5662a) {
                                zQ = false;
                            } else {
                                zQ = u9.d.r("cmd bluetooth disable").l0().q();
                                if (!zQ) {
                                    zQ = u9.d.r("svc bluetooth disable").l0().q();
                                }
                            }
                            if (!zQ) {
                                adapter2.disable();
                            }
                            Thread.sleep(268L);
                        }
                    } else if (iE == 320) {
                        ((WifiManager) u.a().f17735d.getSystemService("wifi")).setWifiEnabled(false);
                        nh.b.m0(u.a().f17735d, true);
                    } else if (iE == 321) {
                        nh.b.m0(u.a().f17735d, false);
                        Thread.sleep(268L);
                    } else if (iE == 601) {
                        if (!com.yunpan.appmanage.util.w.b().f4141s.isEmpty() && !com.yunpan.appmanage.util.w.b().f4141s.equals(Settings.Global.getString(AppStart.b().getContentResolver(), "policy_control"))) {
                            Settings.Global.putString(AppStart.b().getContentResolver(), "policy_control", com.yunpan.appmanage.util.w.b().f4141s);
                        }
                    } else if (iE == 406) {
                        if (wa.s.c().f17709e == null) {
                            if (v.f17759a.a().contains(u.a().f17735d.getPackageName() + "/")) {
                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                while (System.currentTimeMillis() - jCurrentTimeMillis2 <= 50000) {
                                    Thread.sleep(1000L);
                                    if (wa.s.c().f17709e != null) {
                                        break;
                                    }
                                }
                            }
                            if (wa.s.c().f17709e != null) {
                                int i15 = 0;
                                while (true) {
                                    i15++;
                                    if (i15 > 5) {
                                        j10 = 0;
                                        break;
                                    }
                                    wa.s.c().f17712h = System.currentTimeMillis();
                                    Intent intent5 = new Intent("android.intent.action.MAIN");
                                    intent5.setComponent(new ComponentName("com.leapmotor.system", "com.leapmotor.system.demo.DemoActivity"));
                                    p000if.a.y0(u.a().f17735d, intent5);
                                    Thread.sleep(PopupConst.DURATION_POPUP_SHORT);
                                    j10 = 0;
                                    if (wa.s.c().f17712h == 0) {
                                        break;
                                    }
                                }
                                wa.s.c().f17712h = j10;
                            }
                        }
                    } else if (iE == 407) {
                        UiModeManager uiModeManager = (UiModeManager) u.a().f17735d.getSystemService("uimode");
                        CarInfoProxy.getInstance().init(u.a().f17735d);
                        int itemValue = CarInfoProxy.getInstance().getItemValue(4, 1);
                        if (Settings.System.getInt(u.a().f17735d.getContentResolver(), "com.desay.setting.theme_auto_switch", 1) == 0) {
                            if (itemValue != 1 || uiModeManager.getNightMode() != 2) {
                                if (itemValue != 0 || uiModeManager.getNightMode() != 1) {
                                }
                            }
                        }
                        Settings.System.putInt(u.a().f17735d.getContentResolver(), "com.desay.setting.theme_auto_switch", 0);
                        uiModeManager.enableCarMode(0);
                        int i16 = itemValue == 1 ? 2 : 1;
                        uiModeManager.setNightMode(i16);
                        CarInfoProxy.getInstance().sendCarSettingValue(146, i16 - 1);
                    } else if (iE == 408) {
                        Settings.System.putInt(u.a().f17735d.getContentResolver(), "com.desay.setting.theme_auto_switch", 1);
                    } else if (iE == 409) {
                        CarInfoProxy.getInstance().init(u.a().f17735d);
                        CarInfoProxy.getInstance().sendCarSettingValue(30, 1);
                    } else if (iE == 410) {
                        CarInfoProxy.getInstance().init(u.a().f17735d);
                        CarInfoProxy.getInstance().sendCarSettingValue(94, 1);
                    } else if (iE == 1000) {
                        String strI7 = sVarG.o("pack").i();
                        if (Build.VERSION.SDK_INT >= 29) {
                            if (!u9.d.r("cmd role add-role-holder android.app.role.HOME " + strI7).l0().q()) {
                                ComponentName componentNameZ = qf.c.z(u.a().f17735d, strI7);
                                if (componentNameZ != null) {
                                    u9.d.r("cmd package set-home-activity " + componentNameZ.flattenToShortString()).l0();
                                }
                            }
                        }
                    } else if (iE == 1001) {
                        String strI8 = sVarG.o("pack").i();
                        if (Build.VERSION.SDK_INT >= 29) {
                            fa.a.e("cmd role add-role-holder android.app.role.HOME " + strI8);
                        } else {
                            ComponentName componentNameZ2 = qf.c.z(u.a().f17735d, strI8);
                            if (componentNameZ2 != null) {
                                fa.a.e("cmd package set-home-activity " + componentNameZ2.flattenToShortString());
                            }
                        }
                    } else if (iE == 1100) {
                        String str = "am force-stop '" + AppStart.b().getPackageName() + "'";
                        if (!u9.d.r(str).l0().q()) {
                            fa.a.e(str);
                        }
                    } else if (iE == 1101) {
                        String str2 = "am stopservice '" + AppStart.b().getPackageName() + "/.service.AccService'";
                        if (!u9.d.r(str2).l0().q()) {
                            fa.a.e(str2);
                        }
                    } else if (iE == 347) {
                        new v3.f(u.a().f17735d).y();
                    } else if (iE == 348) {
                        e();
                    } else if (iE == 349) {
                        f();
                    } else if (iE == 412) {
                        while (!fa.e.e().f5665d) {
                            Thread.sleep(1000L);
                        }
                    }
                }
            } catch (Throwable th2) {
                if (u.a().f17753t) {
                    w.c("任务失败：" + th2.getMessage());
                }
            }
        }
        fa.a.d();
    }

    public static void e() {
        boolean z;
        Date dateA = pe.a();
        if (dateA == null) {
            a0.t("获取时间失败");
            return;
        }
        ContentResolver contentResolver = AppStart.f3772h.getContentResolver();
        try {
            Settings.Global.putInt(contentResolver, "auto_time", 0);
            Settings.Global.putInt(contentResolver, "auto_time_zone", 0);
            Settings.Global.putString(contentResolver, "time_zone", "Asia/Hong_Kong");
            Settings.Global.putString(contentResolver, "ntp_server", "ntp.ntsc.ac.cn");
        } catch (Exception unused) {
        }
        try {
            TimeZone.setDefault(DesugarTimeZone.getTimeZone("Asia/Hong_Kong"));
        } catch (Exception unused2) {
        }
        u9.d.r("setprop persist.sys.timezone Asia/Hong_Kong").l0();
        u9.d.r("settings put global time_zone Asia/Hong_Kong").l0();
        u9.d.r("service call alarm 3 s16 Asia/Hong_Kong").l0();
        try {
            AlarmManager alarmManager = (AlarmManager) AppStart.f3772h.getSystemService("alarm");
            alarmManager.setTimeZone("Asia/Hong_Kong");
            alarmManager.setTime(dateA.getTime());
        } catch (Exception unused3) {
            StringBuilder sb2 = new StringBuilder("date ");
            sb2.append(new SimpleDateFormat("MMddHHmmyyyy").format(dateA));
            z = u9.d.r(sb2.toString()).l0().q();
        }
        try {
            Settings.Global.putInt(contentResolver, "auto_time", 1);
        } catch (Exception unused4) {
        }
        if (z) {
            u9.d.r("am broadcast -a android.intent.action.CONFIGURATION_CHANGED").l0();
        }
    }

    public static void f() {
        Date dateA = pe.a();
        if (dateA == null) {
            a0.t("获取时间失败");
            return;
        }
        ContentResolver contentResolver = AppStart.f3772h.getContentResolver();
        try {
            Settings.Global.putInt(contentResolver, "auto_time", 0);
            Settings.Global.putInt(contentResolver, "auto_time_zone", 0);
            Settings.Global.putString(contentResolver, "time_zone", "Asia/Hong_Kong");
            Settings.Global.putString(contentResolver, "ntp_server", "ntp.ntsc.ac.cn");
        } catch (Exception unused) {
        }
        try {
            TimeZone.setDefault(DesugarTimeZone.getTimeZone("Asia/Hong_Kong"));
        } catch (Exception unused2) {
        }
        u9.d.r("setprop persist.sys.timezone Asia/Hong_Kong").l0();
        u9.d.r("settings put global time_zone Asia/Hong_Kong").l0();
        u9.d.r("service call alarm 3 s16 Asia/Hong_Kong").l0();
        try {
            AlarmManager alarmManager = (AlarmManager) AppStart.f3772h.getSystemService("alarm");
            alarmManager.setTimeZone("Asia/Hong_Kong");
            alarmManager.setTime(dateA.getTime());
        } catch (Exception unused3) {
            if (!u9.d.r("date " + new SimpleDateFormat("MMddHHmmyyyy").format(dateA)).l0().q()) {
                a0.t("失败：无权限修改系统时间");
                return;
            }
        }
        u9.d.r("am broadcast -a android.intent.action.CONFIGURATION_CHANGED").l0();
    }
}
