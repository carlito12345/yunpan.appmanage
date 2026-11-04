package b8;

import a2.w0;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Environment;
import android.os.SystemProperties;
import android.view.View;
import com.hjq.permissions.OnPermissionCallback;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.bean.AppSelectHomeActivityBean;
import com.yunpan.appmanage.bean.UsbAdbData;
import com.yunpan.appmanage.service.AdbPairService;
import com.yunpan.appmanage.shizuku.CmdResult;
import com.yunpan.appmanage.ui.ActivityAdb;
import com.yunpan.appmanage.ui.ActivityGjDiy;
import com.yunpan.appmanage.ui.ActivityShell;
import com.yunpan.appmanage.ui.ActivityWindowInputAdbPair;
import com.yunpan.appmanage.util.a0;
import fa.b0;
import fa.e0;
import fa.n0;
import io.github.muntashirakon.adb.android.AdbMdns;
import java.io.File;
import java.io.FileInputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements o, OnPermissionCallback, ec.d, v8.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2610a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f2611b;

    public /* synthetic */ a(String str, int i10) {
        this.f2610a = i10;
        this.f2611b = str;
    }

    private final void a(mc.b bVar) throws InterruptedException {
        String str = this.f2611b;
        int i10 = ActivityAdb.G;
        try {
            if (str.equals("AUTOLINK")) {
                u9.d.r("setprop persist.vendor.bosch.usb2.mode peripheral").l0();
                Thread.sleep(500L);
                u9.d.r("setprop sys.usb.config none").l0();
                Thread.sleep(800L);
                u9.d.r("setprop sys.usb.config diag").l0();
                Thread.sleep(1000L);
                SystemProperties.set("sys.autolink.usb.clear", "0");
            } else if (str.equals("DESAYSV")) {
                SystemProperties.set("persist.sv.debug.adb_enable", "1");
                Thread.sleep(500L);
                u9.d.r("setprop sys.usb.config none").l0();
                Thread.sleep(1000L);
                u9.d.r("setprop sys.usb.config diag").l0();
            }
            a0.w("设置完成");
            b0.f5652a.getClass();
            if (!w0.P()) {
                fa.h.f5683a.h(null);
            }
        } catch (Exception e7) {
            e7.printStackTrace();
            g.b.s(e7, new StringBuilder("错误："));
        }
        bVar.b();
    }

    private final void b(mc.b bVar) {
        int i10 = ActivityShell.M;
        String str = this.f2611b;
        try {
            CmdResult cmdResultExec = fa.a.f5646a.f5651b.exec(str, (str.startsWith("pm install ") || str.startsWith("cmd package install ")) ? 70000L : (str.startsWith("rm ") || str.startsWith("logcat ") || str.startsWith("dumpsys ")) ? 16000L : PopupConst.DURATION_POPUP_SHORT);
            cmdResultExec.lists.add("");
            cmdResultExec.lists.add("jni: " + cmdResultExec.code);
            bVar.f(cmdResultExec.getAllStr());
        } catch (Exception e7) {
            bVar.f("执行失败：" + e7.getMessage());
        }
        bVar.b();
    }

    private final void d(mc.b bVar) {
        int i10 = ActivityShell.M;
        String str = this.f2611b;
        bVar.f(str.startsWith("adb ") ? fa.l.f5712a.P(str) : fa.l.f5712a.L(str).getListStr());
        bVar.b();
    }

    private final void f(mc.b bVar) throws InterruptedException {
        fa.m mVar;
        int i10 = 1;
        String str = this.f2611b;
        int i11 = ActivityWindowInputAdbPair.E;
        try {
            HashMap map = new HashMap();
            wa.u uVar = wa.t.f17728a;
            if (uVar.f17755v) {
                wa.w.b("小窗口输入配对码模式");
                wa.w.b("搜索端口中...");
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            AdbMdns adbMdns = new AdbMdns(com.yunpan.appmanage.util.j.f4033a.f4035a, AdbMdns.SERVICE_TYPE_TLS_PAIRING, new ta.g(map, countDownLatch, i10));
            adbMdns.start();
            countDownLatch.await(3333L, TimeUnit.MILLISECONDS);
            adbMdns.stop();
            if (map.isEmpty()) {
                if (uVar.f17755v) {
                    wa.w.b("未找到无线调试端口");
                }
                bVar.d(new Exception("未找到端口"));
                return;
            }
            for (Integer num : map.values()) {
                wa.u uVar2 = wa.t.f17728a;
                if (uVar2.f17755v) {
                    wa.w.b("尝试配对中,端口：" + num);
                }
                try {
                    mVar = fa.l.f5712a;
                } catch (Exception e7) {
                    if (wa.t.f17728a.f17755v) {
                        wa.w.b("配对失败：" + e7.getMessage());
                    }
                }
                if (mVar.pair(num.intValue(), str)) {
                    if (uVar2.f17755v) {
                        wa.w.b("配对成功");
                        wa.w.b("开始重新连接adb");
                    }
                    try {
                        Thread.sleep(666L);
                        mVar.M(com.yunpan.appmanage.util.j.f4033a.f4035a);
                    } catch (Exception e10) {
                        if (wa.t.f17728a.f17755v) {
                            wa.w.b("连接失败：" + e10.getMessage());
                        }
                    }
                    bVar.b();
                    return;
                }
                if (uVar2.f17755v) {
                    wa.w.b("配对失败");
                }
            }
            bVar.d(new Exception("匹配失败"));
        } catch (Exception e11) {
            bVar.d(e11);
        }
    }

    @Override // b8.o
    public Object c() {
        switch (this.f2610a) {
            case 0:
                throw new z7.q(this.f2611b);
            case 1:
                throw new z7.q(this.f2611b);
            case 2:
                throw new z7.q(this.f2611b);
            default:
                throw new z7.q(this.f2611b);
        }
    }

    @Override // v8.c
    public void e(v8.a aVar, View view) {
        String str = this.f2611b;
        try {
            String str2 = new SimpleDateFormat("yyyy年MM月dd日HH时mm分ss秒SSS").format(new Date());
            if (Environment.getExternalStorageState().contains("mounted")) {
                File file = new File(fa.d.f5659a.d() + "/Download/窗口节点" + str2 + ".txt");
                file.getParentFile().mkdirs();
                q4.a.M(file, str);
                aVar.g();
                a0.w("已保存在：Download目录内");
            } else {
                a0.t("失败：无内部sd");
            }
        } catch (Exception unused) {
            a0.u("保存失败");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:163:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x046c A[Catch: Exception -> 0x0488, TRY_LEAVE, TryCatch #21 {Exception -> 0x0488, blocks: (B:180:0x0402, B:182:0x040e, B:194:0x043a, B:197:0x0442, B:199:0x0448, B:200:0x0457, B:202:0x046c, B:185:0x0415, B:186:0x041c, B:187:0x041d, B:188:0x0423, B:190:0x0429), top: B:508:0x0402 }] */
    /* JADX WARN: Removed duplicated region for block: B:507:0x03c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Exception {
        String str;
        Throwable th2;
        Throwable th3;
        int iA;
        byte[] bArr;
        long length;
        long j10;
        int i10;
        String str2;
        String next;
        String str3;
        String str4;
        String str5;
        String str6;
        ef.b bVar2;
        fa.m mVar;
        int i11 = 2;
        String strX = this.f2611b;
        int i12 = 0;
        switch (this.f2610a) {
            case 5:
                String str7 = "";
                bVar.f("文件传送中...");
                e0 e0Var = fa.a.f5647b;
                e0Var.a(2000L, "rm -rf '/data/local/tmp/gj123.apk'");
                UsbAdbData usbAdbData = new UsbAdbData();
                if (e0Var.c()) {
                    try {
                        z9.d dVarJ = e0Var.f5673c.J("sync:");
                        try {
                            FileInputStream fileInputStream = new FileInputStream(strX);
                            try {
                                dVarJ.N(p000if.a.n("SEND".getBytes(), p000if.a.W(31)));
                                dVarJ.N("/data/local/tmp/gj123.apk".getBytes());
                                dVarJ.N(",33206".getBytes());
                                iA = e0Var.f5673c.A() - 100;
                                bArr = new byte[iA];
                                length = new File(strX).length();
                                j10 = 0;
                                i10 = 0;
                            } catch (Throwable th4) {
                                th = th4;
                                str = str7;
                            }
                            while (true) {
                                int i13 = fileInputStream.read(bArr);
                                if (i13 < 0) {
                                    byte[] bytes = "DONE".getBytes();
                                    byte[] bArrW = p000if.a.W((int) System.currentTimeMillis());
                                    byte[][] bArr2 = new byte[i11][];
                                    bArr2[0] = bytes;
                                    bArr2[1] = bArrW;
                                    dVarJ.N(p000if.a.n(bArr2));
                                    Thread.sleep(100L);
                                    byte[] bytes2 = "QUIT".getBytes();
                                    byte[] bArrW2 = p000if.a.W(0);
                                    byte[][] bArr3 = new byte[i11][];
                                    bArr3[0] = bytes2;
                                    bArr3[1] = bArrW2;
                                    dVarJ.N(p000if.a.n(bArr3));
                                    Thread.sleep(100L);
                                    usbAdbData.code = 0;
                                    usbAdbData.lines.add("传输完成");
                                    try {
                                        fileInputStream.close();
                                        dVarJ.close();
                                    } catch (Throwable th5) {
                                        th2 = th5;
                                        str = str7;
                                        try {
                                            dVarJ.close();
                                        } catch (Throwable th6) {
                                            try {
                                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th6);
                                            } catch (Exception unused) {
                                            }
                                        }
                                        try {
                                            throw th2;
                                        } catch (Exception e7) {
                                            e = e7;
                                            e.printStackTrace();
                                            usbAdbData.lines.add("传输失败：" + e.getMessage());
                                            if (usbAdbData.code == 0) {
                                            }
                                        }
                                    }
                                } else {
                                    byte[] bytes3 = "DATA".getBytes();
                                    byte[] bArrW3 = p000if.a.W(i13);
                                    byte[][] bArr4 = new byte[i11][];
                                    bArr4[0] = bytes3;
                                    bArr4[1] = bArrW3;
                                    dVarJ.N(p000if.a.n(bArr4));
                                    if (i13 == iA) {
                                        try {
                                            dVarJ.N(bArr);
                                            str = str7;
                                        } catch (Throwable th7) {
                                            th3 = th7;
                                            str = str7;
                                        }
                                    } else {
                                        byte[] bArr5 = new byte[i13];
                                        str = str7;
                                        try {
                                            System.arraycopy(bArr, 0, bArr5, 0, i13);
                                            dVarJ.N(bArr5);
                                        } catch (Throwable th8) {
                                            th = th8;
                                            th3 = th;
                                            fileInputStream.close();
                                            throw th3;
                                        }
                                    }
                                    j10 += i13;
                                    int i14 = (int) ((100 * j10) / length);
                                    if (i10 != i14) {
                                        i10 = i14;
                                    }
                                    str7 = str;
                                    i11 = 2;
                                }
                                th3 = th7;
                                str = str7;
                                try {
                                    fileInputStream.close();
                                    throw th3;
                                } catch (Throwable th9) {
                                    try {
                                        try {
                                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th9);
                                            throw th3;
                                        } catch (Throwable th10) {
                                            th = th10;
                                            th2 = th;
                                            dVarJ.close();
                                            throw th2;
                                        }
                                    } catch (Exception unused2) {
                                        throw th3;
                                    }
                                }
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            str = "";
                        }
                    } catch (Exception e10) {
                        e = e10;
                        str = str7;
                    }
                } else {
                    usbAdbData.lines.add("连接已断开，请重新连接");
                }
                str = str7;
                if (usbAdbData.code == 0) {
                    bVar.d(new Exception(usbAdbData.getListStr()));
                    return;
                }
                try {
                    bVar2 = new ef.b(new File(strX));
                } catch (Exception unused3) {
                    str2 = str;
                }
                try {
                    bVar2.M();
                    str2 = bVar2.f4963e.f5813a;
                    try {
                        bVar2.close();
                    } catch (Exception unused4) {
                    }
                    if (!str2.isEmpty()) {
                        try {
                            UsbAdbData usbAdbDataA = e0Var.a(800L, "setting get global OUSHANG_WHILTE_APP_LIST");
                            if (usbAdbDataA.code == 0) {
                                Iterator<String> it = usbAdbDataA.lines.iterator();
                                while (it.hasNext()) {
                                    next = it.next();
                                    if (next.contains(".")) {
                                        if (!next.isEmpty() && !next.endsWith(",")) {
                                            next = next + ",";
                                        }
                                        if (!next.contains(str2 + ",")) {
                                            e0Var.a(800L, "setting put global OUSHANG_WHILTE_APP_LIST '" + next + str2 + "'");
                                        }
                                    }
                                }
                            } else if (!com.yunpan.appmanage.util.v.f4106a.E) {
                                throw new Exception("获取白名单失败");
                            }
                            next = str;
                            if (!next.isEmpty()) {
                                next = next + ",";
                            }
                            if (!next.contains(str2 + ",")) {
                            }
                        } catch (Exception unused5) {
                        }
                    }
                    bVar.f("正在安装...");
                    String str8 = "pm install";
                    String str9 = e0Var.f5678h >= 26 ? "cmd package install" : "pm install";
                    UsbAdbData usbAdbData2 = new UsbAdbData();
                    StringBuilder sbB = d0.f.b(str9, " -r -d -t");
                    if (e0Var.f5679i != 0) {
                        str3 = " --user " + e0Var.f5679i;
                    } else {
                        str3 = str;
                    }
                    String strL = g.b.l(str3, " \"/data/local/tmp/gj123.apk\"", sbB);
                    UsbAdbData usbAdbDataA2 = e0Var.a(120000L, strL);
                    if (usbAdbDataA2.getListStr().contains("must be streamed") && str9.startsWith("cmd")) {
                        strL = strL.replace("cmd package", "pm");
                        usbAdbDataA2 = e0Var.a(120000L, strL);
                    } else {
                        str8 = str9;
                    }
                    usbAdbDataA2.getListStr();
                    if (usbAdbDataA2.code != 0 && strL.contains(" -g ") && (usbAdbDataA2.getListStr().contains("ption -g") || usbAdbDataA2.getListStr().contains("input string: \"-g\""))) {
                        String strReplace = strL.replace(" -g ", " ");
                        str4 = str2;
                        str5 = "此应用与【";
                        usbAdbDataA2 = e0Var.a(120000L, strReplace);
                    } else {
                        str4 = str2;
                        str5 = "此应用与【";
                    }
                    String listStr = usbAdbDataA2.getListStr();
                    if (listStr.contains("Can't open file")) {
                        StringBuilder sbD = da.b.d("cat '/data/local/tmp/gj123.apk' | ", str8, " -r -d -t -S");
                        if (e0Var.f5679i != 0) {
                            str6 = " --user " + e0Var.f5679i;
                        } else {
                            str6 = str;
                        }
                        sbD.append(str6);
                        sbD.append(" ");
                        sbD.append(new File("/data/local/tmp/gj123.apk").length());
                        String string = sbD.toString();
                        if (e0Var.f5678h >= 23) {
                            string = string.replace(" -r -d -t -S ", " -r -d -t -S -g ");
                        }
                        UsbAdbData usbAdbDataA3 = e0Var.a(120000L, string);
                        usbAdbDataA2 = (usbAdbDataA3.code != 0 && string.contains(" -g ") && (usbAdbDataA3.getListStr().contains("ption -g") || usbAdbDataA3.getListStr().contains("input string: \"-g\""))) ? e0Var.a(120000L, string.replace(" -g ", " ")) : usbAdbDataA3;
                        listStr = usbAdbDataA2.getListStr();
                    }
                    if (listStr.contains("ailure") || usbAdbDataA2.code != 0 || listStr.contains("rror:")) {
                        if (listStr.contains("permission") || listStr.contains("ermission denied")) {
                            listStr = "无权限访问此目录下文件";
                        } else if (listStr.trim().contains("allowedtoinstall")) {
                            usbAdbData2.code = -8;
                            listStr = "系统禁止命令式安装";
                        } else if (listStr.contains("file or directory") || listStr.contains("Can't open file")) {
                            listStr = "不存在（无法识别）";
                        } else if (listStr.contains("not found") || listStr.contains("syntax error")) {
                            listStr = "命令出错";
                        } else if (listStr.contains("Killed")) {
                            listStr = "无权限，此操作需要root权限";
                        } else if (listStr.contains("INSTALL_FAILED_VERIF")) {
                            listStr = "安装失败：此系统禁用命令安装";
                        } else if (listStr.contains("INSTALL_FAILED_VERSION_DOWNGRADE")) {
                            usbAdbData2.code = -111;
                            listStr = "已经安装了该应用更高版本，如果需要降级请先卸载";
                        } else if (listStr.contains("INSTALL_FAILED_ALREADY_EXISTS")) {
                            usbAdbData2.code = -111;
                            listStr = "与之前安装的版本冲突，请卸载原来的版本再安装";
                        } else if (listStr.contains("INSTALL_FAILED_UPDATE_INCOMPATIBLE")) {
                            usbAdbData2.code = -111;
                            listStr = "与之前安装的版本冲突，请卸载原来的版本再安装！";
                        } else if (listStr.contains("INSTALL_FAILED_SHARED_USER_INCOMPATIBLE")) {
                            usbAdbData2.code = -111;
                            listStr = "与系统签名不一致：此APK指定了android.uid.system，需要与系统签名一致才能安装";
                        } else if (listStr.contains("INSTALL_FAILED_OLDER_SDK")) {
                            usbAdbData2.code = -111;
                            listStr = "不兼容，您的系统太旧，此应用不兼容您的系统！";
                        } else if (listStr.contains("INSTALL_FAILED_NEWER_SDK")) {
                            usbAdbData2.code = -111;
                            listStr = "不兼容，此应用不支持您的系统";
                        } else if (listStr.contains("INSTALL_PARSE_FAILED_NO_CERTIFICATES")) {
                            usbAdbData2.code = -111;
                            listStr = "没有签名证书，需要对apk签名才能安装";
                        } else if (listStr.contains("INSTALL_FAILED_UID_CHANGED")) {
                            usbAdbData2.code = -111;
                            listStr = "旧版本卸载不干净，有残留文件，需清理干净才能安装";
                        } else if (listStr.contains("INSTALL_FAILED_CPU_ABL_INCOMPATIBLE")) {
                            usbAdbData2.code = -111;
                            listStr = "不兼容，APP架构不匹配此系统";
                        } else if (listStr.contains("INSTALL_FAILED_INVALID_APK")) {
                            usbAdbData2.code = -111;
                            listStr = "APK无效 或 系统有限制，请解除";
                        } else if (listStr.contains("INSTALL_FAILED_INVALID_URI")) {
                            listStr = "无效的APK包名";
                        } else if (listStr.contains("INSTALL_FAILED_INSUFFICIENT_STORAGE")) {
                            usbAdbData2.code = -111;
                            listStr = "应用可安装的空间不足，请清理出空余空间";
                        } else if (listStr.contains("INSTALL_FAILED_DUPLICATE_PACKAGE")) {
                            usbAdbData2.code = -111;
                            listStr = "本机上已经存在相同包名的APP";
                        } else if (listStr.contains("INSTALL_FAILED_NO_SHARED_USER")) {
                            usbAdbData2.code = -111;
                            listStr = "此应用请求的共享用户本系统不存在";
                        } else if (listStr.contains("INSTALL_FAILED_MISSING_SHARED_LIBRARY")) {
                            usbAdbData2.code = -111;
                            listStr = "不兼容，此应用使用了设备上不可用的共享库";
                        } else if (listStr.contains("INSTALL_FAILED_REPLACE_COULDNT_DELETE")) {
                            listStr = "替换时无法删除";
                        } else if (listStr.contains("INSTALL_FAILED_DEXOPT")) {
                            listStr = "dex优化验证失败或空间不足";
                        } else if (listStr.contains("INSTALL_FAILED_CONFLICTING_PROVIDER")) {
                            listStr = "设备里已经存在与应用里同名的 content provider";
                        } else if (listStr.contains("INSTALL_FAILED_CPU_ABI_INCOMPATIBLE")) {
                            usbAdbData2.code = -111;
                            listStr = "不兼容，此应用含有不兼容本机 CPU 的代码";
                        } else if (listStr.contains("INSTALL_FAILED_NO_MATCHING_ABIS")) {
                            usbAdbData2.code = -111;
                            listStr = "不兼容，此应用含有本机不支持的接口代码";
                        } else if (listStr.contains("INSTALL_FAILED_MISSING_FEATURE")) {
                            usbAdbData2.code = -111;
                            listStr = "不兼容，此应用使用了本机不可用的功能";
                        } else if (listStr.contains("INSTALL_FAILED_ACWF_INCOMPATIBLE")) {
                            usbAdbData2.code = -111;
                            listStr = "不兼容，此应用与本机不兼容";
                        } else if (listStr.contains("INSTALL_CANCELED_BY_USER")) {
                            listStr = "此应用安装需要在设备上确认，但未操作设备或点了取消，在设备上同意安装";
                        } else if (listStr.contains("INSTALL_FAILED_CONTAINER_ERROR")) {
                            listStr = "sdcard 访问失败；应用签名与 ROM 签名一致，被当作内置应用，确认 sdcard 可用，或者安装到内置存储；打包时不与 ROM 使用相同签名";
                        } else if (listStr.contains("INSTALL_FAILED_INVALID_INSTALL_LOCATION")) {
                            listStr = "不能安装到指定位置，应用签名与 ROM 签名一致，被当作内置应用。切换安装位置，添加或删除 -s 参数；打包时不与 ROM 使用相同签名";
                        } else if (listStr.contains("INSTALL_FAILED_MEDIA_UNAVAILABLE")) {
                            listStr = "安装位置不可用，一般为 sdcard，确认 sdcard 可用或安装到内置存储";
                        } else if (listStr.contains("INSTALL_FAILED_VERIFICATION_TIMEOUT")) {
                            listStr = "验证安装包超时";
                        } else if (listStr.contains("INSTALL_FAILED_VERIFICATION_FAILURE")) {
                            listStr = "验证安装包失败";
                        } else if (listStr.contains("INSTALL_FAILED_INTERNAL_ERROR")) {
                            listStr = "因系统问题安装失败";
                        } else if (listStr.contains("INSTALL_FAILED_USER_RESTRICTED")) {
                            listStr = "用户被限制安装应用 在开发者选项里将「USB安装」打开，如果已经打开了，那先关闭再打开";
                        } else if (listStr.contains("INSTALL_FAILED_DUPLICATE_PERMISSION")) {
                            usbAdbData2.code = -111;
                            listStr = "权限冲突：此应用尝试定义一个已经存在的权限名称";
                        } else if (listStr.contains("INSTALL_FAILED_PACKAGE_CHANGED")) {
                            listStr = "应用与调用程序期望的不一致";
                        } else if (listStr.contains("INSTALL_PARSE_FAILED_NOT_APK")) {
                            listStr = "指定路径不是文件，或不是以.apk结尾";
                        } else if (listStr.contains("INSTALL_PARSE_FAILED_BAD_MANIFEST")) {
                            listStr = "无法解析的AndroidManifest.xml文件";
                        } else if (listStr.contains("INSTALL_PARSE_FAILED_MANIFEST_MALFORMED")) {
                            listStr = "解析 manifest 文件时遇到结构性错误";
                        } else if (listStr.contains("INSTALL_PARSE_FAILED_MANIFEST_EMPTY")) {
                            listStr = "在 manifest 文件里找不到找可操作标签（instrumentation 或 application）";
                        } else if (listStr.contains("INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME")) {
                            listStr = "manifest 文件里没有或者使用了无效的包名";
                        } else if (listStr.contains("INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID")) {
                            listStr = "manifest 文件里指定了无效的共享用户 ID";
                        } else if (listStr.contains("INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING")) {
                            listStr = "解析 APK 文件时遇到 CertificateEncodingException";
                        } else if (listStr.contains("INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION")) {
                            listStr = "解析器遇到异常";
                        } else if (listStr.contains("INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES")) {
                            usbAdbData2.code = -111;
                            listStr = "您之前已安装该应用，且签名与 APK 文件不一致，请先卸载设备上的原应用，再安装";
                        } else if (listStr.contains("INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE")) {
                            usbAdbData2.code = -111;
                            listStr = "已安装 target SDK 支持运行时权限的同名应用，要安装的版本不支持运行时权限";
                        } else if (listStr.contains("verify failed") || listStr.contains("is not auth")) {
                            usbAdbData2.code = -111;
                            listStr = "此系统安装应用需要白名单";
                        } else if (listStr.contains("code is missing")) {
                            usbAdbData2.code = -111;
                            listStr = "此APK文件非正常应用，无法安装";
                        } else if (listStr.contains("does not contain AndroidManifest.xml") || listStr.contains("is not a valid zip file")) {
                            usbAdbData2.code = -111;
                            listStr = "无效的 APK 文件";
                        } else if (listStr.contains("Offline")) {
                            listStr = "设备未连接成功，先将设备与 adb 连接成功";
                        } else if (listStr.contains("unauthorized")) {
                            listStr = "设备未授权允许调试,请在开发者选项中勾选USB调试";
                        } else if (listStr.contains("protocol failure")) {
                            listStr = "设备已断开连接 ，先将设备与 root 或 adb 连接成功";
                        } else if (listStr.contains("Unknown option: -s")) {
                            listStr = "Android 2.2 以下不支持安装到 sdcard 不使用 -s 参数";
                        } else if (listStr.contains("install apk has be disabled")) {
                            listStr = "此系统禁止使用adb安装应用";
                        } else if (listStr.contains("Failed to parse APK")) {
                            listStr = "解析失败，无权限读取文件 或 apk文件损坏";
                        } else if (listStr.contains("is already used by")) {
                            try {
                                listStr = str5 + listStr.substring(listStr.indexOf("is already used by ") + 19) + "】产生冲突，无法安装";
                            } catch (Exception unused6) {
                                listStr = "此应用与某个已装应用产生冲突，无法安装";
                            }
                            usbAdbData2.code = -111;
                        } else if (listStr.isEmpty()) {
                            listStr = "安装失败：原因未明";
                        }
                        usbAdbData2.lines.add(listStr);
                    } else if (listStr.contains("Success")) {
                        usbAdbData2.code = 0;
                        usbAdbData2.lines.add("安装成功");
                    } else {
                        usbAdbData2.lines.add("安装失败");
                    }
                    if (usbAdbData2.code != 0) {
                        bVar.d(new Exception(usbAdbData2.getListStr()));
                        return;
                    } else {
                        e0Var.a(2000L, g.b.A("monkey -p '", str4, "' -c android.intent.category.LAUNCHER 1"));
                        bVar.b();
                        return;
                    }
                } finally {
                }
            case 6:
                ArrayList arrayList = new ArrayList();
                try {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    ActivityInfo[] activityInfoArr = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(strX, 1).activities;
                    if (activityInfoArr != null) {
                        int length2 = activityInfoArr.length;
                        while (i12 < length2) {
                            ActivityInfo activityInfo = activityInfoArr[i12];
                            if (activityInfo.exported && activityInfo.enabled) {
                                arrayList.add(new AppSelectHomeActivityBean(activityInfo.packageName, activityInfo.loadLabel(com.yunpan.appmanage.util.j.f4033a.f4037b).toString(), activityInfo.name));
                            }
                            i12++;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e11) {
                    e11.printStackTrace();
                }
                bVar.f(arrayList);
                bVar.b();
                return;
            case 7:
                ArrayList arrayList2 = new ArrayList();
                try {
                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                    ServiceInfo[] serviceInfoArr = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(strX, 4).services;
                    if (serviceInfoArr != null) {
                        int length3 = serviceInfoArr.length;
                        while (i12 < length3) {
                            ServiceInfo serviceInfo = serviceInfoArr[i12];
                            if (serviceInfo.exported && serviceInfo.enabled && !nh.b.T(serviceInfo)) {
                                arrayList2.add(new AppSelectHomeActivityBean(serviceInfo.packageName, serviceInfo.loadLabel(com.yunpan.appmanage.util.j.f4033a.f4037b).toString(), serviceInfo.name));
                            }
                            i12++;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e12) {
                    e12.printStackTrace();
                }
                bVar.f(arrayList2);
                bVar.b();
                return;
            case 8:
                if (!a0.b(strX)) {
                    bVar.b();
                    return;
                }
                String strP0 = p000if.a.p0(strX);
                if (strP0.isEmpty()) {
                    bVar.b();
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                String strU = android.support.v4.media.session.a.u(sb2, com.yunpan.appmanage.util.j.f4033a.z, "bdVideo/", strP0);
                if (a0.g(strU)) {
                    bVar.f(strU);
                    bVar.b();
                    return;
                } else {
                    if (q4.a.z(strX, strU)) {
                        bVar.f(strU);
                    }
                    bVar.b();
                    return;
                }
            case 9:
                int i15 = AdbPairService.f3951b;
                try {
                    HashMap map = new HashMap();
                    CountDownLatch countDownLatch = new CountDownLatch(1);
                    DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                    AdbMdns adbMdns = new AdbMdns(com.yunpan.appmanage.util.j.f4033a.f4035a, AdbMdns.SERVICE_TYPE_TLS_PAIRING, new ta.g(map, countDownLatch, i12));
                    adbMdns.start();
                    countDownLatch.await(PopupConst.DURATION_POPUP_SHORT, TimeUnit.MILLISECONDS);
                    adbMdns.stop();
                    if (map.isEmpty()) {
                        bVar.d(new Exception("未找到端口"));
                    } else {
                        Iterator it2 = map.values().iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                Integer num = (Integer) it2.next();
                                try {
                                    mVar = fa.l.f5712a;
                                } catch (Exception unused7) {
                                }
                                if (mVar.pair(num.intValue(), strX)) {
                                    try {
                                        Thread.sleep(666L);
                                        mVar.M(com.yunpan.appmanage.util.j.f4033a.f4035a);
                                    } catch (Exception unused8) {
                                    }
                                    bVar.b();
                                } else {
                                    continue;
                                }
                            } else {
                                bVar.d(new Exception("匹配失败"));
                            }
                        }
                    }
                    return;
                } catch (Exception e13) {
                    bVar.d(e13);
                    return;
                }
            case 10:
            default:
                try {
                    if (strX.toLowerCase().endsWith(".apk")) {
                        strX = ActivityGjDiy.x(strX);
                    }
                } catch (Exception unused9) {
                }
                bVar.f(strX);
                bVar.b();
                return;
            case 11:
                int i16 = ActivityAdb.G;
                bVar.f(Boolean.valueOf(u9.d.r("getprop ".concat(strX)).l0().k().contains("5555")));
                bVar.b();
                return;
            case 12:
                a(bVar);
                return;
            case 13:
                int i17 = ActivityAdb.G;
                try {
                    if (strX.equals("AUTOLINK")) {
                        u9.d.r("setprop sys.usb.config diag,adb").l0();
                        u9.d.r("setprop persist.vendor.usb.config diag,adb").l0();
                        Thread.sleep(200L);
                        u9.d.r("setprop persist.vendor.bosch.usb2.mode host").l0();
                    } else if (strX.equals("DESAYSV")) {
                        u9.d.r("setprop sys.usb.config carplay_life,adb").l0();
                        Thread.sleep(200L);
                        SystemProperties.set("persist.sv.debug.adb_enable", "0");
                    }
                    a0.w("设置完成");
                } catch (Exception e14) {
                    e14.printStackTrace();
                    g.b.s(e14, new StringBuilder("错误："));
                }
                bVar.b();
                return;
            case 14:
                b(bVar);
                return;
            case 15:
                int i18 = ActivityShell.M;
                System.out.getClass();
                CmdResult cmdResultExec = n0.f5722a.f5730e.exec(strX, 20000L);
                cmdResultExec.getAllStr();
                bVar.f(cmdResultExec);
                bVar.b();
                return;
            case 16:
                d(bVar);
                return;
            case 17:
                f(bVar);
                return;
        }
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        if (list.isEmpty()) {
            a0.u(this.f2611b);
        }
    }
}
