package com.yunpan.appmanage.service;

import a2.k;
import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.hardware.input.IInputManager;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import com.desay_svautomotive.libsvcarinfo.CarLanID;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.hsae.autosdk.reverse.Reverse;
import com.hsae.autosdk.vehicle.IVehicle;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.KeyMapAccFindBean;
import com.yunpan.appmanage.carsdk.g0;
import com.yunpan.appmanage.carsdk.i;
import com.yunpan.appmanage.carsdk.j0;
import com.yunpan.appmanage.carsdk.k0;
import com.yunpan.appmanage.carsdk.m;
import com.yunpan.appmanage.carsdk.x;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.b0;
import ha.p6;
import ha.u;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import m0.q;
import mc.b;
import mc.c;
import n0.g;
import pa.d;
import pa.h;
import ph.j;
import ta.e;
import ta.f;
import wa.t;
import wa.v;
import wa.w;
import wa.y;
import wa.z;
import y3.a;
import z7.o;
import z7.s;

/* loaded from: classes.dex */
public class AccService extends AccessibilityService {
    public static final /* synthetic */ int U0 = 0;
    public final f B;
    public final e G;
    public AudioManager O0;
    public o Y;

    /* renamed from: c, reason: collision with root package name */
    public h f3930c;

    /* renamed from: p, reason: collision with root package name */
    public UsbManager f3942p;
    public SensorManager r;

    /* renamed from: a, reason: collision with root package name */
    public String f3928a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f3929b = "";

    /* renamed from: d, reason: collision with root package name */
    public x f3931d = null;

    /* renamed from: e, reason: collision with root package name */
    public m f3932e = null;

    /* renamed from: f, reason: collision with root package name */
    public i f3933f = null;

    /* renamed from: g, reason: collision with root package name */
    public long f3934g = 0;

    /* renamed from: h, reason: collision with root package name */
    public final k f3935h = new k(5, this);

    /* renamed from: i, reason: collision with root package name */
    public a f3937i = null;

    /* renamed from: j, reason: collision with root package name */
    public final Handler f3938j = new Handler();

    /* renamed from: k, reason: collision with root package name */
    public String f3939k = "";
    public final e l = new e(this, Looper.getMainLooper(), 0);

    /* renamed from: m, reason: collision with root package name */
    public long f3940m = 0;

    /* renamed from: n, reason: collision with root package name */
    public long f3941n = System.currentTimeMillis();

    /* renamed from: q, reason: collision with root package name */
    public final HashSet f3943q = new HashSet();

    /* renamed from: s, reason: collision with root package name */
    public float f3944s = -1.0f;

    /* renamed from: t, reason: collision with root package name */
    public final u f3945t = new u(2, this);

    /* renamed from: v, reason: collision with root package name */
    public int f3947v = -1;

    /* renamed from: w, reason: collision with root package name */
    public final c1.a f3948w = new c1.a(this, new Handler(), 3);

    /* renamed from: x, reason: collision with root package name */
    public final HashSet f3949x = new HashSet();

    /* renamed from: y, reason: collision with root package name */
    public final f f3950y = new f(this, 0);
    public final AtomicBoolean z = new AtomicBoolean(false);
    public final ta.a A = new ta.a(this, 2);
    public final LinkedHashSet C = new LinkedHashSet();
    public String D = "";
    public String E = "";
    public boolean F = false;
    public long H = 0;
    public int I = -1;
    public long K = 0;
    public int L = -1;
    public long M = 0;
    public int N = -1;
    public long O = 0;
    public final HashSet P = new HashSet();
    public final HashSet R = new HashSet();
    public s S = null;
    public final String T = "EasyWindow_KEYMAP_Tag";
    public ya.i V = null;
    public final HashSet X = new HashSet();
    public ArrayList Z = new ArrayList();

    /* renamed from: h0, reason: collision with root package name */
    public ta.o f3936h0 = null;

    /* renamed from: t0, reason: collision with root package name */
    public ExecutorService f3946t0 = Executors.newFixedThreadPool(1);
    public final HashMap M0 = new HashMap();
    public ExecutorService N0 = Executors.newFixedThreadPool(4);
    public boolean P0 = false;
    public final LinkedList Q0 = new LinkedList();
    public volatile boolean R0 = false;
    public final LinkedList S0 = new LinkedList();
    public volatile boolean T0 = false;

    public AccService() {
        int i10 = 1;
        this.B = new f(this, i10);
        this.G = new e(this, Looper.getMainLooper(), i10);
    }

