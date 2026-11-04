package a2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbDevice;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Message;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.core.NoConst;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.IntIntBean;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.service.StartService;
import com.yunpan.appmanage.ui.ActivityAutomation;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.util.a0;
import ha.j6;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final class k extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f204a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f205b;

    public /* synthetic */ k(int i10, Object obj) {
        this.f204a = i10;
        this.f205b = obj;
    }

    private final void a(Context context, Intent intent) {
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        ActivityAutomation activityAutomation = (ActivityAutomation) this.f205b;
        if (action.equals(activityAutomation.getPackageName() + ".BROADCAST_TO_ACTIVITY")) {
            try {
                String stringExtra = intent.getStringExtra("typeName");
                if ("ACC_IS_RUNNING_YES".equals(stringExtra)) {
                    activityAutomation.I.removeMessages(0);
                    activityAutomation.I.removeMessages(1);
                    activityAutomation.D.setImageResource(R.drawable.tp_ai1);
                    activityAutomation.E.setText("服务运行中");
                } else if ("ACC_CLOSE".equals(stringExtra)) {
                    activityAutomation.D.setImageResource(R.drawable.tp_check2);
                    activityAutomation.E.setText("开启服务(总开关)");
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int size;
        int size2;
        int size3;
        int size4;
        NetworkInfo networkInfo;
        Uri data;
        Message message;
        ActivityHome activityHome;
        int i10 = 3;
        int i11 = 2;
        final int i12 = 0;
        final int i13 = 1;
        switch (this.f204a) {
            case 0:
                if (isInitialStickyBroadcast()) {
                    return;
                }
                l lVar = (l) this.f205b;
                lVar.b(g.b(context, intent, lVar.f221j, lVar.f220i, lVar.a()));
                return;
            case 1:
                com.bumptech.glide.manager.r rVar = (com.bumptech.glide.manager.r) this.f205b;
                rVar.getClass();
                com.bumptech.glide.manager.r.f3402g.execute(new com.bumptech.glide.manager.q(rVar, 2));
                return;
            case 2:
                String action = intent.getAction();
                j6 j6Var = (j6) this.f205b;
                if (action.equals(j6Var.f6725b.getPackageName() + ".BROADCAST_ACC_KEY_CODE")) {
                    try {
                        int intExtra = intent.getIntExtra("keyCode", -1);
                        int intExtra2 = intent.getIntExtra("action", -1);
                        if (intExtra != -1) {
                            j6Var.l.q(new IntIntBean(intExtra, intExtra2));
                            j6Var.f7269k.scrollToPosition(j6Var.l.b() - 1);
                            return;
                        }
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                return;
            case 3:
                p000if.a.o0("action=" + intent.getAction());
                l6.d dVar = (l6.d) this.f205b;
                if (dVar.f10640e != null) {
                    p000if.a.o0("service has bond!");
                    return;
                }
                synchronized (dVar.f10649o) {
                    size = ((l6.d) this.f205b).f10649o.size();
                    p000if.a.o0("subscribe size=" + size);
                }
                synchronized (((l6.d) this.f205b).f10651q) {
                    size2 = ((l6.d) this.f205b).f10651q.size();
                    p000if.a.o0("localCallback size=" + size2);
                }
                synchronized (((l6.d) this.f205b).f10647m) {
                    size3 = ((l6.d) this.f205b).f10647m.size();
                    p000if.a.o0("set size=" + size3);
                }
                synchronized (((l6.d) this.f205b).f10648n) {
                    size4 = ((l6.d) this.f205b).f10648n.size();
                    p000if.a.o0("get size=" + size4);
                }
                if (size > 0 || size2 > 0 || size3 > 0 || size4 > 0) {
                    ((l6.d) this.f205b).f();
                    ((l6.d) this.f205b).a();
                    return;
                }
                return;
            case 4:
                ((fe.c) this.f205b).g();
                return;
            case 5:
                AccService accService = (AccService) this.f205b;
                String action2 = intent.getAction();
                if (action2 == null) {
                    return;
                }
                System.out.getClass();
                try {
                    try {
                        if (action2.equals(accService.getPackageName() + ".BROADCAST_TO_ACC")) {
                            String stringExtra = intent.getStringExtra("typeName");
                            if (stringExtra == null) {
                                return;
                            }
                            if ("INTERCEPT_KEY_ACC".equals(stringExtra)) {
                                boolean booleanExtra = intent.getBooleanExtra("bool", false);
                                accService.F = booleanExtra;
                                if (booleanExtra) {
                                    accService.f3938j.postDelayed(new Runnable(this) { // from class: ta.d

                                        /* renamed from: b, reason: collision with root package name */
                                        public final /* synthetic */ a2.k f14861b;

                                        {
                                            this.f14861b = this;
                                        }

                                        @Override // java.lang.Runnable
                                        public final void run() throws InterruptedException {
                                            a2.k kVar = this.f14861b;
                                            switch (i12) {
                                                case 0:
                                                    ((AccService) kVar.f205b).F = false;
                                                    break;
                                                default:
                                                    if (!a0.g(((AccService) kVar.f205b).getFilesDir() + "/EnableAccSeccompRoot")) {
                                                        fa.d.f5659a.getClass();
                                                        if (u9.d.r(Name.MARK).l0().k().contains("uid=0")) {
                                                            try {
                                                                if (!u9.d.r("ls - ls " + AppStart.f3772h.getExternalCacheDir().getParentFile().getParentFile().getParentFile().getParentFile().getPath()).l0().q()) {
                                                                    break;
                                                                } else {
                                                                    AppStart.f3772h.f3773a.a();
                                                                    break;
                                                                }
                                                            } catch (RuntimeException unused2) {
                                                                return;
                                                            }
                                                        }
                                                    } else if (!u9.d.r(Name.MARK).l0().k().contains("uid=0")) {
                                                        fa.d.f5659a.i();
                                                        break;
                                                    }
                                                    break;
                                            }
                                        }
                                    }, PopupConst.DURATION_POPUP);
                                }
                            } else if ("UP_KEYMAP_ACC".equals(stringExtra)) {
                                int i14 = AccService.U0;
                                accService.d();
                            } else if ("UP_KEYMAP_NISSAN".equals(stringExtra)) {
                                if (accService.f3930c == null) {
                                    accService.f3930c = new pa.h(accService);
                                }
                                accService.f3930c.a();
                            } else if ("UP_KEYMAP_LOGCAT".equals(stringExtra)) {
                                if (wa.t.f17728a.f17754u) {
                                    wa.w.b("配置更新");
                                }
                                accService.e();
                            } else if ("UP_KEYMAP_EVENT".equals(stringExtra)) {
                                wa.s.c().p(accService);
                            } else if ("UP_AUTO_INIT".equals(stringExtra)) {
                                wa.t.f17728a.c();
                            } else if ("ACC_IS_RUNNING".equals(stringExtra)) {
                                ta.m.d(wa.t.f17728a.f17735d, "ACC_IS_RUNNING_YES");
                            } else if ("UP_FLOAT_BUTTON".equals(stringExtra)) {
                                ya.e.b().d();
                            } else if ("UP_INIT_JIE_TU".equals(stringExtra)) {
                                com.yunpan.appmanage.carsdk.g0.f3810a.b(accService);
                            } else if ("UP_INIT_AIONY".equals(stringExtra)) {
                                z7.s sVarF = com.yunpan.appmanage.carsdk.e.f();
                                if (sVarF == null) {
                                    if (wa.s.c().f17720q) {
                                        com.yunpan.appmanage.carsdk.e.j();
                                    }
                                } else if (wa.s.c().f17720q) {
                                    com.yunpan.appmanage.carsdk.e.c().b(sVarF);
                                } else {
                                    com.yunpan.appmanage.carsdk.e.i(wa.s.c().f17709e);
                                }
                            } else if ("UP_INIT_SIDEBAR".equals(stringExtra)) {
                                ya.h.a().b(accService);
                            } else if ("UP_INIT_FLY18".equals(stringExtra)) {
                                com.yunpan.appmanage.carsdk.x xVar = accService.f3931d;
                                if (xVar != null) {
                                    xVar.m();
                                }
                                if (com.yunpan.appmanage.carsdk.x.i(accService)) {
                                    accService.f3931d = new com.yunpan.appmanage.carsdk.x(accService);
                                }
                            } else if ("UP_INIT_NotUseShizuku".equals(stringExtra)) {
                                fa.n0.f5722a.d();
                            } else if ("UP_ACC_SHELL_SECCOMP_ROOT".equals(stringExtra)) {
                                accService.N0.submit(new Runnable(this) { // from class: ta.d

                                    /* renamed from: b, reason: collision with root package name */
                                    public final /* synthetic */ a2.k f14861b;

                                    {
                                        this.f14861b = this;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() throws InterruptedException {
                                        a2.k kVar = this.f14861b;
                                        switch (i13) {
                                            case 0:
                                                ((AccService) kVar.f205b).F = false;
                                                break;
                                            default:
                                                if (!a0.g(((AccService) kVar.f205b).getFilesDir() + "/EnableAccSeccompRoot")) {
                                                    fa.d.f5659a.getClass();
                                                    if (u9.d.r(Name.MARK).l0().k().contains("uid=0")) {
                                                        try {
                                                            if (!u9.d.r("ls - ls " + AppStart.f3772h.getExternalCacheDir().getParentFile().getParentFile().getParentFile().getParentFile().getPath()).l0().q()) {
                                                                break;
                                                            } else {
                                                                AppStart.f3772h.f3773a.a();
                                                                break;
                                                            }
                                                        } catch (RuntimeException unused2) {
                                                            return;
                                                        }
                                                    }
                                                } else if (!u9.d.r(Name.MARK).l0().k().contains("uid=0")) {
                                                    fa.d.f5659a.i();
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                            }
                        } else if (action2.equals(ta.m.a(accService.getPackageName()))) {
                            wa.t.f17728a.c();
                            if (intent.getBooleanExtra("bool", false)) {
                                int i15 = AccService.U0;
                                accService.g();
                            } else {
                                int i16 = AccService.U0;
                                if (Build.VERSION.SDK_INT >= 24) {
                                    accService.stopForeground(1);
                                } else {
                                    accService.stopForeground(true);
                                }
                            }
                        } else {
                            if (action2.equals(accService.getPackageName() + ".BROADCAST_AUTO_RORATION_UP_TWO")) {
                                wa.u uVar = wa.t.f17728a;
                                uVar.Q = intent.getBooleanExtra("bool", false);
                                wa.z zVar = wa.y.f17766a;
                                zVar.getClass();
                                if (!uVar.Q) {
                                    v8.a aVar = zVar.f17769c;
                                    if (aVar != null) {
                                        aVar.b();
                                        zVar.f17769c.g();
                                        zVar.f17769c = null;
                                    }
                                } else if (zVar.f17770d != null) {
                                    zVar.b();
                                }
                            } else if (action2.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                                int intExtra3 = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE);
                                if (intExtra3 == 12) {
                                    wa.s.c().i(200);
                                } else if (intExtra3 == 10) {
                                    wa.s.c().i(CarSettingID.Recv.IGM_INPUT_OVER_VOLT);
                                }
                            } else if (action2.equals("android.bluetooth.device.action.ACL_CONNECTED")) {
                                if (System.currentTimeMillis() - accService.f3941n < 2222) {
                                    return;
                                } else {
                                    wa.s.c().i(CarSettingID.Recv.IGM_OVER_TEMP);
                                }
                            } else if (action2.equals("android.bluetooth.device.action.ACL_DISCONNECTED")) {
                                wa.s.c().i(CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE);
                            } else if (action2.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                                if (System.currentTimeMillis() - accService.f3941n < 2222) {
                                    return;
                                }
                                int intExtra4 = intent.getIntExtra("wifi_state", 4);
                                if (intExtra4 != 0) {
                                    if (intExtra4 == 1) {
                                        wa.s.c().i(301);
                                    } else if (intExtra4 != 2 && intExtra4 == 3) {
                                        wa.s.c().i(NoConst.RECORDING_TIME_INTERVAL);
                                    }
                                }
                            } else {
                                if (action2.equals("android.net.wifi.STATE_CHANGE")) {
                                    if (System.currentTimeMillis() - accService.f3941n >= 2222 && (networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo")) != null) {
                                        ExecutorService executorService = accService.N0;
                                        if (executorService == null || executorService.isShutdown()) {
                                            accService.N0 = Executors.newFixedThreadPool(3);
                                        }
                                        accService.N0.submit(new s1.f(this, i13, networkInfo));
                                    }
                                    return;
                                }
                                if (action2.equals("android.intent.action.CONFIGURATION_CHANGED")) {
                                    int i17 = accService.getResources().getConfiguration().uiMode & 48;
                                    if (i17 == 32) {
                                        wa.s.c().i(121);
                                    } else if (i17 == 16) {
                                        wa.s.c().i(120);
                                    }
                                } else if (action2.equals("android.hardware.usb.action.USB_DEVICE_ATTACHED")) {
                                    accService.f3934g = System.currentTimeMillis();
                                    wa.s.c().i(350);
                                    UsbDevice usbDevice = (UsbDevice) intent.getParcelableExtra("device");
                                    if (usbDevice == null) {
                                        return;
                                    }
                                    wa.s.c().j(352, "" + usbDevice.getVendorId() + "," + usbDevice.getProductId());
                                } else if (action2.equals("android.hardware.usb.action.USB_DEVICE_DETACHED")) {
                                    wa.s.c().i(351);
                                    HashMap<String, UsbDevice> deviceList = accService.f3942p.getDeviceList();
                                    accService.f3943q.clear();
                                    for (UsbDevice usbDevice2 : deviceList.values()) {
                                        accService.f3943q.add("" + usbDevice2.getVendorId() + "," + usbDevice2.getProductId());
                                    }
                                } else if (action2.equals("android.hardware.usb.action.USB_ACCESSORY_ATTACHED")) {
                                    wa.s.c().i(360);
                                    UsbAccessory usbAccessory = (UsbAccessory) intent.getParcelableExtra("accessory");
                                    if (usbAccessory == null) {
                                        return;
                                    }
                                    Toaster.show((CharSequence) ("" + usbAccessory.getManufacturer() + usbAccessory.getModel()));
                                } else if (action2.equals("android.hardware.usb.action.USB_ACCESSORY_DETACHED")) {
                                    wa.s.c().i(361);
                                } else {
                                    if (action2.equals(accService.getPackageName() + ".MAP_TASK")) {
                                        Toaster.show((CharSequence) "接到广播");
                                        z7.p pVarB0 = d.b.b0(intent.getStringExtra("json"));
                                        if (pVarB0 instanceof z7.o) {
                                            accService.b(pVarB0.f());
                                        } else if (pVarB0 instanceof z7.s) {
                                            z7.o oVar = new z7.o();
                                            oVar.k(pVarB0.g());
                                            accService.b(oVar);
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception unused2) {
                    }
                    if (wa.s.c().l.contains(action2)) {
                        wa.s sVarC = wa.s.c();
                        sVarC.getClass();
                        if (wa.s.c().f17725w == null) {
                            return;
                        }
                        sVarC.f17709e.N0.submit(new s1.f(sVarC, 13, intent));
                        return;
                    }
                    return;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            case 6:
                String action3 = intent.getAction();
                if (action3 == null) {
                    return;
                }
                StartService startService = (StartService) this.f205b;
                if (action3.equals(ta.m.a(startService.getPackageName()))) {
                    try {
                        if (intent.getBooleanExtra("bool", false)) {
                            startService.d();
                        } else if (Build.VERSION.SDK_INT >= 24) {
                            startService.stopForeground(1);
                        } else {
                            startService.stopForeground(true);
                        }
                        return;
                    } catch (Exception unused3) {
                        return;
                    }
                }
                return;
            case 7:
                ((Executor) ((u1.p) this.f205b).f15259c).execute(new s1.f(this, context, 5));
                return;
            case 8:
                a(context, intent);
                return;
            default:
                String action4 = intent.getAction();
                if (action4 == null || (data = intent.getData()) == null) {
                    return;
                }
                String schemeSpecificPart = data.getSchemeSpecificPart();
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (schemeSpecificPart.equals(com.yunpan.appmanage.util.j.f4033a.f4041d)) {
                    return;
                }
                message = new Message();
                activityHome = (ActivityHome) this.f205b;
                switch (action4) {
                    case "android.intent.action.PACKAGE_REPLACED":
                        activityHome.M.removeMessages(1);
                        activityHome.M.removeMessages(0);
                        activityHome.M.removeMessages(3);
                        message.what = 3;
                        message.obj = schemeSpecificPart;
                        activityHome.M.sendMessageDelayed(message, 333L);
                        return;
                    case "android.intent.action.PACKAGE_CHANGED":
                        activityHome.getClass();
                        com.yunpan.appmanage.util.j.f4033a.f4048g0.submit(new fa.v(activityHome, schemeSpecificPart, i11, i10));
                        return;
                    case "android.intent.action.PACKAGE_REMOVED":
                        message.what = 1;
                        message.obj = schemeSpecificPart;
                        activityHome.M.sendMessageDelayed(message, 666L);
                        return;
                    case "android.intent.action.PACKAGE_ADDED":
                        ma.i iVar = ma.h.f11033a;
                        if (iVar.f11039f) {
                            iVar.f11041h.removeMessages(1);
                            iVar.f11041h.sendEmptyMessageDelayed(1, 668L);
                        }
                        message.what = 0;
                        message.obj = schemeSpecificPart;
                        activityHome.M.sendMessageDelayed(message, 666L);
                        return;
                    default:
                        return;
                }
        }
    }
}
