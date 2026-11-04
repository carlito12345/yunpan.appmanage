package ua;

import android.media.AudioManager;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import com.hjq.permissions.OnPermissionCallback;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.bean.ShortcutCmdBean;
import com.yunpan.appmanage.ui.ActivityShell;
import com.yunpan.appmanage.ui.ActivitySidebarSet;
import com.yunpan.appmanage.ui.ActivityStudy;
import ha.ea;
import ha.ga;
import ha.je;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class g6 implements ec.d, ea, OnPermissionCallback, ha.y6, je, db.n, ea.b, mb.e, ga, u1.j, u1.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15695a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15696b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15697c;

    public /* synthetic */ g6(Object obj, int i10, Object obj2) {
        this.f15695a = i10;
        this.f15697c = obj;
        this.f15696b = obj2;
    }

    @Override // u1.j
    /* renamed from: a */
    public void mo12a(Object obj) {
        z1.h hVar = (z1.h) ((z1.b) obj);
        hVar.getClass();
        z1.a aVar = (z1.a) this.f15697c;
        f2.c0 c0Var = aVar.f19331d;
        if (c0Var == null) {
            return;
        }
        f2.y yVar = (f2.y) this.f15696b;
        r1.p pVar = yVar.f5440b;
        pVar.getClass();
        c0Var.getClass();
        i8 i8Var = new i8(pVar, 13, hVar.f19367c.d(aVar.f19329b, c0Var));
        int i10 = yVar.f5439a;
        if (i10 != 0) {
            if (i10 == 1) {
                hVar.f19380q = i8Var;
                return;
            } else if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                hVar.r = i8Var;
                return;
            }
        }
        hVar.f19379p = i8Var;
    }

    @Override // ha.ea
    public void b(int i10) {
        int i11 = 0;
        Object obj = this.f15696b;
        Object obj2 = this.f15697c;
        switch (this.f15695a) {
            case 1:
                ActivitySidebarSet activitySidebarSet = (ActivitySidebarSet) obj2;
                activitySidebarSet.X.setText((CharSequence) ((ArrayList) obj).get(i10));
                activitySidebarSet.R0 = i10;
                break;
            case 2:
                int i12 = ActivityStudy.I;
                ActivityStudy activityStudy = (ActivityStudy) obj2;
                activityStudy.getClass();
                ArrayList arrayList = (ArrayList) obj;
                if (i10 == 3) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        if (!XXPermissions.isGrantedPermission(activityStudy, PermissionLists.getPackageUsageStatsPermission())) {
                            XXPermissions.with(activityStudy).permission(PermissionLists.getPackageUsageStatsPermission()).request(new androidx.room.s(activityStudy, i10, arrayList, 18));
                            break;
                        }
                    } else {
                        com.yunpan.appmanage.util.a0.u("仅适合android6.0以上");
                        break;
                    }
                }
                new mc.c(i11, new ha.v1(activityStudy, ((String) arrayList.get(i10)).substring(2), i10, 13)).d(rc.f.f13757b).a(fc.b.a()).b(new y6(activityStudy, i11));
                break;
            case 11:
                x9.f fVar = (x9.f) obj2;
                fVar.getClass();
                int iIntValue = ((Integer) ((View) obj).getTag()).intValue();
                x9.g gVar = fVar.f18225b;
                z7.s sVar = (z7.s) gVar.t(iIntValue);
                ArrayList arrayList2 = gVar.f18230j;
                sVar.l("extraType", Integer.valueOf(((KeyCodeBean) arrayList2.get(i10)).keyCode));
                ((z7.s) gVar.t(iIntValue)).m("extraName", ((KeyCodeBean) arrayList2.get(i10)).keyName);
                gVar.e(iIntValue);
                break;
            default:
                x9.k0 k0Var = (x9.k0) obj2;
                k0Var.getClass();
                int iIntValue2 = ((Integer) ((View) obj).getTag()).intValue();
                x9.l0 l0Var = k0Var.f18252b;
                z7.s sVar2 = (z7.s) l0Var.t(iIntValue2);
                ArrayList arrayList3 = l0Var.f18268j;
                sVar2.l("extraType", Integer.valueOf(((KeyCodeBean) arrayList3.get(i10)).keyCode));
                ((z7.s) l0Var.t(iIntValue2)).m("extraName", ((KeyCodeBean) arrayList3.get(i10)).keyName);
                l0Var.e(iIntValue2);
                break;
        }
    }

    @Override // mb.e
    public void c(int i10, mb.h hVar, ag.h hVar2) {
        wb.l lVar = (wb.l) this.f15697c;
        ((ArrayList) this.f15696b).addAll(lVar.f17814g.u(i10, hVar, lVar.f17813f));
        if (lVar.b()) {
            return;
        }
        hVar2.f680a = true;
    }

    @Override // db.n
    public void d(bi.a aVar) {
        db.s sVar = (db.s) aVar;
        vb.p pVar = (vb.p) this.f15697c;
        if (pVar.f16092b.P()) {
            int action = sVar.f4543d.getAction();
            g8 g8Var = (g8) this.f15696b;
            CodeEditor codeEditor = pVar.f16092b;
            if (action != 7) {
                if (action == 9) {
                    codeEditor.removeCallbacks(g8Var);
                    pVar.g();
                    vb.p.e(pVar, sVar);
                    return;
                } else {
                    if (action != 10) {
                        return;
                    }
                    pVar.f16760t = null;
                    if (pVar.r.f3845a) {
                        return;
                    }
                    vb.p.f(pVar, g8Var);
                    vb.p.e(pVar, sVar);
                    return;
                }
            }
            if (pVar.r.f3845a) {
                return;
            }
            MotionEvent motionEvent = sVar.f4543d;
            if (!codeEditor.Q(motionEvent.getX(), motionEvent.getY())) {
                pVar.f16760t = null;
                vb.p.f(pVar, g8Var);
            } else if (Math.abs(motionEvent.getX() - ((Number) pVar.f16761v.f8683a).floatValue()) > 20.0f || Math.abs(motionEvent.getY() - ((Number) pVar.f16761v.f8684b).floatValue()) > 20.0f) {
                vb.p.e(pVar, sVar);
                long jI = codeEditor.I(motionEvent.getX(), motionEvent.getY());
                pVar.f16760t = codeEditor.getText().n().A((int) (jI >> 32), (int) (jI & 4294967295L));
                vb.p.f(pVar, g8Var);
            }
        }
    }

    @Override // ha.je
    public void e(String str, String str2) {
        i9 i9Var = (i9) this.f15697c;
        i9Var.f15744h.c("压缩中");
        ArrayList arrayList = new ArrayList();
        arrayList.add((x9.w3) this.f15696b);
        File file = new File(new File(((x9.w3) arrayList.get(0)).f18365b).getParent(), str);
        za.g.b(arrayList, file, str2).b(new ha.h3(i9Var, 19, file));
    }

    @Override // ea.b
    public void f(boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        wa.s sVar = (wa.s) this.f15697c;
        if (!z) {
            sVar.r(false);
            return;
        }
        sVar.getClass();
        z7.s sVar2 = (z7.s) this.f15696b;
        sVar.d(sVar2.o("focusType").e());
        int iE = sVar2.o("volumeType").e();
        int iE2 = sVar2.o("int1").e();
        if (iE >= 0 && iE2 >= 0) {
            if (iE >= 100) {
                com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                sVar.J = k0Var.f(iE);
                k0Var.h(iE - 100, iE2);
            } else {
                AudioManager audioManager = sVar.C;
                sVar.J = audioManager.getStreamVolume(iE);
                audioManager.setStreamVolume(iE, iE2, 0);
            }
            sVar.I = iE;
        }
        com.yunpan.appmanage.util.a0.w("请开始您的表演");
        try {
            v8.a aVar = new v8.a(sVar.f17709e);
            aVar.j(R.layout.window_hm);
            aVar.p();
            aVar.a(256);
            aVar.l(Build.VERSION.SDK_INT >= 28 ? 1 : 0);
            aVar.m(R.id.v_ico, new g5(18, sVar));
            sVar.H = aVar;
            aVar.d();
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // ec.d
    public void g(mc.b bVar) throws IllegalAccessException, NoSuchMethodException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i10;
        int i11 = ActivityShell.M;
        ActivityShell activityShell = (ActivityShell) this.f15697c;
        activityShell.getClass();
        StringBuilder sb2 = new StringBuilder();
        fa.h0 h0Var = fa.g0.f5682a;
        String strG = g.b.g(h0Var, sb2, "/快捷指令.txt");
        if (h0Var.d().isEmpty() || !com.yunpan.appmanage.util.a0.g(strG)) {
            strG = "";
        }
        if (strG.isEmpty()) {
            strG = activityShell.getFilesDir().getParentFile().getPath() + "/快捷指令.txt";
            if (!com.yunpan.appmanage.util.a0.g(strG)) {
                strG = "";
            }
        }
        boolean zIsEmpty = strG.isEmpty();
        ArrayList arrayList = (ArrayList) this.f15696b;
        if (!zIsEmpty) {
            try {
                FileInputStream fileInputStream = new FileInputStream(strG);
                try {
                    InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
                    try {
                        BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                String strTrim = line.trim();
                                if (!strTrim.isEmpty() && !strTrim.startsWith("#") && !strTrim.startsWith("//")) {
                                    int iIndexOf = strTrim.indexOf("：");
                                    if (iIndexOf == -1) {
                                        iIndexOf = strTrim.indexOf("----");
                                        i10 = 4;
                                    } else {
                                        i10 = 1;
                                    }
                                    if (iIndexOf == -1) {
                                        iIndexOf = strTrim.indexOf(":");
                                    }
                                    if (iIndexOf > 0) {
                                        arrayList.add(new ShortcutCmdBean(strTrim.substring(0, iIndexOf), strTrim.substring(iIndexOf + i10)));
                                    }
                                }
                            } catch (Throwable th2) {
                                try {
                                    bufferedReader.close();
                                    throw th2;
                                } catch (Throwable th3) {
                                    try {
                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                        throw th2;
                                    } catch (Exception unused) {
                                        throw th2;
                                    }
                                }
                            }
                        }
                        bufferedReader.close();
                        inputStreamReader.close();
                        fileInputStream.close();
                    } finally {
                    }
                } finally {
                }
            } catch (Exception unused2) {
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new ShortcutCmdBean("查询用户", Name.MARK));
            arrayList.add(new ShortcutCmdBean(activityShell.getResources().getString(R.string.views_mount), "mount"));
            arrayList.add(new ShortcutCmdBean(activityShell.getResources().getString(R.string.views_mount), "mount | grep ' /system '"));
            arrayList.add(new ShortcutCmdBean(activityShell.getResources().getString(R.string.views_mount), "mount | grep ' / '"));
            int i12 = Build.VERSION.SDK_INT;
            arrayList.add(new ShortcutCmdBean("查看分区大小", "df".concat(i12 >= 23 ? " -h" : "")));
            arrayList.add(new ShortcutCmdBean("查看系统分区", g.b.l(i12 >= 23 ? " -h" : "", " /system", new StringBuilder("df"))));
            arrayList.add(new ShortcutCmdBean("查看USB授权", "dumpsys usb"));
            arrayList.add(new ShortcutCmdBean("查看磁盘信息", "dumpsys diskstats"));
            arrayList.add(new ShortcutCmdBean("查看电源信息", "dumpsys power"));
            arrayList.add(new ShortcutCmdBean("查看系统日志", "logcat -d -t 500"));
            arrayList.add(new ShortcutCmdBean("测试系统日志", "logcat -d -t 500 -v tag"));
            arrayList.add(new ShortcutCmdBean("查看系统日志", "logcat -d -t 1000"));
            arrayList.add(new ShortcutCmdBean("查看按键日志", "logcat -d -t 2000 | grep -i 'keyCode'"));
            arrayList.add(new ShortcutCmdBean("导出系统日志", g.b.g(fa.g0.f5682a, new StringBuilder("logcat -d -t 10000 > "), "/log.txt")));
            arrayList.add(new ShortcutCmdBean("清除日志缓存", "logcat -c"));
            arrayList.add(new ShortcutCmdBean("获取用户列表", "pm list users"));
            arrayList.add(new ShortcutCmdBean("查看当前用户", "am get-current-user"));
            arrayList.add(new ShortcutCmdBean("获取应用列表", "pm list packages"));
            arrayList.add(new ShortcutCmdBean("指定用户的应用", "pm list packages --user 0"));
            arrayList.add(new ShortcutCmdBean("查看安装位置", "pm list packages -f"));
            arrayList.add(new ShortcutCmdBean("获取CPU信息", "cat /proc/cpuinfo"));
            arrayList.add(new ShortcutCmdBean("查看内存大小", "cat /proc/meminfo"));
            arrayList.add(new ShortcutCmdBean("查看显示信息", "dumpsys window displays"));
            arrayList.add(new ShortcutCmdBean("获取多屏ID", "dumpsys display | grep mDisplayId"));
            arrayList.add(new ShortcutCmdBean("重置分辨率", "wm size reset"));
            arrayList.add(new ShortcutCmdBean("查看屏幕密度", "wm density"));
            arrayList.add(new ShortcutCmdBean("重置屏幕密度", "wm density reset"));
            arrayList.add(new ShortcutCmdBean("设置屏幕密度", "wm density 320"));
            arrayList.add(new ShortcutCmdBean("裁切区域-设置", "wm overscan 0,0,0,0"));
            arrayList.add(new ShortcutCmdBean("裁切区域-重置", "wm overscan reset"));
            arrayList.add(new ShortcutCmdBean("已运行的无障碍服务", "dumpsys accessibility"));
            arrayList.add(new ShortcutCmdBean("已运行的通知使用权", "dumpsys notification | grep -A3 \"Notification listeners:\""));
            arrayList.add(new ShortcutCmdBean("查看内存使用(慢)", "dumpsys meminfo"));
            arrayList.add(new ShortcutCmdBean("查看内存使用(慢)", "dumpsys -t 30000 meminfo"));
            arrayList.add(new ShortcutCmdBean("查看内存使用(root)", "procrank"));
            arrayList.add(new ShortcutCmdBean("查看电量温度", "dumpsys battery"));
            arrayList.add(new ShortcutCmdBean("查看输入设备", "getevent -pl"));
            arrayList.add(new ShortcutCmdBean("查看应用状态", "dumpsys package [包名] | grep 'enabled='"));
            arrayList.add(new ShortcutCmdBean("模拟按键", "input keyevent [键码]"));
            arrayList.add(new ShortcutCmdBean("查看设置(系统)", "getprop"));
            arrayList.add(new ShortcutCmdBean("查看设置(secure)", "settings list secure"));
            arrayList.add(new ShortcutCmdBean("查看设置(global)", "settings list global"));
            arrayList.add(new ShortcutCmdBean("查看设置(system)", "settings list system"));
            arrayList.add(new ShortcutCmdBean(activityShell.getResources().getString(R.string.mount_system_read_write), "adb remount"));
            arrayList.add(new ShortcutCmdBean(activityShell.getResources().getString(R.string.mount_system_read_write), "mount -o remount,rw /system"));
            arrayList.add(new ShortcutCmdBean(activityShell.getResources().getString(R.string.mount_system_read_write), "mount -o remount,rw /"));
            arrayList.add(new ShortcutCmdBean(activityShell.getResources().getString(R.string.mount_system_read_write), "mount -r -w -o remount -t ext4 /system"));
            arrayList.add(new ShortcutCmdBean(activityShell.getResources().getString(R.string.mount_system_read_write), "mount -r -w -o remount -t ext4 /"));
            arrayList.add(new ShortcutCmdBean(activityShell.getResources().getString(R.string.mount_system_read_write), "mount -o rw,remount -t auto /"));
            arrayList.add(new ShortcutCmdBean(activityShell.getResources().getString(R.string.mount_system_read_write), "mount -o rw,remount -t auto /system"));
            arrayList.add(new ShortcutCmdBean("开启USB调试", "settings put global adb_enabled 1"));
            arrayList.add(new ShortcutCmdBean("开启无线调试", "settings put global adb_wifi_enabled 1"));
            arrayList.add(new ShortcutCmdBean("查看USB调试", "settings get global adb_enabled"));
            arrayList.add(new ShortcutCmdBean("查看无线调试", "settings get global adb_wifi_enabled"));
            arrayList.add(new ShortcutCmdBean("查看进程限制数量", "dumpsys activity settings | grep 'CUR_MAX_CACHED_PROCESSES'"));
            arrayList.add(new ShortcutCmdBean("查看屏幕关闭超时", "settings get system screen_off_timeout"));
            arrayList.add(new ShortcutCmdBean("查看当前运行应用", "dumpsys activity activities | grep 'Run #'"));
            arrayList.add(new ShortcutCmdBean("查询用户", "pm list users"));
            arrayList.add(new ShortcutCmdBean("查询用户", "dumpsys user"));
            arrayList.add(new ShortcutCmdBean("查看根目录", "ls -l /"));
            arrayList.add(new ShortcutCmdBean("安装应用", "pm install -r -d -t \"[剪切板]\""));
            arrayList.add(new ShortcutCmdBean("查看目录", "ls -l '[剪切板]'"));
            arrayList.add(new ShortcutCmdBean("启动应用", "am start --user [当前用户] -n '[主活动]'"));
            arrayList.add(new ShortcutCmdBean("启动应用", "monkey -p '[包名]' -c android.intent.category.LAUNCHER 1"));
            arrayList.add(new ShortcutCmdBean("停止应用", "am force-stop '[包名]'"));
            arrayList.add(new ShortcutCmdBean("重置应用", "pm clear --user [当前用户] '[包名]'"));
            arrayList.add(new ShortcutCmdBean("卸载应用", "pm uninstall --user [当前用户] '[包名]'"));
            arrayList.add(new ShortcutCmdBean("卸载应用", "pm uninstall '[包名]'"));
            arrayList.add(new ShortcutCmdBean("卸载应用(保留数据)", "pm uninstall -k --user [当前用户] '[包名]'"));
            arrayList.add(new ShortcutCmdBean("卸载应用(保留数据)", "pm uninstall -k '[包名]'"));
            arrayList.add(new ShortcutCmdBean("重置高精定位", "settings put secure location_mode 0 && sleep 2 && settings put secure location_mode 3"));
            arrayList.add(new ShortcutCmdBean("获取当前窗口信息", "uiautomator dump /sdcard/window_dump.xml"));
            arrayList.add(new ShortcutCmdBean("查看应用是否待机", "am get-inactive '[包名]'"));
            arrayList.add(new ShortcutCmdBean("强制应用进入待机", "am set-inactive '[包名]' true"));
            arrayList.add(new ShortcutCmdBean("解除应用待机状态", "am set-inactive '[包名]' false"));
            arrayList.add(new ShortcutCmdBean("列出所有活动栈", "am stack list"));
            arrayList.add(new ShortcutCmdBean("强制唤醒应用", "am make-uid-idle '[包名]'"));
            arrayList.add(new ShortcutCmdBean("强制系统进入空闲模式", "dumpsys deviceidle force-idle"));
            arrayList.add(new ShortcutCmdBean("退出空闲模式", "dumpsys deviceidle unforce"));
            arrayList.add(new ShortcutCmdBean("虚拟设备电量为1%", "dumpsys battery set level 1"));
            arrayList.add(new ShortcutCmdBean("虚拟设备断开充电", "dumpsys battery unplug"));
            arrayList.add(new ShortcutCmdBean("恢复以上实际状态", "dumpsys battery reset"));
            arrayList.add(new ShortcutCmdBean("查询设备是否支持多窗", "am supports-multiwindow"));
            arrayList.add(new ShortcutCmdBean("吉利某车显示adb开关", "settings put global persist.switch.usbmode true"));
            arrayList.add(new ShortcutCmdBean("测试授权", "pm grant " + activityShell.getPackageName() + " android.permission.WRITE_SECURE_SETTINGS"));
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            if (kVar.f4060n != 0) {
                arrayList.add(new ShortcutCmdBean("测试授权", "pm grant --user " + kVar.f4060n + " " + activityShell.getPackageName() + " android.permission.WRITE_SECURE_SETTINGS"));
                arrayList.add(new ShortcutCmdBean("禁用指定应用", android.support.v4.media.session.a.s(new StringBuilder("pm disable-user --user "), kVar.f4060n, " '[包名]'")));
            }
        }
        bVar.b();
    }

    @Override // u1.k
    public void h(Object obj, r1.n nVar) throws NumberFormatException {
        ((z1.h) ((z1.b) obj)).d((r1.m0) this.f15696b, new i8(nVar, ((z1.e) this.f15697c).f19344e));
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        q8 q8Var = (q8) this.f15697c;
        q8Var.getClass();
        if (z) {
            boolean zIsEmpty = str.isEmpty();
            x9.w3 w3Var = (x9.w3) this.f15696b;
            if (!zIsEmpty) {
                w3Var.f18364a = str;
            }
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            wVar.getClass();
            try {
                z7.o oVarF = wVar.f4123i.o("CollDirs").f();
                z7.s sVar = new z7.s();
                sVar.m("file_name", w3Var.f18364a);
                sVar.m("file_path", w3Var.f18365b);
                sVar.k("isDir", Boolean.valueOf(w3Var.f18366c));
                oVarF.k(sVar);
                wVar.f4123i.j("CollDirs", oVarF);
                wVar.m();
            } catch (Exception unused) {
            }
            if (com.yunpan.appmanage.util.v.f4106a.d().size() == 1) {
                q8Var.f15910i.p(r7.b() - 4, new x9.w3("收藏栏", "", true));
            }
            Toaster.show((CharSequence) "已添加到收藏栏");
        }
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        x7 x7Var = (x7) this.f15697c;
        x7Var.getClass();
        if (list.isEmpty()) {
            com.yunpan.appmanage.util.a0.w("请允许“使用和查看使用情况”权限");
        } else {
            x7Var.p();
        }
    }
}
