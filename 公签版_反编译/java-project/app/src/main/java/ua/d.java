package ua;

import android.app.Activity;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.SystemProperties;
import android.provider.Settings;
import android.view.View;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.ui.ActivityAdb;
import io.github.muntashirakon.adb.android.AdbMdns;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15626a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityAdb f15627b;

    public /* synthetic */ d(ActivityAdb activityAdb, int i10) {
        this.f15626a = i10;
        this.f15627b = activityAdb;
    }

    @Override // ec.d
    public void g(mc.b bVar) throws InterruptedException {
        ActivityAdb activityAdb = this.f15627b;
        boolean zPutInt = false;
        switch (this.f15626a) {
            case 1:
                int i10 = ActivityAdb.G;
                activityAdb.getClass();
                androidx.room.s sVarL0 = u9.d.r("getprop").l0();
                if (sVarL0.f2426b == 0) {
                    for (String str : sVarL0.k()) {
                        if (str.contains("adb.enable]")) {
                            try {
                                String[] strArrSplit = str.split(":");
                                String strTrim = strArrSplit[0].trim();
                                String strTrim2 = strArrSplit[1].trim();
                                String strSubstring = strTrim.substring(1, strTrim.length() - 1);
                                strTrim2.substring(strTrim2.indexOf("[") + 1, strTrim2.lastIndexOf("]"));
                                u9.d.r("setprop " + strSubstring + " 1").l0();
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
                u9.d.r("setprop persist.service.adb.enable 1").l0();
                u9.d.r("setprop persist.service.debuggable 1").l0();
                u9.d.r("setprop persist.sv.debug.adb_enable 1").l0();
                u9.d.r("setprop persist.sys.adb.enable 1").l0();
                u9.d.r("setprop persist.adb.tls_server.enable 1").l0();
                u9.d.r("setprop persist.sys.usb.adb on").l0();
                u9.d.r("setprop persist.service.adb.button.visible ON").l0();
                androidx.room.s sVarL02 = u9.d.r("settings put global adb_enabled 1").l0();
                try {
                    zPutInt = Settings.Global.putInt(activityAdb.F, "adb_enabled", 1);
                } catch (Exception unused2) {
                }
                if (!zPutInt && sVarL02.f2426b != 0) {
                    android.support.v4.media.session.a.B("修改失败", bVar);
                    break;
                } else {
                    try {
                        Thread.sleep(1200L);
                    } catch (Exception unused3) {
                    }
                    bVar.b();
                    break;
                }
                break;
            default:
                int i11 = ActivityAdb.G;
                activityAdb.getClass();
                try {
                    Settings.Global.putInt(activityAdb.F, "adb_enabled", 1);
                } catch (Exception unused4) {
                }
                if (u9.d.r("setprop service.adb.tcp.port 5555").l0().f2426b != 0) {
                    android.support.v4.media.session.a.B("修改失败，不适合您的系统", bVar);
                    break;
                } else {
                    fa.b0.f5652a.getClass();
                    a2.w0.m("setprop persist.internet.adb_enable 1");
                    a2.w0.m("setprop persist.sys.adb.wiress.enable 1");
                    a2.w0.m("setprop persist.sv.debug.adb_enable 1");
                    a2.w0.m("persist.service.adb.enable 1");
                    a2.w0.m("persist.sv.debug.adb_enable 1");
                    a2.w0.m("setprop persist.adb.tls_server.enable 1");
                    a2.w0.m("setprop service.adb.tls.port 5555");
                    a2.w0.m("setprop sys.connect.adb.wiress 5555");
                    a2.w0.m("setprop persist.adb.tcpip 5555");
                    a2.w0.m("setprop persist.adb.tcp.port 5555");
                    a2.w0.m("setprop persist.service.adb.button.visible ON");
                    a2.w0.m("setprop persist.vendor.bosch.usb2.mode 'peripheral'");
                    a2.w0.m("setprop persist.sys.adb.debug.wiress.enable 1");
                    u9.d.r("setprop ctl.restart adbd").l0();
                    try {
                        Thread.sleep(PopupConst.DURATION_POPUP);
                    } catch (Exception unused5) {
                    }
                    bVar.b();
                    break;
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 7;
        int i12 = 6;
        int i13 = 3;
        int i14 = 5;
        int i15 = 4;
        int i16 = 0;
        int i17 = ActivityAdb.G;
        ActivityAdb activityAdb = this.f15627b;
        activityAdb.getClass();
        if (i10 == 0) {
            if (fa.h.f5683a.i() || fa.l.f5712a.isConnected()) {
                com.yunpan.appmanage.util.a0.u("您本身已连接adb");
                return;
            } else {
                new ha.z6(activityAdb, activityAdb, "自行测试看哪个方法适合您的系统", "", "方法一", "方法二", new f(activityAdb, i15)).show();
                return;
            }
        }
        if (i10 == 1) {
            new mc.c(0, new tb.v(14)).d(rc.f.f13757b).a(fc.b.a()).b(new e(activityAdb, 0));
            return;
        }
        if (i10 == 2) {
            new ha.z6(activityAdb, activityAdb.A, "当前状态：".concat(Settings.Global.getInt(activityAdb.F, "adb_enabled", -1) == 1 ? "已开启" : "已关闭"), "注：有些设备开启USB调试会断开无线adb\n注：此功能适合大部分系统，某些系统除外\n注：如何不适合的话，不要点关闭usb", "开启usb调试", "关闭usb调试", new f(activityAdb, i14)).show();
            return;
        }
        if (i10 == 3) {
            activityAdb.F("persist.sv.debug.adb_enable", "1", "0");
            return;
        }
        if (i10 == 4) {
            new mc.c(0, new tb.v(15)).d(rc.f.f13757b).a(fc.b.a()).b(new e(activityAdb, 2));
            return;
        }
        if (i10 == 5) {
            fa.b0.f5652a.getClass();
            if (a2.w0.J()) {
                com.yunpan.appmanage.util.a0.u("您已连接adb，无需点击此功能");
                return;
            }
            if (fa.g0.f5682a.f()) {
                com.yunpan.appmanage.util.a0.u("您已root，无需连接adb");
                return;
            }
            activityAdb.finish();
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            ContextWrapper contextWrapper = com.yunpan.appmanage.util.j.f4033a.f4035a;
            new ha.p5((Activity) contextWrapper, contextWrapper).show();
            return;
        }
        if (i10 == 6) {
            kh.e.b().f(AdbMdns.SERVICE_TYPE_TELNET);
            activityAdb.finish();
            return;
        }
        if (i10 == 7 || i10 == 8) {
            return;
        }
        if (i10 == 9) {
            if (Build.VERSION.SDK_INT < 30) {
                com.yunpan.appmanage.util.a0.s("低于安卓11，不支持此功能", false);
                return;
            } else {
                new ha.z6(activityAdb, activityAdb.A, "警告：匹配码adb与上面的无线adb不同，不懂的话请不要开启！\n因为一些系统如果开启了这个，会导致一直弹出(是否允许此网络进行无线调试吗)这样的窗口\n\n此功能一般是高版本手机系统才有的功能，具体看开发者选项中有没有匹配码", "当前无线wifi adb状态：".concat(Settings.Global.getInt(activityAdb.F, "adb_wifi_enabled", 0) == 1 ? "开" : "关"), "开启", "关闭", new f(activityAdb, i16)).show();
                return;
            }
        }
        if (i10 == 10) {
            new ha.p5((Activity) activityAdb, activityAdb.A).show();
            return;
        }
        if (i10 == 11) {
            return;
        }
        if (i10 == 12) {
            activityAdb.F("persist.service.adb.enable", "1", "0");
            return;
        }
        if (i10 == 13) {
            activityAdb.F("persist.service.debuggable", "1", "0");
            return;
        }
        if (i10 == 14) {
            activityAdb.F("persist.sys.adb.enable", "1", "0");
            return;
        }
        if (i10 == 15) {
            activityAdb.F("persist.adb.tls_server.enable", "1", "0");
            return;
        }
        if (i10 == 16) {
            activityAdb.F("persist.sys.usb.adb", "on", "off");
            return;
        }
        if (i10 == 17) {
            activityAdb.F("persist.service.adb.button.visible", "ON", "OFF");
            return;
        }
        if (i10 == 18) {
            return;
        }
        if (i10 == 19) {
            new ha.z6(activityAdb, activityAdb.A, "警告：此功能仅支持小部分车机，兼容性差，不建议用！", "注：有些设备开启USB调试会断开无线adb", "开启", "算了", new f(activityAdb, i11)).show();
            return;
        }
        if (i10 == 20) {
            new ha.z6(activityAdb, activityAdb, "注意：此功能，仅支持个别系统！兼容性差  不建议使用", "", "取消", "打开", new f(activityAdb, i12)).show();
            return;
        }
        if (i10 == 21) {
            activityAdb.E(com.yunpan.appmanage.carsdk.h0.c(activityAdb.A));
            return;
        }
        if (i10 == 22) {
            new ha.z6(activityAdb, activityAdb, "您是(捷途-车联天下)系统,还是(捷途-德赛西威)系统？", "", "车联天下(AUTOLINK)", "德赛西威(DESAYSV)", new f(activityAdb, i13)).show();
            return;
        }
        if (i10 != 23) {
            Toaster.show((CharSequence) "未开发");
            return;
        }
        String str = SystemProperties.get("service.adb.tcp.port");
        String str2 = "当前ADB状态：未开启";
        if (str != null && str.equals("5555")) {
            str2 = "当前ADB状态：已开启";
        }
        new ha.z6(activityAdb, activityAdb, str2, "", "开启无线ADB", "关闭无线ADB", new kf.d(25, activityAdb, str, false)).show();
    }
}
