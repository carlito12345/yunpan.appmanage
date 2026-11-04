package ph;

import a2.g1;
import a2.w0;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.AppAttribBean;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.bean.FileCopyBean;
import com.yunpan.appmanage.bean.NamePackBoolSelectBean;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.bean.WpTaskBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.service.AccRestartService;
import com.yunpan.appmanage.service.BootTaskService;
import com.yunpan.appmanage.shizuku.IGjAdbFace;
import com.yunpan.appmanage.ui.ActivityAppInstallTime;
import com.yunpan.appmanage.ui.ActivityAutoClick;
import com.yunpan.appmanage.ui.ActivityAutoClickUsbSet;
import com.yunpan.appmanage.ui.ActivityCleanMemoryWhitelist;
import com.yunpan.appmanage.ui.ActivityDebugLogcat;
import com.yunpan.appmanage.ui.ActivityDisplayStartApp;
import com.yunpan.appmanage.ui.ActivityFloatButtonSet;
import com.yunpan.appmanage.ui.ActivityInputMethod;
import com.yunpan.appmanage.ui.ActivityJiliE02;
import com.yunpan.appmanage.ui.ActivityKeyMapAcc;
import com.yunpan.appmanage.ui.ActivityKeyMapEvent;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcat;
import com.yunpan.appmanage.ui.ActivityKeyMapNissan;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivityNezha;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaper;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperL;
import com.yunpan.appmanage.ui.ActivityNezhaWallpaperX;
import com.yunpan.appmanage.ui.ActivityOuShang;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBar;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;
import com.yunpan.appmanage.ui.ActivityTrans;
import com.yunpan.appmanage.util.MyLog;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.z;
import fa.b0;
import fa.g0;
import ha.a6;
import ha.fa;
import ha.h3;
import ha.ja;
import ha.o1;
import ha.v1;
import ha.z6;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.simpleframework.xml.strategy.Name;
import u1.f0;
import ua.a4;
import ua.i1;
import ua.p2;
import ua.v0;
import ua.w4;
import x9.l3;
import x9.n3;
import x9.n5;
import x9.w3;