    public static void a(AccService accService, b bVar) {
        long timeStamp;
        accService.getClass();
        try {
            UsageEvents usageEventsQueryEvents = (Build.VERSION.SDK_INT >= 22 ? (UsageStatsManager) accService.getSystemService("usagestats") : (UsageStatsManager) accService.getSystemService("usagestats")).queryEvents(System.currentTimeMillis() - 900000, System.currentTimeMillis() + 7200000);
            timeStamp = 0;
            while (usageEventsQueryEvents.hasNextEvent()) {
                UsageEvents.Event event = new UsageEvents.Event();
                usageEventsQueryEvents.getNextEvent(event);
                if (event.getEventType() == 15) {
                    timeStamp = event.getTimeStamp();
                }
            }
        } catch (Exception unused) {
        }
        if (timeStamp != 0 && t.f17728a.f17741g <= timeStamp - PopupConst.DURATION_POPUP) {
            BootReceiver.a(accService, "无障碍");
            bVar.b();
        }
    }

    public final void b(o oVar) {
        if (oVar == null || oVar.f19478a.isEmpty() || this.R0) {
            return;
        }
        ExecutorService executorService = this.N0;
        if (executorService == null || executorService.isShutdown()) {
            this.N0 = Executors.newFixedThreadPool(4);
        }
        this.N0.submit(new ta.b(this, oVar, 0));
    }

