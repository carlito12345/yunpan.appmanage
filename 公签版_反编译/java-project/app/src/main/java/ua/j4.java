package ua;

import android.content.Intent;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;
import ha.ia;
import ha.la;
import ha.ma;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public final /* synthetic */ class j4 implements la, ia {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15766a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityNezhaWallpaperL f15767b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15768c;

    public /* synthetic */ j4(ActivityNezhaWallpaperL activityNezhaWallpaperL, int i10, int i11) {
        this.f15766a = i11;
        this.f15767b = activityNezhaWallpaperL;
        this.f15768c = i10;
    }

    @Override // ha.ia
    public void b(int i10) {
        int i11 = ActivityNezhaWallpaperL.T;
        ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15767b;
        activityNezhaWallpaperL.getClass();
        int i12 = this.f15768c;
        if (i10 == 0) {
            new ma(activityNezhaWallpaperL, activityNezhaWallpaperL, new HashSet(), activityNezhaWallpaperL.R, new j4(activityNezhaWallpaperL, i12, 0)).show();
        } else if (i10 == 1) {
            new ha.z6(activityNezhaWallpaperL, activityNezhaWallpaperL, "更改名称", ((AppBean) activityNezhaWallpaperL.F.t(i12)).name, "请输入新名称", "确定", "取消", new d3.g(i12, 16, activityNezhaWallpaperL)).show();
        }
    }

    @Override // ha.la
    public void c(String str, String str2) {
        String str3;
        Intent launchIntentForPackage;
        String str4;
        int i10;
        Intent launchIntentForPackage2;
        String str5;
        String str6;
        String str7 = str2;
        String str8 = "cloudConfigFlag";
        int i11 = this.f15768c;
        String str9 = "shortcut_";
        ActivityNezhaWallpaperL activityNezhaWallpaperL = this.f15767b;
        switch (this.f15766a) {
            case 0:
                int i12 = ActivityNezhaWallpaperL.T;
                activityNezhaWallpaperL.getClass();
                AppBean appBean = MyDb.get().getAppDao().get_appBean(str7);
                if (appBean == null) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    str3 = "shortcut_";
                    if (str7.equals(com.yunpan.appmanage.util.j.f4033a.f4041d) || str7.startsWith(str3) || str7.equals("com.hozonauto.netahome.mini")) {
                        appBean = new AppBean();
                        appBean.pack = str7;
                        appBean.name = str;
                        appBean.isCanStart = true;
                        appBean.isSystem = false;
                        appBean.isHide = false;
                        appBean.isDisable = false;
                        appBean.isUnInstall = false;
                    }
                } else {
                    str3 = "shortcut_";
                }
                activityNezhaWallpaperL.F.D(i11, appBean);
                z7.o oVar = new z7.o();
                activityNezhaWallpaperL.L.n(i11);
                int i13 = 0;
                while (i13 < activityNezhaWallpaperL.L.f19478a.size()) {
                    if (i13 == i11) {
                        if (str7.startsWith(str3)) {
                            launchIntentForPackage = null;
                        } else {
                            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                            launchIntentForPackage = com.yunpan.appmanage.util.j.f4033a.f4037b.getLaunchIntentForPackage(str7);
                        }
                        z7.s sVar = new z7.s();
                        sVar.m("appName", appBean.name);
                        if (launchIntentForPackage == null) {
                            sVar.m("className", "");
                        } else {
                            sVar.m("className", launchIntentForPackage.getComponent().getClassName());
                        }
                        Boolean bool = Boolean.TRUE;
                        sVar.k("cloudConfigFlag", bool);
                        HashMap map = activityNezhaWallpaperL.S;
                        str4 = str3;
                        if (map.get(appBean.pack) != null) {
                            sVar.m("icon", (String) map.get(appBean.pack));
                        } else {
                            sVar.m("icon", "");
                        }
                        sVar.k("isUsed", bool);
                        sVar.m("packageName", appBean.pack);
                        sVar.k("redPointFlag", Boolean.FALSE);
                        oVar.k(sVar);
                    } else {
                        str4 = str3;
                    }
                    oVar.k(activityNezhaWallpaperL.L.l(i13));
                    i13++;
                    str7 = str2;
                    str3 = str4;
                }
                activityNezhaWallpaperL.L = oVar;
                break;
            default:
                int i14 = ActivityNezhaWallpaperL.T;
                activityNezhaWallpaperL.getClass();
                AppBean appBean2 = MyDb.get().getAppDao().get_appBean(str7);
                if (appBean2 == null) {
                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                    if (str7.equals(com.yunpan.appmanage.util.j.f4033a.f4041d) || str7.startsWith("shortcut_") || str7.equals("com.hozonauto.netahome.mini")) {
                        appBean2 = new AppBean();
                        appBean2.pack = str7;
                        appBean2.name = str;
                        appBean2.isCanStart = true;
                        appBean2.isSystem = false;
                        appBean2.isHide = false;
                        appBean2.isDisable = false;
                        appBean2.isUnInstall = false;
                    }
                }
                activityNezhaWallpaperL.D.p(i11, appBean2);
                z7.o oVar2 = new z7.o();
                int i15 = 0;
                while (i15 < activityNezhaWallpaperL.M.f19478a.size()) {
                    if (i15 == i11) {
                        try {
                            if (str7.startsWith(str9)) {
                                launchIntentForPackage2 = null;
                            } else {
                                DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                                launchIntentForPackage2 = com.yunpan.appmanage.util.j.f4033a.f4037b.getLaunchIntentForPackage(str7);
                            }
                            i10 = i11;
                        } catch (Exception unused) {
                            i10 = i11;
                            launchIntentForPackage2 = null;
                        }
                        z7.s sVar2 = new z7.s();
                        str5 = str9;
                        sVar2.m("appName", appBean2.name);
                        if (launchIntentForPackage2 == null) {
                            sVar2.m("className", "");
                        } else {
                            sVar2.m("className", launchIntentForPackage2.getComponent().getClassName());
                        }
                        Boolean bool2 = Boolean.TRUE;
                        sVar2.k(str8, bool2);
                        HashMap map2 = activityNezhaWallpaperL.S;
                        str6 = str8;
                        if (map2.get(appBean2.pack) != null) {
                            sVar2.m("icon", (String) map2.get(appBean2.pack));
                        } else {
                            sVar2.m("icon", "");
                        }
                        sVar2.k("isUsed", bool2);
                        sVar2.m("packageName", appBean2.pack);
                        sVar2.k("redPointFlag", Boolean.FALSE);
                        oVar2.k(sVar2);
                    } else {
                        str6 = str8;
                        i10 = i11;
                        str5 = str9;
                    }
                    oVar2.k(activityNezhaWallpaperL.M.l(i15));
                    i15++;
                    i11 = i10;
                    str9 = str5;
                    str8 = str6;
                }
                activityNezhaWallpaperL.M = oVar2;
                break;
        }
    }
}
