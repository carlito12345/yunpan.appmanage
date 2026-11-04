package ha;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.BitmapFactory;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Surface;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.httpserver.RemoteServer;
import com.yunpan.appmanage.service.AccRestartService;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.service.BootReceiver;
import com.yunpan.appmanage.service.HttpService;
import com.yunpan.appmanage.service.StartService;
import com.yunpan.appmanage.ui.ActivityAutomation;
import com.yunpan.appmanage.ui.ActivityBootStartTask;
import com.yunpan.appmanage.ui.ActivityInstaller;
import com.yunpan.appmanage.ui.ActivityTrans;
import io.github.muntashirakon.adb.AdbConnection;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final /* synthetic */ class db implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6913a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6914b;

    public /* synthetic */ db(int i10, Object obj) {
        this.f6913a = i10;
        this.f6914b = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x01fe A[Catch: all -> 0x01c3, TryCatch #0 {, blocks: (B:41:0x01b8, B:43:0x01bc, B:50:0x01c8, B:54:0x01cf, B:60:0x01db, B:62:0x01df, B:64:0x01e5, B:66:0x01ef, B:68:0x01f9, B:70:0x020a, B:69:0x01fe, B:71:0x020c, B:73:0x021f, B:75:0x0227), top: B:356:0x01b8 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws IllegalAccessException, InterruptedException, IOException, IllegalArgumentException, InvocationTargetException {
        String str;
        ActivityManager activityManager;
        String strC0;
        TelephonyManager telephonyManager;
        switch (this.f6913a) {
            case 0:
                int i10 = 0;
                while (true) {
                    fb fbVar = (fb) this.f6914b;
                    if (i10 >= fbVar.f7042j.b()) {
                        fbVar.f7047q.sendEmptyMessage(0);
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    String str2 = fbVar.f7040h;
                    sb2.append(str2);
                    sb2.append("中");
                    fbVar.b(i10, sb2.toString());
                    x9.m4 m4Var = (x9.m4) fbVar.f7042j.t(i10);
                    String str3 = m4Var.f18276a.f18287b;
                    boolean zEquals = str2.equals("卸载");
                    x9.n3 n3Var = m4Var.f18276a;
                    if (zEquals) {
                        fa.b0.f5652a.getClass();
                        if (a2.w0.P()) {
                            try {
                                a2.w0.Z(str3, false, false);
                                fbVar.b(i10, "卸载成功");
                            } catch (Exception e7) {
                                fbVar.b(i10, e7.getMessage());
                            }
                        } else if (n3Var.f18288c) {
                            fbVar.b(i10, "无权限");
                        } else {
                            try {
                                Intent intent = new Intent("android.intent.action.UNINSTALL_PACKAGE");
                                intent.setData(Uri.parse("package:" + n3Var.f18287b));
                                fbVar.f6724a.startActivity(intent);
                                fbVar.b(i10, "自行确认");
                                Thread.sleep(2000L);
                            } catch (Exception unused) {
                            }
                        }
                    } else if (str2.equals("重置")) {
                        fa.b0.f5652a.getClass();
                        fbVar.b(i10, a2.w0.U(str3));
                    } else if (str2.equals("提取")) {
                        String str4 = fbVar.f7044m;
                        if (str4.isEmpty()) {
                            Toaster.show((CharSequence) "找不到可用的的存储设备(sd卡、U盘)");
                            return;
                        }
                        AppBean appBean = MyDb.get().getAppDao().get_appBean(n3Var.f18287b);
                        File file = new File(appBean.apkPath);
                        if (file.exists()) {
                            String strL = g.b.l(appBean.name, ".apk", d0.f.b(str4, "/"));
                            File file2 = new File(strL);
                            if (file2.exists() && !file2.delete()) {
                                strL = g.b.l(appBean.name, "(1).apk", d0.f.b(str4, "/"));
                            }
                            try {
                                android.support.v4.media.session.b.c(file, new File(strL));
                                MyDb.get().lambda$addFile_thread$1(strL);
                                str = "提取成功";
                            } catch (Exception unused2) {
                                str = "提取失败";
                            }
                        } else {
                            str = "文件不存在";
                        }
                        fbVar.b(i10, str);
                    } else if (str2.equals("缓存")) {
                        fa.b0.f5652a.getClass();
                        if (a2.w0.f(str3).equals("清理成功")) {
                            fbVar.b(i10, "清理完成");
                        } else {
                            fbVar.b(i10, "权限不足，只清理部分");
                        }
                    }
                    if (fbVar.l) {
                        return;
                    } else {
                        i10++;
                    }
                }
                break;
            case 1:
                yb ybVar = (yb) this.f6914b;
                if (ybVar.f8103g.getChildAt(0) != null) {
                    ybVar.f8103g.getChildAt(0).requestFocus();
                    return;
                }
                return;
            case 2:
                ie ieVar = (ie) this.f6914b;
                if (ieVar.f7223h.getChildAt(0) != null) {
                    ieVar.f7223h.getChildAt(0).requestFocus();
                    return;
                }
                return;
            case 3:
                dg.a aVar = (dg.a) this.f6914b;
                boolean z = aVar.f4637a;
                vb.g gVar = (vb.g) aVar.f4642f;
                if (z) {
                    gVar.run();
                    return;
                }
                ReentrantLock reentrantLock = (ReentrantLock) aVar.f4640d;
                reentrantLock.lock();
                ArrayList arrayList = (ArrayList) aVar.f4639c;
                try {
                    if (arrayList.isEmpty()) {
                        gVar.run();
                    } else {
                        ((ArrayList) aVar.f4638b).addAll(arrayList);
                        arrayList.clear();
                        gVar.run();
                    }
                    return;
                } finally {
                    reentrantLock.unlock();
                }
            case 4:
                ((fa.j0) this.f6914b).a();
                return;
            case 5:
                ((fa.k0) this.f6914b).a();
                return;
            case 6:
                hi.e eVar = (hi.e) this.f6914b;
                HashSet hashSet = eVar.f8224e;
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(eVar.f8225f);
                }
                hashSet.clear();
                hi.f.a(eVar);
                return;
            case 7:
                ((AdbConnection) this.f6914b).lambda$createConnectionThread$0();
                return;
            case 8:
                k2.k kVar = (k2.k) this.f6914b;
                Surface surface = kVar.f10075h;
                if (surface != null) {
                    Iterator it2 = kVar.f10068a.iterator();
                    while (it2.hasNext()) {
                        ((y1.t) it2.next()).f18808a.b0(null);
                    }
                }
                SurfaceTexture surfaceTexture = kVar.f10074g;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                }
                if (surface != null) {
                    surface.release();
                }
                kVar.f10074g = null;
                kVar.f10075h = null;
                return;
            case 9:
                kf.f fVar = (kf.f) this.f6914b;
                fVar.f10290c = false;
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) fVar.f10292e;
                f1.d dVar = sideSheetBehavior.f3630i;
                if (dVar != null && dVar.f()) {
                    fVar.d(fVar.f10289b);
                    return;
                } else {
                    if (sideSheetBehavior.f3629h == 2) {
                        sideSheetBehavior.r(fVar.f10289b);
                        return;
                    }
                    return;
                }
            case 10:
                ((q7.c) this.f6914b).t(true);
                return;
            case 11:
                q7.l lVar = (q7.l) this.f6914b;
                boolean zIsPopupShowing = lVar.f13078h.isPopupShowing();
                lVar.t(zIsPopupShowing);
                lVar.f13082m = zIsPopupShowing;
                return;
            case 12:
                ((TextInputLayout) this.f6914b).f3678d.requestLayout();
                return;
            case 13:
                androidx.room.i iVar = (androidx.room.i) this.f6914b;
                ((Context) iVar.f2405b).unregisterReceiver((s1.a) iVar.f2406c);
                return;
            case 14:
                s1.a aVar2 = (s1.a) this.f6914b;
                if (aVar2.f13875c.f2404a) {
                    aVar2.f13873a.f18808a.e0(3, false);
                    return;
                }
                return;
            case 15:
                int i11 = AccRestartService.f3925c;
                AccRestartService accRestartService = (AccRestartService) this.f6914b;
                accRestartService.getClass();
                try {
                    try {
                        wa.u uVar = wa.t.f17728a;
                        if (uVar.f17753t) {
                            wa.w.c("自动化重启任务开始");
                        }
                        ta.i.a();
                        if (uVar.f17753t) {
                            wa.w.c("自动化重启任务完成");
                        }
                    } catch (Exception e10) {
                        if (wa.t.f17728a.f17753t) {
                            wa.w.c("自动化重启任务异常: " + e10.getMessage());
                        }
                    }
                    accRestartService.f3926a = true;
                    return;
                } catch (Throwable th2) {
                    accRestartService.f3926a = true;
                    throw th2;
                }
            case 16:
                AccService accService = ((ta.e) this.f6914b).f14863b;
                try {
                    com.yunpan.appmanage.carsdk.i iVar2 = accService.f3933f;
                    if (iVar2.f3836b && iVar2.f3835a != null) {
                        return;
                    }
                    if (iVar2 == null) {
                        accService.f3933f = new com.yunpan.appmanage.carsdk.i();
                    }
                    accService.f3933f.a(accService);
                    return;
                } catch (Exception unused3) {
                    return;
                }
            case 17:
                int i12 = HttpService.f3956b;
                HttpService httpService = (HttpService) this.f6914b;
                httpService.getClass();
                int i13 = 9898;
                do {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                    RemoteServer remoteServer = new RemoteServer(i13, kVar2.f4035a);
                    httpService.f3957a = remoteServer;
                    try {
                        remoteServer.start(16000);
                        kVar2.f4054j0 = i13;
                        kVar2.g();
                        kVar2.o();
                        return;
                    } catch (IOException e11) {
                        e11.getMessage();
                        i13++;
                        RemoteServer remoteServer2 = httpService.f3957a;
                        if (remoteServer2 != null) {
                            remoteServer2.stop();
                            httpService.f3957a = null;
                        }
                    }
                } while (i13 < 9910);
                return;
            case 18:
                g0.e eVar2 = (g0.e) this.f6914b;
                eVar2.getClass();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader((InputStream) eVar2.f5943e, Charset.forName(HTTP.UTF_8)));
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        boolean z4 = false;
                        while (true) {
                            int i14 = 0;
                            while (!eVar2.f5939a && !((fg.b) eVar2.f5945g).isInterrupted() && ((fg.b) eVar2.f5945g).isAlive()) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    i14++;
                                    if (i14 >= 2) {
                                        throw new Exception("接收消息异常");
                                    }
                                    Thread.sleep(100L);
                                } else {
                                    if (!z4) {
                                        if (line.contains("beginning of system")) {
                                            z4 = true;
                                        } else if (System.currentTimeMillis() - jCurrentTimeMillis >= 1000) {
                                            z4 = true;
                                        }
                                    }
                                    if (!line.isEmpty()) {
                                        ArrayBlockingQueue arrayBlockingQueue = (ArrayBlockingQueue) eVar2.f5946h;
                                        if (!arrayBlockingQueue.offer(line)) {
                                            arrayBlockingQueue.offer(line);
                                        }
                                    }
                                }
                            }
                        }
                        bufferedReader.close();
                        return;
                    } catch (Throwable th3) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th4) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                            } catch (Exception unused4) {
                            }
                        }
                        throw th3;
                    }
                } catch (Exception e12) {
                    if (eVar2.f5939a) {
                        return;
                    }
                    e12.printStackTrace();
                    com.yunpan.appmanage.util.a0.s("监听日志出错：" + e12.getMessage(), false);
                    eVar2.f5940b = true;
                    return;
                }
            case 19:
                int i15 = StartService.f3958i;
                StartService startService = (StartService) this.f6914b;
                startService.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                wa.u uVar2 = wa.t.f17728a;
                if (!uVar2.f17734c0) {
                    if (jElapsedRealtime > 80000 && (activityManager = (ActivityManager) startService.getSystemService("activity")) != null) {
                        String packageName = startService.getPackageName();
                        int iMyPid = Process.myPid();
                        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                        if (runningAppProcesses != null) {
                            Iterator<ActivityManager.RunningAppProcessInfo> it3 = runningAppProcesses.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    ActivityManager.RunningAppProcessInfo next = it3.next();
                                    if (packageName.equals(next.processName) && next.pid != iMyPid) {
                                        if (u9.d.r("dumpsys window | grep '" + startService.getPackageName() + ".ui.ActivityHome'").l0().q()) {
                                            if (wa.t.f17728a.f17753t) {
                                                wa.w.c("放弃任务：主进程正在运行");
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (jElapsedRealtime > 220000) {
                        PowerManager powerManager = (PowerManager) startService.getSystemService("power");
                        if (!(powerManager != null ? Build.VERSION.SDK_INT >= 20 ? powerManager.isInteractive() : powerManager.isScreenOn() : false)) {
                            if (wa.t.f17728a.f17753t) {
                                wa.w.c("放弃任务：屏幕未点亮，疑是系统更新或手机联动");
                                return;
                            }
                            return;
                        }
                    }
                    if (jElapsedRealtime > 100000) {
                        try {
                            if (System.currentTimeMillis() - startService.getPackageManager().getPackageInfo(startService.getPackageName(), 1).lastUpdateTime < 20000) {
                                wa.u uVar3 = wa.t.f17728a;
                                uVar3.g(System.currentTimeMillis() + PopupConst.DURATION_POPUP);
                                if (uVar3.f17753t) {
                                    wa.w.c("放弃任务：刚才在更新应用");
                                    return;
                                }
                                return;
                            }
                        } catch (Exception unused5) {
                        }
                    }
                } else if (jElapsedRealtime > 100000) {
                    if (uVar2.f17753t) {
                        wa.w.c("放弃任务：开机时间超过100秒");
                        return;
                    }
                    return;
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                wa.u uVar4 = wa.t.f17728a;
                if (jCurrentTimeMillis2 - uVar4.l >= PopupConst.DURATION_POPUP_RADIO) {
                    BootReceiver.a(startService, "通知权");
                    return;
                } else {
                    if (uVar4.f17753t) {
                        wa.w.c("放弃任务：通知服务无故重建");
                        return;
                    }
                    return;
                }
            case 20:
                ((vb.v) this.f6914b).c();
                return;
            case 21:
                ((CodeEditor) this.f6914b).b0();
                return;
            case 22:
                return;
            case 23:
                u1.o oVar = (u1.o) this.f6914b;
                i2.e eVar3 = (i2.e) oVar.f15253a.get();
                if (eVar3 != null) {
                    int iB = oVar.f15255c.b();
                    i2.f fVar2 = eVar3.f8437a;
                    synchronized (fVar2) {
                        int i16 = fVar2.f8456n;
                        if (i16 == 0 || fVar2.f8448e) {
                            if (i16 != iB || fVar2.f8457o == null) {
                                fVar2.f8456n = iB;
                                if (iB != 1 && iB != 0 && iB != 8) {
                                    if (fVar2.f8457o == null) {
                                        Context context = fVar2.f8444a;
                                        String str5 = u1.f0.f15206a;
                                        if (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
                                            strC0 = qf.c.c0(Locale.getDefault().getCountry());
                                            fVar2.f8457o = strC0;
                                        } else {
                                            String networkCountryIso = telephonyManager.getNetworkCountryIso();
                                            if (!TextUtils.isEmpty(networkCountryIso)) {
                                                strC0 = qf.c.c0(networkCountryIso);
                                            }
                                            fVar2.f8457o = strC0;
                                        }
                                    }
                                    fVar2.l = fVar2.a(iB);
                                    fVar2.f8447d.getClass();
                                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                                    fVar2.b(fVar2.f8450g > 0 ? (int) (jElapsedRealtime2 - fVar2.f8451h) : 0, fVar2.f8452i, fVar2.l);
                                    fVar2.f8451h = jElapsedRealtime2;
                                    fVar2.f8452i = 0L;
                                    fVar2.f8454k = 0L;
                                    fVar2.f8453j = 0L;
                                    i2.l lVar2 = fVar2.f8449f;
                                    lVar2.f8478a.clear();
                                    lVar2.f8480c = -1;
                                    lVar2.f8481d = 0;
                                    lVar2.f8482e = 0;
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                return;
            case 24:
                a2.w0 w0Var = fa.b0.f5652a;
                String str6 = "am force-stop '" + ((x9.b) this.f6914b).f18197b + "'";
                w0Var.getClass();
                a2.w0.q(2000L, str6);
                return;
            case 25:
                l5.y yVar = (l5.y) this.f6914b;
                yVar.getClass();
                a2.w0 w0Var2 = fa.b0.f5652a;
                String str7 = "am force-stop " + ((ActivityAutomation) ((com.yunpan.appmanage.carsdk.u) yVar.f10629b).f3894b).getPackageName();
                w0Var2.getClass();
                a2.w0.o(2000L, str7);
                return;
            case 26:
                int i17 = ActivityBootStartTask.G;
                String string = Settings.Secure.getString(((ActivityBootStartTask) this.f6914b).getContentResolver(), "enabled_notification_listeners");
                if (string == null || string.equals("null")) {
                    string = "";
                }
                StringBuilder sb3 = new StringBuilder();
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
                if (android.support.v4.media.session.a.D(sb3, kVar3.f4041d, "/", string)) {
                    return;
                }
                StringBuilder sbB = d0.f.b(string, ":");
                sbB.append(kVar3.f4041d);
                sbB.append("/");
                sbB.append(StartService.class.getName());
                String strReplace = sbB.toString().replace("::", "");
                if (strReplace.startsWith(":")) {
                    strReplace = strReplace.substring(1);
                }
                if (strReplace.endsWith(":")) {
                    strReplace = android.support.v4.media.session.a.l(1, 0, strReplace);
                }
                Settings.Secure.putString(kVar3.f4035a.getContentResolver(), "enabled_notification_listeners", strReplace);
                Settings.Secure.putInt(kVar3.f4035a.getContentResolver(), "notification_enabled", 1);
                a2.w0 w0Var3 = fa.b0.f5652a;
                String str8 = "cmd notification allow_listener " + kVar3.f4041d + "/" + StartService.class.getName();
                w0Var3.getClass();
                a2.w0.h(str8);
                return;
            case 27:
                ActivityInstaller activityInstaller = (ActivityInstaller) this.f6914b;
                activityInstaller.I.setVisibility(0);
                try {
                    byte[] bArrE = ((ff.g) activityInstaller.G.A().get(0)).e();
                    activityInstaller.K.setImageBitmap(BitmapFactory.decodeByteArray(bArrE, 0, bArrE.length));
                } catch (Exception unused6) {
                    activityInstaller.K.setImageDrawable(null);
                }
                activityInstaller.L.setText(activityInstaller.H.f5814b);
                activityInstaller.M.setText(activityInstaller.H.f5813a);
                activityInstaller.N.setText(activityInstaller.H.f5816d + "(" + activityInstaller.H.f5817e + ")");
                return;
            case 28:
                int i18 = ActivityTrans.A;
                ((ActivityTrans) this.f6914b).finish();
                return;
            default:
                ua.x7 x7Var = (ua.x7) this.f6914b;
                x7Var.getClass();
                try {
                    Thread.sleep(666L);
                    Intent intentL = p000if.a.L("com.android.settings");
                    intentL.addFlags(4096);
                    Bundle bundle = ActivityOptions.makeBasic().toBundle();
                    bundle.putInt("android.activity.windowingMode", 5);
                    bundle.putInt("android:activity.splitScreenCreateMode", 0);
                    x7Var.f4529e.startActivities(new Intent[]{intentL}, bundle);
                    return;
                } catch (Exception e13) {
                    g.b.s(e13, new StringBuilder(""));
                    return;
                }
        }
    }
}
