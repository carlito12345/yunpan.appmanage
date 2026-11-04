package ua;

import android.content.ComponentName;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbManager;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.CmdBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAccessibility;
import com.yunpan.appmanage.ui.ActivityAdb;
import com.yunpan.appmanage.ui.ActivityAppDetailHistoryLog;
import com.yunpan.appmanage.ui.ActivityAppHistoryLog;
import com.yunpan.appmanage.ui.ActivityAppInstallTime;
import com.yunpan.appmanage.ui.ActivityAppStorage;
import com.yunpan.appmanage.ui.ActivityAppTraffic;
import com.yunpan.appmanage.ui.ActivityApps;
import com.yunpan.appmanage.ui.ActivityAppsPermissions;
import com.yunpan.appmanage.ui.ActivityAutomation;
import com.yunpan.appmanage.ui.ActivityBootStartTask;
import com.yunpan.appmanage.ui.ActivityDisplayManager;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityImmersive;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivityPermissions;
import com.yunpan.appmanage.ui.ActivityRunMemory;
import com.yunpan.appmanage.ui.ActivityShell;
import com.yunpan.appmanage.ui.ActivityStart;
import com.yunpan.appmanage.ui.ActivityStudy;
import com.yunpan.appmanage.ui.ActivityWindowInputAdbPair;
import ha.ba;
import ha.cb;
import ha.db;
import ha.ea;
import ha.fa;
import ha.fc;
import ha.ia;
import ha.id;
import ha.ja;
import ha.ta;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class u7 implements ea, ia, ec.d, c6.f, c6.e, ea.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15988a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x7 f15989b;

    public /* synthetic */ u7(x7 x7Var, int i10) {
        this.f15988a = i10;
        this.f15989b = x7Var;
    }

    @Override // ha.ea
    public void b(int i10) {
        int i11 = 5;
        int i12 = 1;
        x7 x7Var = this.f15989b;
        switch (this.f15988a) {
            case 0:
                x7Var.getClass();
                if (i10 != 8) {
                    if (i10 == 1 && Build.VERSION.SDK_INT < 26) {
                        com.yunpan.appmanage.util.a0.u("系统低于8.0，无需管理此权限");
                        break;
                    } else {
                        if (i10 == 3) {
                            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                            if (!com.yunpan.appmanage.util.j.f4033a.f4047g) {
                                com.yunpan.appmanage.util.a0.u("此功能无法管理此权限");
                                break;
                            }
                        }
                        try {
                            Bundle bundle = new Bundle();
                            bundle.putInt("type", i10);
                            da.g gVar = (da.g) x7Var.f4530f;
                            gVar.getClass();
                            Intent intent = new Intent(gVar.A, (Class<?>) ActivityPermissions.class);
                            intent.putExtras(bundle);
                            gVar.startActivity(intent);
                            break;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                } else {
                    ((da.g) x7Var.f4530f).w(ActivityAppsPermissions.class);
                    break;
                }
                break;
            case 1:
                x7Var.getClass();
                if (i10 != 0) {
                    HashSet hashSet = new HashSet();
                    hashSet.add("json");
                    new mc.c(0, new ph.j(i11, hashSet)).d(rc.f.f13757b).a(fc.b.a()).b(new v7(x7Var, i12));
                    break;
                } else {
                    new ha.y3(x7Var.f4530f, x7Var.f4529e).show();
                    break;
                }
            default:
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 != 4) {
                                    x7Var.getClass();
                                    if (i10 != 5) {
                                        com.yunpan.appmanage.util.a0.u("此功能暂未开发");
                                        break;
                                    } else {
                                        new ba(x7Var.f4530f, x7Var.f4529e).show();
                                        break;
                                    }
                                } else {
                                    ((da.g) x7Var.f4530f).w(ActivityAppDetailHistoryLog.class);
                                    break;
                                }
                            } else {
                                ((da.g) x7Var.f4530f).w(ActivityAppHistoryLog.class);
                                break;
                            }
                        } else {
                            ((da.g) x7Var.f4530f).w(ActivityAppInstallTime.class);
                            break;
                        }
                    } else if (!XXPermissions.isGrantedPermission(x7Var.f4529e, PermissionLists.getReadPhoneStatePermission())) {
                        new ha.z6(x7Var.f4530f, x7Var.f4529e, "读取sim卡流量使用情况，需要【读取电话状态】权限", "", "知道了", "", new i1(23, x7Var)).show();
                        break;
                    } else {
                        ((da.g) x7Var.f4530f).w(ActivityAppTraffic.class);
                        break;
                    }
                } else {
                    ((da.g) x7Var.f4530f).w(ActivityAppStorage.class);
                    break;
                }
        }
    }

    @Override // c6.f
    public boolean c(int i10, View view) {
        x7 x7Var = this.f15989b;
        if (!((CmdBean) x7Var.f16041h.t(i10)).name.equals("实验室")) {
            return false;
        }
        ((da.g) x7Var.f4530f).w(ActivityStudy.class);
        return true;
    }

    @Override // ea.c
    public void e(int i10) {
        x7 x7Var = this.f15989b;
        if (i10 == 1) {
            x7Var.l(ActivityWindowInputAdbPair.class);
            return;
        }
        x7Var.getClass();
        if (i10 != 2 || Build.VERSION.SDK_INT < 24) {
            return;
        }
        Intent intent = new Intent(x7Var.f4529e, (Class<?>) ActivityWindowInputAdbPair.class);
        intent.putExtra("str", "在小窗口中找到配对码后，在这里输入");
        x7Var.startActivity(intent);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new db(29, x7Var));
    }

    @Override // ec.d
    public void g(mc.b bVar) throws InterruptedException {
        Intent launchIntentForPackage;
        x7 x7Var = this.f15989b;
        x7Var.getClass();
        CmdBean cmdBean = new CmdBean(R.drawable.tp_xz1, "文件下载");
        x9.b1 b1Var = x7Var.f16041h;
        b1Var.q(cmdBean);
        b1Var.q(new CmdBean(R.drawable.tp_js1, "内存清理"));
        b1Var.q(new CmdBean(R.drawable.tp_wz21, "应用管理"));
        b1Var.q(new CmdBean(R.drawable.tp_root6, "快捷权限管理"));
        b1Var.q(new CmdBean(R.drawable.tp_tj1, "应用统计分析"));
        b1Var.q(new CmdBean(R.drawable.tp_wz23, "执行命令"));
        b1Var.q(new CmdBean(R.drawable.tp_gj, "重启/关机"));
        b1Var.q(new CmdBean(R.drawable.tp_usb1, "OTG-ADB"));
        b1Var.q(new CmdBean(R.drawable.tp_js2, "已运行应用"));
        b1Var.q(new CmdBean(R.drawable.tp_ai1, "无障碍服务"));
        b1Var.q(new CmdBean(R.drawable.tp_ai1, "自动化任务"));
        b1Var.q(new CmdBean(R.drawable.tp_ai1, "开机执行任务"));
        b1Var.q(new CmdBean(R.drawable.tp_pm1, "车机应用沉浸"));
        b1Var.q(new CmdBean(R.drawable.tp_wz24, "自启动管理"));
        b1Var.q(new CmdBean(R.drawable.suo4, "设备信息"));
        b1Var.q(new CmdBean(R.drawable.tp_yz1, x7Var.getString(R.string.dialog_warning_serious)));
        b1Var.q(new CmdBean(R.drawable.shezhi3, "原生功能"));
        b1Var.q(new CmdBean(R.drawable.tp_adb1, "adb开/关"));
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            b1Var.q(new CmdBean(R.drawable.tp_adb1, "适配码adb"));
        }
        b1Var.q(new CmdBean(R.drawable.tp_wz6, "实验室"));
        b1Var.q(new CmdBean(R.drawable.tp_save2, "配置备份"));
        b1Var.q(new CmdBean(R.drawable.tp_suo7, "管家设置"));
        b1Var.q(new CmdBean(R.drawable.fankui1, "反馈建议"));
        b1Var.q(new CmdBean(R.drawable.tp_sx1, "更新检测"));
        boolean zD0 = p000if.a.d0(x7Var.f4529e, new Intent("android.settings.SETTINGS"));
        x9.b1 b1Var2 = x7Var.f16042i;
        if (zD0) {
            b1Var2.q(new CmdBean(R.drawable.shezhi3, "原生设置", "android.settings.SETTINGS", ""));
        }
        b1Var2.q(new CmdBean(R.drawable.tp_desktop1, "选择默认桌面", "", ""));
        if (p000if.a.d0(x7Var.f4529e, new Intent("android.settings.MANAGE_DEFAULT_APPS_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_wz7, "设置默认应用", "android.settings.MANAGE_DEFAULT_APPS_SETTINGS", ""));
        }
        if (p000if.a.d0(x7Var.f4529e, new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_acces, "开发者选项", "android.settings.APPLICATION_DEVELOPMENT_SETTINGS", ""));
        }
        if (p000if.a.d0(x7Var.f4529e, new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_jt1, "通知使用权", "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS", ""));
        }
        if (p000if.a.d0(x7Var.f4529e, new Intent("android.settings.ALL_APPS_NOTIFICATION_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_xx1, "通知授权", "android.settings.ALL_APPS_NOTIFICATION_SETTINGS", ""));
        }
        if (p000if.a.d0(x7Var.f4529e, new Intent("android.settings.DATE_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_time1, "时间日期", "android.settings.DATE_SETTINGS", ""));
        }
        if (p000if.a.d0(x7Var.f4529e, new Intent("android.settings.ACCESSIBILITY_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_wz25, "无障碍", "android.settings.ACCESSIBILITY_SETTINGS", ""));
        }
        if (p000if.a.d0(x7Var.f4529e, new Intent("android.settings.APPLICATION_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_wz21, "应用管理", "android.settings.APPLICATION_SETTINGS", ""));
        }
        if (p000if.a.d0(x7Var.f4529e, new Intent("android.settings.WIFI_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_wifi1, "WIFI", "android.settings.WIFI_SETTINGS", ""));
        }
        if (i10 >= 28 && p000if.a.d0(x7Var.f4529e, new Intent("android.settings.DATA_USAGE_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_wifi3, "流量统计", "android.settings.DATA_USAGE_SETTINGS", ""));
        }
        if (p000if.a.d0(x7Var.f4529e, new Intent("android.settings.BLUETOOTH_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_ly1, "蓝牙", "android.settings.BLUETOOTH_SETTINGS", ""));
        }
        if (p000if.a.d0(x7Var.f4529e, new Intent("android.settings.DEVICE_INFO_SETTINGS"))) {
            b1Var2.q(new CmdBean(R.drawable.tp_01, "关于设备", "android.settings.DEVICE_INFO_SETTINGS", ""));
        }
        bVar.f("完成初始化");
        do {
            Thread.sleep(500L);
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        } while (!com.yunpan.appmanage.util.j.f4033a.B);
        for (AppBean appBean : MyDb.get().getAppDao().get_app_all()) {
            if (!appBean.isDisable && !appBean.isHide && !appBean.isUnInstall && !appBean.apkPath.isEmpty()) {
                if (appBean.pack.equals("com.android.tv.settings")) {
                    bVar.f(new CmdBean(R.drawable.shezhi3, "原生设置(TV)", "com.android.tv.settings", "com.android.tv.settings.MainSettings"));
                } else if (appBean.pack.equals("com.android.settings")) {
                    ComponentName componentName = new ComponentName("com.android.settings", "com.android.settings.Settings");
                    if (p000if.a.d0(x7Var.f4529e, new Intent().setComponent(componentName))) {
                        bVar.f(new CmdBean(R.drawable.tp_cj, "系统设置(测)", componentName.getPackageName(), componentName.getClassName()));
                    }
                    ComponentName componentName2 = new ComponentName("com.android.settings", "com.android.settings.LanguageSettings");
                    if (p000if.a.d0(x7Var.f4529e, new Intent().setComponent(componentName2))) {
                        bVar.f(new CmdBean(R.drawable.tp_cj, "输入法设置(测)", componentName2.getPackageName(), componentName2.getClassName()));
                    }
                    ComponentName componentName3 = new ComponentName("com.android.settings", "com.android.settings.Settings$DevelopmentSettingsDashboardActivity");
                    if (p000if.a.d0(x7Var.f4529e, new Intent().setComponent(componentName3))) {
                        bVar.f(new CmdBean(R.drawable.tp_cj, "开发者选项(测)", componentName3.getPackageName(), componentName3.getClassName()));
                    }
                    ComponentName componentName4 = new ComponentName("com.android.settings", "com.android.settings.Settings$HighPowerApplicationsActivity");
                    if (p000if.a.d0(x7Var.f4529e, new Intent().setComponent(componentName4))) {
                        bVar.f(new CmdBean(R.drawable.tp_cj, "电池优化(测)", componentName4.getPackageName(), componentName4.getClassName()));
                    }
                    ComponentName componentName5 = new ComponentName("com.android.settings", "com.android.settings.Settings$MyDeviceInfoActivity");
                    if (p000if.a.d0(x7Var.f4529e, new Intent().setComponent(componentName5))) {
                        bVar.f(new CmdBean(R.drawable.tp_cj, "关于设备(测)", componentName5.getPackageName(), componentName5.getClassName()));
                    }
                    ComponentName componentName6 = new ComponentName("com.android.settings", "com.android.settings.Settings$OverlaySettingsActivity");
                    if (p000if.a.d0(x7Var.f4529e, new Intent().setComponent(componentName6))) {
                        bVar.f(new CmdBean(R.drawable.tp_cj, "悬浮窗权限(测)", componentName6.getPackageName(), componentName6.getClassName()));
                    }
                    ComponentName componentName7 = new ComponentName("com.android.settings", "com.android.settings.Settings$PictureInPictureSettingsActivity");
                    if (p000if.a.d0(x7Var.f4529e, new Intent().setComponent(componentName7))) {
                        bVar.f(new CmdBean(R.drawable.tp_cj, "画中画权限(测)", componentName7.getPackageName(), componentName7.getClassName()));
                    }
                    ComponentName componentName8 = new ComponentName("com.android.settings", "com.android.settings.Settings$StorageDashboardActivity");
                    if (p000if.a.d0(x7Var.f4529e, new Intent().setComponent(componentName8))) {
                        bVar.f(new CmdBean(R.drawable.tp_cj, "存储空间(测)", componentName8.getPackageName(), componentName8.getClassName()));
                    }
                } else if (appBean.name.equals("设置") || appBean.name.equals("电视设置") || appBean.name.equals("系统设置")) {
                    if (appBean.isCanStart && (launchIntentForPackage = com.yunpan.appmanage.util.j.f4033a.f4037b.getLaunchIntentForPackage(appBean.pack)) != null) {
                        bVar.f(new CmdBean(R.drawable.shezhi3, appBean.name, appBean.pack, launchIntentForPackage.getComponent().getClassName()));
                    }
                }
            }
        }
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        UsbInterface usbInterface;
        x7 x7Var = this.f15989b;
        x7Var.getClass();
        s1.g.Y(view);
        x9.b1 b1Var = x7Var.f16041h;
        String str = ((CmdBean) b1Var.t(i10)).name;
        if (!((CmdBean) b1Var.t(i10)).str1.isEmpty()) {
            String str2 = ((CmdBean) b1Var.t(i10)).str1;
            String str3 = ((CmdBean) b1Var.t(i10)).str2;
            try {
                if (str3.isEmpty()) {
                    p000if.a.x0(1, x7Var.f4529e, new Intent(str2));
                } else {
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName(str2, str3));
                    intent.setFlags(268435456);
                    p000if.a.x0(1, x7Var.f4529e, intent);
                }
                return;
            } catch (Exception unused) {
                if (str3.equals("com.android.settings.Settings")) {
                    try {
                        Intent intent2 = new Intent("android.settings.SETTINGS");
                        intent2.setFlags(268435456);
                        p000if.a.x0(1, x7Var.f4529e, intent2);
                        return;
                    } catch (Exception unused2) {
                        Toaster.show((CharSequence) "不存在，无法调用此功能！");
                        return;
                    }
                }
                Toaster.show((CharSequence) "不存在，无法调用此功能！");
                return;
            }
        }
        if (str.contains("内存清理")) {
            ha.t4 t4Var = new ha.t4(x7Var.f4530f, x7Var.f4529e);
            u7 u7Var = new u7(x7Var, 6);
            t4Var.show();
            t4Var.f7792i = u7Var;
            return;
        }
        if (str.contains("管家设置")) {
            new fc(x7Var.f4530f, x7Var.f4529e).show();
            return;
        }
        if (str.contains("配置备份")) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("导出配置");
            arrayList.add("导入配置");
            new ja(x7Var.f4530f, x7Var.f4529e, view, arrayList, new u7(x7Var, 1)).show();
            return;
        }
        if (str.contains("开机执行任务")) {
            ((da.g) x7Var.f4530f).w(ActivityBootStartTask.class);
            return;
        }
        if (str.contains(x7Var.getString(R.string.dialog_warning_serious))) {
            new ha.i(x7Var.f4530f, x7Var.f4529e, x7Var.getString(R.string.dialog_warning_serious), x7Var.getString(R.string.dialog_warning1)).show();
            return;
        }
        if (str.contains("设备信息")) {
            new ha.q6(x7Var.f4530f, x7Var.f4529e).show();
            return;
        }
        if (str.contains("原生功能")) {
            new id(x7Var.f4530f, x7Var.f4529e, x7Var.f16042i).show();
            return;
        }
        if (str.contains("执行命令")) {
            ((da.g) x7Var.f4530f).w(ActivityShell.class);
            return;
        }
        if (str.contains("下载")) {
            ((da.g) x7Var.f4530f).w(ActivityDownload.class);
            return;
        }
        if (str.contains("打赏管家")) {
            new ha.p5(x7Var.f4530f, x7Var.f4529e, 1).show();
            return;
        }
        if (str.startsWith("多屏异显")) {
            DisplayManager displayManager = (DisplayManager) x7Var.f4529e.getSystemService("display");
            if (displayManager == null || displayManager.getDisplays().length < 2) {
                com.yunpan.appmanage.util.a0.u("没有连接多屏");
                return;
            } else {
                ((da.g) x7Var.f4530f).w(ActivityDisplayManager.class);
                return;
            }
        }
        if (str.contains("应用统计分析")) {
            if (Build.VERSION.SDK_INT < 23) {
                com.yunpan.appmanage.util.a0.t("此功能需要安卓6.0以上系统");
                return;
            } else if (p000if.a.a0(x7Var.f4529e)) {
                x7Var.p();
                return;
            } else {
                XXPermissions.with(x7Var).permission(PermissionLists.getPackageUsageStatsPermission()).request(new g6(x7Var, 3, view));
                return;
            }
        }
        if (str.contains("自启动管理")) {
            ((da.g) x7Var.f4530f).w(ActivityStart.class);
            return;
        }
        if (str.contains("应用管理")) {
            ((da.g) x7Var.f4530f).w(ActivityApps.class);
            return;
        }
        if (str.contains("无障碍")) {
            ((da.g) x7Var.f4530f).w(ActivityAccessibility.class);
            return;
        }
        if (str.contains("自动化任务")) {
            if (p000if.a.b0(x7Var.f4529e)) {
                ((da.g) x7Var.f4530f).w(ActivityAutomation.class);
                return;
            }
            fa.b0.f5652a.getClass();
            if (a2.w0.J()) {
                com.yunpan.appmanage.util.a0.u("adb无法授予权限，此系统有限制");
                return;
            } else {
                x7Var.r("首次使用此功能需 连接adb 或 root 或 公签系统");
                return;
            }
        }
        if (str.contains("沉浸")) {
            if (!p000if.a.b0(x7Var.f4529e)) {
                fa.b0.f5652a.getClass();
                if (!a2.w0.P()) {
                    x7Var.r("首次使用此功能需连接adb或root或公签系统");
                    return;
                }
            }
            ((da.g) x7Var.f4530f).w(ActivityImmersive.class);
            return;
        }
        if (str.contains("已运行应用")) {
            fa.b0.f5652a.getClass();
            if (a2.w0.N() || Build.VERSION.SDK_INT < 21) {
                ((da.g) x7Var.f4530f).w(ActivityRunMemory.class);
                return;
            } else {
                x7Var.r("使用此功能需连接adb 或 root 或 公签系统");
                return;
            }
        }
        if (str.contains("关机") || str.contains("重启")) {
            fa.b0.f5652a.getClass();
            if (a2.w0.M()) {
                new cb(x7Var.f4530f, x7Var.f4529e).show();
                return;
            } else {
                x7Var.r("使用此功能需连接adb 或 root 或 公签系统");
                return;
            }
        }
        if (str.contains("实验室")) {
            ((da.g) x7Var.f4530f).w(ActivityLaboratory.class);
            return;
        }
        if (!str.contains("OTG")) {
            if (!str.contains("快捷权限管理")) {
                if (str.contains("适配码")) {
                    if (fa.g0.f5682a.f()) {
                        com.yunpan.appmanage.util.a0.w("您是尊贵的root用户，无需此功能");
                        return;
                    } else {
                        new ha.i(x7Var.f4530f, x7Var.f4529e, new u7(x7Var, 7)).show();
                        return;
                    }
                }
                if (str.contains("更新检测")) {
                    b1Var.C(i10);
                    new mc.c(0, new t6(4)).d(rc.f.f13757b).a(fc.b.a()).b(new v7(x7Var, 2));
                    return;
                } else if (str.contains("反馈")) {
                    new ha.p5(x7Var.f4530f, x7Var.f4529e, 0).show();
                    return;
                } else {
                    if (str.contains("adb开")) {
                        x7Var.l(ActivityAdb.class);
                        return;
                    }
                    return;
                }
            }
            if (Build.VERSION.SDK_INT < 23) {
                Toaster.show((CharSequence) "低于安卓6.0，无需管理权限");
                return;
            }
            fa.b0.f5652a.getClass();
            if (!a2.w0.O()) {
                x7Var.r("使用此功能需连接adb 或 root 或 公签系统");
                return;
            }
            if (!p000if.a.b0(x7Var.f4529e) && a2.w0.J()) {
                com.yunpan.appmanage.util.a0.u("您可能无法授予权限，系统有限制");
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add("悬浮窗");
            arrayList2.add("安装应用");
            arrayList2.add("通知使用权");
            arrayList2.add("忽略电池优化");
            arrayList2.add("修改系统设置");
            arrayList2.add("修改系统安全设置");
            arrayList2.add("使用情况访问权限");
            arrayList2.add("系统日志(READ_LOGS)");
            arrayList2.add("一键授予应用所有权限");
            new fa(x7Var.f4530f, x7Var.f4529e, null, arrayList2, new u7(x7Var, 0)).show();
            return;
        }
        UsbManager usbManager = (UsbManager) x7Var.f4529e.getSystemService("usb");
        if (usbManager.getDeviceList().isEmpty()) {
            Toaster.show((CharSequence) "请用OTG转接线 连接其它安卓设备");
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        Iterator<String> it = usbManager.getDeviceList().keySet().iterator();
        while (true) {
            int i11 = 0;
            if (!it.hasNext()) {
                break;
            }
            UsbDevice usbDevice = usbManager.getDeviceList().get(it.next());
            if (Build.VERSION.SDK_INT >= 21) {
                PrintStream printStream = System.out;
                usbDevice.getManufacturerName();
                usbDevice.getProductName();
                usbDevice.getSerialNumber();
                printStream.getClass();
                if ((usbDevice.getManufacturerName() + " " + usbDevice.getProductName()).contains("LTE Module")) {
                }
            }
            int interfaceCount = usbDevice.getInterfaceCount();
            while (true) {
                if (i11 >= interfaceCount) {
                    usbInterface = null;
                    break;
                }
                usbInterface = usbDevice.getInterface(i11);
                if (usbInterface.getInterfaceClass() == 255 && usbInterface.getInterfaceSubclass() == 66 && usbInterface.getInterfaceProtocol() == 1) {
                    break;
                } else {
                    i11++;
                }
            }
            if (usbInterface != null) {
                arrayList3.add(usbDevice);
                arrayList4.add(usbInterface);
            }
        }
        if (arrayList3.isEmpty()) {
            Toaster.show((CharSequence) "请用OTG转接线 连接其它安卓设备");
        } else if (arrayList3.size() == 1) {
            x7Var.n(usbManager, (UsbDevice) arrayList3.get(0), (UsbInterface) arrayList4.get(0), false);
        } else {
            new ta(x7Var.f4530f, x7Var.f4529e, arrayList3, new androidx.fragment.app.f(x7Var, usbManager, arrayList3, arrayList4, 4)).show();
        }
    }
}
