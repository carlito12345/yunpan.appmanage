package com.yunpan.appmanage.ui;

import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.os.Build;
import android.os.SystemClock;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.carsdk.f;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.util.a0;
import da.g;
import fa.g0;
import ha.q4;
import ha.u9;
import java.io.File;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import mc.b;
import oa.d;
import q4.a;
import qf.c;
import ua.g1;
import ua.w6;
import v9.i;
import x9.k3;
import x9.w3;

/* loaded from: classes.dex */
public class ActivityStudy extends g {
    public static final /* synthetic */ int I = 0;
    public TvRecyclerView C;
    public k3 D;
    public u9 E;
    public i F;
    public d G;
    public final f H = new f(6, this);

    public static void x(ActivityStudy activityStudy, String str, int i10, b bVar) throws Exception {
        activityStudy.getClass();
        try {
            String str2 = g0.f5682a.d() + "/Download";
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(i10 == 2 ? ".zip" : ".txt");
            File file = new File(str2, sb2.toString());
            try {
                if (a0.f(file)) {
                    file.delete();
                }
                file.getParentFile().mkdir();
            } catch (Exception unused) {
            }
            StringBuilder sb3 = new StringBuilder();
            HashSet<String> hashSetB = null;
            if (i10 == 0) {
                HashSet hashSet = new HashSet();
                hashSet.add(activityStudy.A.getPackageName());
                hashSet.add("com.google.android.leanback.ime");
                hashSet.add("android.ext.services");
                String strU = c.u(activityStudy.A);
                if (strU == null || strU.isEmpty()) {
                    Iterator it = c.r(activityStudy.A).iterator();
                    while (it.hasNext()) {
                        DesktopBean desktopBean = (DesktopBean) it.next();
                        if (desktopBean.isSystemApp) {
                            hashSet.add(desktopBean.packageName);
                        }
                    }
                } else {
                    hashSet.add(strU);
                }
                try {
                    hashSetB = q4.d();
                } catch (Exception unused2) {
                }
                if (hashSetB == null) {
                    try {
                        hashSetB = q4.b(activityStudy.A);
                    } catch (Exception unused3) {
                    }
                }
                if (hashSetB == null) {
                    try {
                        hashSetB = q4.c();
                    } catch (Exception unused4) {
                    }
                }
                if (hashSetB != null) {
                    for (String str3 : hashSetB) {
                        AppBean appBean = MyDb.get().getAppDao().get_appBean(str3);
                        if (appBean != null && (!appBean.isSystem || (!str3.startsWith("android.ext.") && !str3.startsWith("com.android.")))) {
                            if (hashSet.contains(str3)) {
                                sb3.append("kill ");
                                sb3.append(str3);
                                sb3.append(SignParameters.NEW_LINE);
                            } else {
                                sb3.append("stop ");
                                sb3.append(str3);
                                sb3.append(SignParameters.NEW_LINE);
                            }
                        }
                    }
                }
            } else if (i10 == 1) {
                for (AppBean appBean2 : MyDb.get().getAppDao().get_app_system()) {
                    sb3.append(appBean2.name);
                    sb3.append("----");
                    sb3.append(appBean2.pack);
                    sb3.append("----");
                    sb3.append(appBean2.apkPath);
                    sb3.append(SignParameters.NEW_LINE);
                }
            } else {
                if (i10 == 2) {
                    ArrayList arrayList = new ArrayList();
                    List<AppBean> list = MyDb.get().getAppDao().get_app_system();
                    HashSet hashSet2 = new HashSet();
                    long jP = 0;
                    for (AppBean appBean3 : list) {
                        if (!appBean3.apkPath.isEmpty() && a0.f(new File(appBean3.apkPath))) {
                            jP += a0.p(new File(appBean3.apkPath));
                            w3 w3Var = new w3(appBean3.apkPath);
                            w3Var.f18377o = appBean3.pack + ".apk";
                            if (!hashSet2.contains(appBean3.pack)) {
                                hashSet2.add(appBean3.pack);
                                arrayList.add(w3Var);
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        throw new Exception("没有找到系统app");
                    }
                    if (jP >= a0.j(g0.f5682a.d())) {
                        throw new Exception("内部存储空间不足，请清理空间后重试");
                    }
                    PrintStream printStream = System.out;
                    arrayList.size();
                    printStream.getClass();
                    try {
                        d.b.m(arrayList, file, null, bVar);
                        MyDb.get().lambda$addFile_thread$1(file.getAbsolutePath());
                        a0.w("打包完成：在Download目录下");
                        bVar.b();
                        return;
                    } catch (Exception e7) {
                        try {
                            file.delete();
                        } catch (Exception unused5) {
                        }
                        throw e7;
                    }
                }
                if (i10 == 3) {
                    if (Build.VERSION.SDK_INT < 23) {
                        throw new Exception("仅适合android6.0以上");
                    }
                    UsageStatsManager usageStatsManager = (UsageStatsManager) activityStudy.getSystemService("usagestats");
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
                    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
                    String str4 = "";
                    UsageEvents usageEventsQueryEvents = usageStatsManager.queryEvents(System.currentTimeMillis() - SystemClock.elapsedRealtime(), jCurrentTimeMillis + 7200000);
                    while (usageEventsQueryEvents.hasNextEvent()) {
                        UsageEvents.Event event = new UsageEvents.Event();
                        usageEventsQueryEvents.getNextEvent(event);
                        String str5 = simpleDateFormat2.format(new Date(event.getTimeStamp()));
                        if (!str5.equals(str4)) {
                            sb3.append(str5);
                            sb3.append(SignParameters.NEW_LINE);
                            str4 = str5;
                        }
                        sb3.append(simpleDateFormat.format(new Date(event.getTimeStamp())));
                        sb3.append("    ");
                        sb3.append(event.getPackageName());
                        sb3.append("    ");
                        sb3.append(event.getClassName());
                        sb3.append("    ");
                        sb3.append(ActivityAppDetailHistoryLog.A(event.getEventType()));
                        sb3.append(SignParameters.NEW_LINE);
                    }
                }
            }
            if (a.M(file, sb3.toString())) {
                MyDb.get().lambda$addFile_thread$1(file.getAbsolutePath());
                a0.w("导出成功：在Download目录下");
            } else {
                a0.u("写入失败");
            }
            bVar.b();
        } catch (Exception e10) {
            a0.u(String.valueOf(e10.getMessage()));
            bVar.d(e10);
        }
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        if (this.G != null) {
            try {
                unbindService(this.H);
                this.F.close();
                this.F = null;
                this.G = null;
            } catch (Exception unused) {
            }
        }
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_laboratory;
    }

    @Override // da.g
    public final void u() {
        this.A.getContentResolver();
        ((TextView) findViewById(R.id.v_title)).setText("私人技术研究区，请勿点任何功能，后果自负");
        this.E = new u9(this, this.A);
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 29));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        k3 k3Var = new k3();
        this.D = k3Var;
        g.b.p(R.drawable.tp_wifi2, "查看设备所有IP", k3Var);
        g.b.p(R.drawable.tp_usb1, "获取USB设备ID", this.D);
        g.b.p(R.drawable.tp_root6, "自动化是否已运行", this.D);
        g.b.p(R.drawable.tp_root6, "adb(id=2000)提权为系统(id=1000)", this.D);
        g.b.p(R.drawable.tp_root6, "获取快捷方式", this.D);
        g.b.p(R.drawable.tp_root6, "搜索端口", this.D);
        g.b.p(R.drawable.tp_root6, "jni服务是否正常", this.D);
        g.b.p(R.drawable.tp_root6, "jni服务激活测试", this.D);
        g.b.p(R.drawable.tp_root6, "测试adb服务", this.D);
        g.b.p(R.drawable.tp_root6, "测试jni服务", this.D);
        g.b.p(R.drawable.tp_root6, "电视机一键禁用系统广告app", this.D);
        g.b.p(R.drawable.tp_root6, "关闭jni服务", this.D);
        g.b.p(R.drawable.tp_root6, "检测ops授权是否正常_adb", this.D);
        g.b.p(R.drawable.tp_root6, "检测ops授权是否正常_jni", this.D);
        g.b.p(R.drawable.tp_root6, "检测pm授权是否正常_adb", this.D);
        g.b.p(R.drawable.tp_root6, "检测pm授权是否正常_jni", this.D);
        g.b.p(R.drawable.tp_root6, "埃安YP-测试sdk", this.D);
        g.b.p(R.drawable.tp_root6, "埃安Y-测试sdk", this.D);
        g.b.p(R.drawable.tp_root6, "捷途-测试sdk1", this.D);
        g.b.p(R.drawable.tp_root6, "捷途-测试sdk2", this.D);
        g.b.p(R.drawable.tp_root6, "Flyme1.2 sdk测试", this.D);
        g.b.p(R.drawable.tp_root6, "Flyme1.8 sdk测试", this.D);
        g.b.p(R.drawable.tp_root6, "Flyme系统检测所有属性", this.D);
        g.b.p(R.drawable.tp_root6, "查看屏幕大小", this.D);
        g.b.p(R.drawable.tp_root6, "测试逸动声音", this.D);
        g.b.p(R.drawable.tp_root6, "测试临时获取root(magica)", this.D);
        g.b.p(R.drawable.tp_root6, "adb特殊安装测试", this.D);
        g.b.p(R.drawable.tp_root6, "捷途x70L(德赛西威)-sdk", this.D);
        g.b.p(R.drawable.tp_root6, "科大讯飞-测试", this.D);
        g.b.p(R.drawable.tp_root6, "测试百度地图切换主题", this.D);
        g.b.p(R.drawable.tp_root6, "adb特殊安装测试jni", this.D);
        g.b.p(R.drawable.tp_root6, "测试获取目录是否正常", this.D);
        g.b.p(R.drawable.tp_root6, "复制激活jni服务的命令", this.D);
        g.b.p(R.drawable.tp_root6, "获取本机热点密码(仅个别)", this.D);
        g.b.p(R.drawable.tp_root6, "导出(所需资料)", this.D);
        g.b.p(R.drawable.tp_root6, "android4.x 测试", this.D);
        g.b.p(R.drawable.tp_root6, "测试", this.D);
        this.C.setAdapter(this.D);
        this.D.f2881e = new w6(this, 10);
    }
}
