package ua;

import android.os.Build;
import android.text.Html;
import android.view.View;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;
import ha.ja;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Arrays;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class k4 implements ec.d, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15782a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaperL f15783b;

    public /* synthetic */ k4(ActivityNezhaWallpaperL activityNezhaWallpaperL, int i10) {
        this.f15782a = i10;
        this.f15783b = activityNezhaWallpaperL;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x025d  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) {
        String str;
        ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15783b;
        switch (this.f15782a) {
            case 0:
                int i10 = ActivityNezhaWallpaperL.T;
                activityNezhaWallpaperL.getClass();
                if (MyDb.get().getAppDao().get_appBean("com.hozonauto.netahome") == null) {
                    str = "没找到哪吒车机系统桌面";
                } else {
                    fa.b0.f5652a.getClass();
                    fa.a0 a0VarH = a2.w0.h(Name.MARK);
                    if (a0VarH.f5648a != 0) {
                        str = "出错：获取配置失败";
                    } else if (a0VarH.a().contains("uid=0(")) {
                        fa.a0 a0VarH2 = a2.w0.h("ls -ls \"" + activityNezhaWallpaperL.O.getParentFile().getPath() + "\"");
                        if (a0VarH2.f5648a != 0) {
                            bVar.d(new Exception("无法查看目录：" + activityNezhaWallpaperL.O.getParentFile().getPath()));
                            break;
                        } else {
                            try {
                                for (String str2 : a0VarH2.f5649b) {
                                    if (str2.contains("_data_") && str2.endsWith(".xml")) {
                                        if (str2.contains("wallpaper")) {
                                            com.yunpan.appmanage.util.a0.s("请用桌面管理1.2", false);
                                        }
                                        activityNezhaWallpaperL.O = new File(activityNezhaWallpaperL.O.getParentFile().getPath(), str2.substring(str2.lastIndexOf(" ") + 1));
                                    }
                                }
                            } catch (Exception unused) {
                            }
                            String str3 = "\\cp -R \"" + activityNezhaWallpaperL.O.getPath() + "\" \"" + activityNezhaWallpaperL.P.getPath() + "\"";
                            fa.b0.f5652a.getClass();
                            if (a2.w0.h(str3).f5648a != 0) {
                                str = "读取文件出错1，请重试";
                            } else {
                                try {
                                    String strJ = q4.a.J(activityNezhaWallpaperL.P);
                                    String strN = p000if.a.N(strJ, "<string name=\"dock.data\">", "</string>", false);
                                    String strN2 = p000if.a.N(strJ, "<string name=\"applist.data\">", "</string>", false);
                                    if (Build.VERSION.SDK_INT >= 24) {
                                        strN = Html.fromHtml(strN, 0).toString();
                                        strN2 = Html.fromHtml(strN2, 0).toString();
                                    }
                                    try {
                                        activityNezhaWallpaperL.L = d.b.b0(strN).f();
                                        activityNezhaWallpaperL.M = d.b.b0(strN2).f();
                                        if (activityNezhaWallpaperL.L.f19478a.size() < 7) {
                                            for (int size = 7 - activityNezhaWallpaperL.L.f19478a.size(); size > 0; size--) {
                                                z7.s sVar = new z7.s();
                                                sVar.m("appName", "");
                                                sVar.m("className", "");
                                                Boolean bool = Boolean.TRUE;
                                                sVar.k("cloudConfigFlag", bool);
                                                sVar.m("icon", "");
                                                sVar.k("isUsed", bool);
                                                sVar.m("packageName", "");
                                                sVar.k("redPointFlag", Boolean.FALSE);
                                                activityNezhaWallpaperL.L.k(sVar);
                                            }
                                        }
                                        for (int i11 = 0; i11 < activityNezhaWallpaperL.L.f19478a.size(); i11++) {
                                            String strV = android.support.v4.media.session.a.v(activityNezhaWallpaperL.L, i11, "packageName");
                                            AppBean appBeanK = android.support.v4.media.session.a.k(strV);
                                            if (appBeanK != null) {
                                                appBeanK.name = android.support.v4.media.session.a.v(activityNezhaWallpaperL.L, i11, "appName");
                                            } else {
                                                appBeanK = new AppBean();
                                                appBeanK.pack = strV;
                                                appBeanK.name = android.support.v4.media.session.a.v(activityNezhaWallpaperL.L, i11, "appName");
                                                appBeanK.isCanStart = true;
                                                appBeanK.isSystem = false;
                                                appBeanK.isHide = false;
                                                appBeanK.isDisable = false;
                                                if (!strV.equals("com.hozonauto.netahome.mini")) {
                                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                                    if (strV.equals(com.yunpan.appmanage.util.j.f4033a.f4041d)) {
                                                        appBeanK.isUnInstall = false;
                                                    } else {
                                                        appBeanK.isUnInstall = true;
                                                    }
                                                }
                                            }
                                            if (appBeanK.name.equals("home") && appBeanK.pack.equals("com.hozonauto.launcher")) {
                                                appBeanK.name = "主页";
                                            }
                                            if (appBeanK.name.equals("system") && appBeanK.pack.equals("com.hozon.settings")) {
                                                appBeanK.name = "车辆控制";
                                            }
                                            if (appBeanK.name.equals("appList") && appBeanK.pack.equals("com.hozonauto.netahome")) {
                                                appBeanK.name = "应用中心";
                                            }
                                            if (appBeanK.name.equals("map") && appBeanK.pack.equals("com.hozonauto.launcher")) {
                                                appBeanK.name = "地图";
                                            }
                                            activityNezhaWallpaperL.H.add(appBeanK);
                                        }
                                        for (int i12 = 0; i12 < activityNezhaWallpaperL.M.f19478a.size(); i12++) {
                                            String strV2 = android.support.v4.media.session.a.v(activityNezhaWallpaperL.M, i12, "packageName");
                                            AppBean appBeanK2 = android.support.v4.media.session.a.k(strV2);
                                            if (appBeanK2 != null) {
                                                appBeanK2.name = android.support.v4.media.session.a.v(activityNezhaWallpaperL.M, i12, "appName");
                                            } else {
                                                appBeanK2 = new AppBean();
                                                appBeanK2.pack = strV2;
                                                appBeanK2.name = android.support.v4.media.session.a.v(activityNezhaWallpaperL.M, i12, "appName");
                                                appBeanK2.isCanStart = true;
                                                appBeanK2.isSystem = false;
                                                appBeanK2.isHide = false;
                                                appBeanK2.isDisable = false;
                                                appBeanK2.isUnInstall = true;
                                                if (activityNezhaWallpaperL.S.get(appBeanK2.pack) != null) {
                                                    appBeanK2.isUnInstall = false;
                                                }
                                            }
                                            activityNezhaWallpaperL.G.add(appBeanK2);
                                        }
                                        bVar.b();
                                        break;
                                    } catch (Exception unused2) {
                                        str = "读取文件出错：格式错误";
                                    }
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    bVar.d(new Exception("读取文件出错2，请重试"));
                                    return;
                                }
                            }
                        }
                    } else {
                        str = "无权限，请先提权";
                    }
                }
                android.support.v4.media.session.a.B(str, bVar);
                break;
            default:
                int i13 = ActivityNezhaWallpaperL.T;
                q4.a.M(activityNezhaWallpaperL.P, "<?xml version='1.0' encoding='utf-8' standalone='yes' ?><map><string name=\"dock.data\">" + activityNezhaWallpaperL.L.toString() + "</string><string name=\"applist.data\">" + activityNezhaWallpaperL.M.toString() + "</string></map>");
                String str4 = "\\cp -R '" + activityNezhaWallpaperL.P.getPath() + "' '" + activityNezhaWallpaperL.O.getPath() + "'";
                fa.b0.f5652a.getClass();
                if (a2.w0.h(str4).f5648a != 0) {
                    android.support.v4.media.session.a.B("失败：写入文件出错", bVar);
                    break;
                } else {
                    a2.w0.h("kill -9 $(pidof com.hozonauto.netahome)");
                    bVar.b();
                    break;
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 1;
        switch (this.f15782a) {
            case 1:
                int i12 = ActivityNezhaWallpaperL.T;
                ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15783b;
                activityNezhaWallpaperL.getClass();
                new ja(activityNezhaWallpaperL, activityNezhaWallpaperL, view, Arrays.asList("移除", "插入", "改名"), new ha.v1(activityNezhaWallpaperL, gVar, i10, 8)).show();
                break;
            default:
                int i13 = ActivityNezhaWallpaperL.T;
                ActivityNezhaWallpaperL activityNezhaWallpaperL2 = this.f15783b;
                activityNezhaWallpaperL2.getClass();
                new ja(activityNezhaWallpaperL2, activityNezhaWallpaperL2, view, Arrays.asList("替换", "改名"), new j4(activityNezhaWallpaperL2, i10, i11)).show();
                break;
        }
    }
}
