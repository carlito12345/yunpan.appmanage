package ka;

import android.graphics.BitmapFactory;
import android.os.Build;
import ba.r;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.MemBean;
import com.yunpan.appmanage.service.AccRestartService;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.service.AdbPairService;
import com.yunpan.appmanage.service.BootTaskService;
import com.yunpan.appmanage.ui.ActivityAccessibility;
import com.yunpan.appmanage.ui.ActivityAppBatch;
import com.yunpan.appmanage.ui.ActivityAppHistoryLog;
import com.yunpan.appmanage.ui.ActivityAppInstallTime;
import com.yunpan.appmanage.ui.ActivityAppTraffic;
import com.yunpan.appmanage.ui.ActivityAppsPermissions;
import com.yunpan.appmanage.ui.ActivityAutomation;
import com.yunpan.appmanage.ui.ActivityCleanMemoryWhitelist;
import com.yunpan.appmanage.ui.ActivityDesktopSelected;
import com.yunpan.appmanage.ui.ActivityDisplayStartApp;
import com.yunpan.appmanage.ui.ActivityDownload;
import com.yunpan.appmanage.ui.ActivityFloatButtonSet;
import com.yunpan.appmanage.ui.ActivityGjDiy;
import com.yunpan.appmanage.ui.ActivityImmersive;
import com.yunpan.appmanage.ui.ActivityInstaller;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcatSet;
import com.yunpan.appmanage.ui.ActivityNissan;
import com.yunpan.appmanage.ui.ActivityPermissions;
import com.yunpan.appmanage.ui.ActivityPs;
import com.yunpan.appmanage.ui.ActivityPss;
import com.yunpan.appmanage.ui.ActivityRotation;
import com.yunpan.appmanage.ui.ActivityRunMemory;
import com.yunpan.appmanage.ui.ActivitySeccompRoot;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import d0.f;
import ha.l2;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import m0.i0;
import pa.e;
import ua.p2;
import ua.w4;
import ua.y6;
import wa.t;
import wa.w;
import x9.j1;
import z7.o;

