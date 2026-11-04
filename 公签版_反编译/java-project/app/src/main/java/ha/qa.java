package ha;

import android.os.SystemProperties;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.UsbAdbData;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAdb;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import java.io.File;
import java.io.PrintStream;
import java.text.DecimalFormat;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class qa implements ec.d, qh.a, a6, u1.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7631a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f7632b;

    public /* synthetic */ qa(int i10, boolean z) {
        this.f7631a = i10;
        this.f7632b = z;
    }

    @Override // u1.j
    /* renamed from: a */
    public void mo12a(Object obj) {
        r1.k0 k0Var = (r1.k0) obj;
        switch (this.f7631a) {
            case 8:
                k0Var.p(this.f7632b);
                break;
            default:
                k0Var.z(this.f7632b);
                break;
        }
    }

    @Override // qh.a
    public boolean b(char c7) {
        return (c7 == 0 || c7 == '&' || (!this.f7632b ? c7 != '\"' : c7 != '\'')) ? false : true;
    }

    @Override // ha.a6
    public void f(x9.w3 w3Var) {
        a2.w0 w0Var = fa.b0.f5652a;
        String str = w3Var.f18365b;
        int i10 = this.f7632b ? 0 : 10;
        w0Var.f348d = new ua.v0(23);
        u9.d.f15554a.execute(new fa.v(w0Var, str, i10, 0));
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e1  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Exception {
        boolean z;
        String str;
        String str2;
        String strK;
        boolean z4;
        AppBean appBeanK;
        String str3;
        String str4 = "";
        boolean z10 = true;
        boolean z11 = this.f7632b;
        switch (this.f7631a) {
            case 0:
                fa.e0 e0Var = fa.a.f5647b;
                if (!z11) {
                    e0Var.a(PopupConst.DURATION_POPUP_SHORT, "persist.adb.tcpip 5555");
                    e0Var.a(PopupConst.DURATION_POPUP_SHORT, "setprop service.adb.tcp.port 5555");
                }
                UsbAdbData usbAdbDataA = e0Var.a(PopupConst.DURATION_POPUP_SHORT, z11 ? "setprop service.adb.tcp.port 5555" : "setprop persist.adb.tcp.port 5555");
                if (usbAdbDataA.code == 0) {
                    bVar.b();
                    break;
                } else {
                    bVar.d(new Exception(usbAdbDataA.getListStr()));
                    break;
                }
            case 1:
            default:
                int i10 = ActivitySystemHasWrite.F;
                if (z11) {
                    appBeanK = android.support.v4.media.session.a.k("com.autonavi.amapauto");
                    if (appBeanK == null) {
                        appBeanK = MyDb.get().getAppDao().get_appBean_name("高德地图");
                    }
                } else {
                    appBeanK = android.support.v4.media.session.a.k("cn.kuwo.kwmusiccar");
                    if (appBeanK == null) {
                        appBeanK = MyDb.get().getAppDao().get_appBean_name("酷我音乐");
                    }
                }
                if (appBeanK == null) {
                    str3 = "未找到此应用";
                } else if (appBeanK.isSystem) {
                    fa.b0.f5652a.getClass();
                    a2.w0.u(appBeanK);
                    String strD = fa.g0.f5682a.d();
                    if (!strD.isEmpty()) {
                        if (z11) {
                            if (com.yunpan.appmanage.util.a0.g(strD.concat("/amapauto9/AutoDeviceAdapter/"))) {
                                a2.w0.h("mv " + strD + "/amapauto9/AutoDeviceAdapter " + strD + "/");
                            } else {
                                z10 = false;
                            }
                            a2.w0.h("rm -rf '" + strD + "/amapauto9'");
                            if (z10) {
                                try {
                                    new File(strD.concat("/amapauto9/")).mkdirs();
                                } catch (Exception unused) {
                                }
                                a2.w0 w0Var = fa.b0.f5652a;
                                String strL = ta.q.l("mv ", strD, "/AutoDeviceAdapter ", strD, "/amapauto9/");
                                w0Var.getClass();
                                a2.w0.h(strL);
                            }
                        } else {
                            a2.w0.h("rm -rf '" + strD + "/cn_kuwo_kwmusiccas'");
                            a2.w0.h("rm -rf '" + strD + "/KuwoTingshu'");
                            a2.w0.h("rm -rf '" + strD + "/kwmusiccar'");
                            a2.w0.h("rm -rf '" + strD + "/KuwoTingshu'");
                        }
                        bVar.b();
                        break;
                    }
                } else {
                    str3 = "非系统原应用，请在应用管理中卸载";
                }
                android.support.v4.media.session.a.B(str3, bVar);
                break;
            case 2:
                int i11 = ActivityAdb.G;
                try {
                    SystemProperties.set("persist.service.adb.button.visible", "ON");
                    SystemProperties.set("service.adb.tcp.port", z11 ? "5555" : "0");
                    SystemProperties.set("ctl.restart", "adbd");
                    com.yunpan.appmanage.util.a0.w("设置完成");
                    if (z11) {
                        fa.b0.f5652a.getClass();
                        if (!a2.w0.P()) {
                            Thread.sleep(2000L);
                            fa.h.f5683a.h(null);
                        }
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    g.b.s(e7, new StringBuilder("错误："));
                }
                bVar.b();
                break;
            case 3:
                int i12 = ActivityLaboratory.I;
                a2.w0 w0Var2 = fa.b0.f5652a;
                String strConcat = "setprop sys.adb.authed ".concat(z11 ? "true" : "false");
                w0Var2.getClass();
                a2.w0.m(strConcat);
                if (a2.w0.m("setprop ro.adb.secure ".concat(z11 ? "1" : "0")).f5648a == 0) {
                    com.yunpan.appmanage.util.a0.w("修改成功");
                } else if (u9.d.r("setprop ro.adb.secure ".concat(z11 ? "1" : "0")).l0().q()) {
                    com.yunpan.appmanage.util.a0.w("修改成功");
                } else {
                    com.yunpan.appmanage.util.a0.s("修改失败：无权限修改", false);
                }
                bVar.b();
                break;
            case 4:
                int i13 = ActivityLaboratory.I;
                String str5 = z11 ? "disable" : "enable";
                a2.w0 w0Var3 = fa.b0.f5652a;
                String strConcat2 = "svc wifi ".concat(str5);
                w0Var3.getClass();
                fa.a0 a0VarH = a2.w0.h(strConcat2);
                if (a0VarH.f5648a != 0) {
                    bVar.d(new Exception("" + a0VarH.a()));
                    break;
                } else {
                    a2.w0.h("svc data ".concat(str5));
                    a2.w0.h("svc ethernet ".concat(str5));
                    bVar.b();
                    break;
                }
            case 5:
                int i14 = ActivityLaboratory.I;
                fa.j jVar = fa.h.f5683a;
                if (!jVar.f5701g) {
                    fa.m mVar = fa.l.f5712a;
                    if (mVar.f5716c) {
                        z = z11;
                    } else {
                        if (mVar.isConnected()) {
                            strK = mVar.P("root:");
                            z4 = false;
                        } else {
                            strK = jVar.k("root:");
                            z4 = true;
                        }
                        if (strK.contains("adbd cannot run as root in production builds")) {
                            u9.d.r("setprop ro.debuggable 1").l0();
                            if (u9.d.r("setprop service.adb.root 1").l0().q()) {
                                u9.d.r("setprop ctl.restart adbd").l0();
                                Thread.sleep(1000L);
                                strK = "重新连接";
                                z = z11;
                                if (strK.contains("adbd cannot run as root in production builds")) {
                                    str = "不适合此系统";
                                } else {
                                    if (!strK.contains("adbd is already running as root") && !strK.contains("already running")) {
                                        strK.contains("restarting adbd as root");
                                    }
                                    try {
                                        if (z4) {
                                            jVar.d(false);
                                            Thread.sleep(222L);
                                            jVar.m();
                                        } else {
                                            mVar.disconnect();
                                            Thread.sleep(222L);
                                            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                            mVar.M(com.yunpan.appmanage.util.j.f4033a.f4035a);
                                        }
                                    } catch (Exception unused2) {
                                        android.support.v4.media.session.a.B("adb已断开，请重新打开本应用", bVar);
                                        return;
                                    }
                                }
                            } else {
                                fa.b0.f5652a.getClass();
                                z = z11;
                                a2.w0.q(2000L, "setprop ro.debuggable 1");
                                if (a2.w0.q(2000L, "setprop service.adb.root 1").f5648a == 0) {
                                    a2.w0.q(2000L, "setprop ctl.restart adbd");
                                    Thread.sleep(1000L);
                                    strK = "重新连接";
                                }
                                if (strK.contains("adbd cannot run as root in production builds")) {
                                }
                            }
                        } else {
                            z = z11;
                            if (strK.contains("adbd cannot run as root in production builds")) {
                            }
                        }
                    }
                    fa.b0.f5652a.getClass();
                    fa.a0 a0VarH2 = a2.w0.h(Name.MARK);
                    PrintStream printStream = System.out;
                    a0VarH2.a();
                    printStream.getClass();
                    if (a0VarH2.a().contains("uid=0(")) {
                        fa.b bVar2 = fa.a.f5646a;
                        if (!bVar2.f() || bVar2.f5651b.getUid() != 0) {
                            a2.w0.h(fa.b.a(AppStart.f3772h));
                        }
                        if (jVar.i()) {
                            jVar.f5701g = true;
                        } else {
                            fa.l.f5712a.f5716c = true;
                        }
                        a2.w0.h("setenforce 0");
                        if (z) {
                            a2.w0.h("setprop ro.adb.secure 0");
                            a2.w0.h("setprop ro.secure 0");
                        }
                        fa.m mVar2 = fa.l.f5712a;
                        if (mVar2.isConnected()) {
                            mVar2.O("remount:");
                        } else if (jVar.i()) {
                            try {
                                jVar.f5696b.J("remount:");
                            } catch (Exception unused3) {
                            }
                        }
                        fa.a0 a0VarH3 = a2.w0.h("touch /system/app/111222");
                        if (a0VarH3.f5648a != 0) {
                            for (String strReplaceAll : a2.w0.h("mount").f5649b) {
                                if (strReplaceAll.contains(" /system ")) {
                                    str2 = "/system";
                                } else if (strReplaceAll.contains(" /vendor ")) {
                                    str2 = "/vendor";
                                } else if (strReplaceAll.contains(" /oem ")) {
                                    str2 = "/oem";
                                } else if (strReplaceAll.contains(" / ")) {
                                    str2 = "/";
                                }
                                while (strReplaceAll.contains("  ")) {
                                    strReplaceAll = strReplaceAll.trim().replaceAll("  ", " ");
                                }
                                String[] strArrSplit = strReplaceAll.split(" ");
                                if (strArrSplit.length >= 4) {
                                    try {
                                        str4 = strReplaceAll.contains(" (r") ? strArrSplit[4] : strArrSplit[2];
                                        fa.b0.f5652a.getClass();
                                        a2.w0.h("mount -o remount,rw -t " + str4 + " " + str2);
                                    } catch (Exception unused4) {
                                    }
                                }
                            }
                            fa.b0.f5652a.getClass();
                            a0VarH3 = a2.w0.h("touch /system/app/111222");
                            if (a0VarH3.f5648a != 0) {
                                if (str4.isEmpty()) {
                                    a2.w0.h("mount -o remount,rw /system");
                                    a2.w0.h("mount -o remount,rw /oem");
                                    a2.w0.h("mount -o remount,rw /");
                                } else {
                                    a2.w0.h("mount -o remount,rw -t " + str4 + " /system");
                                    a2.w0.h("mount -o remount,rw -t " + str4 + " /oem");
                                    a2.w0.h("mount -o remount,rw -t " + str4 + " /");
                                }
                                a0VarH3 = a2.w0.h("touch /system/app/111222");
                            }
                        }
                        if (a0VarH3.f5648a == 0) {
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                            kVar.f4058m = true;
                            fa.b0.f5652a.getClass();
                            a2.w0.h("rm -rf /system/app/111222");
                            if (a2.w0.h("touch /system/bin/111222").f5648a == 0) {
                                kVar.l = true;
                                a2.w0.h("rm -rf /system/bin/111222");
                            }
                            bVar.b();
                            break;
                        } else {
                            str = "已提权为root，但无法挂载写入\n\n可尝试【关闭分区检测】";
                        }
                    } else {
                        str = "失败，无法用此方法提权";
                    }
                }
                android.support.v4.media.session.a.B(str, bVar);
                break;
        }
    }
}