    public final void c(String str, String str2) {
        int i10;
        try {
            System.out.getClass();
            if (str.equals("null") || str2.endsWith(".widget.Toast") || str2.endsWith(".inputmethodservice.SoftInputWindow")) {
                return;
            }
            long j10 = wa.s.c().f17712h;
            Handler handler = this.f3938j;
            if (j10 > 0 && str2.endsWith("com.leapmotor.system.demo.DemoActivity")) {
                if (Build.VERSION.SDK_INT >= 18) {
                    handler.postDelayed(new ta.a(this, 11), 300L);
                }
                wa.s.c().f17712h = 0L;
            }
            if (str.equals(getPackageName()) && str2.startsWith("android")) {
                return;
            }
            wa.u uVar = t.f17728a;
            boolean z = uVar.G;
            e eVar = this.G;
            if (z) {
                boolean zEquals = str2.equals(".RequestPermissionActivity");
                AtomicBoolean atomicBoolean = this.z;
                f fVar = this.B;
                ta.a aVar = this.A;
                if (zEquals || str2.endsWith(".GrantPermissionsActivity") || str.equals("com.android.packageinstaller") || str2.endsWith(".PackageInstallerActivity")) {
                    eVar.removeCallbacks(aVar);
                    eVar.removeCallbacks(fVar);
                    if (!atomicBoolean.get()) {
                        eVar.postDelayed(aVar, 500L);
                    }
                } else {
                    eVar.removeCallbacks(aVar);
                    eVar.removeCallbacks(fVar);
                    if (atomicBoolean.get()) {
                        eVar.postDelayed(fVar, 666L);
                    }
                }
            }
            if (str.equals("com.android.packageinstaller")) {
                return;
            }
            if (str.equals("com.android.settings") && (i10 = Build.VERSION.SDK_INT) >= 33 && str2.equals(".RequestPermissionActivity")) {
                if (i10 < 23) {
                    return;
                }
                handler.postDelayed(new ta.a(this, 6), 200L);
                return;
            }
            if (str2.endsWith(".FallbackHome") && SystemClock.elapsedRealtime() < 90000) {
                handler.postDelayed(new ta.a(this, 1), 30000L);
                return;
            }
            if (str.equals("android") && (str2.endsWith(".ResolverActivity") || str2.endsWith(".ChooserActivity"))) {
                if (uVar.Y) {
                    if (Build.VERSION.SDK_INT < 21) {
                        handler.postDelayed(new ta.a(this, 7), 368L);
                        return;
                    } else {
                        handler.postDelayed(new ta.a(this, 8), 368L);
                        return;
                    }
                }
                return;
            }
            if (str.equals("com.android.systemui")) {
                if (uVar.f17732b0 && Build.VERSION.SDK_INT >= 32) {
                    this.f3938j.postDelayed(new ta.a(this, 10), 300L);
                }
                if (Build.VERSION.SDK_INT < 18) {
                    return;
                }
                if (uVar.W) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - this.f3941n > 120000 && jCurrentTimeMillis - this.f3934g < 10000) {
                        return;
                    }
                }
                if (uVar.V) {
                    handler.postDelayed(new ta.a(this, 9), 400L);
                    return;
                }
                return;
            }
            if (str.equals("android")) {
                if (uVar.f17732b0 && str2.endsWith(".app.LogAccessDialogActivity") && Build.VERSION.SDK_INT >= 18) {
                    this.f3938j.postDelayed(new ta.a(this, 10), 300L);
                    return;
                }
                return;
            }
            if (wa.s.c().f17705a && str.equals("com.baidu.naviauto")) {
                i iVar = this.f3933f;
                if (!(iVar.f3836b && iVar.f3835a != null)) {
                    eVar.removeMessages(-5);
                    eVar.sendEmptyMessageDelayed(-5, 2222L);
                }
            }
            if (str2.startsWith("android.widget.") || str2.endsWith(".app.Dialog") || str2.endsWith(".app.AlertDialog")) {
                return;
            }
            this.D = str;
            this.E = str2;
            if (str.equals(getPackageName()) && str2.endsWith(p6.class.getName())) {
                this.F = true;
            } else {
                this.F = false;
            }
            if (!str.equals(this.f3939k) || System.currentTimeMillis() - this.f3940m >= 468) {
                this.f3940m = System.currentTimeMillis();
                LinkedHashSet linkedHashSet = this.C;
                if (linkedHashSet.contains(str)) {
                    linkedHashSet.remove(str);
                }
                linkedHashSet.add(str);
                if (!wa.s.c().f17713i.isEmpty() && wa.s.c().f17713i.containsKey(str)) {
                    b((o) wa.s.c().f17713i.get(str));
                }
                if (!wa.s.c().f17714j.isEmpty() && !wa.s.c().f17715k.contains(str) && wa.s.c().f17714j.containsKey(str)) {
                    b((o) wa.s.c().f17714j.get(str));
                    wa.s.c().f17714j.remove(str);
                    wa.s.c().f17715k.add(str);
                }
                y.f17766a.d(str);
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0061 A[Catch: Exception -> 0x015f, TryCatch #0 {Exception -> 0x015f, blocks: (B:3:0x0002, B:5:0x001f, B:6:0x0028, B:8:0x0032, B:10:0x0049, B:24:0x0159, B:13:0x0061, B:15:0x0138, B:16:0x013a, B:18:0x0141, B:19:0x014a, B:21:0x014e, B:23:0x0152, B:25:0x015d), top: B:28:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d() {
        int i10;
        try {
            this.Y = q4.a.I(new File(getFilesDir().getAbsolutePath(), "KeyMapAcc.json")).p("keys");
            HashSet hashSet = this.X;
            hashSet.clear();
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < this.Y.f19478a.size(); i11++) {
                KeyMapAccFindBean keyMapAccFindBean = new KeyMapAccFindBean();
                if (this.Y.l(i11).g().f19480a.containsKey("isOpen")) {
                    boolean zB = this.Y.l(i11).g().o("isOpen").b();
                    keyMapAccFindBean.isOpen = zB;
                    if (zB) {
                        keyMapAccFindBean.pos = i11;
                        keyMapAccFindBean.keyCode = this.Y.l(i11).g().o("keyCode").e();
                        keyMapAccFindBean.zhKeyCode = this.Y.l(i11).g().o("zhKeyCode").e();
                        keyMapAccFindBean.zhModeDown = this.Y.l(i11).g().o("zhModeDown").b();
                        keyMapAccFindBean.ljKey = this.Y.l(i11).g().o("ljKey").b();
                        keyMapAccFindBean.ljZhKey = this.Y.l(i11).g().o("ljZhKey").b();
                        keyMapAccFindBean.isHaveClick = !this.Y.l(i11).g().p("click").f19478a.isEmpty();
                        keyMapAccFindBean.isHaveLongClick = !this.Y.l(i11).g().p("longClick").f19478a.isEmpty();
                        keyMapAccFindBean.isHaveDoubleClick = !this.Y.l(i11).g().p("doubleClick").f19478a.isEmpty();
                        if (this.Y.l(i11).g().p("zhClick").f19478a.isEmpty()) {
                            keyMapAccFindBean.zhKeyCode = -1;
                        }
                        arrayList.add(keyMapAccFindBean);
                        if (keyMapAccFindBean.ljKey) {
                            hashSet.add(Integer.valueOf(keyMapAccFindBean.keyCode));
                        }
                        if (keyMapAccFindBean.ljZhKey && (i10 = keyMapAccFindBean.zhKeyCode) != -1) {
                            hashSet.add(Integer.valueOf(i10));
                        }
                    }
                }
            }
            this.Z = arrayList;
        } catch (Exception unused) {
        }
    }

    public final void e() {
        ta.o oVar = this.f3936h0;
        if (oVar != null) {
            oVar.g();
        }
        this.f3936h0 = null;
        if (t.f17728a.f17754u) {
            w.b("初始化日志映射");
        }
        s sVarI = q4.a.I(new File(getFilesDir().getAbsolutePath(), "KeyMapLogcatSuper.json"));
        try {
            if ((!sVarI.f19480a.containsKey("isOn") || sVarI.o("isOn").b()) && !sVarI.p("keys").f19478a.isEmpty()) {
                ta.o oVar2 = new ta.o(sVarI);
                this.f3936h0 = oVar2;
                new c(0, new j(10, oVar2)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(2, this));
            }
        } catch (Exception e7) {
            if (t.f17728a.f17754u) {
                w.b("【报错位置a】 " + e7.getMessage());
            }
            e7.printStackTrace();
        }
    }

