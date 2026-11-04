package fa;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbInterface;
import com.yunpan.appmanage.bean.FileCopyBean;
import com.yunpan.appmanage.bean.UsbAdbData;
import ha.s5;
import ha.y4;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import org.simpleframework.xml.strategy.Name;
import ua.i8;
import ua.i9;
import w.r3;

/* loaded from: classes.dex */
public final /* synthetic */ class c0 implements ec.d, ea.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5655a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f5656b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5657c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f5658d;

    public /* synthetic */ c0(int i10, Object obj, Object obj2, boolean z) {
        this.f5655a = i10;
        this.f5657c = obj;
        this.f5658d = obj2;
        this.f5656b = z;
    }

    @Override // ea.b
    public void f(boolean z) {
        FileCopyBean fileCopyBean = (FileCopyBean) this.f5658d;
        i9 i9Var = (i9) this.f5657c;
        if (z) {
            i9Var.f15744h.b("拷贝中");
            new mc.c(0, new ph.j(3, fileCopyBean)).d(rc.f.f13757b).a(fc.b.a()).b(new ua.g(i9Var, this.f5656b, 3));
            return;
        }
        i9Var.f15744h.a();
        if (fileCopyBean.isHasRepeatFile.get()) {
            new y4(i9Var.f4530f, i9Var.f4529e, fileCopyBean, new i8(i9Var, 1, fileCopyBean)).show();
            return;
        }
        s5 s5Var = new s5(i9Var.f4530f, i9Var.f4529e);
        s5Var.show();
        s5Var.f7734h.setText("分析中");
        r3 r3Var = new r3();
        r3Var.f17243b = new i8(i9Var, 2, s5Var);
        ((ExecutorService) r3Var.f17244c).execute(new a2.c0(r3Var, 15, fileCopyBean));
    }

    @Override // ec.d
    public void g(mc.b bVar) throws Exception {
        String strSubstring;
        int iIndexOf;
        int iIndexOf2;
        String strTrim;
        int iLastIndexOf;
        int iLastIndexOf2;
        String str = "";
        boolean z = this.f5656b;
        Object obj = this.f5657c;
        Object obj2 = this.f5658d;
        switch (this.f5655a) {
            case 0:
                UsbInterface usbInterface = (UsbInterface) obj2;
                e0 e0Var = a.f5647b;
                UsbDeviceConnection usbDeviceConnectionOpenDevice = e0Var.f5671a.openDevice((UsbDevice) obj);
                e0Var.f5672b = usbDeviceConnectionOpenDevice;
                try {
                    if (usbDeviceConnectionOpenDevice == null) {
                        throw new Exception("usb连接失败");
                    }
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    z9.b bVarB = e0.b(com.yunpan.appmanage.util.j.f4033a.f4035a);
                    z9.e eVar = new z9.e(e0Var.f5672b, usbInterface);
                    z9.a aVar = new z9.a();
                    aVar.f19494g = bVarB;
                    aVar.f19488a = eVar;
                    e0Var.f5673c = aVar;
                    aVar.r();
                    q4.a.e(e0Var.f5674d);
                    e0Var.f5674d = e0Var.f5673c.J("shell:");
                    Thread.sleep(222L);
                    String strTrim2 = e0Var.f5674d.K(666L).getListStr().trim();
                    if (!strTrim2.isEmpty()) {
                        strTrim2 = strTrim2.toLowerCase();
                    }
                    if (strTrim2.endsWith(":") || strTrim2.contains("password") || strTrim2.contains("error:")) {
                        e0Var.f5676f = true;
                        if (e0Var.f5677g.isEmpty()) {
                            e0Var.f5677g = com.yunpan.appmanage.util.v.f4106a.Y;
                        }
                    }
                    if (!e0Var.f5677g.isEmpty()) {
                        q4.a.e(e0Var.f5674d);
                        e0Var.f5677g = e0Var.f5677g.replace("\"", "'");
                        e0Var.f5673c.J("shell:" + e0Var.f5677g);
                        Thread.sleep(222L);
                        z9.d dVarJ = e0Var.f5673c.J("shell:");
                        e0Var.f5674d = dVarJ;
                        dVarJ.M(e0Var.f5677g);
                        e0Var.f5674d.K(500L);
                    }
                    e0Var.f5674d.M(Name.MARK);
                    UsbAdbData usbAdbDataK = e0Var.f5674d.K(668L);
                    if (usbAdbDataK.getListStr().toLowerCase().contains("tream open actively rejected")) {
                        e0Var.f5674d.close();
                        e0Var.f5674d = null;
                        throw new Exception("无法打开：adb shell");
                    }
                    if (usbAdbDataK.getListStr().trim().equals("执行命令超时")) {
                        if (!z) {
                            throw new Exception("请用OTG连接其它安卓设备");
                        }
                        throw new Exception("此设备不支持");
                    }
                    if (usbAdbDataK.code == 0 && usbAdbDataK.getListStr().contains("uid=")) {
                        e0Var.f5676f = false;
                    } else {
                        e0Var.f5676f = true;
                    }
                    if (e0Var.f5676f) {
                        throw new Exception(e0Var.f5677g.isEmpty() ? "shell需要密码" : "shell密码错误");
                    }
                    if (!e0Var.f5677g.isEmpty()) {
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        String str2 = e0Var.f5677g;
                        wVar.Y = str2;
                        try {
                            wVar.f4123i.m("OtgAdbShellPassword", str2);
                        } catch (Exception unused) {
                        }
                        wVar.m();
                    }
                    e0Var.a(888L, "setprop persist.sv.enable_adb_install 1");
                    e0Var.a(888L, "setprop sys.jsbd.apk_verify 1");
                    e0Var.a(888L, "settings put global verifier_verify_adb_installs 0");
                    e0Var.a(888L, "settings put global package_verifier_enable 0");
                    e0Var.a(888L, "settings put secure install_non_market_apps 1");
                    UsbAdbData usbAdbDataA = e0Var.a(2000L, "am get-current-user");
                    if (usbAdbDataA.code == 0 && !usbAdbDataA.lines.isEmpty()) {
                        try {
                            PrintStream printStream = System.out;
                            usbAdbDataA.lines.get(0);
                            printStream.getClass();
                            e0Var.f5679i = Integer.parseInt(usbAdbDataA.lines.get(0));
                        } catch (Exception unused2) {
                        }
                    }
                    UsbAdbData usbAdbDataA2 = e0Var.a(2000L, "getprop ro.build.version.sdk");
                    usbAdbDataA2.getListStr();
                    if (usbAdbDataA2.code == 0) {
                        Iterator<String> it = usbAdbDataA2.lines.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                String strTrim3 = it.next().trim();
                                if (!strTrim3.isEmpty() && strTrim3.length() < 3) {
                                    try {
                                        e0Var.f5678h = Integer.parseInt(strTrim3);
                                    } catch (Exception unused3) {
                                    }
                                }
                            }
                        }
                    }
                    bVar.b();
                    return;
                } catch (Exception e7) {
                    String strB = da.b.b(e7, new StringBuilder(), "");
                    if (strB.isEmpty()) {
                        strB = "连接失败";
                    }
                    q4.a.e(e0Var.f5674d);
                    e0Var.f5674d = null;
                    z9.a aVar2 = e0Var.f5673c;
                    if (aVar2 != null) {
                        aVar2.close();
                    }
                    q4.a.e(e0Var.f5673c);
                    e0Var.f5673c = null;
                    try {
                        e0Var.f5672b.close();
                        e0Var.f5672b = null;
                    } catch (Exception unused4) {
                    }
                    android.support.v4.media.session.a.B(strB, bVar);
                    return;
                }
            default:
                String str3 = (String) obj2;
                g0.e eVar2 = (g0.e) obj;
                eVar2.getClass();
                q4.a.c();
                if (q4.a.u() > 4) {
                    com.yunpan.appmanage.util.a0.u("检测到您的系统日志等级过低");
                }
                if (!q4.a.D()) {
                    com.yunpan.appmanage.util.a0.u("检测到您可能未开启系统日志");
                }
                eVar2.f5939a = false;
                eVar2.f5940b = false;
                try {
                    try {
                        eVar2.f("sh");
                    } catch (Exception e10) {
                        com.yunpan.appmanage.util.a0.s("监听日志出错：" + e10.getMessage(), false);
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                    eVar2.f(Name.MARK);
                }
                eVar2.g("logcat -c");
                Thread.sleep(300L);
                ArrayBlockingQueue arrayBlockingQueue = (ArrayBlockingQueue) eVar2.f5946h;
                arrayBlockingQueue.clear();
                if (!z) {
                    str = " -v tag";
                }
                eVar2.g("logcat".concat(str));
                while (true) {
                    int i10 = 0;
                    while (true) {
                        if (!eVar2.f5939a && !eVar2.f5940b) {
                            try {
                                strSubstring = (String) arrayBlockingQueue.poll(6L, TimeUnit.SECONDS);
                            } catch (Exception unused5) {
                                strSubstring = null;
                            }
                            if (strSubstring == null) {
                                i10++;
                                if (i10 >= 9) {
                                    com.yunpan.appmanage.util.a0.s("监听不到系统日志，已停止", false);
                                }
                            } else {
                                if (z) {
                                    if (strSubstring.length() >= 21 && (iIndexOf2 = strSubstring.indexOf(":", 21)) >= 0 && (iLastIndexOf = (strTrim = strSubstring.substring(0, iIndexOf2).trim()).lastIndexOf(" ")) >= 0 && (iLastIndexOf2 = strTrim.substring(0, iLastIndexOf).trim().lastIndexOf(" ")) >= 0) {
                                        strSubstring = strSubstring.substring(iLastIndexOf2 + 1);
                                    }
                                } else if (strSubstring.charAt(1) != '/' && (iIndexOf = strSubstring.indexOf("/")) > 2) {
                                    strSubstring = strSubstring.substring(iIndexOf - 1);
                                }
                                strSubstring.toLowerCase();
                                if (str3.isEmpty() || strSubstring.contains(str3)) {
                                    if (!strSubstring.isEmpty()) {
                                        bVar.f(strSubstring);
                                    }
                                }
                            }
                        }
                    }
                }
                eVar2.k();
                bVar.b();
                return;
        }
    }

    public /* synthetic */ c0(g0.e eVar, boolean z, String str) {
        this.f5655a = 1;
        this.f5657c = eVar;
        this.f5656b = z;
        this.f5658d = str;
    }
}
