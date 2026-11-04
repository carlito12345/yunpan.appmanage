package k6;

import android.content.pm.PackageInfo;
import com.yunpan.appmanage.ui.ActivityTextDesaysvVds;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import l6.f;
import l6.g;
import l6.h;
import l6.i;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static volatile a f10176b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f10177c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final f f10178a = new f();

    public static a a() {
        if (f10176b == null) {
            synchronized (f10177c) {
                try {
                    if (f10176b == null) {
                        f10176b = new a();
                    }
                } finally {
                }
            }
        }
        return f10176b;
    }

    public final void b(ActivityTextDesaysvVds activityTextDesaysvVds) {
        g gVar;
        f fVar = this.f10178a;
        if (fVar.f10658c) {
            p000if.a.o0("vdb has inited!");
            return;
        }
        fVar.f10658c = true;
        fVar.f10660e = activityTextDesaysvVds;
        p000if.a.o0("client=" + ((ActivityTextDesaysvVds) fVar.f10660e).getPackageName());
        p000if.a.o0("CORE_POOL_SIZE=" + fVar.f10656a);
        p000if.a.o0("MAXIMUM_POOL_SIZE=" + fVar.f10657b);
        fVar.f10659d = new ThreadPoolExecutor(fVar.f10656a, fVar.f10657b, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(128));
        ActivityTextDesaysvVds activityTextDesaysvVds2 = (ActivityTextDesaysvVds) fVar.f10660e;
        ArrayList arrayList = i.f10692a;
        p000if.a.o0("start");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new g(h.VEHICLE_HAL, true, "android.hardware.automotive.vehicle@2.0-service", "com.desaysv.ivi.vds.vehicle.service.VehicleService", "", "", true));
        arrayList2.add(new g(h.SMS, "com.desaysv.ivi.vds.sms", "com.desaysv.ivi.vds.sms.service.SmsService", "action.desaysv.ivi.vds.sms.SERVICE", "action.desaysv.ivi.vds.sms.REBOOT"));
        arrayList2.add(new g(h.SETTING, "com.desaysv.ivi.vds.setting", "com.desaysv.ivi.vds.setting.service.SettingService", "action.desaysv.ivi.vds.setting.SERVICE", "action.desaysv.ivi.vds.setting.REBOOT"));
        arrayList2.add(new g(h.CAR_STATE, "com.desaysv.ivi.vds.carstate", "com.desaysv.ivi.vds.carstate.service.CarStateService", "action.desaysv.ivi.vds.carstate.SERVICE", "action.desaysv.ivi.vds.carstate.REBOOT"));
        arrayList2.add(new g(h.BT, "com.desaysv.ivi.vds.bt", "com.desaysv.ivi.vds.bt.service.BTService", "action.desaysv.ivi.vds.bt.SERVICE", "action.desaysv.ivi.vds.bt.REBOOT"));
        arrayList2.add(new g(h.CAR_INFO, "com.desaysv.ivi.vds.carinfo", "com.desaysv.ivi.vds.carinfo.service.CarInfoService", "action.desaysv.ivi.vds.carinfo.SERVICE", "action.desaysv.ivi.vds.carinfo.REBOOT"));
        arrayList2.add(new g(h.MEDIA, "com.desaysv.ivi.vds.media", "com.desaysv.ivi.vds.media.service.MediaService", "action.desaysv.ivi.vds.media.SERVICE", "action.desaysv.ivi.vds.media.REBOOT"));
        arrayList2.add(new g(h.TSP, "com.desaysv.ivi.vds.tsp", "com.desaysv.ivi.vds.tsp.service.TspService", "action.desaysv.ivi.vds.tsp.SERVICE", "action.desaysv.ivi.vds.tsp.REBOOT"));
        arrayList2.add(new g(h.VR, "com.desaysv.ivi.vds.vr", "com.desaysv.ivi.vds.vr.service.VRService", "action.desaysv.ivi.vds.vr.SERVICE", "action.desaysv.ivi.vds.vr.REBOOT"));
        arrayList2.add(new g(h.NAVI, "com.desaysv.ivi.vds.navi", "com.desaysv.ivi.vds.navi.service.NaviService", "action.desaysv.ivi.vds.navi.SERVICE", "action.desaysv.ivi.vds.navi.REBOOT"));
        arrayList2.add(new g(h.UPGRADE, "com.desaysv.ivi.vds.upgrade", "com.desaysv.ivi.vds.upgrade.service.UpgradeService", "action.desaysv.ivi.vds.upgrade.SERVICE", "action.desaysv.ivi.vds.upgrade.REBOOT"));
        arrayList2.add(new g(h.CAR_LAN, "com.desaysv.ivi.vds.carlan", "com.desaysv.ivi.vds.carlan.service.CarLanService", "action.desaysv.ivi.vds.carlan.SERVICE", "action.desaysv.ivi.vds.carlan.REBOOT"));
        arrayList2.add(new g(h.RVC, "com.desaysv.ivi.vds.rvc", "com.desaysv.ivi.vds.rvc.service.RvcService", "action.desaysv.ivi.vds.rvc.SERVICE", "action.desaysv.ivi.vds.rvc.REBOOT"));
        arrayList2.add(new g(h.PHONELINK, "com.desaysv.service.link", "com.desaysv.service.link.vds.PhoneLinkVDService", "com.desaysv.service.link.phonelink.SERVICE", "com.desaysv.service.link.phonelink.REBOOT"));
        arrayList2.add(new g(h.VEHICLE_DEVICE, true, "com.desaysv.ivi.vds.vdev", "com.desaysv.ivi.vds.vdev.service.VehicleDevice", "", "", true));
        arrayList2.add(new g(h.DSP, true, "android.hardware.dsp@1.0-service", "com.desaysv.ivi.vds.dsp.service.DspService", "", "", true));
        arrayList2.add(new g(h.CABIN_LAN, true, "android.hardware.cabinlan@1.0-service", "com.desaysv.ivi.vds.cabinlan.service.CabinLanService", "", "", true));
        arrayList2.add(new g(h.ENGINEERING, true, "com.desaysv.ivi.engineering@1.0-service", "com.desaysv.ivi.vds.engineering.service.EngineeringService", "", "", true));
        arrayList2.add(new g(h.WATCHDOG, true, "com.desaysv.ivi.watchdog@1.0-service", "com.desaysv.ivi.vds.watchdog.service.WatchdogService", "", "", true));
        arrayList2.add(new g(h.LOG, false, "com.desaysv.ivi.vds.log", "com.desaysv.ivi.vds.log.service.LogService", "action.desaysv.ivi.vds.log.SERVICE", "action.desaysv.ivi.vds.log.REBOOT", false));
        arrayList2.add(new g(h.PROJECTION, false, "com.desaysv.ivi.vds.projection", "com.desaysv.ivi.vds.projection.service.ProjectionService", "action.desaysv.ivi.vds.projection.SERVICE", "action.desaysv.ivi.vds.projection.REBOOT", false));
        arrayList2.add(new g(h.PERMISSION, false, "com.desaysv.ivi.vds.permission", "com.desaysv.ivi.vds.permission.service.PermissionService", "action.desaysv.ivi.vds.permission.SERVICE", "action.desaysv.ivi.vds.permission.REBOOT", false));
        ArrayList arrayList3 = i.f10692a;
        arrayList3.addAll(arrayList2);
        List<PackageInfo> installedPackages = activityTextDesaysvVds2.getPackageManager().getInstalledPackages(0);
        ArrayList arrayList4 = (ArrayList) arrayList3.clone();
        for (PackageInfo packageInfo : installedPackages) {
            if (packageInfo.packageName.startsWith("com.desaysv.ivi.vds.") || packageInfo.packageName.equals("com.desaysv.service.link")) {
                Iterator it = arrayList3.iterator();
                while (true) {
                    if (it.hasNext()) {
                        gVar = (g) it.next();
                        if (!gVar.f10664a) {
                            if (gVar.f10666c.equals(packageInfo.packageName)) {
                                break;
                            }
                        } else {
                            arrayList4.remove(gVar);
                        }
                    }
                }
                p000if.a.o0("exist packageName=" + packageInfo.packageName);
                gVar.f10664a = true;
                arrayList4.remove(gVar);
            }
        }
        p000if.a.o0("uninstall service list len=" + arrayList4.size());
        Iterator it2 = arrayList4.iterator();
        while (it2.hasNext()) {
            g gVar2 = (g) it2.next();
            p000if.a.o0("uninstall service name=".concat(gVar2.f10666c));
            arrayList3.remove(gVar2);
        }
        p000if.a.o0("service list len=" + arrayList3.size());
        p000if.a.o0("end");
        fVar.f10661f = (ArrayList) arrayList3.clone();
    }
}