/* loaded from: classes.dex */
public final class c extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10223b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f10224c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c(int i10, Object obj) {
        super(28);
        this.f10223b = i10;
        this.f10224c = obj;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        Object obj = this.f10224c;
        switch (this.f10223b) {
            case 0:
                d dVar = (d) obj;
                dVar.f10230f.setVisibility(8);
                dVar.f10229e.setText("获取组件出错");
                break;
            case 2:
                if (t.f17728a.f17754u) {
                    w.b("【报错位置c】 " + th2.getMessage());
                    break;
                }
                break;
            case 3:
                AdbPairService adbPairService = (AdbPairService) obj;
                if (!("" + th2.getMessage()).contains("未找到端口")) {
                    int i10 = AdbPairService.f3951b;
                    adbPairService.a("配对失败，请重新尝试", false);
                    break;
                } else {
                    int i11 = AdbPairService.f3951b;
                    adbPairService.a("未找到端口，请重新尝试", false);
                    break;
                }
            case 5:
                ((ActivityAccessibility) obj).E.setText("出错：" + th2.getMessage());
                break;
            case 7:
                th2.printStackTrace();
                a0.t("无法获取数据");
                ActivityAppHistoryLog activityAppHistoryLog = (ActivityAppHistoryLog) obj;
                activityAppHistoryLog.F.setVisibility(8);
                activityAppHistoryLog.D.E(activityAppHistoryLog.E);
                if (activityAppHistoryLog.E.isEmpty()) {
                    activityAppHistoryLog.G.setVisibility(0);
                    break;
                }
                break;
            case 8:
                th2.printStackTrace();
                a0.t("无法获取数据");
                ActivityAppInstallTime activityAppInstallTime = (ActivityAppInstallTime) obj;
                activityAppInstallTime.F.setVisibility(8);
                activityAppInstallTime.D.E(activityAppInstallTime.E);
                if (activityAppInstallTime.E.isEmpty()) {
                    activityAppInstallTime.G.setVisibility(0);
                    break;
                }
                break;
            case 9:
                th2.printStackTrace();
                String message = th2.getMessage();
                if (message.contains("Bandwidth module disabled") || message.contains("无服务")) {
                    a0.t("此设备没有此功能");
                } else {
                    a0.t("无法获取数据");
                }
                ActivityAppTraffic activityAppTraffic = (ActivityAppTraffic) obj;
                activityAppTraffic.G.setVisibility(8);
                activityAppTraffic.E.E(activityAppTraffic.F);
                if (activityAppTraffic.F.isEmpty()) {
                    activityAppTraffic.I.setVisibility(0);
                    break;
                }
                break;
            case 15:
                ((ActivityDownload) obj).P.setVisibility(8);
                a0.y(th2.getMessage() + "");
                break;
            case 17:
                ((ActivityGjDiy) obj).S.a();
                break;
            case 19:
                ActivityInstaller activityInstaller = (ActivityInstaller) obj;
                activityInstaller.C.setText("安装出错");
                activityInstaller.D.setText("好的");
                break;
            case 21:
                a0.y("开启失败，请确保是日产车机");
                w4 w4Var = (w4) obj;
                ActivityNissan activityNissan = w4Var.f16016b;
                int i12 = ActivityNissan.I;
                if (e.b(activityNissan.A)) {
                    DecimalFormat decimalFormat = k.f4034u0;
                    if (!j.f4033a.f4053j) {
                        a0.z("开启失败，请安装 " + w4Var.f16016b.A.getResources().getString(R.string.app_name) + "-公签版", false);
                        break;
                    }
                }
                break;
            case 22:
                th2.printStackTrace();
                a0.t("获取失败：" + th2.getMessage());
                ((ActivityPermissions) obj).finish();
                break;
            case 23:
                th2.printStackTrace();
                a0.t(th2.getMessage());
                ActivityPs activityPs = (ActivityPs) obj;
                activityPs.H.setVisibility(8);
                activityPs.D.E(activityPs.E);
                if (activityPs.E.isEmpty()) {
                    activityPs.I.setVisibility(0);
                    break;
                }
                break;
            case 24:
                th2.printStackTrace();
                a0.t(th2.getMessage());
                ActivityPss activityPss = (ActivityPss) obj;
                activityPss.K.setVisibility(8);
                activityPss.F.E(activityPss.G);
                if (activityPss.G.isEmpty()) {
                    activityPss.L.setVisibility(0);
                    break;
                }
                break;
            case 26:
                a0.t("失败：" + th2.getMessage());
                ActivityRunMemory activityRunMemory = (ActivityRunMemory) obj;
                activityRunMemory.F.setVisibility(8);
                activityRunMemory.E.E(new ArrayList());
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        String str;
        switch (this.f10223b) {
            case 0:
                d dVar = (d) this.f10224c;
                dVar.f10228d.E((List) obj);
                dVar.f10230f.setVisibility(8);
                if (dVar.f10228d.b() != 0) {
                    dVar.f10229e.setVisibility(8);
                    break;
                } else {
                    dVar.f10229e.setText("此应用无此类组件");
                    break;
                }
            case 2:
                try {
                    AccService accService = (AccService) this.f10224c;
                    o oVar = (o) obj;
                    accService.getClass();
                    if (oVar != null && !oVar.f19478a.isEmpty() && !accService.T0) {
                        ExecutorService executorService = accService.N0;
                        if (executorService == null || executorService.isShutdown()) {
                            accService.N0 = Executors.newFixedThreadPool(4);
                        }
                        accService.N0.submit(new ta.b(accService, oVar, 1));
                        break;
                    }
                } catch (Exception e7) {
                    if (t.f17728a.f17754u) {
                        w.b("【报错位置b】 " + e7.getMessage());
                        return;
                    }
                    return;
                }
                break;
            case 5:
                ActivityAccessibility activityAccessibility = (ActivityAccessibility) this.f10224c;
                activityAccessibility.D.E((List) obj);
                if (activityAccessibility.D.b() != 0) {
                    activityAccessibility.E.setVisibility(8);
                    break;
                } else {
                    activityAccessibility.E.setText("没有无障碍服务");
                    break;
                }
            case 6:
                ((ActivityAppBatch) this.f10224c).F.E((List) obj);
                break;
            case 10:
                ActivityAppsPermissions activityAppsPermissions = (ActivityAppsPermissions) this.f10224c;
                activityAppsPermissions.F.E((List) obj);
                activityAppsPermissions.G.setVisibility(activityAppsPermissions.F.b() == 0 ? 0 : 8);
                break;
            case 12:
                try {
                    ((ActivityCleanMemoryWhitelist) this.f10224c).E.E((List) obj);
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 13:
                ((ActivityDesktopSelected) this.f10224c).D.E((List) obj);
                break;
            case 14:
                ((ActivityDisplayStartApp) this.f10224c).D.E((List) obj);
                break;
            case 15:
                boolean z = obj instanceof r;
                ActivityDownload activityDownload = (ActivityDownload) this.f10224c;
                if (!z) {
                    activityDownload.C.scrollToPositionWithOffset(activityDownload.R.b() - 1, 0, true);
                    activityDownload.S.E((List) obj);
                    if (activityDownload.S.b() > 0) {
                        activityDownload.D.scrollToPositionWithOffset(0, 0, true);
                        break;
                    }
                } else {
                    r rVar = (r) obj;
                    activityDownload.R.q(rVar);
                    activityDownload.D.stopScroll();
                    activityDownload.S.E(new ArrayList());
                    activityDownload.D.setHasMoreData(rVar.f2752o);
                    break;
                }
                break;
            case 17:
                ((ActivityGjDiy) this.f10224c).S.b(String.valueOf(obj));
                break;
            case 18:
                String str2 = (String) obj;
                ActivityImmersive activityImmersive = (ActivityImmersive) this.f10224c;
                activityImmersive.getClass();
                String str3 = "";
                if (str2 == null || str2.equals("null")) {
                    str2 = "";
                }
                String strTrim = str2.trim();
                if (strTrim.contains(SignParameters.NEW_LINE) && strTrim.contains(":/")) {
                    strTrim = strTrim.substring(0, strTrim.lastIndexOf(SignParameters.NEW_LINE));
                    if (strTrim.contains(SignParameters.NEW_LINE) && strTrim.contains(":/")) {
                        strTrim = strTrim.substring(0, strTrim.lastIndexOf(SignParameters.NEW_LINE));
                    }
                }
                String strTrim2 = strTrim.trim();
                activityImmersive.D.setVisibility(8);
                if (strTrim2.contains("immersive.full=") && (strTrim2.contains("immersive.status=") || strTrim2.contains("immersive.navigation="))) {
                    strTrim2 = "";
                }
                boolean zIsEmpty = strTrim2.isEmpty();
                ArrayList arrayList = activityImmersive.M;
                if (zIsEmpty || strTrim2.equals("null") || strTrim2.equals("immersive.full=") || strTrim2.equals("immersive.status=") || strTrim2.equals("immersive.navigation=") || strTrim2.equals("immersive.preconfirms=")) {
                    activityImmersive.L = 0;
                    activityImmersive.C.setText("简要说明：");
                    activityImmersive.D.setVisibility(0);
                    activityImmersive.G.setVisibility(8);
                } else {
                    int i10 = 17;
                    if (strTrim2.contains("immersive.status=") && strTrim2.contains("immersive.navigation=") && strTrim2.contains(":")) {
                        activityImmersive.C.setText("在下面点击应用单独设置每个应用的模式");
                        activityImmersive.L = 2;
                        String[] strArrSplit = strTrim2.split(":");
                        int length = strArrSplit.length;
                        String str4 = "";
                        int i11 = 0;
                        while (i11 < length) {
                            String str5 = strArrSplit[i11];
                            if (str5.trim().startsWith("immersive.status=")) {
                                str3 = "," + str5.trim().substring(i10) + ",";
                            } else if (str5.trim().startsWith("immersive.navigation=")) {
                                str4 = "," + str5.trim().substring(21) + ",";
                            }
                            i11++;
                            i10 = 17;
                        }
                        boolean z4 = str3.contains(",*,") || str3.contains(",apps,");
                        boolean z10 = str4.contains(",*,") || str4.contains(",apps,");
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            p2 p2Var = (p2) it.next();
                            boolean z11 = !z4 ? !android.support.v4.media.session.a.D(new StringBuilder(","), p2Var.f15876b, ",", str3) : android.support.v4.media.session.a.D(new StringBuilder(",-"), p2Var.f15876b, ",", str3);
                            boolean z12 = !z10 ? !android.support.v4.media.session.a.D(new StringBuilder(","), p2Var.f15876b, ",", str4) : android.support.v4.media.session.a.D(new StringBuilder(",-"), p2Var.f15876b, ",", str4);
                            if (z11 && z12) {
                                p2Var.f15878d = 1;
                            } else if (z11) {
                                p2Var.f15878d = 2;
                            } else if (z12) {
                                p2Var.f15878d = 3;
                            }
                        }
                    } else if (strTrim2.contains("immersive.full=")) {
                        activityImmersive.C.setText("在下面选中要全屏显示的应用");
                        activityImmersive.L = 1;
                        String strA = g.b.A(",", strTrim2.substring(15), ",");
                        if (strA.contains(",apps,") || strA.contains(",*,")) {
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                p2 p2Var2 = (p2) it2.next();
                                if (android.support.v4.media.session.a.D(new StringBuilder(",-"), p2Var2.f15876b, ",", strA)) {
                                    p2Var2.f15877c = false;
                                } else {
                                    p2Var2.f15877c = true;
                                }
                            }
                        } else {
                            Iterator it3 = arrayList.iterator();
                            while (it3.hasNext()) {
                                p2 p2Var3 = (p2) it3.next();
                                if (android.support.v4.media.session.a.D(new StringBuilder(","), p2Var3.f15876b, ",", strA)) {
                                    p2Var3.f15877c = true;
                                }
                            }
                        }
                    } else if (strTrim2.contains("immersive.status=")) {
                        activityImmersive.C.setText("在下面选中要隐藏状态栏的应用");
                        activityImmersive.L = 3;
                        String strA2 = g.b.A(",", strTrim2.substring(17), ",");
                        if (strA2.contains(",apps,") || strA2.contains(",*,")) {
                            Iterator it4 = arrayList.iterator();
                            while (it4.hasNext()) {
                                p2 p2Var4 = (p2) it4.next();
                                if (android.support.v4.media.session.a.D(new StringBuilder(",-"), p2Var4.f15876b, ",", strA2)) {
                                    p2Var4.f15877c = false;
                                } else {
                                    p2Var4.f15877c = true;
                                }
                            }
                        } else {
                            Iterator it5 = arrayList.iterator();
                            while (it5.hasNext()) {
                                p2 p2Var5 = (p2) it5.next();
                                if (android.support.v4.media.session.a.D(new StringBuilder(","), p2Var5.f15876b, ",", strA2)) {
                                    p2Var5.f15877c = true;
                                }
                            }
                        }
                    } else if (strTrim2.contains("immersive.navigation=")) {
                        activityImmersive.C.setText("在下面选中要隐藏导航栏的应用");
                        activityImmersive.L = 4;
                        String strA3 = g.b.A(",", strTrim2.substring(21), ",");
                        if (strA3.contains(",apps,") || strA3.contains(",*,")) {
                            Iterator it6 = arrayList.iterator();
                            while (it6.hasNext()) {
                                p2 p2Var6 = (p2) it6.next();
                                if (android.support.v4.media.session.a.D(new StringBuilder(",-"), p2Var6.f15876b, ",", strA3)) {
                                    p2Var6.f15877c = false;
                                } else {
                                    p2Var6.f15877c = true;
                                }
                            }
                        } else {
                            Iterator it7 = arrayList.iterator();
                            while (it7.hasNext()) {
                                p2 p2Var7 = (p2) it7.next();
                                if (android.support.v4.media.session.a.D(new StringBuilder(","), p2Var7.f15876b, ",", strA3)) {
                                    p2Var7.f15877c = true;
                                }
                            }
                        }
                    } else {
                        activityImmersive.x("null");
                        activityImmersive.L = 0;
                        activityImmersive.C.setText("简要说明：");
                        activityImmersive.D.setVisibility(0);
                        activityImmersive.G.setVisibility(8);
                    }
                }
                activityImmersive.H.E(arrayList);
                ((j1) activityImmersive.F.t(activityImmersive.L)).f18249b = true;
                activityImmersive.F.e(activityImmersive.L);
                activityImmersive.E.setSelection(activityImmersive.L);
                break;
            case 19:
                ActivityInstaller activityInstaller = (ActivityInstaller) this.f10224c;
                activityInstaller.C.setText((String) obj);
                if (obj.equals("安装成功") && activityInstaller.H != null) {
                    activityInstaller.E.setVisibility(0);
                    break;
                }
                break;
            case 20:
                ((ActivityKeyMapLogcatSet) this.f10224c).E.setText((String) obj);
                break;
            case 26:
                if (obj instanceof MemBean) {
                    MemBean memBean = (MemBean) obj;
                    String str6 = memBean.MemAvailable;
                    ActivityRunMemory activityRunMemory = (ActivityRunMemory) this.f10224c;
                    if (str6 == null) {
                        double d10 = Double.parseDouble(memBean.Slab) + Double.parseDouble(memBean.Cached) + Double.parseDouble(memBean.Buffers) + Double.parseDouble(memBean.MemFree);
                        str = "系统内存：" + ActivityRunMemory.x(activityRunMemory, Double.parseDouble(memBean.MemTotal)) + "   已使用：" + ActivityRunMemory.x(activityRunMemory, Double.parseDouble(memBean.MemTotal) - d10) + "   剩余：" + ActivityRunMemory.x(activityRunMemory, d10);
                    } else {
                        str = "系统内存：" + ActivityRunMemory.x(activityRunMemory, Double.parseDouble(memBean.MemTotal)) + "   已使用：" + ActivityRunMemory.x(activityRunMemory, Double.parseDouble(memBean.MemTotal) - Double.parseDouble(memBean.MemAvailable)) + "   剩余：" + ActivityRunMemory.x(activityRunMemory, Double.parseDouble(memBean.MemAvailable));
                    }
                    StringBuilder sbB = f.b(str, "\n虚拟内存：");
                    sbB.append(ActivityRunMemory.x(activityRunMemory, Double.parseDouble(memBean.SwapTotal)));
                    sbB.append("   已使用：");
                    sbB.append(ActivityRunMemory.x(activityRunMemory, Double.parseDouble(memBean.SwapTotal) - Double.parseDouble(memBean.SwapFree)));
                    sbB.append("   剩余：");
                    sbB.append(ActivityRunMemory.x(activityRunMemory, Double.parseDouble(memBean.SwapFree)));
                    activityRunMemory.G.setText(sbB.toString());
                    break;
                }
                break;
            case 28:
                if (obj instanceof String) {
                    ((y6) this.f10224c).f16060c.E.b(String.valueOf(obj));
                    break;
                }
                break;
            case 29:
                if (obj instanceof String) {
                    ((y6) this.f10224c).f16060c.E.b(String.valueOf(obj));
                    break;
                }
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f10223b) {
            case 2:
                System.out.getClass();
                break;
            case 7:
                ActivityAppHistoryLog activityAppHistoryLog = (ActivityAppHistoryLog) this.f10224c;
                activityAppHistoryLog.C.stopScroll();
                activityAppHistoryLog.G.setVisibility(8);
                activityAppHistoryLog.F.setVisibility(0);
                break;
            case 8:
                ActivityAppInstallTime activityAppInstallTime = (ActivityAppInstallTime) this.f10224c;
                activityAppInstallTime.C.stopScroll();
                activityAppInstallTime.G.setVisibility(8);
                activityAppInstallTime.F.setVisibility(0);
                break;
            case 9:
                ActivityAppTraffic activityAppTraffic = (ActivityAppTraffic) this.f10224c;
                activityAppTraffic.D.stopScroll();
                activityAppTraffic.I.setVisibility(8);
                activityAppTraffic.G.setVisibility(0);
                break;
            case 17:
                ((ActivityGjDiy) this.f10224c).S.c("处理中");
                break;
            case 22:
                ((ActivityPermissions) this.f10224c).G.setVisibility(0);
                break;
            case 23:
                ActivityPs activityPs = (ActivityPs) this.f10224c;
                activityPs.C.stopScroll();
                activityPs.I.setVisibility(8);
                activityPs.H.setVisibility(0);
                break;
            case 24:
                ActivityPss activityPss = (ActivityPss) this.f10224c;
                activityPss.E.stopScroll();
                activityPss.L.setVisibility(8);
                activityPss.K.setVisibility(0);
                break;
            case 26:
                ActivityRunMemory activityRunMemory = (ActivityRunMemory) this.f10224c;
                activityRunMemory.F.setVisibility(0);
                activityRunMemory.D.stopScroll();
                break;
            case 27:
                ((ActivitySeccompRoot) this.f10224c).E.c("提权中");
                break;
            case 28:
                ((y6) this.f10224c).f16060c.E.c("安装中");
                break;
            case 29:
                ((y6) this.f10224c).f16060c.E.c("安装中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        Object obj = this.f10224c;
        switch (this.f10223b) {
            case 1:
                AccRestartService accRestartService = (AccRestartService) obj;
                try {
                    new i0(accRestartService).a(7);
                } catch (Exception unused) {
                }
                try {
                    accRestartService.stopForeground(true);
                } catch (Exception unused2) {
                }
                new i0(accRestartService).a(7);
                accRestartService.stopSelf();
                break;
            case 3:
                AdbPairService adbPairService = (AdbPairService) obj;
                DecimalFormat decimalFormat = k.f4034u0;
                p000if.a.H0(j.f4033a.f4035a);
                try {
                    new i0(adbPairService).a(4);
                } catch (Exception unused3) {
                }
                try {
                    adbPairService.stopForeground(true);
                } catch (Exception unused4) {
                }
                try {
                    adbPairService.stopSelf();
                    break;
                } catch (Exception unused5) {
                    return;
                }
            case 4:
                BootTaskService bootTaskService = (BootTaskService) obj;
                try {
                    new i0(bootTaskService).a(3);
                } catch (Exception unused6) {
                }
                try {
                    bootTaskService.stopForeground(true);
                } catch (Exception unused7) {
                }
                try {
                    bootTaskService.stopSelf();
                    break;
                } catch (Exception unused8) {
                    return;
                }
            case 7:
                ActivityAppHistoryLog activityAppHistoryLog = (ActivityAppHistoryLog) obj;
                activityAppHistoryLog.F.setVisibility(8);
                activityAppHistoryLog.D.E(activityAppHistoryLog.E);
                if (activityAppHistoryLog.E.isEmpty()) {
                    activityAppHistoryLog.G.setVisibility(0);
                    break;
                }
                break;
            case 8:
                ActivityAppInstallTime activityAppInstallTime = (ActivityAppInstallTime) obj;
                activityAppInstallTime.F.setVisibility(8);
                activityAppInstallTime.D.E(activityAppInstallTime.E);
                if (activityAppInstallTime.E.isEmpty()) {
                    activityAppInstallTime.G.setVisibility(0);
                    break;
                }
                break;
            case 9:
                ActivityAppTraffic activityAppTraffic = (ActivityAppTraffic) obj;
                activityAppTraffic.G.setVisibility(8);
                activityAppTraffic.E.E(activityAppTraffic.F);
                if (activityAppTraffic.F.isEmpty()) {
                    activityAppTraffic.I.setVisibility(0);
                    a0.w("无数据 或 系统没有统计功能");
                    break;
                }
                break;
            case 11:
                ActivityAutomation activityAutomation = (ActivityAutomation) obj;
                activityAutomation.D.setImageResource(R.drawable.tp_check2);
                activityAutomation.E.setText("开启服务(总开关)");
                break;
            case 15:
                ((ActivityDownload) obj).P.setVisibility(8);
                break;
            case 16:
                ActivityFloatButtonSet activityFloatButtonSet = (ActivityFloatButtonSet) obj;
                activityFloatButtonSet.D = -1;
                activityFloatButtonSet.C.setImageBitmap(BitmapFactory.decodeFile(activityFloatButtonSet.A.getFilesDir() + "/FloatButtonIco"));
                break;
            case 17:
                ((ActivityGjDiy) obj).S.a();
                break;
            case 18:
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 19) {
                    if (i10 >= 30) {
                        a0.s("安卓11之后的系统不支持设置全局沉浸功能", false);
                        break;
                    }
                } else {
                    a0.s("系统低于安卓4.4，不支持设置全局沉浸功能", false);
                    break;
                }
                break;
            case 19:
                ((ActivityInstaller) obj).D.setText("好的");
                break;
            case 21:
                a0.w("已打开");
                break;
            case 22:
                ActivityPermissions activityPermissions = (ActivityPermissions) obj;
                if (!activityPermissions.I) {
                    activityPermissions.G.setVisibility(8);
                    activityPermissions.E.E(activityPermissions.F);
                    break;
                }
                break;
            case 23:
                ActivityPs activityPs = (ActivityPs) obj;
                activityPs.H.setVisibility(8);
                activityPs.D.E(activityPs.G ? activityPs.E : activityPs.F);
                break;
            case 24:
                ActivityPss activityPss = (ActivityPss) obj;
                activityPss.K.setVisibility(8);
                int i11 = v.f4106a.Q;
                if (i11 != 0) {
                    if (i11 != 1) {
                        activityPss.F.E(activityPss.I);
                        break;
                    } else {
                        activityPss.F.E(activityPss.H);
                        break;
                    }
                } else {
                    activityPss.F.E(activityPss.G);
                    break;
                }
            case 25:
                ActivityRotation activityRotation = (ActivityRotation) obj;
                activityRotation.D.E(activityRotation.E);
                break;
            case 26:
                ActivityRunMemory activityRunMemory = (ActivityRunMemory) obj;
                activityRunMemory.F.setVisibility(8);
                activityRunMemory.E.E(activityRunMemory.C);
                break;
            case 27:
                ((ActivitySeccompRoot) obj).E.a();
                break;
            case 28:
                ((y6) obj).f16060c.E.a();
                break;
            case 29:
                ((y6) obj).f16060c.E.a();
                break;
        }
    }
}
