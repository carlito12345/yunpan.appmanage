package com.yunpan.appmanage.ui;

import a2.k;
import a2.s0;
import a2.w0;
import a9.o;
import android.app.ActivityManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.TextView;
import androidx.room.s;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.carsdk.j0;
import com.yunpan.appmanage.carsdk.k0;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.httpserver.RemoteServer;
import com.yunpan.appmanage.service.BootReceiver;
import com.yunpan.appmanage.service.HttpService;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.view.NoScrollViewPager;
import da.g;
import da.h;
import fa.b0;
import fa.n0;
import fa.o0;
import ha.ad;
import ha.fc;
import ha.md;
import ha.o1;
import hi.d;
import io.github.muntashirakon.adb.android.AdbMdns;
import j$.util.Collection;
import j$.util.Iterator$EL;
import ja.a;
import ja.c;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kh.e;
import net.sf.sevenzipjbinding.SevenZip;
import org.greenrobot.eventbus.ThreadMode;
import qh.g0;
import tb.b;
import ua.a2;
import ua.b2;
import ua.c2;
import ua.d2;
import ua.g1;
import ua.i9;
import ua.q8;
import ua.v0;
import ua.x7;
import wa.t;
import wa.w;
import x9.a6;
import x9.g3;
import x9.h3;
import x9.k2;
import x9.w3;

/* loaded from: classes.dex */
public class ActivityHome extends g implements View.OnClickListener {
    public static final /* synthetic */ int O = 0;
    public long C;
    public TvRecyclerView D;
    public g3 E;
    public NoScrollViewPager F;
    public k2 G;
    public TextView H;
    public k I;
    public d K;
    public final ExecutorService L = Executors.newFixedThreadPool(1);
    public final u M = new u(this, Looper.getMainLooper(), 18);
    public o1 N;

