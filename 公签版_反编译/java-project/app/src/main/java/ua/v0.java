package ua;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.view.View;
import com.hjq.permissions.OnPermissionCallback;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.bean.ImageData;
import com.yunpan.appmanage.bean.NamePackBoolSelectBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityBootStartTask;
import com.yunpan.appmanage.ui.ActivityCleanMemoryWhitelist;
import com.yunpan.appmanage.ui.ActivityCodeEditor;
import com.yunpan.appmanage.ui.ActivityDesktop;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.ui.ActivityImage;
import com.yunpan.appmanage.ui.ActivityJiliE01;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivityNezha;
import com.yunpan.appmanage.ui.ActivityNissan;
import com.yunpan.appmanage.ui.ActivityPs;
import com.yunpan.appmanage.ui.ActivityPss;
import com.yunpan.appmanage.ui.ActivityRunMemory;
import com.yunpan.appmanage.ui.ActivitySeccompRoot;
import com.yunpan.appmanage.ui.ActivityShell;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class v0 implements OnPermissionCallback, ec.d, TvRecyclerView.OnInBorderKeyEventListener, fa.w, fa.z, fa.y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15994a;

    public /* synthetic */ v0(int i10) {
        this.f15994a = i10;
    }

    @Override // fa.y
    public void a(fa.x xVar) {
        if (xVar.f5762a) {
            com.yunpan.appmanage.util.a0.w("安装成功");
        } else {
            com.yunpan.appmanage.util.a0.s(xVar.f5764c, false);
        }
    }

    @Override // fa.w
    public void c(String str, boolean z) {
        switch (this.f15994a) {
            case 11:
                if (!z) {
                    com.yunpan.appmanage.util.a0.u("失败：" + str);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.v("操作成功", true);
                    break;
                }
            default:
                if (!z) {
                    com.yunpan.appmanage.util.a0.u("失败：" + str);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.v("操作成功", true);
                    break;
                }
        }
    }

    @Override // fa.z
    public void e(fa.a0 a0Var) {
        switch (this.f15994a) {
            case 16:
                int i10 = ActivityLaboratory.I;
                if (a0Var.f5648a != 0) {
                    String strA = a0Var.a();
                    com.yunpan.appmanage.util.a0.t("修改失败：".concat(strA.contains("Permission") ? "无权限,请先提权" : strA));
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.w("设置成功");
                    break;
                }
            default:
                if (a0Var.f5648a != 0) {
                    String strA2 = a0Var.a();
                    com.yunpan.appmanage.util.a0.t("修改失败：".concat(strA2.contains("Permission") ? "无权限,请先提权" : strA2));
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.w("设置成功");
                    break;
                }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:387:0x0872, code lost:
    
        if (a2.w0.h("rm -rf /system/bin/su_guanjia").f5648a != 0) goto L378;
     */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0436 A[LOOP:4: B:151:0x0430->B:153:0x0436, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x078e  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x07c9  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0847  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x085f  */
    /* JADX WARN: Removed duplicated region for block: B:519:0x044e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws InterruptedException {
        String str;
        String strK;
        boolean z;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String strK2;
        boolean z4;
        String strK3;
        boolean z10;
        String str7;
        CharSequence charSequence;
        Iterator it;
        String str8;
        String str9;
        String str10;
        String str11;
        String[] strArrSplit;
        String str12;
        File file;
        switch (this.f15994a) {
            case 1:
                int i10 = ActivityCleanMemoryWhitelist.F;
                List<AppBean> list = MyDb.get().getAppDao().get_app_all();
                ArrayList arrayList = new ArrayList();
                for (AppBean appBean : list) {
                    String str13 = appBean.name;
                    String str14 = appBean.pack;
                    NamePackBoolSelectBean namePackBoolSelectBean = new NamePackBoolSelectBean(str13, str14, appBean.isSystem, wa.t.f17728a.f17756w.contains(str14));
                    if (appBean.isSystem) {
                        arrayList.add(namePackBoolSelectBean);
                    } else {
                        arrayList.add(0, namePackBoolSelectBean);
                    }
                }
                bVar.f(arrayList);
                bVar.b();
                break;
            case 2:
            case 3:
            case 5:
            case 6:
            case 11:
            case 12:
            case 16:
            case 17:
            case 21:
            case 23:
            case 25:
            case 26:
            case 27:
            default:
                int i11 = ActivityShell.M;
                try {
                    fa.n0.f5722a.g();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    while (true) {
                        Thread.sleep(1000L);
                        if (System.currentTimeMillis() - jCurrentTimeMillis > 10000) {
                            bVar.d(new Exception("shizuku连接超时"));
                        } else if (fa.n0.f5722a.f5730e != null) {
                            bVar.b();
                        }
                    }
                    break;
                } catch (Exception e7) {
                    bVar.d(e7);
                    return;
                }
            case 4:
                int i12 = ActivityDesktop.G;
                HashMap map = new HashMap();
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.HOME");
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                ResolveInfo resolveInfoResolveActivity = kVar.f4037b.resolveActivity(intent, 65536);
                Iterator<ResolveInfo> it2 = (Build.VERSION.SDK_INT >= 24 ? kVar.f4037b.queryIntentActivities(intent, 8192) : kVar.f4037b.queryIntentActivities(intent, 8192)).iterator();
                while (true) {
                    String str15 = "language";
                    String str16 = "select";
                    String str17 = "com.android.";
                    String str18 = "android";
                    if (!it2.hasNext()) {
                        Intent intent2 = intent;
                        int i13 = Build.VERSION.SDK_INT;
                        List<ResolveInfo> listQueryIntentActivities = (i13 < 24 && i13 < 18) ? com.yunpan.appmanage.util.j.f4033a.f4037b.queryIntentActivities(intent2, 513) : com.yunpan.appmanage.util.j.f4033a.f4037b.queryIntentActivities(intent2, 33280);
                        Iterator<ResolveInfo> it3 = listQueryIntentActivities.iterator();
                        while (it3.hasNext()) {
                            ResolveInfo next = it3.next();
                            AppBean appBean2 = MyDb.get().getAppDao().get_appBean(next.activityInfo.packageName);
                            if (appBean2 != null) {
                                ActivityInfo activityInfo = next.activityInfo;
                                Iterator<ResolveInfo> it4 = it3;
                                if (activityInfo.enabled && activityInfo.exported) {
                                    String lowerCase = appBean2.pack.trim().toLowerCase();
                                    String lowerCase2 = next.activityInfo.name.trim().toLowerCase();
                                    if (!lowerCase.equals(str18)) {
                                        String str19 = str18;
                                        if ((!appBean2.isSystem || !lowerCase.startsWith(str17) || lowerCase.contains("launcher")) && !lowerCase.contains(".settings") && !appBean2.name.contains("Settings") && !appBean2.name.contains("设置") && !appBean2.name.contains("DeviceLockController") && !appBean2.name.contains("Google Play") && !lowerCase2.contains(str16) && !lowerCase2.contains(str15)) {
                                            String str20 = next.activityInfo.packageName;
                                            if (map.get(appBean2.pack) == null) {
                                                String str21 = appBean2.pack;
                                                String str22 = str15;
                                                String str23 = str17;
                                                String str24 = str16;
                                                map.put(str21, new DesktopBean(appBean2.name, str21, appBean2.isSystem, appBean2.isDisable, appBean2.isHide, appBean2.isUnInstall, resolveInfoResolveActivity != null && resolveInfoResolveActivity.activityInfo.packageName.equals(str21)));
                                                it3 = it4;
                                                str18 = str19;
                                                str15 = str22;
                                                str17 = str23;
                                                str16 = str24;
                                            }
                                        }
                                        it3 = it4;
                                        str18 = str19;
                                    }
                                }
                                it3 = it4;
                            }
                        }
                        bVar.f(new ArrayList(map.values()));
                        bVar.b();
                        break;
                    } else {
                        ResolveInfo next2 = it2.next();
                        Iterator<ResolveInfo> it5 = it2;
                        AppBean appBean3 = MyDb.get().getAppDao().get_appBean(next2.activityInfo.packageName);
                        if (appBean3 != null) {
                            ActivityInfo activityInfo2 = next2.activityInfo;
                            Intent intent3 = intent;
                            if (activityInfo2.enabled && activityInfo2.exported) {
                                String lowerCase3 = appBean3.pack.trim().toLowerCase();
                                String lowerCase4 = next2.activityInfo.name.trim().toLowerCase();
                                if (!lowerCase3.equals("android") && ((!appBean3.isSystem || !lowerCase3.startsWith("com.android.") || lowerCase3.contains("launcher")) && !lowerCase3.contains(".settings") && !appBean3.name.contains("Settings") && !appBean3.name.contains("设置") && !appBean3.name.contains("DeviceLockController") && !appBean3.name.contains("Google Play") && !lowerCase4.contains("select") && !lowerCase4.contains("language"))) {
                                    String str25 = next2.activityInfo.packageName;
                                    if (map.get(appBean3.pack) == null) {
                                        String str26 = appBean3.pack;
                                        map.put(str26, new DesktopBean(appBean3.name, str26, appBean3.isSystem, appBean3.isDisable, appBean3.isHide, appBean3.isUnInstall, resolveInfoResolveActivity != null && resolveInfoResolveActivity.activityInfo.packageName.equals(str26)));
                                    }
                                }
                            }
                            intent = intent3;
                        }
                        it2 = it5;
                    }
                }
                break;
            case 7:
                int i14 = ActivityImage.f3974t0;
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                ImageData imageData = com.yunpan.appmanage.util.j.f4033a.f4076y;
                String str27 = imageData.bdFiles.get(imageData.position).f18365b;
                fa.b0.f5652a.getClass();
                a2.w0.B(str27);
                if (com.yunpan.appmanage.util.a0.g(str27)) {
                    Toaster.show((CharSequence) "删除失败");
                    bVar.d(new Exception("删除失败"));
                    break;
                } else {
                    MyDb.get().getFileInfoDao().delete(str27);
                    bVar.b();
                    break;
                }
            case 8:
                int i15 = ActivityJiliE01.F;
                if (com.yunpan.appmanage.util.a0.g("/system/bin/su")) {
                    fa.b0.f5652a.getClass();
                    if (a2.w0.h("rm -rf /system/bin/su").f5648a == 0) {
                        if (com.yunpan.appmanage.util.a0.g("/system/xbin/su")) {
                            fa.b0.f5652a.getClass();
                            if (a2.w0.h("rm -rf /system/xbin/su").f5648a == 0) {
                                if (com.yunpan.appmanage.util.a0.g("/system/bin/su_guanjia")) {
                                    fa.b0.f5652a.getClass();
                                    break;
                                }
                                bVar.b();
                                break;
                            }
                        }
                    }
                }
                android.support.v4.media.session.a.B("删除失败", bVar);
                break;
            case 9:
                int i16 = ActivityJiliE01.F;
                if (com.yunpan.appmanage.util.a0.g("/system/bin/su_guanjia")) {
                    fa.b0.f5652a.getClass();
                    if (a2.w0.h("mv /system/bin/su_guanjia/system/bin/su").f5648a == 0) {
                        bVar.b();
                        break;
                    } else {
                        str = "撤销失败";
                    }
                } else if (com.yunpan.appmanage.util.a0.g("/system/bin/su")) {
                    bVar.b();
                    break;
                } else {
                    str = "未找到su文件，系统未root";
                }
                android.support.v4.media.session.a.B(str, bVar);
                break;
            case 10:
                int i17 = ActivityJiliE01.F;
                if (com.yunpan.appmanage.util.a0.g("/system/bin/su")) {
                    fa.b0.f5652a.getClass();
                    if (a2.w0.h("mv /system/bin/su /system/bin/su_guanjia").f5648a != 0) {
                        android.support.v4.media.session.a.B("修改失败", bVar);
                        break;
                    } else {
                        bVar.b();
                        break;
                    }
                } else if (com.yunpan.appmanage.util.a0.g("/system/bin/su_guanjia")) {
                    bVar.b();
                    break;
                } else {
                    android.support.v4.media.session.a.B("未root", bVar);
                    break;
                }
            case 13:
                int i18 = ActivityLaboratory.I;
                fa.b0.f5652a.getClass();
                if (a2.w0.h(Name.MARK).a().contains("uid=0(root)")) {
                    bVar.b();
                    break;
                } else {
                    fa.m mVar = fa.l.f5712a;
                    if (mVar.isConnected()) {
                        strK = mVar.P("root:");
                        z = false;
                    } else {
                        strK = fa.h.f5683a.k("root:");
                        z = true;
                    }
                    if (strK.contains("adbd cannot run as root in production builds")) {
                        u9.d.r("setprop ro.debuggable 1").l0();
                        boolean zQ = u9.d.r("setprop service.adb.root 1").l0().q();
                        str2 = strK;
                        str3 = Name.MARK;
                        if (zQ) {
                            u9.d.r("setprop ctl.restart adbd");
                            Thread.sleep(PopupConst.DURATION_POPUP_SHORT);
                        } else {
                            a2.w0.q(2000L, "setprop ro.debuggable 1");
                            if (a2.w0.q(2000L, "setprop service.adb.root 1").f5648a == 0) {
                                a2.w0.q(PopupConst.DURATION_POPUP_SHORT, "setprop ctl.restart adbd");
                                Thread.sleep(PopupConst.DURATION_POPUP_SHORT);
                            }
                        }
                        str4 = "重新连接";
                        if (!str4.contains("adbd cannot run as root in production builds")) {
                            if (!str4.contains("adbd is already running as root") && !str4.contains("already running")) {
                                str4.contains("restarting adbd as root");
                            }
                            try {
                                if (!z) {
                                    if (!mVar.isConnected()) {
                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                        mVar.M(com.yunpan.appmanage.util.j.f4033a.f4035a);
                                    }
                                    if (a2.w0.h(str3).a().contains("uid=0(")) {
                                        bVar.b();
                                        break;
                                    }
                                } else {
                                    fa.h.f5683a.m();
                                }
                                if (a2.w0.h(str3).a().contains("uid=0(")) {
                                }
                            } catch (Exception unused) {
                                android.support.v4.media.session.a.B("adb已断开，请重新打开本应用", bVar);
                                return;
                            }
                        }
                        android.support.v4.media.session.a.B("不适合此系统", bVar);
                        break;
                    } else {
                        str2 = strK;
                        str3 = Name.MARK;
                    }
                    str4 = str2;
                    if (!str4.contains("adbd cannot run as root in production builds")) {
                    }
                    android.support.v4.media.session.a.B("不适合此系统", bVar);
                }
                break;
            case 14:
                int i19 = ActivityLaboratory.I;
                fa.j jVar = fa.h.f5683a;
                if (jVar.f5701g) {
                    str5 = "无权限";
                } else {
                    fa.m mVar2 = fa.l.f5712a;
                    str5 = "无权限";
                    if (!mVar2.f5716c) {
                        if (mVar2.isConnected()) {
                            strK2 = mVar2.P("root:");
                            z4 = false;
                        } else {
                            strK2 = jVar.k("root:");
                            z4 = true;
                        }
                        if (strK2.contains("adbd cannot run as root in production builds")) {
                            android.support.v4.media.session.a.B("不适合此系统", bVar);
                            break;
                        } else {
                            if (!strK2.contains("adbd is already running as root") && !strK2.contains("already running")) {
                                strK2.contains("restarting adbd as root");
                            }
                            try {
                                if (z4) {
                                    jVar.m();
                                } else if (!mVar2.isConnected()) {
                                    DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                                    mVar2.M(com.yunpan.appmanage.util.j.f4033a.f4035a);
                                }
                            } catch (Exception unused2) {
                                android.support.v4.media.session.a.B("adb已断开，请重新打开本应用", bVar);
                                return;
                            }
                        }
                    }
                }
                fa.m mVar3 = fa.l.f5712a;
                if (!mVar3.isConnected() ? jVar.c(Name.MARK).a().contains("uid=0(root)") : mVar3.L(Name.MARK).getListStr().contains("uid=0(root)")) {
                    String strP = mVar3.isConnected() ? mVar3.P("enable-verity:") : jVar.k("enable-verity:");
                    if (!strP.contains("reboot your device") && !strP.contains("Reboot required") && !strP.toLowerCase().contains("reboot ")) {
                        if (!strP.contains("No action needed")) {
                            if (strP.contains("verity cannot be") || strP.contains("Permission denied") || strP.contains("Operation not permitted")) {
                                str6 = str5;
                            } else {
                                str6 = str5;
                                if (!strP.contains("Operation not supported")) {
                                    if (strP.contains("Device is locked")) {
                                        str6 = "此系统有锁，需先解锁";
                                    } else if (strP.contains("error") && strP.contains("closed") && strP.contains("not found")) {
                                        strP = "错误：closed";
                                    }
                                }
                            }
                            android.support.v4.media.session.a.B(str6, bVar);
                            break;
                        } else {
                            strP = "本身就已开启，无需重复操作";
                        }
                        android.support.v4.media.session.a.B(strP, bVar);
                        break;
                    } else {
                        bVar.b();
                        break;
                    }
                } else {
                    android.support.v4.media.session.a.B("此系统ADB无权限", bVar);
                    break;
                }
                break;
            case 15:
                int i20 = ActivityLaboratory.I;
                fa.j jVar2 = fa.h.f5683a;
                if (!jVar2.f5701g) {
                    fa.m mVar4 = fa.l.f5712a;
                    if (!mVar4.f5716c) {
                        if (mVar4.isConnected()) {
                            strK3 = mVar4.P("root:");
                            z10 = false;
                        } else {
                            strK3 = jVar2.k("root:");
                            z10 = true;
                        }
                        if (strK3.contains("adbd cannot run as root in production builds")) {
                            android.support.v4.media.session.a.B("不适合此系统", bVar);
                            break;
                        } else {
                            if (!strK3.contains("adbd is already running as root") && !strK3.contains("already running")) {
                                strK3.contains("restarting adbd as root");
                            }
                            try {
                                if (z10) {
                                    jVar2.m();
                                } else if (!mVar4.isConnected()) {
                                    DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                                    mVar4.M(com.yunpan.appmanage.util.j.f4033a.f4035a);
                                }
                            } catch (Exception unused3) {
                                android.support.v4.media.session.a.B("adb已断开，请重新打开本应用", bVar);
                                return;
                            }
                        }
                    }
                }
                fa.m mVar5 = fa.l.f5712a;
                if (!mVar5.isConnected() ? jVar2.c(Name.MARK).a().contains("uid=0(root)") : mVar5.L(Name.MARK).getListStr().contains("uid=0(root)")) {
                    String strP2 = mVar5.isConnected() ? mVar5.P("disable-verity:") : jVar2.k("disable-verity:");
                    if (!strP2.contains("verity cannot be") && !strP2.contains("Operation not permitted") && !strP2.contains("Operation not supported")) {
                        if (strP2.contains("Device is locked")) {
                            android.support.v4.media.session.a.B("此系统有锁，需先解锁", bVar);
                            break;
                        } else if (!strP2.contains("error") || !strP2.contains("closed")) {
                            bVar.b();
                            break;
                        } else {
                            android.support.v4.media.session.a.B("错误：closed", bVar);
                            break;
                        }
                    } else {
                        android.support.v4.media.session.a.B("无权限", bVar);
                        break;
                    }
                } else {
                    android.support.v4.media.session.a.B("此系统ADB无权限", bVar);
                    break;
                }
                break;
            case 18:
                int i21 = ActivityLaboratory.I;
                String str28 = " / ";
                String str29 = " /vendor ";
                String str30 = " /system ";
                String str31 = "  ";
                if (!fa.g0.f5682a.f()) {
                    CharSequence charSequence2 = " / ";
                    String str32 = "  ";
                    Thread thread = new Thread(new com.gj.server.a(5));
                    thread.setDaemon(true);
                    thread.start();
                    try {
                        thread.join(3333L);
                    } catch (Exception unused4) {
                    }
                    fa.m mVar6 = fa.l.f5712a;
                    if (mVar6.isConnected()) {
                        mVar6.V();
                    } else {
                        fa.j jVar3 = fa.h.f5683a;
                        if (jVar3.i()) {
                            jVar3.o();
                        }
                    }
                    fa.b0.f5652a.getClass();
                    if (!a2.w0.h(Name.MARK).a().contains("uid=0(root)")) {
                        android.support.v4.media.session.a.B("不适合此系统", bVar);
                        break;
                    } else {
                        fa.b bVar2 = fa.a.f5646a;
                        if (!bVar2.f() || bVar2.f5651b.getUid() != 0) {
                            a2.w0.h(fa.b.a(AppStart.f3772h));
                        }
                        a2.w0.h("setenforce 0");
                        fa.a0 a0VarH = a2.w0.h("touch /system/app/111222");
                        if (a0VarH.f5648a != 0) {
                            Iterator it6 = a2.w0.h("mount").f5649b.iterator();
                            String str33 = "";
                            while (it6.hasNext()) {
                                String strReplaceAll = (String) it6.next();
                                if (strReplaceAll.contains(str30)) {
                                    it = it6;
                                    str11 = "/system";
                                } else if (strReplaceAll.contains(str29)) {
                                    it = it6;
                                    str11 = "/vendor";
                                } else {
                                    charSequence = charSequence2;
                                    it = it6;
                                    if (strReplaceAll.contains(charSequence)) {
                                        str11 = "/";
                                        str10 = str32;
                                        while (strReplaceAll.contains(str10)) {
                                            strReplaceAll = strReplaceAll.trim().replaceAll(str10, " ");
                                        }
                                        str8 = str30;
                                        strArrSplit = strReplaceAll.split(" ");
                                        str9 = str29;
                                        charSequence2 = charSequence;
                                        if (strArrSplit.length < 4) {
                                            try {
                                                if (strReplaceAll.contains(" (r")) {
                                                    try {
                                                        str33 = strArrSplit[4];
                                                    } catch (Exception unused5) {
                                                    }
                                                } else {
                                                    try {
                                                        str33 = strArrSplit[2];
                                                    } catch (Exception unused6) {
                                                        str32 = str10;
                                                        it6 = it;
                                                        str30 = str8;
                                                        str29 = str9;
                                                    }
                                                }
                                                fa.b0.f5652a.getClass();
                                                a2.w0.h("mount -o remount,rw -t " + str33 + " " + str11);
                                            } catch (Exception unused7) {
                                            }
                                        }
                                        str32 = str10;
                                        it6 = it;
                                        str30 = str8;
                                        str29 = str9;
                                    } else {
                                        str8 = str30;
                                        str9 = str29;
                                        charSequence2 = charSequence;
                                        str10 = str32;
                                        str32 = str10;
                                        it6 = it;
                                        str30 = str8;
                                        str29 = str9;
                                    }
                                }
                                str10 = str32;
                                charSequence = charSequence2;
                                while (strReplaceAll.contains(str10)) {
                                }
                                str8 = str30;
                                strArrSplit = strReplaceAll.split(" ");
                                str9 = str29;
                                charSequence2 = charSequence;
                                if (strArrSplit.length < 4) {
                                }
                                str32 = str10;
                                it6 = it;
                                str30 = str8;
                                str29 = str9;
                            }
                            fa.b0.f5652a.getClass();
                            a0VarH = a2.w0.h("touch /system/app/111222");
                            if (a0VarH.f5648a != 0) {
                                if (str33.isEmpty()) {
                                    a2.w0.h("mount -o remount,rw /system");
                                    a2.w0.h("mount -o remount,rw /");
                                } else {
                                    a2.w0.h("mount -o remount,rw -t " + str33 + " /system");
                                    a2.w0.h("mount -o remount,rw -t " + str33 + " /");
                                }
                                a0VarH = a2.w0.h("touch /system/app/111222");
                            }
                        }
                        if (a0VarH.f5648a == 0) {
                            DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
                            com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                            kVar2.f4058m = true;
                            fa.b0.f5652a.getClass();
                            a2.w0.h("rm -rf /system/app/111222");
                            if (a2.w0.h("touch /system/bin/111222").f5648a == 0) {
                                kVar2.l = true;
                                a2.w0.h("rm -rf /system/bin/111222");
                            }
                            bVar.b();
                            break;
                        } else {
                            str7 = "提权失败，可尝试关闭分区检测";
                        }
                    }
                } else {
                    u9.d.r("setenforce 0").l0();
                    androidx.room.s sVarL0 = u9.d.r("touch /system/app/111222").l0();
                    if (sVarL0.f2426b != 0) {
                        Iterator it7 = u9.d.r("mount").l0().k().iterator();
                        while (it7.hasNext()) {
                            String strReplaceAll2 = (String) it7.next();
                            System.out.getClass();
                            if (strReplaceAll2.contains(" /system ")) {
                                str12 = "/system";
                            } else if (strReplaceAll2.contains(" /vendor ")) {
                                str12 = "/vendor";
                            } else if (strReplaceAll2.contains(" /oem ")) {
                                str12 = "/oem";
                            } else if (strReplaceAll2.contains(str28)) {
                                str12 = "/";
                            }
                            while (strReplaceAll2.contains(str31)) {
                                strReplaceAll2 = strReplaceAll2.trim().replaceAll(str31, " ");
                            }
                            Iterator it8 = it7;
                            String[] strArrSplit2 = strReplaceAll2.split(" ");
                            String str34 = str31;
                            String str35 = str28;
                            if (strArrSplit2.length >= 4) {
                                try {
                                    u9.d.r("mount -o remount,rw -t " + (strReplaceAll2.contains(" (r") ? strArrSplit2[4] : strArrSplit2[2]) + " " + str12).l0();
                                } catch (Exception unused8) {
                                }
                            }
                            it7 = it8;
                            str31 = str34;
                            str28 = str35;
                        }
                        System.out.getClass();
                        sVarL0 = u9.d.r("touch /system/app/111222").l0();
                        if (sVarL0.f2426b != 0) {
                            u9.d.r("mount -o remount,rw /system").l0();
                            u9.d.r("mount -o remount,rw /").l0();
                            u9.d.r("touch /system/app/111222").l0();
                        }
                    }
                    if (sVarL0.f2426b == 0) {
                        DecimalFormat decimalFormat7 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
                        kVar3.f4058m = true;
                        u9.d.r("rm -rf /system/app/111222").l0();
                        if (u9.d.r("touch /system/bin/111222").l0().f2426b == 0) {
                            kVar3.l = true;
                            u9.d.r("rm -rf /system/bin/111222").l0();
                        }
                    }
                    DecimalFormat decimalFormat8 = com.yunpan.appmanage.util.k.f4034u0;
                    if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                        bVar.b();
                        break;
                    } else {
                        str7 = "有root权限，但无法挂载写入";
                    }
                }
                android.support.v4.media.session.a.B(str7, bVar);
                break;
            case 19:
                int i22 = ActivityLaboratory.I;
                fa.h0 h0Var = fa.g0.f5682a;
                if (h0Var.d().isEmpty()) {
                    StringBuilder sb2 = new StringBuilder();
                    DecimalFormat decimalFormat9 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar4 = com.yunpan.appmanage.util.j.f4033a;
                    sb2.append(kVar4.f4035a.getFilesDir());
                    sb2.append("/.");
                    file = new File(g.b.l(kVar4.f4041d, "/系统重要配置备份/", sb2));
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(h0Var.d());
                    sb3.append("/.");
                    DecimalFormat decimalFormat10 = com.yunpan.appmanage.util.k.f4034u0;
                    file = new File(g.b.l(com.yunpan.appmanage.util.j.f4033a.f4041d, "/系统重要配置备份/", sb3));
                }
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, "getprop.txt");
                if (!file2.exists()) {
                    fa.b0.f5652a.getClass();
                    fa.a0 a0VarH2 = a2.w0.h("getprop");
                    if (a0VarH2.f5648a == 0 && a0VarH2.f5649b.size() > 10) {
                        q4.a.M(file2, a0VarH2.a());
                    }
                }
                File file3 = new File(file, "settings-secure.txt");
                if (!file3.exists()) {
                    fa.b0.f5652a.getClass();
                    fa.a0 a0VarH3 = a2.w0.h("settings list secure");
                    if (a0VarH3.f5648a == 0 && a0VarH3.f5649b.size() > 10) {
                        q4.a.M(file3, a0VarH3.a());
                    }
                }
                File file4 = new File(file, "settings-system.txt");
                if (!file4.exists()) {
                    fa.b0.f5652a.getClass();
                    fa.a0 a0VarH4 = a2.w0.h("settings list system");
                    if (a0VarH4.f5648a == 0 && a0VarH4.f5649b.size() > 10) {
                        q4.a.M(file4, a0VarH4.a());
                    }
                }
                File file5 = new File(file, "settings-global.txt");
                if (!file5.exists()) {
                    fa.b0.f5652a.getClass();
                    fa.a0 a0VarH5 = a2.w0.h("settings list global");
                    if (a0VarH5.f5648a == 0 && a0VarH5.f5649b.size() > 10) {
                        q4.a.M(file5, a0VarH5.a());
                    }
                }
                bVar.b();
                break;
            case 20:
                int i23 = ActivityLaboratory.I;
                androidx.room.s sVarL02 = u9.d.r("getenforce").l0();
                sVarL02.k().addAll(sVarL02.j());
                if (sVarL02.k().toString().contains("Permissive")) {
                    bVar.f(1);
                } else {
                    bVar.f(0);
                }
                bVar.b();
                break;
            case 22:
                int i24 = ActivityNezha.F;
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                wVar.f4130m = true;
                try {
                    wVar.f4123i.k("NezhaAutoOpenAdb", Boolean.TRUE);
                } catch (Exception unused9) {
                }
                wVar.m();
                bVar.b();
                break;
            case 24:
                int i25 = ActivityNissan.I;
                if (u9.d.r("echo a0 > /dev/hsaeio").l0().f2426b == 0) {
                    bVar.b();
                    break;
                } else {
                    android.support.v4.media.session.a.B("修改失败", bVar);
                    break;
                }
            case 28:
                int i26 = ActivitySeccompRoot.G;
                try {
                    if (fa.g0.f5682a.h()) {
                        com.yunpan.appmanage.util.a0.w("提权成功");
                    } else {
                        com.yunpan.appmanage.util.a0.t("提权失败，不适合您的设备");
                    }
                } catch (Exception unused10) {
                }
                bVar.b();
                break;
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f15994a) {
            case 3:
                int i11 = ActivityCodeEditor.f3967c1;
                if (i10 == 66) {
                }
                break;
            case 5:
                int i12 = ActivityHome.O;
                if (i10 != 66) {
                    if (i10 == 33) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(333, view);
                    break;
                }
                break;
            case 25:
                int i13 = ActivityPs.L;
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(332, view);
                    break;
                }
                break;
            case 26:
                int i14 = ActivityPss.M;
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(332, view);
                    break;
                }
                break;
            default:
                int i15 = ActivityRunMemory.I;
                if (i10 != 17) {
                    if (i10 == 130 || i10 == 33) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(333, view);
                    break;
                }
        }
        return false;
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        switch (this.f15994a) {
            case 0:
                int i10 = ActivityBootStartTask.G;
                if (list.isEmpty()) {
                    com.yunpan.appmanage.util.a0.u("请授予【通知使用权】");
                    break;
                }
                break;
            case 2:
                int i11 = ActivityCodeEditor.f3967c1;
                break;
            case 6:
                int i12 = ActivityHome.O;
                break;
            default:
                int i13 = ActivityLaboratory.I;
                if (list.isEmpty()) {
                    com.yunpan.appmanage.util.a0.u("请先授予【修改系统设置】权限");
                    break;
                }
                break;
        }
    }
}