    public final void f() {
        Sensor defaultSensor;
        try {
            SensorManager sensorManager = (SensorManager) getSystemService("sensor");
            this.r = sensorManager;
            if (sensorManager == null || (defaultSensor = sensorManager.getDefaultSensor(5)) == null) {
                return;
            }
            this.r.registerListener(this.f3945t, defaultSensor, 5000000);
            this.f3947v = Settings.System.getInt(getContentResolver(), "screen_brightness", 255);
            getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), true, this.f3948w);
        } catch (Exception unused) {
        }
    }

    public final void g() {
        if (t.f17728a.C) {
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel("accessibility_service_channel", "后台服务", 2));
                }
                q qVar = new q(this, "accessibility_service_channel");
                qVar.f10781e = q.b("自动化服务");
                qVar.f10782f = q.b("运行中");
                qVar.f10788m.icon = R.drawable.apk;
                qVar.f10783g = -1;
                qVar.f10785i = "service";
                qVar.c();
                startForeground(2, qVar.a());
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            c(String.valueOf(accessibilityEvent.getPackageName()), String.valueOf(accessibilityEvent.getClassName()));
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        if (t.f17728a.f17753t) {
            w.c("AccService：创建");
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        AccService accService;
        c5.a aVar;
        Parcel parcelObtain;
        Parcel parcelObtain2;
        b0 b0Var = v.f17759a;
        super.onDestroy();
        System.out.getClass();
        i iVar = this.f3933f;
        if (iVar != null && iVar.f3836b) {
            try {
                aVar = (c5.a) iVar.f3835a;
                aVar.getClass();
                parcelObtain = Parcel.obtain();
                parcelObtain2 = Parcel.obtain();
            } catch (RemoteException unused) {
            }
            try {
                parcelObtain.writeInterfaceToken("com.baidu.naviauto.imaplbs.IMapAutoAPIService");
                parcelObtain.writeString("yingyongguanjia");
                aVar.f2872e.transact(3, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                parcelObtain2.recycle();
                parcelObtain.recycle();
                unbindService(iVar.f3837c);
                iVar.f3836b = false;
            } catch (Throwable th2) {
                parcelObtain2.recycle();
                parcelObtain.recycle();
                throw th2;
            }
        }
        try {
            k0 k0Var = j0.f3843a;
            if (((HandlerThread) k0Var.f3850f) != null) {
                k0Var.f3845a = true;
                ((Handler) k0Var.f3849e).post(new a2.h(15, k0Var));
            }
        } catch (Exception unused2) {
        }
        ta.m.d(this, "ACC_CLOSE");
        wa.u uVar = t.f17728a;
        if (uVar.f17753t) {
            w.c("AccService：销毁");
        }
        try {
            if (((String) b0Var.f4000c).equals(getPackageName() + "/") && !this.R0 && uVar.f17753t) {
                w.c("AccService：疑是无缘无故被销毁");
            }
        } catch (Exception unused3) {
        }
        z zVar = y.f17766a;
        zVar.f17771e = 0;
        zVar.f17773g = 0L;
        v8.a aVar2 = zVar.f17769c;
        if (aVar2 != null) {
            aVar2.b();
            zVar.f17769c.g();
            zVar.f17769c = null;
        }
        v8.a aVar3 = zVar.f17770d;
        if (aVar3 != null) {
            aVar3.b();
            zVar.f17770d.g();
            zVar.f17770d = null;
        }
        if (wa.s.c().f17707c != null) {
            wa.s.c().f17707c.c(0L);
            wa.s.c().f17707c = null;
            return;
        }
        try {
            v8.b.a();
            v8.b.b();
        } catch (Exception unused4) {
        }
        if (pa.e.b(this)) {
            pa.e eVar = d.f12629a;
            Handler handler = eVar.f12639j;
            try {
                handler.removeCallbacks(eVar.f12640k);
                handler.removeCallbacks(eVar.l);
                handler.removeCallbacks(eVar.f12641m);
                IVehicle iVehicle = eVar.f12631b;
                if (iVehicle != null) {
                    iVehicle.unregisterVehicleCallback(eVar.f12632c);
                }
                Reverse reverse = eVar.f12633d;
                if (reverse != null) {
                    reverse.unRegisterStateListener(eVar.f12634e);
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        h hVar = this.f3930c;
        if (hVar != null) {
            hVar.c();
        }
        x xVar = this.f3931d;
        if (xVar != null) {
            xVar.m();
        }
        m mVar = this.f3932e;
        if (mVar != null && (accService = mVar.f3856b) != null) {
            a1.i iVar2 = mVar.f3855a;
            if (iVar2 != null) {
                try {
                    int i10 = m.f3854e;
                    iVar2.I(mVar.f3858d);
                } catch (RemoteException unused5) {
                }
            }
            try {
                accService.unbindService(mVar.f3857c);
            } catch (Exception unused6) {
            }
        }
        if (this.f3936h0 != null) {
            if (t.f17728a.f17754u) {
                w.b("停止日志监听");
            }
            this.f3936h0.g();
            this.f3936h0 = null;
        }
        this.r.unregisterListener(this.f3945t);
        getContentResolver().unregisterContentObserver(this.f3948w);
        a aVar4 = this.f3937i;
        if (aVar4 != null) {
            WindowManager windowManager = (WindowManager) aVar4.f18896c;
            ((AccService) aVar4.f18895b).G.removeCallbacks((androidx.emoji2.text.o) aVar4.f18901h);
            try {
                View view = (View) aVar4.f18899f;
                if (view != null) {
                    windowManager.removeView(view);
                    aVar4.f18899f = null;
                }
            } catch (Exception unused7) {
            }
            try {
                View view2 = (View) aVar4.f18900g;
                if (view2 != null) {
                    windowManager.removeView(view2);
                    aVar4.f18900g = null;
                }
            } catch (Exception unused8) {
            }
        }
        ya.e.b().e();
        ya.h.a().c();
        com.yunpan.appmanage.carsdk.e.j();
        g0.f3810a.d();
        try {
            wa.s.c().f17717n.clear();
            wa.s.c().r(false);
        } catch (Exception unused9) {
        }
        wa.s.c().f17709e = null;
        if (Build.VERSION.SDK_INT >= 24) {
            stopForeground(1);
        } else {
            stopForeground(true);
        }
        try {
            unregisterReceiver(this.f3935h);
        } catch (Exception unused10) {
        }
        try {
            this.f3946t0.shutdownNow();
            this.f3946t0 = null;
        } catch (Exception unused11) {
        }
        try {
            this.N0.shutdownNow();
            this.N0 = null;
        } catch (Exception unused12) {
        }
        if (!this.R0 && t.f17728a.D) {
            a0.t("已停止自动化服务");
        }
        wa.u uVar2 = t.f17728a;
        if (uVar2.f17753t) {
            w.c("AccService：关闭");
        }
        this.f3938j.removeCallbacksAndMessages(null);
        this.G.removeCallbacksAndMessages(null);
        this.l.removeCallbacksAndMessages(null);
        b0Var.b();
        if (!((String) b0Var.f4000c).contains(AppStart.f3772h.getPackageName() + "/" + AccService.class.getName()) || p000if.a.h0(this, BootTaskService.class)) {
            return;
        }
        if (uVar2.I) {
            BootReceiver.a(this, "无障碍异常关闭拉起开机任务");
            return;
        }
        if (uVar2.H) {
            try {
                b0Var.b();
                if (((String) b0Var.f4000c).contains(AppStart.f3772h.getPackageName() + "/" + AccService.class.getName()) && !p000if.a.h0(AppStart.f3772h, AccRestartService.class)) {
                    Intent intent = new Intent(AppStart.f3772h, (Class<?>) AccRestartService.class);
                    if (Build.VERSION.SDK_INT >= 26) {
                        AppStart.f3772h.startForegroundService(intent);
                    } else {
                        AppStart.f3772h.startService(intent);
                    }
                }
            } catch (Exception unused13) {
            }
        }
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onInterrupt() {
        if (t.f17728a.f17753t) {
            w.c("AccService：中断");
        }
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final boolean onKeyEvent(KeyEvent keyEvent) throws Exception {
        int i10;
        if (this.F) {
            AppStart appStart = t.f17728a.f17735d;
            int keyCode = keyEvent.getKeyCode();
            int action = keyEvent.getAction();
            try {
                Intent intent = new Intent(appStart.getPackageName() + ".BROADCAST_ACC_KEY_CODE");
                intent.putExtra("keyCode", keyCode);
                intent.putExtra("action", action);
                intent.setPackage(appStart.getPackageName());
                appStart.sendBroadcast(intent);
            } catch (Exception unused) {
            }
            return true;
        }
        if (keyEvent.getKeyCode() == 3) {
            this.H = System.currentTimeMillis();
        }
        keyEvent.getKeyCode();
        keyEvent.getAction();
        if (this.Z.isEmpty()) {
            return super.onKeyEvent(keyEvent);
        }
        int action2 = keyEvent.getAction();
        HashSet hashSet = this.P;
        if (action2 == 1 && hashSet.remove(Integer.valueOf(keyEvent.getKeyCode()))) {
            if (this.X.contains(Integer.valueOf(keyEvent.getKeyCode()))) {
                return true;
            }
            return super.onKeyEvent(keyEvent);
        }
        if (keyEvent.getAction() == 0 && this.R.remove(Integer.valueOf(keyEvent.getKeyCode()))) {
            if (this.X.contains(Integer.valueOf(keyEvent.getKeyCode()))) {
                return true;
            }
            return super.onKeyEvent(keyEvent);
        }
        s sVar = this.S;
        e eVar = this.G;
        if (sVar != null) {
            if (keyEvent.getAction() == 0) {
                return true;
            }
            try {
                if (this.S.f19480a.containsKey(String.valueOf(keyEvent.getKeyCode()))) {
                    b(this.S.q(String.valueOf(keyEvent.getKeyCode())).p("maps"));
                }
            } catch (Exception unused2) {
            }
            this.S = null;
            Message messageObtain = Message.obtain();
            messageObtain.what = -3;
            messageObtain.obj = this.T;
            eVar.sendMessage(messageObtain);
            return true;
        }
        ya.i iVar = this.V;
        if (iVar != null) {
            int keyCode2 = keyEvent.getKeyCode();
            int action3 = keyEvent.getAction();
            if (keyCode2 != 82) {
                iVar.r = 0;
            } else if (action3 == 1) {
                int i11 = iVar.r + 1;
                iVar.r = i11;
                if (i11 >= 2) {
                    iVar.c();
                    return true;
                }
            }
            int i12 = iVar.f19088k;
            if (i12 != -1 && keyCode2 == i12) {
                if (action3 != 1) {
                    return true;
                }
                iVar.c();
                return true;
            }
            com.yunpan.appmanage.carsdk.u uVar = iVar.f19094s;
            if (iVar.f19089m) {
                uVar.removeMessages(-100);
                if (iVar.f19082e.getVisibility() == 8) {
                    iVar.f19082e.setVisibility(0);
                }
                if (action3 == 1) {
                    uVar.sendEmptyMessageDelayed(-100, 10000L);
                }
            }
            HashMap map = iVar.f19093q;
            if (keyCode2 != 165 && keyCode2 != 82 && keyCode2 != 3 && keyCode2 != 29) {
                if (keyCode2 == 19 || keyCode2 == 20 || keyCode2 == 21 || keyCode2 == 22) {
                    if (action3 != 0) {
                        uVar.removeMessages(keyCode2);
                        return true;
                    }
                    iVar.f19092p.put(Integer.valueOf(keyCode2), 0);
                    iVar.f19091o.put(Integer.valueOf(keyCode2), Integer.valueOf(iVar.f19087j / 2));
                    return uVar.sendEmptyMessage(keyCode2);
                }
                if (keyCode2 != 23 && keyCode2 != 66) {
                    boolean z = iVar.l;
                    try {
                        if (z && keyCode2 == 166) {
                            if (action3 != 1) {
                                return true;
                            }
                            wa.c.d(iVar.f19090n, 19, false);
                        } else if (z && keyCode2 == 167) {
                            if (action3 != 1) {
                                return true;
                            }
                            wa.c.d(iVar.f19090n, 20, false);
                        }
                        return true;
                    } catch (Exception unused3) {
                        return true;
                    }
                }
                int width = (iVar.f19082e.getWidth() / 2) + ((int) iVar.f19083f);
                int height = (iVar.f19082e.getHeight() / 2) + ((int) iVar.f19084g);
                IInputManager iInputManager = iVar.f19090n;
                if (iInputManager == null) {
                    if (action3 != 0 || Build.VERSION.SDK_INT < 24) {
                        return true;
                    }
                    wa.b.a(iVar.f19078a, width, height, 100L);
                    iVar.d();
                    return true;
                }
                if (action3 == 0) {
                    map.put(Integer.valueOf(keyCode2), Long.valueOf(SystemClock.uptimeMillis()));
                    IInputManager iInputManager2 = iVar.f19090n;
                    long jLongValue = ((Long) map.get(Integer.valueOf(keyCode2))).longValue();
                    if (iInputManager2 != null) {
                        try {
                            MotionEvent motionEventObtain = MotionEvent.obtain(jLongValue, jLongValue, 0, width, height, 1.0f, 1.0f, 0, 1.0f, 1.0f, 0, 0);
                            motionEventObtain.setSource(CarLanID.Send.RADIO);
                            iInputManager2.injectInputEvent(motionEventObtain, 2);
                            motionEventObtain.recycle();
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                    }
                } else if (action3 == 1) {
                    try {
                        MotionEvent motionEventObtain2 = MotionEvent.obtain(((Long) map.get(Integer.valueOf(keyCode2))).longValue(), SystemClock.uptimeMillis(), 1, width, height, 1.0f, 1.0f, 0, 1.0f, 1.0f, 0, 0);
                        motionEventObtain2.setSource(CarLanID.Send.RADIO);
                        iInputManager.injectInputEvent(motionEventObtain2, 2);
                        motionEventObtain2.recycle();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                iVar.d();
                return true;
            }
            if (action3 == 0) {
                uVar.sendEmptyMessageDelayed(keyCode2, 600L);
            } else if (action3 == 1) {
                uVar.removeMessages(keyCode2);
            }
            if ((keyCode2 == 82 || keyCode2 == 3) && action3 == 0) {
                if (map.get(Integer.valueOf(keyCode2)) == null || System.currentTimeMillis() - ((Long) map.get(Integer.valueOf(keyCode2))).longValue() >= 500) {
                    map.put(Integer.valueOf(keyCode2), Long.valueOf(System.currentTimeMillis()));
                } else {
                    uVar.sendEmptyMessage(keyCode2);
                }
            }
            return false;
        }
        try {
            if (this.I != -1 && keyEvent.getAction() == 0) {
                if (((KeyMapAccFindBean) this.Z.get(this.I)).zhKeyCode != keyEvent.getKeyCode()) {
                    this.I = -1;
                    this.K = 0L;
                } else {
                    if (((KeyMapAccFindBean) this.Z.get(this.I)).zhModeDown) {
                        hashSet.add(Integer.valueOf(keyEvent.getKeyCode()));
                        if (((KeyMapAccFindBean) this.Z.get(this.I)).zhModeDown) {
                            hashSet.add(Integer.valueOf(((KeyMapAccFindBean) this.Z.get(this.I)).keyCode));
                        }
                        eVar.removeMessages(0);
                        eVar.removeMessages(1);
                        b(this.Y.l(this.I).g().p("zhClick"));
                        this.I = -1;
                        this.K = 0L;
                        this.L = -1;
                        this.M = 0L;
                        this.N = -1;
                        this.O = 0L;
                        throw new Exception();
                    }
                    if (System.currentTimeMillis() - this.K < t.f17728a.f17751q) {
                        hashSet.add(Integer.valueOf(keyEvent.getKeyCode()));
                        if (((KeyMapAccFindBean) this.Z.get(this.I)).zhModeDown) {
                            hashSet.add(Integer.valueOf(((KeyMapAccFindBean) this.Z.get(this.I)).keyCode));
                        }
                        eVar.removeMessages(0);
                        eVar.removeMessages(1);
                        b(this.Y.l(this.I).g().p("zhClick"));
                        this.I = -1;
                        this.K = 0L;
                        this.L = -1;
                        this.M = 0L;
                        this.N = -1;
                        this.O = 0L;
                        throw new Exception();
                    }
                    this.I = -1;
                    this.K = 0L;
                }
            }
            Iterator it = this.Z.iterator();
            while (it.hasNext()) {
                KeyMapAccFindBean keyMapAccFindBean = (KeyMapAccFindBean) it.next();
                if (keyMapAccFindBean.keyCode == keyEvent.getKeyCode()) {
                    eVar.removeMessages(1);
                    if (keyEvent.getAction() == 0) {
                        if (!keyMapAccFindBean.isHaveDoubleClick && !keyMapAccFindBean.isHaveLongClick && keyMapAccFindBean.zhKeyCode == -1 && keyMapAccFindBean.isHaveClick) {
                            b(this.Y.l(keyMapAccFindBean.pos).g().p("click"));
                            this.I = -1;
                            this.K = 0L;
                            this.L = -1;
                            this.M = 0L;
                            this.N = -1;
                            this.O = 0L;
                            hashSet.add(Integer.valueOf(keyEvent.getKeyCode()));
                            throw new Exception();
                        }
                        if (keyMapAccFindBean.isHaveLongClick && (keyMapAccFindBean.zhKeyCode == -1 || !keyMapAccFindBean.zhModeDown)) {
                            Message messageObtain2 = Message.obtain();
                            messageObtain2.what = 1;
                            messageObtain2.arg1 = keyMapAccFindBean.pos;
                            eVar.sendMessageDelayed(messageObtain2, t.f17728a.f17751q);
                        }
                        if (keyMapAccFindBean.zhKeyCode != -1 && keyMapAccFindBean.zhModeDown) {
                            System.out.getClass();
                            this.I = keyMapAccFindBean.pos;
                            this.K = System.currentTimeMillis();
                        }
                        this.L = keyMapAccFindBean.pos;
                        this.M = System.currentTimeMillis();
                    } else if (keyEvent.getAction() != 1) {
                        continue;
                    } else {
                        if (this.N == keyMapAccFindBean.pos && keyMapAccFindBean.isHaveDoubleClick && System.currentTimeMillis() - this.O < t.f17728a.f17751q) {
                            b(this.Y.l(keyMapAccFindBean.pos).g().p("doubleClick"));
                            eVar.removeMessages(0);
                            this.I = -1;
                            this.K = 0L;
                            this.L = -1;
                            this.M = 0L;
                            this.N = -1;
                            this.O = 0L;
                            throw new Exception();
                        }
                        if (keyMapAccFindBean.isHaveLongClick && this.L == keyMapAccFindBean.pos && System.currentTimeMillis() - this.M > t.f17728a.f17751q) {
                            b(this.Y.l(keyMapAccFindBean.pos).g().p("longClick"));
                            this.I = -1;
                            this.K = 0L;
                            this.L = -1;
                            this.M = 0L;
                            this.N = -1;
                            this.O = 0L;
                            throw new Exception();
                        }
                        if (keyMapAccFindBean.zhModeDown && (i10 = this.I) != -1 && ((KeyMapAccFindBean) this.Z.get(i10)).keyCode == keyMapAccFindBean.keyCode) {
                            this.I = -1;
                            this.K = 0L;
                        }
                        if (keyMapAccFindBean.zhKeyCode != -1 && !keyMapAccFindBean.zhModeDown) {
                            this.I = keyMapAccFindBean.pos;
                            this.K = System.currentTimeMillis();
                        }
                        if (keyMapAccFindBean.isHaveClick) {
                            if (!keyMapAccFindBean.isHaveDoubleClick && keyMapAccFindBean.zhKeyCode == -1) {
                                b(this.Y.l(keyMapAccFindBean.pos).g().p("click"));
                                this.I = -1;
                                this.K = 0L;
                                this.L = -1;
                                this.M = 0L;
                                this.N = -1;
                                this.O = 0L;
                                throw new Exception();
                            }
                            Message messageObtain3 = Message.obtain();
                            messageObtain3.what = 0;
                            messageObtain3.arg1 = keyMapAccFindBean.pos;
                            eVar.sendMessageDelayed(messageObtain3, t.f17728a.f17751q);
                        }
                        this.L = -1;
                        this.M = 0L;
                        this.N = keyMapAccFindBean.pos;
                        this.O = System.currentTimeMillis();
                    }
                }
            }
        } catch (Exception unused4) {
        }
        if (this.X.contains(Integer.valueOf(keyEvent.getKeyCode()))) {
            return true;
        }
        return super.onKeyEvent(keyEvent);
    }

    @Override // android.accessibilityservice.AccessibilityService
    public final void onServiceConnected() {
        super.onServiceConnected();
        System.out.getClass();
        try {
            getPackageManager().checkPermission("android.permission.DEVICE_POWER", getPackageName());
        } catch (Exception unused) {
        }
        this.f3941n = System.currentTimeMillis();
        AppStart.f3772h.d();
        wa.s.c().f17709e = this;
        this.f3939k = qf.c.u(this);
        g();
        if (t.f17728a.f17753t) {
            w.c("AccService：连接");
        }
        UsbManager usbManager = (UsbManager) getSystemService("usb");
        this.f3942p = usbManager;
        for (UsbDevice usbDevice : usbManager.getDeviceList().values()) {
            this.f3943q.add("" + usbDevice.getVendorId() + "," + usbDevice.getProductId());
        }
        AccessibilityServiceInfo serviceInfo = getServiceInfo();
        if (serviceInfo == null) {
            serviceInfo = new AccessibilityServiceInfo();
        }
        serviceInfo.eventTypes = 32;
        serviceInfo.feedbackType = 16;
        serviceInfo.flags = 3;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 18) {
            serviceInfo.flags = 51;
        }
        if (i10 >= 21) {
            serviceInfo.flags |= 64;
        }
        if (i10 >= 30) {
            serviceInfo.flags |= 128;
        }
        serviceInfo.notificationTimeout = 100L;
        setServiceInfo(serviceInfo);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(1000);
        intentFilter.addAction(getPackageName() + ".BROADCAST_TO_ACC");
        intentFilter.addAction(ta.m.a(getPackageName()));
        intentFilter.addAction(getPackageName() + ".BROADCAST_AUTO_RORATION_UP_TWO");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_ATTACHED");
        intentFilter.addAction("android.hardware.usb.action.USB_DEVICE_DETACHED");
        intentFilter.addAction(getPackageName() + ".MAP_TASK");
        wa.s.c().p(this);
        Iterator it = wa.s.c().l.iterator();
        while (it.hasNext()) {
            intentFilter.addAction((String) it.next());
        }
        registerReceiver(this.f3935h, intentFilter);
        this.O0 = (AudioManager) getSystemService("audio");
        if (Build.VERSION.SDK_INT >= 19) {
            g.a(this, "android.permission.MEDIA_CONTENT_CONTROL");
        }
        if (t.f17728a.f17753t) {
            w.c("AccService：自动化启动");
        }
        this.N0.submit(new ta.a(this, 0));
    }
}
