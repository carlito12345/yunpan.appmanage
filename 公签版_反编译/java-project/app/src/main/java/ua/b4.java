package ua;

import android.content.Intent;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaper;
import ha.ia;
import ha.la;
import ha.ma;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.HashSet;

/* loaded from: classes.dex */
public final /* synthetic */ class b4 implements la, ia {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15582a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaper f15583b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15584c;

    public /* synthetic */ b4(ActivityNezhaWallpaper activityNezhaWallpaper, int i10, int i11) {
        this.f15582a = i11;
        this.f15583b = activityNezhaWallpaper;
        this.f15584c = i10;
    }

    @Override // ha.ia
    public void b(int i10) {
        int i11 = 1;
        int i12 = ActivityNezhaWallpaper.R;
        ActivityNezhaWallpaper activityNezhaWallpaper = this.f15583b;
        activityNezhaWallpaper.getClass();
        int i13 = this.f15584c;
        if (i10 == 0) {
            new ma(activityNezhaWallpaper, activityNezhaWallpaper, new HashSet(), new b4(activityNezhaWallpaper, i13, i11)).show();
        } else if (i10 == 1) {
            new ha.z6(activityNezhaWallpaper, activityNezhaWallpaper, "更改名称", ((AppBean) activityNezhaWallpaper.F.t(i13)).name, "请输入新名称", "确定", "取消", new d3.g(i13, 15, activityNezhaWallpaper)).show();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x030f  */
    @Override // ha.la
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c(String str, String str2) {
        int i10;
        String str3;
        int i11;
        String str4;
        Object obj;
        Object obj2;
        String str5;
        int i12;
        String str6;
        z7.o oVar;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11 = str2;
        String str12 = "com.hpplay.happyplay.aw";
        String str13 = "com.desaysv.ep40_gamecenter_portrait";
        String str14 = "className";
        String str15 = "appName";
        int i13 = this.f15584c;
        String str16 = "icon";
        Object obj3 = "com.hozon.settings";
        ActivityNezhaWallpaper activityNezhaWallpaper = this.f15583b;
        switch (this.f15582a) {
            case 0:
                Object obj4 = "com.hpplay.happyplay.aw";
                String str17 = "className";
                Object obj5 = "com.desaysv.ep40_gamecenter_portrait";
                int i14 = ActivityNezhaWallpaper.R;
                activityNezhaWallpaper.getClass();
                String str18 = str2;
                AppBean appBean = MyDb.get().getAppDao().get_appBean(str18);
                if (appBean == null) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                    if (str18.equals(kVar.f4041d) || str18.equals("com.hozonauto.netahome.mini")) {
                        AppBean appBean2 = new AppBean();
                        appBean2.pack = str18;
                        appBean2.name = str18.equals(kVar.f4041d) ? kVar.f4039c : "小程序";
                        appBean2.isCanStart = true;
                        i10 = 0;
                        appBean2.isSystem = false;
                        appBean2.isHide = false;
                        appBean2.isDisable = false;
                        appBean2.isUnInstall = false;
                        appBean = appBean2;
                    }
                } else {
                    i10 = 0;
                }
                int i15 = i13;
                activityNezhaWallpaper.D.p(i15, appBean);
                z7.o oVar2 = new z7.o();
                while (i10 < activityNezhaWallpaper.M.f19478a.size()) {
                    if (i10 == i15) {
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        Intent launchIntentForPackage = com.yunpan.appmanage.util.j.f4033a.f4037b.getLaunchIntentForPackage(str18);
                        PrintStream printStream = System.out;
                        launchIntentForPackage.getComponent().getClassName();
                        printStream.getClass();
                        z7.s sVar = new z7.s();
                        i11 = i15;
                        sVar.m(str15, appBean.name);
                        if (appBean.pack.equals("com.hozonauto.netahome.mini") || appBean.pack.equals("com.hozonauto.netahome") || appBean.pack.equals("com.hozonauto.launcher") || appBean.pack.equals("com.hozonauto.panoramic.avm") || appBean.pack.equals("com.bilibili.bilithings") || appBean.pack.equals("com.hozonauto.localradiomusic")) {
                            str3 = str15;
                        } else {
                            str3 = str15;
                            Object obj6 = obj5;
                            if (appBean.pack.equals(obj6)) {
                                obj5 = obj6;
                            } else {
                                obj5 = obj6;
                                obj = obj4;
                                if (appBean.pack.equals(obj)) {
                                    str4 = str17;
                                    sVar.m(str4, "");
                                    Boolean bool = Boolean.TRUE;
                                    obj4 = obj;
                                    sVar.k("cloudConfigFlag", bool);
                                    str17 = str4;
                                    obj2 = obj3;
                                    if (appBean.pack.equals(obj2)) {
                                        sVar.m(str16, "dock_system");
                                    } else if (appBean.pack.equals("com.hozonauto.netahome")) {
                                        sVar.m(str16, "dock_applist");
                                    } else if (appBean.pack.equals("com.hozonauto.launcher")) {
                                        sVar.m(str16, "dock_map");
                                    } else if (appBean.pack.equals("com.hozonauto.panoramic.avm")) {
                                        sVar.m(str16, "allapps_icon_avm_idle");
                                    } else {
                                        obj3 = obj2;
                                        if (appBean.pack.equals("com.hozonauto.panoramic")) {
                                            sVar.m(str16, "allapps_icon_panoramic_idle");
                                        } else if (appBean.pack.equals("com.tencent.qqlive.audiobox")) {
                                            sVar.m(str16, "allapps_icon_video_xlarge_idle");
                                        } else if (appBean.pack.equals("com.hozonauto.netahome.mini")) {
                                            sVar.m(str16, "allapps_icon_xiaochengxu_xlarge_idle");
                                        } else if (appBean.pack.equals("com.bytedance.byteautoservice")) {
                                            sVar.m(str16, "allapps_icon_mountainfire_xlarge_idle");
                                        } else {
                                            sVar.m(str16, "");
                                        }
                                        sVar.k("isUsed", bool);
                                        sVar.m("packageName", appBean.pack);
                                        sVar.k("redPointFlag", Boolean.FALSE);
                                        oVar2.k(sVar);
                                    }
                                    obj3 = obj2;
                                    sVar.k("isUsed", bool);
                                    sVar.m("packageName", appBean.pack);
                                    sVar.k("redPointFlag", Boolean.FALSE);
                                    oVar2.k(sVar);
                                } else {
                                    String className = launchIntentForPackage.getComponent().getClassName();
                                    str4 = str17;
                                    sVar.m(str4, className);
                                    Boolean bool2 = Boolean.TRUE;
                                    obj4 = obj;
                                    sVar.k("cloudConfigFlag", bool2);
                                    str17 = str4;
                                    obj2 = obj3;
                                    if (appBean.pack.equals(obj2)) {
                                    }
                                    obj3 = obj2;
                                    sVar.k("isUsed", bool2);
                                    sVar.m("packageName", appBean.pack);
                                    sVar.k("redPointFlag", Boolean.FALSE);
                                    oVar2.k(sVar);
                                }
                            }
                        }
                        str4 = str17;
                        obj = obj4;
                        sVar.m(str4, "");
                        Boolean bool22 = Boolean.TRUE;
                        obj4 = obj;
                        sVar.k("cloudConfigFlag", bool22);
                        str17 = str4;
                        obj2 = obj3;
                        if (appBean.pack.equals(obj2)) {
                        }
                        obj3 = obj2;
                        sVar.k("isUsed", bool22);
                        sVar.m("packageName", appBean.pack);
                        sVar.k("redPointFlag", Boolean.FALSE);
                        oVar2.k(sVar);
                    } else {
                        str3 = str15;
                        i11 = i15;
                    }
                    oVar2.k(activityNezhaWallpaper.M.l(i10));
                    i10++;
                    str18 = str2;
                    str15 = str3;
                    i15 = i11;
                }
                activityNezhaWallpaper.M = oVar2;
                break;
            default:
                int i16 = ActivityNezhaWallpaper.R;
                activityNezhaWallpaper.getClass();
                AppBean appBean3 = MyDb.get().getAppDao().get_appBean(str11);
                if (appBean3 == null) {
                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                    if (str11.equals(kVar2.f4041d) || str11.equals("com.hozonauto.netahome.mini")) {
                        AppBean appBean4 = new AppBean();
                        appBean4.pack = str11;
                        str5 = "";
                        appBean4.name = str11.equals(kVar2.f4041d) ? kVar2.f4039c : "小程序";
                        appBean4.isCanStart = true;
                        appBean4.isSystem = false;
                        appBean4.isHide = false;
                        appBean4.isDisable = false;
                        appBean4.isUnInstall = false;
                        appBean3 = appBean4;
                    }
                } else {
                    str5 = "";
                }
                activityNezhaWallpaper.F.D(i13, appBean3);
                z7.o oVar3 = new z7.o();
                activityNezhaWallpaper.L.n(i13);
                z7.o oVar4 = oVar3;
                int i17 = 0;
                while (i17 < activityNezhaWallpaper.L.f19478a.size()) {
                    if (i17 == i13) {
                        DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                        Intent launchIntentForPackage2 = com.yunpan.appmanage.util.j.f4033a.f4037b.getLaunchIntentForPackage(str11);
                        PrintStream printStream2 = System.out;
                        launchIntentForPackage2.getComponent().getClassName();
                        printStream2.getClass();
                        i12 = i13;
                        z7.s sVar2 = new z7.s();
                        sVar2.m("appName", appBean3.name);
                        if (appBean3.pack.equals("com.hozonauto.netahome.mini") || appBean3.pack.equals("com.hozonauto.netahome") || appBean3.pack.equals("com.hozonauto.launcher") || appBean3.pack.equals("com.hozonauto.panoramic.avm") || appBean3.pack.equals("com.bilibili.bilithings") || appBean3.pack.equals("com.hozonauto.localradiomusic") || appBean3.pack.equals(str13) || appBean3.pack.equals(str12)) {
                            str7 = str5;
                            sVar2.m(str14, str7);
                        } else {
                            sVar2.m(str14, launchIntentForPackage2.getComponent().getClassName());
                            str7 = str5;
                        }
                        Boolean bool3 = Boolean.TRUE;
                        str8 = str14;
                        sVar2.k("cloudConfigFlag", bool3);
                        str6 = str12;
                        Object obj7 = obj3;
                        if (appBean3.pack.equals(obj7)) {
                            obj3 = obj7;
                            str9 = str16;
                            sVar2.m(str9, "dock_system");
                        } else {
                            obj3 = obj7;
                            str9 = str16;
                            if (appBean3.pack.equals("com.hozonauto.netahome")) {
                                sVar2.m(str9, "dock_applist");
                            } else if (appBean3.pack.equals("com.hozonauto.launcher")) {
                                sVar2.m(str9, "dock_map");
                            } else if (appBean3.pack.equals("com.hozonauto.panoramic.avm")) {
                                sVar2.m(str9, "allapps_icon_avm_idle");
                            } else {
                                str10 = str13;
                                if (appBean3.pack.equals("com.hozonauto.panoramic")) {
                                    sVar2.m(str9, "allapps_icon_panoramic_idle");
                                } else if (appBean3.pack.equals("com.tencent.qqlive.audiobox")) {
                                    sVar2.m(str9, "allapps_icon_video_xlarge_idle");
                                } else if (appBean3.pack.equals("com.hozonauto.netahome.mini")) {
                                    sVar2.m(str9, "allapps_icon_xiaochengxu_xlarge_idle");
                                } else if (appBean3.pack.equals("com.bytedance.byteautoservice")) {
                                    sVar2.m(str9, "allapps_icon_mountainfire_xlarge_idle");
                                } else {
                                    sVar2.m(str9, str7);
                                }
                                sVar2.k("isUsed", bool3);
                                sVar2.m("packageName", appBean3.pack);
                                sVar2.k("redPointFlag", Boolean.FALSE);
                                oVar = oVar4;
                                oVar.k(sVar2);
                            }
                        }
                        str10 = str13;
                        sVar2.k("isUsed", bool3);
                        sVar2.m("packageName", appBean3.pack);
                        sVar2.k("redPointFlag", Boolean.FALSE);
                        oVar = oVar4;
                        oVar.k(sVar2);
                    } else {
                        i12 = i13;
                        str6 = str12;
                        oVar = oVar4;
                        str7 = str5;
                        str8 = str14;
                        str9 = str16;
                        str10 = str13;
                    }
                    oVar.k(activityNezhaWallpaper.L.l(i17));
                    i17++;
                    oVar4 = oVar;
                    str13 = str10;
                    i13 = i12;
                    str12 = str6;
                    str11 = str2;
                    str16 = str9;
                    str14 = str8;
                    str5 = str7;
                }
                activityNezhaWallpaper.L = oVar4;
                break;
        }
    }
}
