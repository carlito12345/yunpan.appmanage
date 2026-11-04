package ha;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.provider.Settings;
import android.view.Display;
import android.view.View;
import android.view.ViewParent;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.bean.NameContentSelectBean;
import com.yunpan.appmanage.bean.NamePackClassDesEnabledBean;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAccessibility;
import com.yunpan.appmanage.ui.ActivityApps;
import com.yunpan.appmanage.ui.ActivityAppsPermissions;
import com.yunpan.appmanage.ui.ActivityDesktop;
import com.yunpan.appmanage.ui.ActivityDisplayManager;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperX;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;
import com.yunpan.appmanage.ui.ActivityPs;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.lang.ref.WeakReference;
import java.text.Collator;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements ea.b, ec.d, y0.a0, ea, la, fa.z, wb.b, u1.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7494a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7495b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7496c;

    public /* synthetic */ o(int i10, int i11, Object obj) {
        this.f7494a = i11;
        this.f7496c = obj;
        this.f7495b = i10;
    }

    @Override // u1.j
    /* renamed from: a */
    public void mo12a(Object obj) {
        r1.k0 k0Var = (r1.k0) obj;
        switch (this.f7494a) {
            case 19:
                r1.q0 q0Var = ((y1.v0) this.f7496c).f18824a;
                k0Var.t(this.f7495b);
                break;
            default:
                k0Var.E((r1.y) this.f7496c, this.f7495b);
                break;
        }
    }

    @Override // ha.ea
    public void b(int i10) {
        ActivityDisplayManager activityDisplayManager = (ActivityDisplayManager) this.f7496c;
        activityDisplayManager.E = (Display) activityDisplayManager.H.get(i10);
        int i11 = this.f7495b;
        activityDisplayManager.L = i11;
        activityDisplayManager.K = "";
        activityDisplayManager.I = false;
        if (i11 == 11) {
            activityDisplayManager.I = true;
        }
        if (i11 == 8 || i11 == 9 || i11 == 11) {
            new q2(activityDisplayManager, activityDisplayManager.A, 2, new ua.m1(activityDisplayManager)).show();
        } else {
            activityDisplayManager.startActivityForResult(activityDisplayManager.F.createScreenCaptureIntent(), activityDisplayManager.M);
        }
    }

    @Override // ha.la
    public void c(String str, String str2) {
        int i10 = ActivityNezhaWallpaperX.N;
        ActivityNezhaWallpaperX activityNezhaWallpaperX = (ActivityNezhaWallpaperX) this.f7496c;
        activityNezhaWallpaperX.getClass();
        AppBean appBean = MyDb.get().getAppDao().get_appBean(str2);
        if (appBean == null) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            if (!str2.equals(kVar.f4041d) && !str2.equals("com.hozonauto.netahome.mini")) {
                return;
            }
            AppBean appBean2 = new AppBean();
            appBean2.pack = str2;
            appBean2.name = str2.equals(kVar.f4041d) ? kVar.f4039c : "小程序";
            appBean2.isCanStart = true;
            appBean2.isSystem = false;
            appBean2.isHide = false;
            appBean2.isDisable = false;
            appBean2.isUnInstall = false;
            appBean = appBean2;
        }
        x9.r3 r3Var = activityNezhaWallpaperX.D;
        int i11 = this.f7495b;
        r3Var.p(i11, appBean);
        z7.o oVar = new z7.o();
        for (int i12 = 0; i12 < activityNezhaWallpaperX.I.f19478a.size(); i12++) {
            if (i12 == i11) {
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.j.f4033a.f4037b.getLaunchIntentForPackage(str2);
                z7.s sVar = new z7.s();
                sVar.k("active", Boolean.FALSE);
                sVar.m("active_icon", "");
                sVar.j("bundle_info", new z7.s());
                sVar.m("group", "application");
                if (appBean.pack.equals("com.ximalaya.ting.android.car")) {
                    sVar.m(Name.MARK, "XMLY");
                    sVar.m("launch_icon", "all_app_xmly");
                } else if (appBean.pack.equals("com.thunder.carplay")) {
                    sVar.m(Name.MARK, "THUNDER_PLAY");
                    sVar.m("launch_icon", "all_app_thunder_play");
                } else if (appBean.pack.equals("com.qinggan.app.music")) {
                    sVar.m(Name.MARK, "MULTIMEDIA");
                    sVar.m("launch_icon", "all_app_multimedia_2");
                } else if (appBean.pack.equals("com.desaysv.ep40_gamecenter_portrait")) {
                    sVar.m(Name.MARK, "EP_GAME_CENTER");
                    sVar.m("launch_icon", "all_app_game_center");
                } else if (appBean.pack.equals("com.qinggan.app.gallery")) {
                    sVar.m(Name.MARK, "PHOTO");
                    sVar.m("launch_icon", "all_app_photo");
                } else if (appBean.pack.equals("com.qinggan.bluetoothphone")) {
                    sVar.m(Name.MARK, "PHONE");
                    sVar.m("launch_icon", "all_app_phone");
                } else if (appBean.pack.equals("com.qinggan.app.qgvoicesetting")) {
                    sVar.m(Name.MARK, "VOICE");
                    sVar.m("launch_icon", "all_app_voice");
                } else if (appBean.pack.equals("com.qinggan.app.profile")) {
                    sVar.m(Name.MARK, "SCENE_MODE");
                    sVar.m("launch_icon", "all_app_scene_mode");
                } else if (appBean.pack.equals("com.qinggan.app.login")) {
                    sVar.m(Name.MARK, "USER_CENTER");
                    sVar.m("launch_icon", "all_app_user_center");
                } else if (appBean.pack.equals("com.pateo.nzstoreapp")) {
                    sVar.m(Name.MARK, "MARKET");
                    sVar.m("launch_icon", "all_app_market");
                } else if (appBean.pack.equals("com.zongmutech.avm")) {
                    sVar.m(Name.MARK, "RVC");
                    sVar.m("launch_icon", "all_app_avm");
                } else if (appBean.pack.equals("com.carota.hozon")) {
                    sVar.m(Name.MARK, "OTA");
                    sVar.m("launch_icon", "all_app_ota");
                } else if (appBean.pack.equals("com.arcvideo.car.iqy.video")) {
                    sVar.m(Name.MARK, "AQY");
                    sVar.m("launch_icon", "all_app_aqy");
                } else if (appBean.pack.equals("com.qinggan.app.energyflow")) {
                    sVar.m(Name.MARK, "ENERGY");
                    sVar.m("launch_icon", "all_app_energy");
                } else if (appBean.pack.equals("com.tencent.qqmusiccar")) {
                    sVar.m(Name.MARK, "QQ_MUSIC");
                    sVar.m("launch_icon", "all_app_qq_music");
                } else if (appBean.pack.equals("com.cybertron.browser")) {
                    sVar.m(Name.MARK, "CAR_ENTERTAINMENT");
                    sVar.m("launch_icon", "all_app_car_entertainment");
                } else {
                    sVar.m(Name.MARK, appBean.pack);
                    sVar.m("launch_icon", "");
                }
                sVar.m("name", appBean.name);
                sVar.m("package_name", appBean.pack);
                sVar.l("status", -1);
                sVar.l("ui_type", 0);
                oVar.k(sVar);
            }
            oVar.k(activityNezhaWallpaperX.I.l(i12));
        }
        activityNezhaWallpaperX.I = oVar;
    }

    @Override // y0.a0
    public boolean d(View view) {
        SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f7496c;
        sideSheetBehavior.getClass();
        int i10 = this.f7495b;
        if (i10 == 1 || i10 == 2) {
            throw new IllegalArgumentException(g.b.l(i10 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally.", new StringBuilder("STATE_")));
        }
        WeakReference weakReference = sideSheetBehavior.f3636p;
        if (weakReference == null || weakReference.get() == null) {
            sideSheetBehavior.r(i10);
        } else {
            View view2 = (View) sideSheetBehavior.f3636p.get();
            a2.g0 g0Var = new a2.g0(i10, 1, sideSheetBehavior);
            ViewParent parent = view2.getParent();
            if (parent != null && parent.isLayoutRequested() && x0.b1.l(view2)) {
                view2.post(g0Var);
            } else {
                g0Var.run();
            }
        }
        return true;
    }

    @Override // fa.z
    public void e(fa.a0 a0Var) {
        switch (this.f7494a) {
            case 16:
                androidx.room.s sVar = (androidx.room.s) this.f7496c;
                sVar.getClass();
                if (a0Var.f5648a == 0) {
                    ((ActivityPs) sVar.f2428d).D.C(this.f7495b);
                    break;
                }
                break;
            default:
                ua.y5 y5Var = (ua.y5) this.f7496c;
                y5Var.getClass();
                if (a0Var.f5648a == 0) {
                    y5Var.f16058d.F.C(this.f7495b);
                    break;
                }
                break;
        }
    }

    @Override // ea.b
    public void f(boolean z) {
        ((p) this.f7496c).D.e(this.f7495b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ec.d
    public void g(mc.b bVar) throws InterruptedException {
        AppBean appBean;
        AppBean appBean2;
        Object obj;
        ActivityInfo activityInfo;
        String str;
        String strL = "";
        boolean zPutInt = false;
        Object[] objArr = 0;
        int i10 = this.f7495b;
        Object obj2 = this.f7496c;
        switch (this.f7494a) {
            case 5:
                NamePackClassDesEnabledBean namePackClassDesEnabledBean = (NamePackClassDesEnabledBean) ((ka.d) obj2).f10228d.t(i10);
                namePackClassDesEnabledBean.isDisabled = !namePackClassDesEnabledBean.isDisabled;
                ComponentName componentName = new ComponentName(namePackClassDesEnabledBean.packName, namePackClassDesEnabledBean.className);
                try {
                    try {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.j.f4033a.f4037b.setComponentEnabledSetting(componentName, namePackClassDesEnabledBean.isDisabled ? 2 : 1, 1);
                    } catch (Exception e7) {
                        namePackClassDesEnabledBean.isDisabled = !namePackClassDesEnabledBean.isDisabled;
                        bVar.d(new Exception(g.b.z(e7, new StringBuilder(""))));
                        return;
                    }
                } catch (Exception unused) {
                    a2.w0 w0Var = fa.b0.f5652a;
                    String str2 = namePackClassDesEnabledBean.packName + "/" + namePackClassDesEnabledBean.className;
                    boolean z = namePackClassDesEnabledBean.isDisabled;
                    w0Var.getClass();
                    a2.w0.V(str2, z);
                }
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                int componentEnabledSetting = com.yunpan.appmanage.util.j.f4033a.f4037b.getComponentEnabledSetting(componentName);
                if (componentEnabledSetting != 2) {
                    if (componentEnabledSetting == 1 && !namePackClassDesEnabledBean.isDisabled) {
                        bVar.b();
                        break;
                    }
                } else if (namePackClassDesEnabledBean.isDisabled) {
                    bVar.b();
                    break;
                }
                namePackClassDesEnabledBean.isDisabled = !namePackClassDesEnabledBean.isDisabled;
                android.support.v4.media.session.a.B("无法设置", bVar);
                break;
            case 6:
            case 11:
            default:
                int i11 = 0;
                while (true) {
                    ActivityOuShangWhitelist activityOuShangWhitelist = (ActivityOuShangWhitelist) obj2;
                    if (i11 >= activityOuShangWhitelist.E.b()) {
                        if (!strL.isEmpty()) {
                            strL = android.support.v4.media.session.a.l(1, 0, strL);
                        }
                        Boolean boolValueOf = Boolean.FALSE;
                        try {
                            boolValueOf = Boolean.valueOf(Settings.Global.putString(activityOuShangWhitelist.F, "OUSHANG_WHILTE_APP_LIST", strL));
                        } catch (Exception unused2) {
                        }
                        if (!boolValueOf.booleanValue()) {
                            String str3 = "settings put global OUSHANG_WHILTE_APP_LIST '" + strL + "'";
                            fa.b0.f5652a.getClass();
                            if (a2.w0.h(str3).f5648a != 0) {
                                android.support.v4.media.session.a.B("修改失败", bVar);
                                break;
                            }
                        }
                        bVar.b();
                        break;
                    } else {
                        if (i11 != i10) {
                            strL = g.b.l(((NameContentSelectBean) activityOuShangWhitelist.E.t(i11)).content, ",", g.b.m(strL));
                        }
                        i11++;
                    }
                }
            case 7:
                x9.b bVar2 = (x9.b) ((ActivityAccessibility) obj2).D.t(i10);
                ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(bVar2.f18198c);
                try {
                    try {
                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.j.f4033a.f4037b.setComponentEnabledSetting(componentNameUnflattenFromString, 1, 1);
                    } catch (Exception unused3) {
                        a2.w0 w0Var2 = fa.b0.f5652a;
                        String str4 = bVar2.f18198c;
                        w0Var2.getClass();
                        a2.w0.V(str4, false);
                    }
                    DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                    int componentEnabledSetting2 = com.yunpan.appmanage.util.j.f4033a.f4037b.getComponentEnabledSetting(componentNameUnflattenFromString);
                    if (componentEnabledSetting2 == 2) {
                        com.yunpan.appmanage.util.a0.t("解禁失败");
                    } else if (componentEnabledSetting2 == 1) {
                        com.yunpan.appmanage.util.a0.w("解禁成功");
                        bVar2.f18200e = true;
                        bVar.f(bVar2);
                    }
                    bVar.b();
                    break;
                } catch (Exception e10) {
                    com.yunpan.appmanage.util.a0.s("失败：" + e10.getMessage(), false);
                    bVar.b();
                    return;
                }
            case 8:
                int i12 = ActivityApps.L;
                ActivityApps activityApps = (ActivityApps) obj2;
                activityApps.getClass();
                List<AppBean> arrayList = new ArrayList<>();
                if (i10 == 1) {
                    arrayList = MyDb.get().getAppDao().get_app_all_order();
                } else if (i10 == 2) {
                    arrayList = MyDb.get().getAppDao().get_app_user_canStart_noHide_noUnInstall_noDisable();
                } else if (i10 == 3) {
                    arrayList = MyDb.get().getAppDao().get_app_system_canStart_noHide_noUnInstall_noDisable();
                } else if (i10 == 4) {
                    arrayList = MyDb.get().getAppDao().get_app_noCanStart_noHide_noUnInstall_noDisable();
                } else if (i10 == 5) {
                    arrayList = MyDb.get().getAppDao().get_app_disable();
                } else if (i10 == 6) {
                    arrayList = MyDb.get().getAppDao().get_app_hide();
                } else if (i10 == 7) {
                    arrayList = MyDb.get().getAppDao().get_app_unInstall();
                } else if (i10 == 8) {
                    arrayList = MyDb.get().getAppDao().get_app_unInstallHashDate();
                } else if (i10 == 0) {
                    arrayList = MyDb.get().getAppDao().search_name(activityApps.K);
                    arrayList.addAll(MyDb.get().getAppDao().search_pack(activityApps.K));
                }
                if (com.yunpan.appmanage.util.v.f4106a.f4124i0 > 0) {
                    Collections.sort(arrayList, new ua.k0(objArr == true ? 1 : 0, Collator.getInstance(Locale.CHINA)));
                }
                bVar.f(arrayList);
                bVar.b();
                break;
            case 9:
                int i13 = ActivityAppsPermissions.K;
                ActivityAppsPermissions activityAppsPermissions = (ActivityAppsPermissions) obj2;
                activityAppsPermissions.getClass();
                List<AppBean> arrayList2 = new ArrayList<>();
                if (i10 == 1) {
                    arrayList2 = MyDb.get().getAppDao().get_app_noHide_noUnInstall_noDisable();
                } else if (i10 == 2) {
                    arrayList2 = MyDb.get().getAppDao().get_app_user_canStart_noHide_noUnInstall_noDisable();
                } else if (i10 == 3) {
                    arrayList2 = MyDb.get().getAppDao().get_app_system_canStart_noHide_noUnInstall_noDisable();
                } else if (i10 == 4) {
                    arrayList2 = MyDb.get().getAppDao().get_app_noCanStart_noHide_noUnInstall_noDisable();
                } else if (i10 == 5) {
                    arrayList2 = MyDb.get().getAppDao().get_app_disable();
                } else if (i10 == 6) {
                    arrayList2 = MyDb.get().getAppDao().get_app_hide();
                } else if (i10 == 7) {
                    arrayList2 = MyDb.get().getAppDao().get_app_unInstall();
                } else if (i10 == 8) {
                    arrayList2 = MyDb.get().getAppDao().get_app_unInstallHashDate();
                } else if (i10 == 0) {
                    arrayList2 = MyDb.get().getAppDao().search_name(activityAppsPermissions.I);
                    arrayList2.addAll(MyDb.get().getAppDao().search_pack(activityAppsPermissions.I));
                }
                bVar.f(arrayList2);
                bVar.b();
                break;
            case 10:
                ActivityDesktop activityDesktop = (ActivityDesktop) obj2;
                DesktopBean desktopBean = (DesktopBean) activityDesktop.D.t(i10);
                if (desktopBean.isHide || desktopBean.isUninstall || desktopBean.isDisable) {
                    try {
                        activityDesktop.y(i10, false);
                        com.yunpan.appmanage.util.a0.w("操作成功");
                        Thread.sleep(333L);
                        try {
                            appBean = new AppBean(Build.VERSION.SDK_INT >= 24 ? activityDesktop.A.getPackageManager().getApplicationInfo(desktopBean.packageName, 8192) : activityDesktop.A.getPackageManager().getApplicationInfo(desktopBean.packageName, 8192));
                        } catch (Exception unused4) {
                            appBean = null;
                        }
                        if (appBean != null) {
                            desktopBean.isDisable = appBean.isDisable;
                            desktopBean.isUninstall = appBean.isUnInstall;
                            desktopBean.isHide = appBean.isHide;
                            desktopBean.isSystemApp = appBean.isSystem;
                            bVar.f(desktopBean);
                        }
                    } catch (Exception e11) {
                        bVar.d(e11);
                        return;
                    }
                } else {
                    Iterator it = activityDesktop.D.v().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            DesktopBean desktopBean2 = (DesktopBean) it.next();
                            if (!desktopBean2.isHide && !desktopBean2.isUninstall && !desktopBean2.isDisable && !desktopBean2.packageName.equals(desktopBean.packageName)) {
                                try {
                                    activityDesktop.y(i10, true);
                                    com.yunpan.appmanage.util.a0.w("操作成功");
                                    Thread.sleep(333L);
                                    try {
                                        appBean2 = new AppBean(Build.VERSION.SDK_INT >= 24 ? activityDesktop.A.getPackageManager().getApplicationInfo(desktopBean.packageName, 8192) : activityDesktop.A.getPackageManager().getApplicationInfo(desktopBean.packageName, 8192));
                                    } catch (Exception unused5) {
                                        appBean2 = null;
                                    }
                                    if (appBean2 != null) {
                                        desktopBean.isDisable = appBean2.isDisable;
                                        desktopBean.isUninstall = appBean2.isUnInstall;
                                        desktopBean.isHide = appBean2.isHide;
                                        desktopBean.isSystemApp = appBean2.isSystem;
                                        if (desktopBean.isDefaultDesktop) {
                                            desktopBean.isDefaultDesktop = false;
                                        }
                                        bVar.f(desktopBean);
                                    }
                                    Thread.sleep(500L);
                                    Intent intent = new Intent("android.intent.action.MAIN");
                                    intent.addCategory("android.intent.category.HOME");
                                    DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                                    ResolveInfo resolveInfoResolveActivity = com.yunpan.appmanage.util.j.f4033a.f4037b.resolveActivity(intent, 65536);
                                    if (resolveInfoResolveActivity != null && (activityInfo = resolveInfoResolveActivity.activityInfo) != null && (str = activityInfo.packageName) != null && !str.equals("android")) {
                                        strL = str;
                                    }
                                    if (strL.isEmpty()) {
                                        bVar.f("请设置默认桌面");
                                    } else {
                                        fa.b0.f5652a.getClass();
                                        fa.a0 a0VarH = a2.w0.h("ps -A");
                                        if (a0VarH.f5649b.size() < 20) {
                                            a0VarH = a2.w0.h("ps");
                                        }
                                        if (!a0VarH.a().contains(" " + strL + SignParameters.NEW_LINE) && (obj = MyDb.get().getAppDao().get_appBean(strL)) != null) {
                                            bVar.f(obj);
                                        }
                                    }
                                } catch (Exception e12) {
                                    bVar.d(e12);
                                    return;
                                }
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.t("仅有一款桌面可用，我阻止您禁用它");
                        }
                    }
                }
                bVar.b();
                break;
            case 12:
                ua.w3 w3Var = (ua.w3) obj2;
                w3Var.getClass();
                if (i10 < 0 || i10 > Integer.MAX_VALUE) {
                    i10 = Integer.MAX_VALUE;
                }
                if (i10 >= 30000) {
                    try {
                        ActivityLaboratory activityLaboratory = w3Var.f16014b;
                        int i14 = ActivityLaboratory.I;
                        zPutInt = Settings.System.putInt(activityLaboratory.A.getContentResolver(), "screen_off_timeout", i10);
                    } catch (Exception unused6) {
                    }
                    if (!zPutInt) {
                        String str5 = "settings put system screen_off_timeout " + i10;
                        fa.b0.f5652a.getClass();
                        if (a2.w0.h(str5).f5648a != 0) {
                            android.support.v4.media.session.a.B("设置失败", bVar);
                            break;
                        }
                    }
                    bVar.b();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.u("避免误设，低于30秒阻止您设置");
                    break;
                }
        }
    }

    @Override // wb.b
    public void h(int i10, Object[] objArr) {
        wb.g gVar = (wb.g) this.f7496c;
        CodeEditor codeEditor = gVar.f17777a;
        if (codeEditor == null || i10 > 0) {
            return;
        }
        codeEditor.Z(new fa.v(gVar, codeEditor, this.f7495b, 4));
    }

    public void i(z7.o oVar) {
        w1 w1Var = (w1) this.f7496c;
        x9.w0 w0Var = w1Var.f7987q;
        int i10 = this.f7495b;
        StrIntBoolBean strIntBoolBean = (StrIntBoolBean) w0Var.t(i10);
        if (oVar == null || oVar.f19478a.isEmpty()) {
            w1Var.B = null;
            strIntBoolBean.boolValue = false;
        } else {
            w1Var.B = oVar;
            strIntBoolBean.boolValue = true;
        }
        w1Var.f7987q.e(i10);
    }
}