/* loaded from: classes3.dex */
public final /* synthetic */ class j implements rh.u, l2.g, y0.d, ec.d, v1.t, c6.e, ea.f, a6 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12717a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f12718b;

    public /* synthetic */ j(int i10, Object obj) {
        this.f12717a = i10;
        this.f12718b = obj;
    }

    @Override // ea.f
    public void a(w3 w3Var) {
        int i10 = 16;
        int i11 = ActivityFloatButtonSet.E;
        ActivityFloatButtonSet activityFloatButtonSet = (ActivityFloatButtonSet) this.f12718b;
        activityFloatButtonSet.getClass();
        if (w3Var.f18367d > 81920) {
            a0.u("文件大小不要超过 50KB");
        } else {
            new mc.c(0, new ma.b(activityFloatButtonSet, i10, w3Var)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(i10, activityFloatButtonSet));
        }
    }

    @Override // v1.t
    public void b(long j10, u1.q qVar) {
        switch (this.f12717a) {
            case 6:
                l2.b.c(j10, qVar, ((s3.a0) this.f12718b).f13992c);
                break;
            default:
                l2.b.d(j10, qVar, ((s3.a0) this.f12718b).f13992c);
                break;
        }
    }

    @Override // l2.g
    public long d(long j10) {
        return f0.h((j10 * r0.f10521e) / 1000000, 0L, ((l2.t) this.f12718b).f10526j - 1);
    }

    @Override // ha.a6
    public void f(w3 w3Var) {
        h3 h3Var = (h3) this.f12718b;
        h3Var.getClass();
        try {
            z7.o oVarP = q4.a.I(new File(w3Var.f18365b)).p("keys");
            oVarP.l(0).g();
            ma.b bVar = new ma.b(h3Var, 24, oVarP);
            ActivityKeyMapLogcat activityKeyMapLogcat = (ActivityKeyMapLogcat) h3Var.f7143d;
            new z6(activityKeyMapLogcat, activityKeyMapLogcat, "给方案起个名", "新方案", "请输入方案名", "确定", "取消", bVar).show();
        } catch (Exception unused) {
            a0.t("json文件有误");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0301  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Throwable {
        String str;
        String str2;
        WpPathBean wpPathBeanB = null;
        long j10 = 500;
        String strConcat = "";
        int i10 = 0;
        int i11 = 1;
        Object obj = this.f12718b;
        switch (this.f12717a) {
            case 3:
                ArrayList arrayList = new ArrayList();
                FileCopyBean fileCopyBean = (FileCopyBean) obj;
                int i12 = 0;
                for (w3 w3Var : fileCopyBean.fromPaths) {
                    StringBuilder sbN = g.b.n("拷贝进度：", i12, "/");
                    sbN.append(fileCopyBean.fromPaths.size());
                    sbN.append(SignParameters.NEW_LINE);
                    sbN.append(w3Var.f18364a);
                    bVar.f(sbN.toString());
                    int i13 = i12 + 1;
                    try {
                        w0 w0Var = b0.f5652a;
                        String str3 = fileCopyBean.toDir;
                        w0Var.getClass();
                        w0.y(str3, w3Var);
                    } catch (Exception e7) {
                        w3Var.f18373j = g.b.z(e7, new StringBuilder(""));
                        arrayList.add(w3Var);
                    }
                    i12 = i13;
                }
                if (!arrayList.isEmpty()) {
                    s1.g.g0(fileCopyBean);
                    bVar.d(new qa.b("拷贝失败", arrayList));
                }
                s1.g.g0(fileCopyBean);
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                String str4 = fileCopyBean.fromPaths.get(0).f18365b;
                kVar.getClass();
                boolean zI = com.yunpan.appmanage.util.k.i(str4);
                if (fileCopyBean.isDelete) {
                    for (w3 w3Var2 : fileCopyBean.fromPaths) {
                        w0 w0Var2 = b0.f5652a;
                        String str5 = w3Var2.f18365b;
                        w0Var2.getClass();
                        if (w0.B(str5).equals("删除成功")) {
                            if (zI) {
                                MyDb.get().lambda$addFile_thread$1(w3Var2.f18365b);
                            }
                        } else if (zI && w3Var2.f18366c) {
                            com.yunpan.appmanage.util.j.f4033a.f4046f0.submit(new z(new File(w3Var2.f18365b)));
                        }
                    }
                }
                bVar.b();
                break;
            case 4:
                WpTaskBean wpTaskBean = (WpTaskBean) obj;
                w3 w3Var3 = wpTaskBean.bdRootPath;
                if (w3Var3.f18366c) {
                    n5 n5Var = wpTaskBean.userInfo;
                    int i14 = n5Var.f18290a;
                    if (i14 != 1) {
                        if (i14 == 2) {
                            wpPathBeanB = qf.c.b(Integer.valueOf(wpTaskBean.wpRootPath.path).intValue(), wpTaskBean.bdRootPath.f18364a, n5Var);
                        } else if (i14 == 3) {
                            wpPathBeanB = qa.f.b(wpTaskBean.wpRootPath, w3Var3.f18364a, n5Var);
                        } else if (i14 == 4) {
                            wpPathBeanB = com.bumptech.glide.c.d(wpTaskBean.wpRootPath, w3Var3.f18364a, n5Var);
                        } else if (i14 == 5) {
                            wpPathBeanB = com.bumptech.glide.d.e(wpTaskBean.wpRootPath, w3Var3.f18364a, n5Var);
                        } else if (i14 == 6) {
                            wpPathBeanB = p000if.a.h(n5Var, w3Var3.f18364a);
                        } else if (i14 == 7) {
                            wpPathBeanB = qa.g.b(wpTaskBean.wpRootPath, w3Var3.f18364a, n5Var);
                        }
                    }
                    if (wpPathBeanB == null) {
                        android.support.v4.media.session.a.B("创建文件夹失败", bVar);
                        break;
                    } else {
                        bVar.f(wpPathBeanB);
                        a9.o.Q(wpTaskBean, wpTaskBean.bdRootPath, wpPathBeanB, bVar);
                    }
                } else {
                    wpTaskBean.wpPathInfo = wpTaskBean.wpRootPath;
                    wpTaskBean.bdPathInfo = w3Var3;
                    bVar.f(wpTaskBean);
                }
                bVar.b();
                break;
            case 5:
                String strJ = g.b.j(g.b.j(g.b.g(g0.f5682a, new StringBuilder("SELECT * FROM fileList WHERE (path LIKE '"), "/%')"), " and isDir=0"), " and path NOT LIKE '%/.%'");
                Iterator it = ((HashSet) obj).iterator();
                while (it.hasNext()) {
                    String str6 = (String) it.next();
                    if (!str6.isEmpty()) {
                        strConcat = strConcat.isEmpty() ? g.b.A(" and (LOWER(name) LIKE '%.", str6, "'") : strConcat + " OR LOWER(name) LIKE '%." + str6 + "'";
                    }
                }
                if (!strConcat.isEmpty()) {
                    strConcat = strConcat.concat(")");
                }
                if (!strConcat.isEmpty()) {
                    strJ = g.b.j(strJ, strConcat);
                }
                List<FileInfo> listSqlQuery = MyDb.get().getFileInfoDao().sqlQuery(new g1(g.b.j(strJ, " ORDER BY lastModified DESC"), new Object[0]));
                if (listSqlQuery != null && !listSqlQuery.isEmpty()) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<FileInfo> it2 = listSqlQuery.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(new w3(it2.next()));
                    }
                    if (!arrayList2.isEmpty()) {
                        bVar.f(arrayList2);
                        bVar.b();
                        break;
                    }
                }
                a0.u("本机没有此类型文件");
                bVar.b();
                break;
            case 8:
                int i15 = AccRestartService.f3925c;
                AccRestartService accRestartService = (AccRestartService) obj;
                accRestartService.getClass();
                do {
                    Thread.sleep(500L);
                } while (!accRestartService.f3926a);
                bVar.b();
                break;
            case 9:
                int i16 = BootTaskService.f3953c;
                BootTaskService bootTaskService = (BootTaskService) obj;
                bootTaskService.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (SystemClock.elapsedRealtime() < 120000) {
                    ta.i.c();
                }
                while (true) {
                    Thread.sleep(1000L);
                    if (bootTaskService.f3955b && bootTaskService.f3954a) {
                        if (wa.t.f17728a.f17753t) {
                            wa.w.c("任务执行完成");
                        }
                        do {
                            Thread.sleep(1000L);
                        } while (System.currentTimeMillis() - jCurrentTimeMillis < 180000);
                        if (wa.t.f17728a.f17753t) {
                            wa.w.c("关闭前台服务");
                        }
                        bVar.b();
                        break;
                    }
                }
                break;
            case 10:
                ta.o oVar = (ta.o) obj;
                HandlerThread handlerThread = new HandlerThread("LoopThread");
                oVar.f14881d = handlerThread;
                handlerThread.start();
                Handler handler = new Handler(oVar.f14881d.getLooper());
                oVar.f14882e = handler;
                handler.post(new ta.n(oVar, i11));
                oVar.f14879b = false;
                try {
                    oVar.c();
                    wa.u uVar = wa.t.f17728a;
                    if (uVar.J && SystemClock.elapsedRealtime() < 16000) {
                        if (uVar.f17754u) {
                            wa.w.b("开机时间过短，延迟监听！开机时间：" + SystemClock.elapsedRealtime() + "ms");
                        }
                        while (SystemClock.elapsedRealtime() < 16000) {
                            Thread.sleep(500L);
                        }
                    }
                    boolean z = Build.VERSION.SDK_INT >= 33;
                    if (z) {
                        while (!fa.d.f5659a.f5665d) {
                            Thread.sleep(1000L);
                            IGjAdbFace iGjAdbFace = fa.a.f5646a.f5651b;
                            if ((iGjAdbFace == null || !iGjAdbFace.asBinder().pingBinder()) && !oVar.f14879b) {
                            }
                        }
                    }
                    boolean z4 = oVar.f14879b;
                    l6.e eVar = oVar.f14883f;
                    if (z4) {
                        if (wa.t.f17728a.f17754u) {
                            wa.w.b("日志监听停止了");
                        }
                        eVar.removeCallbacksAndMessages(null);
                        bVar.b();
                        break;
                    } else {
                        if (wa.t.f17728a.f17754u) {
                            wa.w.b("开始监听系统日志");
                        }
                        try {
                            str = String.format("__RET=$?;echo %1$s;echo %1$s >&2;echo $__RET;unset __RET", UUID.randomUUID().toString());
                        } catch (Exception e10) {
                            if (wa.t.f17728a.f17754u) {
                                wa.w.b("【报错位置MyLogcatKeymap.start】 " + e10.getMessage());
                            }
                            e10.printStackTrace();
                        }
                        while (true) {
                            if (wa.t.f17728a.f17754u) {
                                wa.w.b("执行日志监听：logcat");
                            }
                            oVar.f14880c = false;
                            try {
                                oVar.a("sh");
                            } catch (Exception e11) {
                                e11.printStackTrace();
                                oVar.a(Name.MARK);
                            }
                            oVar.b("logcat -c");
                            oVar.b(str);
                            Thread.sleep(300L);
                            ArrayBlockingQueue arrayBlockingQueue = oVar.l;
                            arrayBlockingQueue.clear();
                            if (z && oVar.f14885h == null) {
                                Intent intent = new Intent(wa.s.c().f17709e, (Class<?>) ActivityTrans.class);
                                intent.setPackage(null);
                                intent.addFlags(268435456);
                                p000if.a.x0(1, wa.s.c().f17709e, intent);
                                Thread.sleep(j10);
                            }
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("logcat");
                            sb2.append(oVar.f14891o ? "" : " -v tag");
                            oVar.b(sb2.toString());
                            int i17 = 0;
                            while (true) {
                                if (!oVar.f14879b && !oVar.f14880c) {
                                    try {
                                        str2 = (String) arrayBlockingQueue.poll(10L, TimeUnit.SECONDS);
                                    } catch (Exception unused) {
                                        str2 = null;
                                    }
                                    if (str2 == null) {
                                        i17++;
                                        if (z) {
                                            if (i17 >= 6) {
                                                oVar.f14880c = true;
                                            }
                                        } else if (i17 == 5) {
                                            MyLog.normal();
                                        } else if (i17 >= 6) {
                                            oVar.f14880c = true;
                                        }
                                        if (!oVar.f14879b) {
                                            System.out.getClass();
                                            if (wa.t.f17728a.f17754u) {
                                                wa.w.b("日志监听服务出错，已退出");
                                            }
                                            a0.u("日志监听服务出错，已退出");
                                        }
                                        if (wa.t.f17728a.f17754u) {
                                            wa.w.b("日志监听停止了");
                                        }
                                        eVar.removeCallbacksAndMessages(null);
                                        bVar.b();
                                        break;
                                    } else {
                                        try {
                                            oVar.f(str2, bVar);
                                        } catch (Exception unused2) {
                                        }
                                        i17 = 0;
                                    }
                                }
                            }
                            if (!oVar.f14879b && oVar.f14880c && wa.t.f17728a.f17754u) {
                                wa.w.b("一分钟没有收到新日志，重新启动监听程序");
                            }
                            if (oVar.f14879b) {
                                if (!oVar.f14879b) {
                                }
                                if (wa.t.f17728a.f17754u) {
                                }
                                eVar.removeCallbacksAndMessages(null);
                                bVar.b();
                            } else {
                                j10 = 500;
                            }
                        }
                    }
                } catch (Exception e12) {
                    e12.printStackTrace();
                    a0.t("读取日志映射配置出错");
                    if (wa.t.f17728a.f17754u) {
                        wa.w.b("读取日志映射配置出错：" + e12.getMessage());
                    }
                    oVar.f14879b = true;
                    bVar.d(e12);
                    return;
                }
                break;
            case 11:
                int i18 = ActivityAppInstallTime.H;
                ActivityAppInstallTime activityAppInstallTime = (ActivityAppInstallTime) obj;
                activityAppInstallTime.getClass();
                for (AppBean appBean : MyDb.get().getAppDao().get_app_all()) {
                    try {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        PackageInfo packageInfo = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(appBean.pack, i10);
                        if (packageInfo != null) {
                            activityAppInstallTime.E.add(new AppAttribBean(appBean.name, appBean.pack, packageInfo.versionName, packageInfo.versionCode, packageInfo.firstInstallTime, packageInfo.lastUpdateTime));
                        }
                    } catch (Exception unused3) {
                    }
                    i10 = 0;
                }
                Collections.sort(activityAppInstallTime.E, new qa.e(7));
                bVar.b();
                break;
            case 16:
                int i19 = ActivityDisplayStartApp.F;
                String strU = qf.c.u(((ActivityDisplayStartApp) obj).A);
                List<AppBean> list = MyDb.get().getAppDao().get_app_canStart();
                if (strU != null && !strU.isEmpty()) {
                    int size = list.size() - 1;
                    while (true) {
                        if (size >= 0) {
                            if (list.get(size).pack.equals(strU)) {
                                list.remove(size);
                            } else {
                                size--;
                            }
                        }
                    }
                }
                bVar.f(list);
                bVar.b();
                break;
            case 25:
                ActivityLaboratory activityLaboratory = ((ua.w3) obj).f16014b;
                try {
                    w0 w0Var3 = b0.f5652a;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(g0.f5682a.d());
                    sb3.append("/.");
                    int i20 = ActivityLaboratory.I;
                    sb3.append(activityLaboratory.A.getPackageName());
                    String string = sb3.toString();
                    w0Var3.getClass();
                    w0.B(string);
                } catch (Exception unused4) {
                }
                try {
                    int i21 = ActivityLaboratory.I;
                    File[] fileArrListFiles = activityLaboratory.A.getFilesDir().getParentFile().listFiles();
                    int length = fileArrListFiles.length;
                    while (i10 < length) {
                        File file = fileArrListFiles[i10];
                        b0.f5652a.getClass();
                        w0.A(file);
                        i10++;
                    }
                } catch (Exception unused5) {
                }
                AppStart.f3772h.d();
                bVar.b();
                break;
            default:
                w4 w4Var = (w4) obj;
                w4Var.getClass();
                try {
                    Settings.Global.putInt(w4Var.f16016b.E, "adb_enabled", 1);
                } catch (Exception unused6) {
                }
                if (u9.d.r("echo a1 > /dev/hsaeio").l0().f2426b == 0) {
                    bVar.b();
                    break;
                } else {
                    android.support.v4.media.session.a.B("修改失败", bVar);
                    break;
                }
        }
    }

    @Override // rh.u
    public void i(q qVar, int i10) {
        boolean z = qVar instanceof f;
        StringBuilder sb2 = (StringBuilder) this.f12718b;
        if (z) {
            sb2.append(((f) qVar).A());
        } else if (qVar instanceof e) {
            sb2.append(((e) qVar).A());
        } else if (qVar instanceof d) {
            sb2.append(((d) qVar).A());
        }
    }

    @Override // rh.u
    public /* synthetic */ void p(q qVar, int i10) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        InputMethodManager inputMethodManager;
        String str;
        int i11 = 13;
        int i12 = 6;
        String str2 = "";
        int i13 = 5;
        int i14 = 0;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        int i15 = 1;
        Object obj = this.f12718b;
        switch (this.f12717a) {
            case 12:
                int i16 = ActivityAutoClick.E;
                ActivityAutoClick activityAutoClick = (ActivityAutoClick) obj;
                activityAutoClick.getClass();
                if (i10 == 0) {
                    wa.u uVar = wa.t.f17728a;
                    boolean z = !uVar.V;
                    try {
                        uVar.V = z;
                        uVar.f17731b.k("AutoClick_USB_OTG_AUTHORIZED", Boolean.valueOf(z));
                    } catch (Exception unused) {
                    }
                    uVar.i();
                    ta.m.e(activityAutoClick.A);
                    l3 l3Var = (l3) activityAutoClick.D.t(i10);
                    wa.u uVar2 = wa.t.f17728a;
                    l3Var.f18271a = uVar2.V ? R.drawable.tp_check1 : R.drawable.tp_check2;
                    activityAutoClick.D.D(i10, l3Var);
                    if (uVar2.V) {
                        activityAutoClick.w(ActivityAutoClickUsbSet.class);
                        break;
                    }
                } else if (i10 == 1) {
                    wa.u uVar3 = wa.t.f17728a;
                    if (uVar3.Y) {
                        try {
                            uVar3.Y = false;
                            uVar3.f17731b.k("AutoClick_DESKTOP_SELECT", Boolean.FALSE);
                        } catch (Exception unused2) {
                        }
                        uVar3.i();
                        ta.m.e(activityAutoClick.A);
                        l3 l3Var2 = (l3) activityAutoClick.D.t(i10);
                        l3Var2.f18271a = uVar3.Y ? R.drawable.tp_check1 : R.drawable.tp_check2;
                        activityAutoClick.D.D(i10, l3Var2);
                        break;
                    } else {
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayListR = qf.c.r(activityAutoClick);
                        if (arrayListR.isEmpty()) {
                            a0.u("没有获取到桌面应用列表");
                            break;
                        } else if (arrayListR.size() == 1) {
                            a0.u("仅有一款桌面app，用不到此功能");
                            break;
                        } else {
                            Iterator it = arrayListR.iterator();
                            while (it.hasNext()) {
                                arrayList.add(((DesktopBean) it.next()).name);
                            }
                            new fa(activityAutoClick, activityAutoClick, "需要选哪个桌面", arrayList, new v1(activityAutoClick, arrayListR, i10, i13)).show();
                            break;
                        }
                    }
                } else if (i10 == 2) {
                    wa.u uVar4 = wa.t.f17728a;
                    boolean z4 = uVar4.f17732b0;
                    if (z4 || Build.VERSION.SDK_INT >= 33) {
                        boolean z10 = !z4;
                        try {
                            uVar4.f17732b0 = z10;
                            uVar4.f17731b.k("AutoClick_AllowReadLogcat", Boolean.valueOf(z10));
                        } catch (Exception unused3) {
                        }
                        uVar4.i();
                        ta.m.e(activityAutoClick.A);
                        l3 l3Var3 = (l3) activityAutoClick.D.t(i10);
                        wa.u uVar5 = wa.t.f17728a;
                        l3Var3.f18271a = uVar5.f17732b0 ? R.drawable.tp_check1 : R.drawable.tp_check2;
                        activityAutoClick.D.D(i10, l3Var3);
                        if (uVar5.f17732b0) {
                            new z6(activityAutoClick, activityAutoClick.A, "如果您的系统每次获取日志，都会弹出 允许xxx访问所有设备日志吗？这个的窗口的话，那么勾选这个功能就会自动帮您点击【允许访问一次】", "").show();
                            break;
                        }
                    } else {
                        a0.u("低于Android 13的系统无需此功能");
                        break;
                    }
                }
                break;
            case 13:
                ActivityAutoClickUsbSet activityAutoClickUsbSet = (ActivityAutoClickUsbSet) obj;
                ((n3) activityAutoClickUsbSet.C.t(i10)).f18289d = !r2.f18289d;
                activityAutoClickUsbSet.C.e(i10);
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(",");
                for (n3 n3Var : activityAutoClickUsbSet.C.v()) {
                    if (n3Var.f18289d) {
                        stringBuffer.append(n3Var.f18286a);
                        stringBuffer.append(",");
                    }
                }
                if (stringBuffer.length() > 1) {
                    wa.u uVar6 = wa.t.f17728a;
                    String string = stringBuffer.toString();
                    uVar6.getClass();
                    try {
                        uVar6.X = string;
                        uVar6.f17731b.m("AutoClick_USB_OTG_AUTHORIZED_CANCEL", string);
                    } catch (Exception unused4) {
                    }
                    uVar6.i();
                } else {
                    wa.u uVar7 = wa.t.f17728a;
                    uVar7.getClass();
                    try {
                        uVar7.X = "";
                        uVar7.f17731b.m("AutoClick_USB_OTG_AUTHORIZED_CANCEL", "");
                    } catch (Exception unused5) {
                    }
                    uVar7.i();
                }
                ta.m.e(activityAutoClickUsbSet.A);
                break;
            case 14:
                ActivityCleanMemoryWhitelist activityCleanMemoryWhitelist = (ActivityCleanMemoryWhitelist) obj;
                NamePackBoolSelectBean namePackBoolSelectBean = (NamePackBoolSelectBean) activityCleanMemoryWhitelist.E.t(i10);
                namePackBoolSelectBean.isSelected = !namePackBoolSelectBean.isSelected;
                activityCleanMemoryWhitelist.E.e(i10);
                if (namePackBoolSelectBean.isSelected) {
                    wa.u uVar8 = wa.t.f17728a;
                    uVar8.f17756w.add(namePackBoolSelectBean.pack);
                    uVar8.j();
                    break;
                } else {
                    wa.u uVar9 = wa.t.f17728a;
                    uVar9.f17756w.remove(namePackBoolSelectBean.pack);
                    uVar9.j();
                    break;
                }
            case 15:
                int i17 = ActivityDebugLogcat.E;
                ActivityDebugLogcat activityDebugLogcat = (ActivityDebugLogcat) obj;
                activityDebugLogcat.getClass();
                if (i10 == 0) {
                    wa.u uVar10 = wa.t.f17728a;
                    boolean z11 = !uVar10.f17753t;
                    try {
                        uVar10.f17753t = z11;
                        uVar10.f17731b.k("DebugBootStart", Boolean.valueOf(z11));
                    } catch (Exception unused6) {
                    }
                    uVar10.i();
                    ((l3) activityDebugLogcat.D.t(i10)).f18271a = wa.t.f17728a.f17753t ? R.drawable.tp_check1 : R.drawable.tp_check2;
                } else if (i10 == 1) {
                    wa.u uVar11 = wa.t.f17728a;
                    boolean z12 = !uVar11.f17754u;
                    try {
                        uVar11.f17754u = z12;
                        uVar11.f17731b.k("DebugLogcatKeymap", Boolean.valueOf(z12));
                    } catch (Exception unused7) {
                    }
                    uVar11.i();
                    ((l3) activityDebugLogcat.D.t(i10)).f18271a = wa.t.f17728a.f17754u ? R.drawable.tp_check1 : R.drawable.tp_check2;
                } else if (i10 == 2) {
                    wa.u uVar12 = wa.t.f17728a;
                    boolean z13 = !uVar12.f17755v;
                    try {
                        uVar12.f17755v = z13;
                        uVar12.f17731b.k("DebugLogcatAdb", Boolean.valueOf(z13));
                    } catch (Exception unused8) {
                    }
                    uVar12.i();
                    ((l3) activityDebugLogcat.D.t(i10)).f18271a = wa.t.f17728a.f17755v ? R.drawable.tp_check1 : R.drawable.tp_check2;
                }
                activityDebugLogcat.D.e(i10);
                break;
            case 16:
            case 18:
            case 23:
            case 25:
            case 27:
            default:
                ActivityOuShangStatusBar activityOuShangStatusBar = (ActivityOuShangStatusBar) obj;
                p2 p2Var = (p2) activityOuShangStatusBar.D.t(i10);
                if (p2Var != null) {
                    boolean z14 = p2Var.f15877c;
                    if (z14) {
                        p2Var.f15877c = !z14;
                        activityOuShangStatusBar.D.e(i10);
                        b0.f5652a.g("am broadcast -a com.chinatsp.systemui.ACTION_APP_INFO --es packageName '" + p2Var.f15876b + "' --ei appCentered 1", null);
                        break;
                    } else {
                        new ja(activityOuShangStatusBar, activityOuShangStatusBar, view, Arrays.asList("全屏", "全屏(有车标)"), new v1(activityOuShangStatusBar, p2Var, i10, 10)).show();
                        break;
                    }
                }
                break;
            case 17:
                int i18 = ActivityFloatButtonSet.E;
                x9.w0 w0Var = (x9.w0) obj;
                ((StrIntBoolBean) w0Var.t(i10)).boolValue = !((StrIntBoolBean) w0Var.t(i10)).boolValue;
                w0Var.e(i10);
                break;
            case 19:
                int i19 = ActivityInputMethod.C;
                ActivityInputMethod activityInputMethod = (ActivityInputMethod) obj;
                activityInputMethod.getClass();
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2 && (inputMethodManager = (InputMethodManager) activityInputMethod.A.getSystemService("input_method")) != null) {
                            inputMethodManager.showInputMethodPicker();
                            break;
                        }
                    } else {
                        activityInputMethod.A.startActivity(new Intent("android.settings.INPUT_METHOD_SETTINGS"));
                        break;
                    }
                } else {
                    activityInputMethod.finish();
                    break;
                }
                break;
            case 20:
                int i20 = ActivityJiliE02.E;
                ActivityJiliE02 activityJiliE02 = (ActivityJiliE02) obj;
                activityJiliE02.getClass();
                if (i10 == 0) {
                    com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                    boolean z15 = !wVar.K;
                    wVar.K = z15;
                    try {
                        wVar.f4123i.k("Jili_open_lifted_install", Boolean.valueOf(z15));
                    } catch (Exception unused9) {
                    }
                    wVar.m();
                    ((l3) activityJiliE02.D.t(i10)).f18271a = com.yunpan.appmanage.util.v.f4106a.K ? R.drawable.tp_check1 : R.drawable.tp_check2;
                    activityJiliE02.D.e(i10);
                    break;
                } else if (i10 == 1) {
                    com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                    boolean z16 = !wVar2.L;
                    wVar2.L = z16;
                    try {
                        wVar2.f4123i.k("Jili_close_recovery_install", Boolean.valueOf(z16));
                    } catch (Exception unused10) {
                    }
                    wVar2.m();
                    ((l3) activityJiliE02.D.t(i10)).f18271a = com.yunpan.appmanage.util.v.f4106a.L ? R.drawable.tp_check1 : R.drawable.tp_check2;
                    activityJiliE02.D.e(i10);
                    break;
                } else if (i10 == 2) {
                    AppBean appBeanK = android.support.v4.media.session.a.k("com.ecarx.appstore");
                    if (appBeanK == null) {
                        a0.u("不存在此应用");
                        break;
                    } else {
                        if (appBeanK.isDisable) {
                            str2 = "目前：已禁用";
                        } else if (appBeanK.isHide) {
                            str2 = "目前：已隐藏";
                        } else if (appBeanK.isUnInstall) {
                            str2 = "目前：已卸载";
                        }
                        String str3 = str2;
                        new z6(activityJiliE02, activityJiliE02.A, "E02系统如需安装第三方应用，则需要先禁用原车应用市场，并解除安装限制\n一直禁用此应用即可，不需要恢复\n注：不能用adb来安装第三方，否则会出现系统设置缺失功能", str3, str3.isEmpty() ? "禁用应用市场" : "恢复应用市场", "", new kf.d(27, activityJiliE02, appBeanK, objArr3 == true ? 1 : 0)).show();
                        break;
                    }
                } else if (i10 == 3) {
                    try {
                        str = (String) u9.d.r("getprop sys.jsbd.apk_verify").l0().k().get(0);
                    } catch (Exception unused11) {
                        str = "";
                    }
                    if (str.equals("1")) {
                        str2 = "目前状态：可安装";
                    } else if (str.equals("0")) {
                        str2 = "目前状态：限制";
                    }
                    new z6(activityJiliE02, activityJiliE02.A, "E02系统如需安装第三方应用，则需要解除安装限制，并禁用原车应用市场！\n注：不能用adb来安装，否则会出现系统设置缺失功能", str2, "解除安装限制", "恢复安装限制", new s9.a(i13, objArr == true ? 1 : 0)).show();
                    break;
                } else if (i10 == 4) {
                    new z6(activityJiliE02, activityJiliE02.A, "只是临时恢复，重启或安装应用又会缺失", "", "恢复", "", new s5.c(i12)).show();
                    break;
                } else if (i10 == 5) {
                    new z6(activityJiliE02, activityJiliE02.A, "如果用adb命令来安装应用的话，会导致【整车设置】这个app部分功能被隐藏！所以不要用adb命令来安装应用，新版管家已自动检测E02系统并禁用管家的adb安装，默认调用系统安装器来安装应用！", "如果功能缺失，改如何恢复？ 请恢复出厂设置即可！", "明白了", "", new s9.a(i12, objArr2 == true ? 1 : 0)).show();
                    break;
                } else {
                    Toaster.show((CharSequence) "此功能暂未开放");
                    break;
                }
            case 21:
                int i21 = ActivityKeyMapAcc.F;
                ((ActivityKeyMapAcc) obj).x(i10);
                break;
            case 22:
                ActivityKeyMapEvent activityKeyMapEvent = (ActivityKeyMapEvent) obj;
                if (((z7.s) activityKeyMapEvent.D.t(i10)).q("event").o("type").e() == 401) {
                    activityKeyMapEvent.y(i10);
                    break;
                } else {
                    activityKeyMapEvent.x(i10);
                    break;
                }
            case 24:
                int i22 = ActivityKeyMapNissan.F;
                ((ActivityKeyMapNissan) obj).x(i10);
                break;
            case 26:
                int i23 = ActivityNezha.F;
                ActivityNezha activityNezha = (ActivityNezha) obj;
                activityNezha.getClass();
                if (i10 == 0) {
                    if (g0.f5682a.f()) {
                        a0.v("系统本身已root，无需多此一举", false);
                        break;
                    } else {
                        b0.f5652a.getClass();
                        if (w0.P()) {
                            a0.v("本身已连接adb，无需多此一举", false);
                            break;
                        } else {
                            com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
                            String strTrim = wVar3.l.trim();
                            if (strTrim.isEmpty()) {
                                a0.t("请先设置adb shell密码");
                                break;
                            } else {
                                if (strTrim.startsWith("auth ")) {
                                    if (!strTrim.startsWith("#*")) {
                                        a0.t("请正确设置adb shell密码");
                                        break;
                                    } else {
                                        String strConcat = "auth ".concat(strTrim);
                                        wVar3.l = strConcat;
                                        try {
                                            wVar3.f4123i.m("AdbShellPassword", strConcat);
                                        } catch (Exception unused12) {
                                        }
                                        wVar3.m();
                                    }
                                }
                                new mc.c(i14, new v0(22)).d(rc.f.f13757b).a(fc.b.a()).b(new a4(activityNezha, objArr5 == true ? 1 : 0));
                                break;
                            }
                        }
                    }
                } else if (i10 == 1) {
                    if (g0.f5682a.f()) {
                        Toaster.showLong((CharSequence) "您是root用户，禁止使用此功能");
                        break;
                    } else {
                        b0.f5652a.getClass();
                        if (w0.P()) {
                            new mc.c(objArr4 == true ? 1 : 0, new v0(i11)).d(rc.f.f13757b).a(fc.b.a()).b(new a4(activityNezha, i15));
                            break;
                        } else {
                            Toaster.show((CharSequence) "请先连接adb");
                            break;
                        }
                    }
                } else if (i10 == 2) {
                    b0.f5652a.getClass();
                    if (w0.P()) {
                        activityNezha.w(ActivityNezhaWallpaper.class);
                        break;
                    } else {
                        a0.w("请先连接adb");
                        break;
                    }
                } else if (i10 == 3) {
                    Toaster.show((CharSequence) "此功能暂未完成");
                    break;
                } else if (i10 == 4) {
                    activityNezha.w(ActivityNezhaWallpaperL.class);
                    break;
                } else if (i10 == 5) {
                    activityNezha.w(ActivityNezhaWallpaperX.class);
                    break;
                } else if (i10 == 6) {
                    activityNezha.x(true);
                    break;
                } else if (i10 == 7) {
                    activityNezha.x(false);
                    break;
                } else if (i10 == 8) {
                    com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
                    if (wVar4.U.isEmpty()) {
                        if (p000if.a.b0(activityNezha.A)) {
                            new o1(activityNezha, activityNezha, new ha.o(i10, i11, activityNezha)).show();
                            break;
                        } else {
                            a0.u("请先连接adb");
                            break;
                        }
                    } else {
                        wVar4.U = "";
                        try {
                            wVar4.f4123i.m("Nezha_VIN", "");
                        } catch (Exception unused13) {
                        }
                        wVar4.m();
                        ((l3) activityNezha.D.t(i10)).f18271a = R.drawable.tp_check2;
                        activityNezha.D.e(i10);
                        break;
                    }
                } else {
                    Toaster.show((CharSequence) "此功能暂未开放");
                    break;
                }
            case 28:
                int i24 = ActivityOuShang.E;
                ActivityOuShang activityOuShang = (ActivityOuShang) obj;
                activityOuShang.getClass();
                if (i10 == 0) {
                    b0.f5652a.getClass();
                    if (w0.P()) {
                        activityOuShang.w(ActivityOuShangStatusBar.class);
                        break;
                    } else {
                        Toaster.show((CharSequence) "请先连接adb");
                        break;
                    }
                } else if (i10 == 1) {
                    b0.f5652a.getClass();
                    if (w0.P()) {
                        new z6(activityOuShang, activityOuShang, "提不提权都可以设置全屏", "但是提权后 可看到哪些应用已经开了全屏", "好的", "", new i1(15, activityOuShang)).show();
                        break;
                    } else {
                        Toaster.show((CharSequence) "请先连接adb");
                        break;
                    }
                } else if (i10 == 2) {
                    b0.f5652a.getClass();
                    if (w0.P()) {
                        activityOuShang.w(ActivityOuShangWhitelist.class);
                        break;
                    } else {
                        Toaster.show((CharSequence) "请先连接adb");
                        break;
                    }
                } else if (i10 == 3) {
                    com.yunpan.appmanage.util.w wVar5 = com.yunpan.appmanage.util.v.f4106a;
                    boolean z17 = !wVar5.E;
                    wVar5.E = z17;
                    try {
                        wVar5.f4123i.k("OuShangAutoAddWhitelist", Boolean.valueOf(z17));
                    } catch (Exception unused14) {
                    }
                    wVar5.m();
                    activityOuShang.D.D(i10, new l3(com.yunpan.appmanage.util.v.f4106a.E ? R.drawable.tp_check1 : R.drawable.tp_check2, "安装应用时自动添加白名单"));
                    break;
                } else {
                    Toaster.show((CharSequence) "此功能暂未开放");
                    break;
                }
        }
    }
}
