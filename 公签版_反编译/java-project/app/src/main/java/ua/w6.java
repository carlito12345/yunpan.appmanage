package ua;

import android.app.ActivityManager;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.net.wifi.SoftApConfiguration;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.IInterface;
import android.os.Process;
import android.provider.Settings;
import android.view.Display;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.gj.server.GjBinderWrapper;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.ShortcutInfo;
import com.yunpan.appmanage.magica.MagicaService;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.shizuku.IGjAdbFace;
import com.yunpan.appmanage.ui.ActivityJieTText;
import com.yunpan.appmanage.ui.ActivityJieTText2;
import com.yunpan.appmanage.ui.ActivityStudy;
import com.yunpan.appmanage.ui.ActivityTextAiOnY;
import com.yunpan.appmanage.ui.ActivityTextAiOnYP;
import com.yunpan.appmanage.ui.ActivityTextDesaysvVds;
import com.yunpan.appmanage.ui.ActivityTextFlyOS12;
import com.yunpan.appmanage.ui.ActivityTextFlyOS18;
import com.yunpan.appmanage.ui.ActivityTextFlyOSAll;
import com.yunpan.appmanage.ui.ActivityTextIflytek;
import ha.fa;
import io.github.muntashirakon.adb.android.AdbMdns;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.nio.file.FileSystems;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class w6 implements ec.d, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16019a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityStudy f16020b;

    public /* synthetic */ w6(ActivityStudy activityStudy, int i10) {
        this.f16019a = i10;
        this.f16020b = activityStudy;
    }

    private final void a(mc.b bVar) throws Exception {
        int i10 = ActivityStudy.I;
        ActivityStudy activityStudy = this.f16020b;
        activityStudy.getClass();
        try {
            fa.b0.f5652a.getClass();
            if (!a2.w0.O()) {
                throw new Exception("请先连接adb");
            }
            fa.a0 a0VarQ = a2.w0.q(2000L, "pm grant " + activityStudy.A.getPackageName() + " android.permission.WRITE_SECURE_SETTINGS");
            if (a0VarQ.f5648a != 0) {
                throw new Exception(a0VarQ.a());
            }
            bVar.b();
        } catch (Exception e7) {
            bVar.d(e7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0418  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Exception {
        String str;
        String str2;
        ActivityStudy activityStudy = this.f16020b;
        switch (this.f16019a) {
            case 0:
                int i10 = ActivityStudy.I;
                activityStudy.getClass();
                try {
                    fa.b bVar2 = fa.a.f5646a;
                    if (!bVar2.f()) {
                        throw new Exception("jni服务未激活");
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    try {
                        stringBuffer.append("服务版本：");
                        stringBuffer.append(bVar2.f5651b.getVersion());
                        stringBuffer.append(SignParameters.NEW_LINE);
                        stringBuffer.append("权限：");
                        stringBuffer.append(bVar2.f5651b.getUid());
                        stringBuffer.append("   ");
                        stringBuffer.append("用户：");
                        stringBuffer.append(bVar2.f5651b.getUserId());
                        stringBuffer.append(SignParameters.NEW_LINE);
                        stringBuffer.append("读取tmp：");
                        stringBuffer.append(bVar2.f5651b.file_canReadAndWrite("/data/local/tmp") ? "正常" : "异常");
                        stringBuffer.append(SignParameters.NEW_LINE);
                        stringBuffer.append("命令tmp：");
                        stringBuffer.append(bVar2.f5651b.exec("ls -ls /data/local/tmp", 2000L).code == 0 ? "正常" : "异常");
                        stringBuffer.append(SignParameters.NEW_LINE);
                        stringBuffer.append("读取sd：");
                        IGjAdbFace iGjAdbFace = bVar2.f5651b;
                        fa.h0 h0Var = fa.g0.f5682a;
                        stringBuffer.append(iGjAdbFace.file_canReadAndWrite(h0Var.d()) ? "正常" : "异常");
                        stringBuffer.append(SignParameters.NEW_LINE);
                        stringBuffer.append("命令sd：");
                        IGjAdbFace iGjAdbFace2 = bVar2.f5651b;
                        StringBuilder sb2 = new StringBuilder("ls -ls ");
                        sb2.append(h0Var.d());
                        stringBuffer.append(iGjAdbFace2.exec(sb2.toString(), 2000L).code == 0 ? "正常" : "异常");
                        stringBuffer.append(SignParameters.NEW_LINE);
                        stringBuffer.append("私有目录：");
                        IGjAdbFace iGjAdbFace3 = bVar2.f5651b;
                        StringBuilder sb3 = new StringBuilder("ls -ls ");
                        sb3.append(activityStudy.A.getFilesDir().getParentFile().getPath());
                        stringBuffer.append(iGjAdbFace3.exec(sb3.toString(), 2000L).code == 0 ? "正常" : "异常");
                        stringBuffer.append(SignParameters.NEW_LINE);
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                        if (kVar.f4060n > 0) {
                            stringBuffer.append("读取media：");
                            IGjAdbFace iGjAdbFace4 = bVar2.f5651b;
                            StringBuilder sb4 = new StringBuilder("/data/media/");
                            sb4.append(kVar.f4060n);
                            stringBuffer.append(iGjAdbFace4.file_canReadAndWrite(sb4.toString()) ? "正常" : "异常");
                            stringBuffer.append(SignParameters.NEW_LINE);
                            stringBuffer.append("命令media：");
                            IGjAdbFace iGjAdbFace5 = bVar2.f5651b;
                            StringBuilder sb5 = new StringBuilder("ls -ls /data/media/");
                            sb5.append(kVar.f4060n);
                            stringBuffer.append(iGjAdbFace5.exec(sb5.toString(), 2000L).code == 0 ? "正常" : "异常");
                            stringBuffer.append(SignParameters.NEW_LINE);
                        }
                    } catch (Exception e7) {
                        stringBuffer.append(e7.getMessage());
                    }
                    com.yunpan.appmanage.util.a0.w("" + ((Object) stringBuffer));
                    bVar.b();
                    return;
                } catch (Exception e10) {
                    bVar.d(e10);
                    return;
                }
            case 1:
                int i11 = ActivityStudy.I;
                activityStudy.getClass();
                try {
                    if (!fa.h.f5683a.i() && !fa.l.f5712a.isConnected()) {
                        throw new Exception("adb服务未连接");
                    }
                    StringBuffer stringBuffer2 = new StringBuffer();
                    try {
                        fa.b0.f5652a.getClass();
                        fa.a0 a0VarK = a2.w0.k(Name.MARK);
                        String strSubstring = "未知";
                        try {
                            str = "正常";
                        } catch (Exception unused) {
                            str = "正常";
                        }
                        try {
                            str2 = "异常";
                            try {
                                strSubstring = a0VarK.a().substring(a0VarK.a().indexOf("uid=") + 4, a0VarK.a().indexOf("("));
                            } catch (Exception unused2) {
                            }
                        } catch (Exception unused3) {
                            str2 = "异常";
                            stringBuffer2.append("权限：");
                            stringBuffer2.append(strSubstring);
                            stringBuffer2.append("   ");
                            stringBuffer2.append("用户：");
                            stringBuffer2.append(p000if.a.T());
                            stringBuffer2.append(SignParameters.NEW_LINE);
                            stringBuffer2.append("内部存储：");
                            a2.w0 w0Var = fa.b0.f5652a;
                            String str3 = "ls -ls " + fa.g0.f5682a.d();
                            w0Var.getClass();
                            stringBuffer2.append(a2.w0.k(str3).f5648a != 0 ? str : str2);
                            stringBuffer2.append(SignParameters.NEW_LINE);
                            stringBuffer2.append("外部数据：");
                            StringBuilder sb6 = new StringBuilder("ls -ls ");
                            sb6.append(activityStudy.A.getExternalCacheDir().getParent());
                            stringBuffer2.append(a2.w0.k(sb6.toString()).f5648a != 0 ? str : str2);
                            stringBuffer2.append(SignParameters.NEW_LINE);
                            stringBuffer2.append("外部数据：");
                            StringBuilder sb7 = new StringBuilder("ls -ls ");
                            sb7.append(activityStudy.A.getExternalCacheDir().getParent().replace("/data/", "/\u200bdata/"));
                            stringBuffer2.append(a2.w0.k(sb7.toString()).f5648a != 0 ? str : str2);
                            stringBuffer2.append(SignParameters.NEW_LINE);
                            stringBuffer2.append("tmp目录：");
                            stringBuffer2.append(a2.w0.k("ls -ls /data/local/tmp").f5648a != 0 ? str : str2);
                            stringBuffer2.append(SignParameters.NEW_LINE);
                            com.yunpan.appmanage.util.a0.w("" + ((Object) stringBuffer2));
                            bVar.b();
                            return;
                        }
                        stringBuffer2.append("权限：");
                        stringBuffer2.append(strSubstring);
                        stringBuffer2.append("   ");
                        stringBuffer2.append("用户：");
                        stringBuffer2.append(p000if.a.T());
                        stringBuffer2.append(SignParameters.NEW_LINE);
                        stringBuffer2.append("内部存储：");
                        a2.w0 w0Var2 = fa.b0.f5652a;
                        String str32 = "ls -ls " + fa.g0.f5682a.d();
                        w0Var2.getClass();
                        stringBuffer2.append(a2.w0.k(str32).f5648a != 0 ? str : str2);
                        stringBuffer2.append(SignParameters.NEW_LINE);
                        stringBuffer2.append("外部数据：");
                        StringBuilder sb62 = new StringBuilder("ls -ls ");
                        sb62.append(activityStudy.A.getExternalCacheDir().getParent());
                        stringBuffer2.append(a2.w0.k(sb62.toString()).f5648a != 0 ? str : str2);
                        stringBuffer2.append(SignParameters.NEW_LINE);
                        stringBuffer2.append("外部数据：");
                        StringBuilder sb72 = new StringBuilder("ls -ls ");
                        sb72.append(activityStudy.A.getExternalCacheDir().getParent().replace("/data/", "/\u200bdata/"));
                        stringBuffer2.append(a2.w0.k(sb72.toString()).f5648a != 0 ? str : str2);
                        stringBuffer2.append(SignParameters.NEW_LINE);
                        stringBuffer2.append("tmp目录：");
                        stringBuffer2.append(a2.w0.k("ls -ls /data/local/tmp").f5648a != 0 ? str : str2);
                        stringBuffer2.append(SignParameters.NEW_LINE);
                    } catch (Exception e11) {
                        stringBuffer2.append(e11.getMessage());
                    }
                    com.yunpan.appmanage.util.a0.w("" + ((Object) stringBuffer2));
                    bVar.b();
                    return;
                } catch (Exception e12) {
                    bVar.d(e12);
                    return;
                }
            case 2:
                int i12 = ActivityStudy.I;
                activityStudy.getClass();
                try {
                    fa.b0.f5652a.getClass();
                    if (!a2.w0.O()) {
                        throw new Exception("请先连接adb");
                    }
                    StringBuilder sb8 = new StringBuilder();
                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                    sb8.append(com.yunpan.appmanage.util.j.f4033a.f4047g ? "cmd " : "");
                    sb8.append("appops set ");
                    sb8.append(activityStudy.A.getPackageName());
                    sb8.append(" SYSTEM_ALERT_WINDOW allow");
                    fa.a0 a0VarQ = a2.w0.q(2000L, sb8.toString());
                    if (a0VarQ.f5648a != 0) {
                        throw new Exception(a0VarQ.a());
                    }
                    bVar.b();
                    return;
                } catch (Exception e13) {
                    bVar.d(e13);
                    return;
                }
            case 3:
                int i13 = ActivityStudy.I;
                activityStudy.getClass();
                try {
                    AtomicInteger atomicInteger = new AtomicInteger(-1);
                    AtomicReference atomicReference = new AtomicReference(null);
                    CountDownLatch countDownLatch = new CountDownLatch(1);
                    AdbMdns adbMdns = new AdbMdns(activityStudy.A, AdbMdns.SERVICE_TYPE_ADB, new io.github.muntashirakon.adb.a(atomicReference, atomicInteger, countDownLatch, 3));
                    adbMdns.start();
                    AdbMdns adbMdns2 = new AdbMdns(activityStudy.A, AdbMdns.SERVICE_TYPE_TLS_CONNECT, new io.github.muntashirakon.adb.a(atomicReference, atomicInteger, countDownLatch, 4));
                    adbMdns2.start();
                    try {
                        if (countDownLatch.await(2000L, TimeUnit.MILLISECONDS)) {
                            int i14 = atomicInteger.get();
                            if (i14 > 0) {
                                com.yunpan.appmanage.util.a0.w("找到端口：" + i14);
                            }
                            adbMdns.stop();
                            adbMdns2.stop();
                            bVar.b();
                            return;
                        }
                        if (com.yunpan.appmanage.util.v.f4106a.D) {
                            try {
                                Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled", 0);
                                Thread.sleep(200L);
                                Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_enabled", 0);
                                Thread.sleep(500L);
                                if (wa.t.f17728a.f17755v) {
                                    wa.w.b("adb_wifi_enabled：" + Settings.Global.getInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled"));
                                }
                                Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_enabled", 1);
                                Thread.sleep(333L);
                                Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled", 1);
                                Thread.sleep(1000L);
                            } catch (Exception unused4) {
                            }
                        }
                        com.yunpan.appmanage.util.a0.t("搜索超时");
                        throw new Exception("搜索超时");
                    } finally {
                        adbMdns.stop();
                        adbMdns2.stop();
                    }
                } catch (Exception e14) {
                    bVar.d(e14);
                    return;
                }
            case 4:
                int i15 = ActivityStudy.I;
                activityStudy.getClass();
                try {
                    StringBuilder sb9 = new StringBuilder("AccService：");
                    sb9.append(p000if.a.h0(activityStudy.A, AccService.class));
                    sb9.append("\nAccService：");
                    sb9.append(u9.d.r("dumpsys accessibility | grep -c \"" + AccService.class.getName() + "\"").l0().k().toString().trim().equals("1"));
                    com.yunpan.appmanage.util.a0.w(sb9.toString());
                } catch (Exception unused5) {
                }
                bVar.b();
                return;
            case 5:
                int i16 = ActivityStudy.I;
                activityStudy.getClass();
                try {
                    fa.b bVar3 = fa.a.f5646a;
                    if (!bVar3.f()) {
                        throw new Exception("请先激活jni服务");
                    }
                    bVar3.c().setMode(24, Process.myUid(), activityStudy.A.getPackageName(), 0);
                    bVar.b();
                    return;
                } catch (Exception e15) {
                    bVar.d(e15);
                    return;
                }
            case 6:
                int i17 = ActivityStudy.I;
                activityStudy.getClass();
                try {
                    if (fa.a.f5646a.f()) {
                        Toaster.show((CharSequence) "已激活，无需再次激活");
                        bVar.b();
                    } else {
                        a2.w0 w0Var3 = fa.b0.f5652a;
                        String strA = fa.b.a(AppStart.f3772h);
                        w0Var3.getClass();
                        com.yunpan.appmanage.util.a0.w(a2.w0.n(PopupConst.DURATION_POPUP_SHORT, strA).a());
                        p000if.a.s(activityStudy.A, fa.b.a(AppStart.f3772h));
                        bVar.b();
                    }
                    return;
                } catch (Exception e16) {
                    bVar.d(e16);
                    return;
                }
            case 7:
                int i18 = ActivityStudy.I;
                activityStudy.getClass();
                try {
                } catch (Exception e17) {
                    g.b.s(e17, new StringBuilder(""));
                }
                if (Build.VERSION.SDK_INT < 25) {
                    com.yunpan.appmanage.util.a0.u("不适合低版本系统");
                    bVar.b();
                    return;
                }
                String strU = qf.c.u(activityStudy.A);
                if (strU != null && !strU.isEmpty()) {
                    ArrayList arrayListU = s1.g.u(strU);
                    if (arrayListU.isEmpty()) {
                        com.yunpan.appmanage.util.a0.u("未找到快捷方式");
                        bVar.b();
                        return;
                    }
                    StringBuffer stringBuffer3 = new StringBuffer();
                    Iterator it = arrayListU.iterator();
                    while (it.hasNext()) {
                        ShortcutInfo shortcutInfo = (ShortcutInfo) it.next();
                        stringBuffer3.append(shortcutInfo.getId() + "  " + shortcutInfo.getLabel() + "  " + shortcutInfo.getIntent().getAction() + SignParameters.NEW_LINE);
                    }
                    com.yunpan.appmanage.util.a0.w(stringBuffer3.toString());
                    bVar.b();
                    return;
                }
                com.yunpan.appmanage.util.a0.u("未找到默认桌面");
                bVar.b();
                return;
            case 8:
                a(bVar);
                return;
            default:
                int i19 = ActivityStudy.I;
                activityStudy.getClass();
                try {
                    fa.b bVar4 = fa.a.f5646a;
                    if (!bVar4.f()) {
                        throw new Exception("请先激活jni服务");
                    }
                    bVar4.e().grantRuntimePermission(activityStudy.A.getPackageName(), "android.permission.WRITE_SECURE_SETTINGS", 0);
                    bVar.b();
                    return;
                } catch (Exception e18) {
                    bVar.d(e18);
                    return;
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) throws SocketException, NoSuchMethodException, PackageManager.NameNotFoundException, SecurityException {
        int i11 = 5;
        int i12 = 7;
        int i13 = 28;
        int i14 = 4;
        int i15 = 16;
        int i16 = 8;
        int i17 = 3;
        int i18 = 2;
        int i19 = 1;
        int i20 = 0;
        int i21 = ActivityStudy.I;
        ActivityStudy activityStudy = this.f16020b;
        activityStudy.getClass();
        if (i10 == 0) {
            HashSet hashSet = new HashSet();
            int ipAddress = ((WifiManager) activityStudy.A.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getIpAddress();
            if (ipAddress != 0) {
                hashSet.add(String.format("%d.%d.%d.%d", Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255)));
            }
            hashSet.add("---getDisplayName1---");
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    String displayName = networkInterfaceNextElement.getDisplayName();
                    if (displayName.equals("eth0") || displayName.equals("wlan0")) {
                        Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                        while (inetAddresses.hasMoreElements()) {
                            InetAddress inetAddressNextElement = inetAddresses.nextElement();
                            if (inetAddressNextElement instanceof Inet4Address) {
                                if (inetAddressNextElement.isLoopbackAddress()) {
                                    hashSet.add(inetAddressNextElement.getHostAddress() + "-本地");
                                } else {
                                    hashSet.add(inetAddressNextElement.getHostAddress());
                                }
                            }
                        }
                    }
                }
            } catch (SocketException e7) {
                e7.printStackTrace();
            }
            hashSet.add("---getDisplayName2---");
            try {
                Enumeration<NetworkInterface> networkInterfaces2 = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces2.hasMoreElements()) {
                    Enumeration<InetAddress> inetAddresses2 = networkInterfaces2.nextElement().getInetAddresses();
                    while (inetAddresses2.hasMoreElements()) {
                        InetAddress inetAddressNextElement2 = inetAddresses2.nextElement();
                        if ((inetAddressNextElement2 instanceof Inet4Address) && !inetAddressNextElement2.isLoopbackAddress()) {
                            hashSet.add(inetAddressNextElement2.getHostAddress());
                        }
                    }
                }
            } catch (SocketException e10) {
                e10.printStackTrace();
            }
            Iterator it = hashSet.iterator();
            String strK = "";
            while (it.hasNext()) {
                strK = g.b.k(strK, (String) it.next(), SignParameters.NEW_LINE);
            }
            new ha.z6(activityStudy, activityStudy, strK, "").show();
            return;
        }
        if (i10 == 1) {
            HashMap<String, UsbDevice> deviceList = ((UsbManager) activityStudy.A.getSystemService("usb")).getDeviceList();
            if (deviceList == null || deviceList.isEmpty()) {
                com.yunpan.appmanage.util.a0.u("请先插入USB设备");
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            for (UsbDevice usbDevice : deviceList.values()) {
                stringBuffer.append("VendorId：");
                stringBuffer.append(usbDevice.getVendorId());
                stringBuffer.append("ProductId：");
                stringBuffer.append(usbDevice.getProductId());
                stringBuffer.append("\n\n");
            }
            com.yunpan.appmanage.util.a0.w(stringBuffer.toString());
            return;
        }
        if (i10 == 2) {
            new mc.c(i20, new w6(activityStudy, i14)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.l2(i13));
            return;
        }
        if (i10 == 3) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j) {
                com.yunpan.appmanage.util.a0.u("你已有系统签名权限，无需多此一举");
                return;
            }
            fa.b0.f5652a.getClass();
            if (a2.w0.K()) {
                com.yunpan.appmanage.util.a0.u("您已获得root权限，无需多此一举");
                return;
            } else if (a2.w0.J()) {
                new ha.z6(activityStudy, activityStudy, "严重警告：此功能是危险功能，请勿使用", "警告：可能会导致无法开机，变砖头，请勿尝试", "好的", "我想试试", new x6(activityStudy, i20)).show();
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("请先连接adb");
                return;
            }
        }
        if (i10 == 4) {
            new mc.c(i20, new w6(activityStudy, i12)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.l2(i13));
            return;
        }
        if (i10 == 5) {
            if (((x9.l3) activityStudy.D.t(i10)).f18272b.equals("搜索端口")) {
                new mc.c(i20, new w6(activityStudy, i17)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.s2(i10, i12, activityStudy));
                return;
            }
            return;
        }
        if (i10 == 6) {
            new mc.c(i20, new t6(i17)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(15));
            return;
        }
        if (i10 == 7) {
            new mc.c(i20, new w6(activityStudy, 6)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(i15));
            return;
        }
        if (i10 == 8) {
            if (Build.VERSION.SDK_INT >= 26) {
                FileSystems.getDefault().getFileStores();
            }
            new mc.c(i20, new w6(activityStudy, i19)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(23));
            return;
        }
        if (i10 == 9) {
            new mc.c(i20, new w6(activityStudy, i20)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(22));
            return;
        }
        if (i10 == 10) {
            com.yunpan.appmanage.util.a0.u("避免不必要的麻烦，不开放此功能");
            return;
        }
        if (i10 == 11) {
            new mc.c(i20, new t6(i18)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(21));
            return;
        }
        if (i10 == 12) {
            if (Build.VERSION.SDK_INT < 23) {
                com.yunpan.appmanage.util.a0.u("低版本系统无需测试");
                return;
            } else {
                new mc.c(i20, new w6(activityStudy, i18)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(17));
                return;
            }
        }
        if (i10 == 13) {
            if (Build.VERSION.SDK_INT < 23) {
                com.yunpan.appmanage.util.a0.u("低版本系统无需测试");
                return;
            } else {
                new mc.c(i20, new w6(activityStudy, i11)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(18));
                return;
            }
        }
        if (i10 == 14) {
            if (Build.VERSION.SDK_INT < 23) {
                com.yunpan.appmanage.util.a0.u("低版本系统无需测试");
                return;
            } else {
                new mc.c(i20, new w6(activityStudy, i16)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(19));
                return;
            }
        }
        if (i10 == 15) {
            if (Build.VERSION.SDK_INT < 23) {
                com.yunpan.appmanage.util.a0.u("低版本系统无需测试");
                return;
            } else {
                new mc.c(i20, new w6(activityStudy, 9)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(20));
                return;
            }
        }
        if (i10 == 16) {
            activityStudy.w(ActivityTextAiOnYP.class);
            return;
        }
        if (i10 == 17) {
            activityStudy.w(ActivityTextAiOnY.class);
            return;
        }
        if (i10 == 18) {
            if (com.yunpan.appmanage.carsdk.h0.c(activityStudy.A)) {
                activityStudy.w(ActivityJieTText.class);
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("不是捷途车机");
                return;
            }
        }
        if (i10 == 19) {
            if (com.yunpan.appmanage.carsdk.h0.c(activityStudy.A)) {
                activityStudy.w(ActivityJieTText2.class);
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("不是捷途车机");
                return;
            }
        }
        if (i10 == 20) {
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j) {
                activityStudy.w(ActivityTextFlyOS12.class);
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("需公签系统");
                return;
            }
        }
        if (i10 == 21) {
            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j) {
                activityStudy.w(ActivityTextFlyOS18.class);
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("需公签系统");
                return;
            }
        }
        if (i10 == 22) {
            DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j) {
                activityStudy.w(ActivityTextFlyOSAll.class);
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("需公签系统");
                return;
            }
        }
        if (i10 == 23) {
            Point pointR = p000if.a.R(activityStudy.A);
            ConstraintLayout constraintLayout = (ConstraintLayout) activityStudy.findViewById(R.id.v_root);
            int[] iArr = new int[2];
            constraintLayout.getLocationOnScreen(iArr);
            int i22 = iArr[0];
            int i23 = iArr[1];
            int width = pointR.x - (constraintLayout.getWidth() + i22);
            int height = pointR.y - (constraintLayout.getHeight() + iArr[1]);
            StringBuffer stringBuffer2 = new StringBuffer("左侧=");
            stringBuffer2.append(i22);
            stringBuffer2.append("顶部=");
            stringBuffer2.append(i23);
            stringBuffer2.append("右侧=");
            stringBuffer2.append(width);
            stringBuffer2.append("底部=");
            stringBuffer2.append(height);
            stringBuffer2.append("\n屏幕大小=");
            stringBuffer2.append(pointR.x);
            stringBuffer2.append(" x ");
            stringBuffer2.append(pointR.y);
            stringBuffer2.append(SignParameters.NEW_LINE);
            DisplayManager displayManager = (DisplayManager) activityStudy.A.getSystemService("display");
            if (displayManager != null || displayManager.getDisplays().length > 0) {
                Display[] displays = displayManager.getDisplays();
                int length = displays.length;
                while (i20 < length) {
                    Display display = displays[i20];
                    stringBuffer2.append("\n屏幕");
                    stringBuffer2.append(display.getDisplayId());
                    stringBuffer2.append(" ");
                    stringBuffer2.append(display.getName());
                    stringBuffer2.append("  分辨率=");
                    stringBuffer2.append(display.getWidth());
                    stringBuffer2.append(" x ");
                    stringBuffer2.append(display.getHeight());
                    stringBuffer2.append("\n  刷新率=");
                    stringBuffer2.append(display.getRefreshRate());
                    if (Build.VERSION.SDK_INT >= 31) {
                        try {
                            stringBuffer2.append("制造商=");
                            stringBuffer2.append(display.getDeviceProductInfo().getProductId());
                            stringBuffer2.append(SignParameters.NEW_LINE);
                        } catch (Exception unused) {
                        }
                    } else {
                        stringBuffer2.append(SignParameters.NEW_LINE);
                    }
                    i20++;
                }
            }
            com.yunpan.appmanage.util.a0.w(stringBuffer2.toString());
            return;
        }
        fa.b bVar = fa.a.f5646a;
        IInterface aVar = null;
        if (i10 == 24) {
            try {
                IGjAdbFace iGjAdbFace = bVar.f5651b;
                if (iGjAdbFace != null) {
                    try {
                        GjBinderWrapper gjBinderWrapper = new GjBinderWrapper(iGjAdbFace, iGjAdbFace.getService("fce_misc_service_source_ctrl"));
                        int i24 = o6.b.f11647e;
                        IInterface iInterfaceQueryLocalInterface = gjBinderWrapper.queryLocalInterface("com.fce.misc.proxy.source.ISourceCtrl");
                        aVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof o6.c)) ? new o6.a(gjBinderWrapper) : (o6.c) iInterfaceQueryLocalInterface;
                    } catch (Exception unused2) {
                    }
                }
                if (((o6.a) aVar).h()) {
                    com.yunpan.appmanage.util.a0.w("请求成功");
                } else {
                    com.yunpan.appmanage.util.a0.u("请求失败");
                }
                return;
            } catch (Exception e11) {
                com.yunpan.appmanage.util.a0.u("请求失败：" + e11.getMessage());
                return;
            }
        }
        if (i10 == 25) {
            if (Build.VERSION.SDK_INT < 29) {
                com.yunpan.appmanage.util.a0.u("仅适合android10以上");
                return;
            }
            v9.i iVar = activityStudy.F;
            if (iVar != null) {
                if (iVar.f16702c >= 1) {
                    com.yunpan.appmanage.util.a0.w("可以获取root权限");
                    return;
                } else {
                    com.yunpan.appmanage.util.a0.u("无法获取root权限");
                    return;
                }
            }
            try {
                activityStudy.bindIsolatedService(new Intent(activityStudy, (Class<?>) MagicaService.class), 1, "magica", activityStudy.getMainExecutor(), activityStudy.H);
                return;
            } catch (Exception e12) {
                com.yunpan.appmanage.util.a0.u("无法绑定服务：" + e12.getMessage());
                return;
            }
        }
        if (i10 == 26) {
            fa.j jVar = fa.h.f5683a;
            if (!jVar.f5702h.equals("已连接")) {
                com.yunpan.appmanage.util.a0.u("adb服务未连接");
                return;
            } else if (jVar.i() || fa.l.f5712a.isConnected()) {
                d.b.k0(1).b(new y6(activityStudy, i18));
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("adb服务未连接");
                return;
            }
        }
        if (i10 == 27) {
            try {
                AppStart.f3772h.f3775c.getApplicationInfo("com.desaysv.ivi.vds.carinfo", 0);
                activityStudy.w(ActivityTextDesaysvVds.class);
                return;
            } catch (Exception unused3) {
                com.yunpan.appmanage.util.a0.u("不支持您的系统");
                return;
            }
        }
        if (i10 == 28) {
            activityStudy.w(ActivityTextIflytek.class);
            return;
        }
        if (i10 == 29) {
            new ha.z6(activityStudy, activityStudy, "百度地图车机版(不是汽车版)", "", "白天", "黑夜", new x6(activityStudy, i19)).show();
            return;
        }
        if (i10 == 30) {
            if (Build.VERSION.SDK_INT < 21) {
                com.yunpan.appmanage.util.a0.u("仅适合android5.0以上");
                return;
            } else if (bVar.f() || fa.n0.f5722a.f5726a) {
                d.b.k0(1).b(new y6(activityStudy, i19));
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("adb服务未连接");
                return;
            }
        }
        if (i10 == 31) {
            StringBuilder sb2 = new StringBuilder("getFilesDir：");
            sb2.append(activityStudy.getFilesDir().getAbsoluteFile());
            sb2.append("\ngetCacheDir：");
            sb2.append(activityStudy.getCacheDir().getAbsoluteFile());
            sb2.append(SignParameters.NEW_LINE);
            try {
                sb2.append("外部存储：");
                sb2.append(Environment.getExternalStorageDirectory().getAbsoluteFile().getAbsolutePath());
                sb2.append(SignParameters.NEW_LINE);
                sb2.append("getExternalFilesDir：");
                sb2.append(activityStudy.getExternalFilesDir(null).getAbsoluteFile());
                sb2.append(SignParameters.NEW_LINE);
                sb2.append("getExternalCacheDir：");
                sb2.append(activityStudy.getExternalCacheDir().getAbsoluteFile());
                sb2.append(SignParameters.NEW_LINE);
            } catch (Exception unused4) {
                sb2.append("出错，无法获取getExternal");
            }
            Toaster.showLong((CharSequence) sb2.toString());
            return;
        }
        if (i10 == 32) {
            p000if.a.s(activityStudy.A, fa.b.a(AppStart.f3772h));
            Toaster.show((CharSequence) "复制完成");
            return;
        }
        if (i10 == 33) {
            WifiManager wifiManager = (WifiManager) activityStudy.getApplicationContext().getSystemService("wifi");
            try {
                Method method = wifiManager.getClass().getMethod("getWifiApConfiguration", null);
                method.setAccessible(true);
                WifiConfiguration wifiConfiguration = (WifiConfiguration) method.invoke(wifiManager, null);
                if (!wifiConfiguration.preSharedKey.isEmpty()) {
                    Toaster.show((CharSequence) ("热点密码：" + wifiConfiguration.preSharedKey));
                    return;
                }
            } catch (Exception e13) {
                e13.printStackTrace();
            }
            if (Build.VERSION.SDK_INT >= 30) {
                try {
                    Method method2 = wifiManager.getClass().getMethod("getSoftApConfiguration", null);
                    method2.setAccessible(true);
                    SoftApConfiguration softApConfigurationI = androidx.media3.exoplayer.video.b0.i(method2.invoke(wifiManager, null));
                    if (!softApConfigurationI.getPassphrase().isEmpty()) {
                        Toaster.show((CharSequence) ("热点密码：" + softApConfigurationI.getPassphrase()));
                        return;
                    }
                } catch (Exception e14) {
                    e14.printStackTrace();
                }
            }
            com.yunpan.appmanage.util.a0.u("获取失败");
            try {
                try {
                    activityStudy.startActivity(new Intent().setClassName("com.android.settings", "com.android.settings.TetherSettings"));
                    return;
                } catch (Exception unused5) {
                    return;
                }
            } catch (Exception unused6) {
                activityStudy.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
                return;
            }
        }
        if (i10 == 34) {
            if (fa.g0.f5682a.d().isEmpty()) {
                com.yunpan.appmanage.util.a0.u("没有内部存储，无法导出");
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add("导出内存清理(终结者)清理名单");
            arrayList.add("导出系统应用包名");
            arrayList.add("打包所有系统app(不包括lib)");
            arrayList.add("导出本次开机后的使用情况");
            new fa(activityStudy, activityStudy, null, arrayList, new g6(activityStudy, i18, arrayList)).show();
            return;
        }
        if (i10 != 35) {
            if (i10 == 36) {
                return;
            }
            com.yunpan.appmanage.util.a0.u("暂未开放");
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            com.yunpan.appmanage.util.a0.u("仅适合android4.x");
            return;
        }
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) AppStart.f3772h.getSystemService("activity")).getRunningTasks(20);
        StringBuilder sb3 = new StringBuilder();
        if (runningTasks != null && !runningTasks.isEmpty()) {
            Iterator<ActivityManager.RunningTaskInfo> it2 = runningTasks.iterator();
            while (it2.hasNext()) {
                sb3.append(it2.next().topActivity.getPackageName());
                sb3.append(SignParameters.NEW_LINE);
            }
        }
        if (sb3.length() == 0) {
            com.yunpan.appmanage.util.a0.u("没有找到任务");
        } else {
            com.yunpan.appmanage.util.a0.w(sb3.toString());
        }
    }
}