    public static void D(boolean z) {
        List appTasks;
        try {
            ActivityManager activityManager = (ActivityManager) AppStart.f3772h.getSystemService("activity");
            if (activityManager == null || (appTasks = activityManager.getAppTasks()) == null || appTasks.isEmpty()) {
                return;
            }
            b.d(appTasks.get(0)).setExcludeFromRecents(z);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static void G() {
        int i10 = 9898;
        try {
            do {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = j.f4033a;
                RemoteServer remoteServer = new RemoteServer(i10, kVar.f4035a);
                kVar.E = remoteServer;
                try {
                    remoteServer.start(15000);
                    kVar.f4054j0 = i10;
                    kVar.g();
                    kVar.o();
                } catch (IOException e7) {
                    e7.getMessage();
                    i10++;
                    com.yunpan.appmanage.util.k kVar2 = j.f4033a;
                    RemoteServer remoteServer2 = kVar2.E;
                    if (remoteServer2 != null) {
                        remoteServer2.stop();
                        kVar2.E = null;
                    }
                }
                SevenZip.initSevenZipFromPlatformJAR();
            } while (i10 < 9910);
            SevenZip.initSevenZipFromPlatformJAR();
        } catch (Exception e10) {
            e10.getMessage();
            v.f4106a.v(true);
            v.f4106a.u(true);
        }
    }

    public static void x(ActivityHome activityHome) {
        int i10;
        activityHome.getClass();
        wa.u uVar = t.f17728a;
        if (uVar.f17753t) {
            w.c("主应用：打开");
        }
        if (!uVar.f17743h || (i10 = Build.VERSION.SDK_INT) < 21) {
            return;
        }
        if (uVar.f17753t) {
            w.c("执行：手动启动开机任务");
        }
        try {
            UsageEvents usageEventsQueryEvents = (i10 >= 22 ? (UsageStatsManager) activityHome.getSystemService("usagestats") : (UsageStatsManager) activityHome.getSystemService("usagestats")).queryEvents(System.currentTimeMillis() - 900000, System.currentTimeMillis() + 7200000);
            long timeStamp = 0;
            while (usageEventsQueryEvents.hasNextEvent()) {
                UsageEvents.Event event = new UsageEvents.Event();
                usageEventsQueryEvents.getNextEvent(event);
                if (event.getEventType() == 15) {
                    timeStamp = event.getTimeStamp();
                }
            }
            if (timeStamp != 0 && t.f17728a.f17741g <= timeStamp - PopupConst.DURATION_POPUP) {
                BootReceiver.a(activityHome.A, "主进程");
            }
        } catch (Exception unused) {
        }
    }

    public static void y(ActivityHome activityHome, int i10, String str) {
        activityHome.getClass();
        com.yunpan.appmanage.util.w wVar = v.f4106a;
        if (wVar.f4148w) {
            if (i10 == 0 || i10 == 3) {
                b0.f5652a.getClass();
                if (((!w0.P() || wVar.f4152y) && wVar.f4112c0 != 0) || str.equals(activityHome.A.getPackageName()) || str.equals("com.gj.openfile")) {
                    return;
                }
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (j.f4033a.f4045f) {
                    e.b().f(new a(10, str));
                    return;
                }
                if (activityHome.isFinishing() || activityHome.isDestroyed() || activityHome.getWindow() == null || activityHome.getWindow().getDecorView().getWindowVisibility() != 0) {
                    return;
                }
                o1 o1Var = activityHome.N;
                if (o1Var != null && o1Var.isShowing()) {
                    activityHome.N.dismiss();
                    activityHome.N = null;
                }
                o1 o1Var2 = new o1(activityHome, activityHome, str);
                activityHome.N = o1Var2;
                o1Var2.show();
            }
        }
    }

    public static void z(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (!a0.b(str)) {
            if (str.startsWith("/storage/")) {
                String strP = android.support.v4.media.session.a.p(str, 8, new StringBuilder("/mnt/media_rw"));
                if (a0.b(strP)) {
                    z(strP);
                    return;
                }
                return;
            }
            return;
        }
        int iLastIndexOf = str.lastIndexOf("/");
        if (iLastIndexOf == -1) {
            return;
        }
        String strSubstring = str.substring(iLastIndexOf);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = j.f4033a;
        if (kVar.f4073v.contains(str)) {
            return;
        }
        if (str.startsWith("/storage/")) {
            Iterator it = kVar.f4073v.iterator();
            while (it.hasNext()) {
                if (((String) it.next()).endsWith(strSubstring)) {
                    return;
                }
            }
        }
        j.f4033a.f4073v.add(str);
    }

    public final boolean A(String str) {
        try {
            File file = Environment.getExternalStorageState().contains("mounted") ? new File(Environment.getExternalStorageDirectory(), str) : new File(this.A.getFilesDir().getAbsolutePath(), str);
            if (!a0.f(file) || a0.p(file) <= 81920) {
                return false;
            }
            file.delete();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x01b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void B() throws NoSuchFieldException, NoSuchMethodException, ClassNotFoundException, SecurityException, NumberFormatException {
        char c7;
        String str;
        File directory;
        g gVar = this.A;
        HashSet hashSet = new HashSet();
        try {
            String str2 = System.getenv("SECONDARY_STORAGE");
            if (str2 != null) {
                for (String str3 : str2.split(":")) {
                    if (!str3.isEmpty() && !str3.contains("emulated") && a0.g(str3) && a0.b(str3)) {
                        hashSet.add(str3);
                    }
                }
            }
        } catch (Exception unused) {
        }
        StorageManager storageManager = (StorageManager) gVar.getSystemService("storage");
        if (storageManager != null && Build.VERSION.SDK_INT >= 24) {
            Iterator it = storageManager.getStorageVolumes().iterator();
            while (it.hasNext()) {
                StorageVolume storageVolumeJ = s0.j(it.next());
                if (storageVolumeJ != null && storageVolumeJ.isRemovable() && "mounted".equals(storageVolumeJ.getState()) && Build.VERSION.SDK_INT >= 30 && (directory = storageVolumeJ.getDirectory()) != null) {
                    hashSet.add(directory.getAbsolutePath());
                }
            }
        }
        try {
            Class<?> cls = Class.forName("android.os.storage.VolumeInfo");
            Method method = cls.getMethod("getType", null);
            Method method2 = cls.getMethod("getDisk", null);
            Field declaredField = cls.getDeclaredField("path");
            declaredField.setAccessible(true);
            if (Build.VERSION.SDK_INT >= 24) {
                for (Object obj : (List) storageManager.getClass().getMethod("getVolumes", null).invoke(storageManager, null)) {
                    try {
                        Integer num = (Integer) method.invoke(obj, null);
                        if (num != null && num.intValue() == 0 && method2.invoke(obj, null) != null && (str = (String) declaredField.get(obj)) != null && !str.isEmpty() && !str.contains("emulated")) {
                            if (!str.startsWith("/")) {
                                str = "/" + str;
                            }
                            if (a0.g(str) && a0.b(str)) {
                                hashSet.add(str);
                            }
                        }
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        j.f4033a.f4073v = hashSet;
        Pattern patternCompile = Pattern.compile("/storage/[0-9A-F]{4,30}");
        Pattern patternCompile2 = Pattern.compile("/storage/[0-9A-Za-z]{4}-[0-9A-Za-z]{4}");
        Pattern patternCompile3 = Pattern.compile("(/mnt/[^/]+/[0-9A-Za-z]{4}-[0-9A-Za-z]{4})");
        Pattern patternCompile4 = Pattern.compile("/storage/usb[0-9A-Za-z]{0,4}");
        Pattern patternCompile5 = Pattern.compile("(/mnt/udisk[0-9]{1})");
        s sVarL0 = u9.d.r("df").l0();
        sVarL0.k().addAll(sVarL0.j());
        if (sVarL0.k().size() > 2) {
            String str4 = ((String) sVarL0.k().get(0)) + SignParameters.NEW_LINE + ((String) sVarL0.k().get(1));
            c7 = str4.contains(" Use% ") ? (char) 0 : str4.contains(" Size ") ? (char) 1 : (char) 65535;
        }
        for (String str5 : sVarL0.k()) {
            Matcher matcher = str5.contains("/storage/") ? str5.contains("-") ? patternCompile2.matcher(str5) : patternCompile.matcher(str5) : (str5.contains("/mnt/") && str5.contains("-")) ? patternCompile3.matcher(str5) : str5.contains("/storage/usb") ? patternCompile4.matcher(str5) : str5.contains("/mnt/udisk") ? patternCompile5.matcher(str5) : null;
            if (matcher != null) {
                while (matcher.find()) {
                    z(matcher.group());
                }
                if (c7 == 1 && str5.startsWith("/mnt/") && str5.contains("G") && !str5.startsWith("/mnt/shared/")) {
                    int iIndexOf = str5.indexOf(" ");
                    Double dValueOf = Double.valueOf(str5.substring(iIndexOf + 1, str5.indexOf("G", iIndexOf)).trim());
                    if (dValueOf.doubleValue() < 1024.0d && dValueOf.doubleValue() > 3.0d) {
                        z(str5.substring(0, str5.indexOf(" ")));
                    }
                }
            }
        }
        com.yunpan.appmanage.util.k kVar = j.f4033a;
        if (kVar.f4073v.size() > 1) {
            Iterator$EL.forEachRemaining(kVar.f4073v.iterator(), new g0(13));
        }
        e.b().f(new c(1));
        Iterator$EL.forEachRemaining(kVar.f4073v.iterator(), new g0(14));
    }

    public final void C() {
        n0.f5722a.d();
        this.I = new k(9, this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(1000);
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addDataScheme("package");
        registerReceiver(this.I, intentFilter);
        this.K = new d(2);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.setPriority(1000);
        intentFilter2.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter2.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter2.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter2.addAction("android.intent.action.MEDIA_SCANNER_STARTED");
        intentFilter2.addAction("android.intent.action.MEDIA_SCANNER_FINISHED");
        intentFilter2.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter2.addAction("android.intent.action.MEDIA_SHARED");
        intentFilter2.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
        intentFilter2.addDataScheme("file");
        registerReceiver(this.K, intentFilter2);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        j.f4033a.k();
        try {
            ((WifiManager) this.A.getSystemService("wifi")).createWifiLock(3, "WifiLock").acquire();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = j.f4033a;
        kVar.f4048g0.submit(new b2(this, 1));
        try {
            if (kVar.f4053j && Build.VERSION.SDK_INT >= 26) {
                k0 k0Var = j0.f3843a;
                k0Var.f3851g = this;
                HandlerThread handlerThread = new HandlerThread("MyCar");
                k0Var.f3850f = handlerThread;
                handlerThread.start();
                k0Var.f3849e = new Handler(((HandlerThread) k0Var.f3850f).getLooper());
                k0Var.a();
            }
        } catch (Exception unused) {
        }
        com.yunpan.appmanage.util.k kVar2 = j.f4033a;
        kVar2.f4043e = getPackageCodePath();
        kVar2.f4048g0.submit(new b2(this, 0));
    }

    public final void E() {
        if (XXPermissions.isGrantedPermissions(this.A, new IPermission[]{PermissionLists.getReadExternalStoragePermission(), PermissionLists.getWriteExternalStoragePermission(), PermissionLists.getGetInstalledAppsPermission()})) {
            C();
        } else {
            XXPermissions.with(this).permission(PermissionLists.getReadExternalStoragePermission()).permission(PermissionLists.getWriteExternalStoragePermission()).permission(PermissionLists.getGetInstalledAppsPermission()).request(new a2(this));
        }
    }

    public final void F() {
        com.yunpan.appmanage.util.w wVar = v.f4106a;
        if (wVar.f4125j.isEmpty()) {
            E();
        } else {
            new ad(this.A, (wVar.f4125j.startsWith("上") || wVar.f4125j.startsWith("下") || wVar.f4125j.startsWith("左") || wVar.f4125j.startsWith("右")) && (wVar.f4125j.endsWith("上") || wVar.f4125j.endsWith("下") || wVar.f4125j.endsWith("左") || wVar.f4125j.endsWith("右")), false, new a2(this)).show();
        }
    }

    @Override // androidx.fragment.app.j0, androidx.activity.m, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 != 1 && i10 == 1001 && Build.VERSION.SDK_INT >= 19) {
            ((h) this.G.f18260h.get(1)).onActivityResult(i10, i11, intent);
            if (intent.getData() != null) {
                getContentResolver().takePersistableUriPermission(intent.getData(), 3);
            }
        }
    }

    @Override // androidx.activity.m, android.app.Activity
    public final void onBackPressed() {
        if (this.E.b() == 1 || !this.D.hasFocus()) {
            int iF = this.E.F();
            String str = ((h3) this.E.t(iF)).f18236a;
            if (str.equals("网络存储")) {
                i9 i9Var = (i9) this.G.f18260h.get(iF);
                if (i9Var.D.getVisibility() == 0) {
                    i9Var.D.setVisibility(8);
                }
                if (i9Var.f15757y.hasFocus() || i9Var.f15755w.hasFocus()) {
                    if (i9Var.f15756x.b() > 1) {
                        x9.g0 g0Var = i9Var.f15756x;
                        g0Var.C(g0Var.b() - 1);
                        g.b.x(i9Var.f15756x, 1, i9Var.f15755w);
                        i9Var.f15755w.requestFocus();
                        i9Var.n((w3) g.b.d(i9Var.f15756x, 1), false);
                        return;
                    }
                } else if ((i9Var.f15750p.hasFocus() || i9Var.f15748m.hasFocus()) && i9Var.f15749n.b() > 1) {
                    a6 a6Var = i9Var.f15749n;
                    a6Var.C(a6Var.b() - 1);
                    i9Var.f15748m.setSelection(i9Var.f15749n.b() - 1);
                    i9Var.f15748m.requestFocus();
                    i9Var.z(false);
                    return;
                }
            } else if (str.equals("文件管理")) {
                q8 q8Var = (q8) this.G.f18260h.get(iF);
                if (!q8Var.f15915p && q8Var.l.b() > 1) {
                    g.b.x(q8Var.l, 2, q8Var.f15912k);
                    q8Var.f15912k.requestFocus();
                    x9.g0 g0Var2 = q8Var.l;
                    g0Var2.C(g0Var2.b() - 1);
                    w3 w3Var = (w3) g.b.d(q8Var.l, 1);
                    String str2 = w3Var.f18365b;
                    if (str2 != null && !str2.isEmpty()) {
                        q8Var.v((w3) g.b.d(q8Var.l, 1), false);
                        return;
                    } else if (w3Var.f18364a.startsWith("收藏栏")) {
                        q8Var.p(true);
                        return;
                    } else {
                        if (w3Var.f18364a.startsWith("搜索结果")) {
                            q8Var.f15914n.E(q8Var.O);
                            return;
                        }
                        return;
                    }
                }
            }
            if (this.E.b() > 1 && this.D.requestFocus()) {
                return;
            }
        }
        if (!v.f4106a.f4146v) {
            if (System.currentTimeMillis() - this.C < 2000) {
                finish();
                return;
            } else {
                this.C = System.currentTimeMillis();
                Toaster.show((CharSequence) "(2)秒内再按一次返回键退出应用");
                return;
            }
        }
        if (moveTaskToBack(true)) {
            return;
        }
        if (System.currentTimeMillis() - this.C < 2000) {
            finish();
        } else {
            this.C = System.currentTimeMillis();
            Toaster.show((CharSequence) "(2)秒内再按一次返回键退出应用");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null) {
            return;
        }
        if (view.getId() == R.id.v_btn_home) {
            moveTaskToBack(true);
            return;
        }
        if (view.getId() == R.id.v_btn_close) {
            finish();
            return;
        }
        if (view.getId() == R.id.v_btn_set) {
            new fc(this, this).show();
        } else if (view.getId() == R.id.v_btn_screen_dp) {
            g gVar = this.A;
            new o1(gVar, gVar, new g1(this, 4)).show();
        }
    }

    @Override // da.g, androidx.fragment.app.j0, androidx.activity.m, m0.k, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Intent intent;
        if (!isTaskRoot() && (intent = getIntent()) != null) {
            String action = intent.getAction();
            if (intent.hasCategory("android.intent.category.LAUNCHER") && "android.intent.action.MAIN".equals(action)) {
                finish();
                return;
            }
        }
        super.onCreate(bundle);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        j.f4033a.f4035a = this;
        v.f4106a.f4109b = this;
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (Build.VERSION.SDK_INT >= 21) {
            D(true);
        }
        if (v.f4106a.L) {
            u9.d.r("setprop sys.jsbd.apk_verify 0").e0(null);
        }
        wa.u uVar = t.f17728a;
        uVar.d(System.currentTimeMillis());
        if (uVar.f17753t) {
            w.c("主应用：关闭");
        }
        o0 o0Var = n0.f5722a;
        if (o0Var.f5733h) {
            o0Var.f5726a = false;
            o0Var.f5730e = null;
            try {
                hi.b.m(o0Var.f5731f);
            } catch (Exception unused) {
            }
            try {
                fa.j0 j0Var = o0Var.f5727b;
                ArrayList arrayList = hi.b.f8218k;
                synchronized (arrayList) {
                    Collection.EL.removeIf(arrayList, new com.hierynomus.smbj.auth.a(3, j0Var));
                }
                hi.b.h(o0Var.f5728c);
                hi.b.i(o0Var.f5729d);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        unregisterReceiver(this.I);
        unregisterReceiver(this.K);
        try {
            stopService(new Intent(this, (Class<?>) HttpService.class));
        } catch (Exception unused2) {
        }
        e.b().l(this);
        try {
            k0 k0Var = j0.f3843a;
            if (((HandlerThread) k0Var.f3850f) != null) {
                k0Var.f3845a = true;
                ((Handler) k0Var.f3849e).post(new a2.h(15, k0Var));
            }
        } catch (Exception unused3) {
        }
        try {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            RemoteServer remoteServer = j.f4033a.E;
            if (remoteServer != null) {
                remoteServer.stop();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            o.a();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        try {
            finishAffinity();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        try {
            moveTaskToBack(true);
        } catch (Exception e13) {
            e13.printStackTrace();
        }
        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
        if (j.f4033a.f4055k) {
            return;
        }
        Process.killProcess(Process.myPid());
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i10, KeyEvent keyEvent) {
        if (i10 == 82 && keyEvent.getAction() == 1) {
            e.b().f("放开菜单键");
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(String str) {
        if (str.equals("up")) {
            if (this.D.getVisibility() == 0) {
                this.D.requestFocus();
            }
        } else if (str.equals("关闭应用")) {
            this.C = 0L;
            finish();
        } else if (str.equals(AdbMdns.SERVICE_TYPE_TELNET)) {
            new md(this, this).show();
        }
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_home1;
    }

    @Override // da.g
    public final void u() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, SecurityException, IllegalArgumentException {
        if (!e.b().e(this)) {
            e.b().j(this);
        }
        TextView textView = (TextView) findViewById(R.id.v_version);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = j.f4033a;
        if (kVar.f4055k) {
            textView.setText("√ 公签UID");
        } else if (kVar.f4053j) {
            textView.setText("√ 公签");
        }
        this.H = (TextView) findViewById(R.id.v_adb_text);
        findViewById(R.id.v_btn_home).setOnClickListener(this);
        findViewById(R.id.v_btn_close).setOnClickListener(this);
        findViewById(R.id.v_btn_set).setOnClickListener(this);
        findViewById(R.id.v_btn_screen_dp).setOnClickListener(this);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new h3("功能面板", true));
        arrayList.add(new h3("文件管理", false));
        arrayList.add(new h3("网络存储", false));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new x7());
        arrayList2.add(new q8());
        arrayList2.add(new i9());
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_menu);
        this.D = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        g3 g3Var = new g3();
        this.E = g3Var;
        g3Var.r(arrayList);
        this.D.setAdapter(this.E);
        this.F = (NoScrollViewPager) findViewById(R.id.v_Pager);
        try {
            Field declaredField = k4.g.class.getDeclaredField("h");
            declaredField.setAccessible(true);
            xa.a aVar = new xa.a(this.A, new AccelerateInterpolator());
            declaredField.set(this.F, aVar);
            aVar.f18415a = 111;
        } catch (Exception unused) {
        }
        this.F.n(new s9.a(24, false));
        k2 k2Var = new k2(p(), arrayList2);
        this.G = k2Var;
        this.F.setAdapter(k2Var);
        this.F.m(0, false, false);
        this.E.f2881e = new a2(this);
        this.D.setOnItemListener(new d2(this));
        this.D.setOnInBorderKeyEventListener(new v0(5));
        this.D.requestFocus();
        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
        j.f4033a.f4048g0.submit(new b2(this, 2));
        this.D.getViewTreeObserver().addOnGlobalLayoutListener(new c2(0, this));
        if (Build.VERSION.SDK_INT >= 21) {
            D(t.f17728a.B);
        }
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(a aVar) {
        if (aVar.f9813a == 2) {
            this.L.execute(new sa.a((String) aVar.f9814b, 1));
        }
    }
}
