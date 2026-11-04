package fa;

import a2.w0;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.provider.Settings;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.ShellResultData;
import com.yunpan.appmanage.service.StartService;
import io.github.muntashirakon.adb.AbsAdbConnectionManager;
import io.github.muntashirakon.adb.AdbOutputStream;
import io.github.muntashirakon.adb.AdbPairingRequiredException;
import io.github.muntashirakon.adb.AdbStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.spec.PKCS8EncodedKeySpec;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final class m extends AbsAdbConnectionManager {

    /* renamed from: a, reason: collision with root package name */
    public Context f5714a;

    /* renamed from: b, reason: collision with root package name */
    public AdbStream f5715b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5716c = false;

    /* renamed from: d, reason: collision with root package name */
    public LinkedBlockingQueue f5717d;

    /* renamed from: e, reason: collision with root package name */
    public final PrivateKey f5718e;

    /* renamed from: f, reason: collision with root package name */
    public final Certificate f5719f;

    public m() throws NoSuchAlgorithmException {
        setApi(Build.VERSION.SDK_INT);
        try {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            PrivateKey privateKeyS = S(kVar.f4035a);
            this.f5718e = privateKeyS;
            this.f5719f = R(kVar.f4035a);
            if (privateKeyS == null) {
                KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
                keyPairGenerator.initialize(2048, SecureRandom.getInstance("SHA1PRNG"));
                KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
                PublicKey publicKey = keyPairGenerateKeyPair.getPublic();
                PrivateKey privateKey = keyPairGenerateKeyPair.getPrivate();
                this.f5718e = privateKey;
                long jCurrentTimeMillis = System.currentTimeMillis() + 86400000;
                h.g gVar = new h.g();
                gVar.b(new h.v((byte[]) new h.o(publicKey).f6248a.clone()), "SubjectKeyIdentifier");
                h.w wVar = new h.w();
                Date date = new Date();
                Date date2 = new Date(jCurrentTimeMillis);
                gVar.b(new h.s(date, date2), "PrivateKeyUsage");
                h.k kVar2 = new h.k(date, date2);
                h.y yVar = new h.y();
                yVar.e(new h.l(0), "version");
                yVar.e(new h.i(new Random().nextInt() & Integer.MAX_VALUE), "serialNumber");
                yVar.e(new h.f(h.d.c("SHA512withRSA")), "algorithmID");
                yVar.e(new h.j(wVar), "subject");
                yVar.e(new h.m(publicKey), "key");
                yVar.e(kVar2, "validity");
                yVar.e(new h.h(wVar), "issuer");
                yVar.e(gVar, "extensions");
                h.x xVar = new h.x(yVar);
                xVar.c(privateKey);
                this.f5719f = xVar;
                X(kVar.f4035a, privateKey);
                W(kVar.f4035a, xVar);
            }
        } catch (Exception unused) {
        }
    }

    public static void K() throws InterruptedException {
        wa.u uVar = wa.t.f17728a;
        if (uVar.f17755v) {
            wa.w.b("是否自动勾选无线调试：" + com.yunpan.appmanage.util.v.f4106a.B);
        }
        if (com.yunpan.appmanage.util.v.f4106a.B) {
            try {
                if (Settings.Global.getInt(AppStart.f3772h.getContentResolver(), "adb_enabled") != 1 && Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_enabled", 1)) {
                    Thread.sleep(268L);
                }
                if (Settings.Global.getInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled") != 1 && Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled", 1)) {
                    Thread.sleep(668L);
                }
                if (uVar.f17755v) {
                    wa.w.b("adb_wifi_enabled：" + Settings.Global.getInt(AppStart.f3772h.getContentResolver(), "adb_wifi_enabled"));
                }
            } catch (Exception unused) {
            }
        }
    }

    public static boolean N(String str) {
        if (str.length() >= 5 && str.substring(str.length() - 5, str.length() - 2).equals(":/ ")) {
            return true;
        }
        if (str.contains(":")) {
            return str.endsWith(" # ") || str.endsWith(" $ ");
        }
        return false;
    }

    public static Certificate R(ContextWrapper contextWrapper) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        File file = new File(contextWrapper.getFilesDir().getPath() + "/key/cert.pem");
        if (!file.exists()) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            Certificate certificateGenerateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(fileInputStream);
            fileInputStream.close();
            return certificateGenerateCertificate;
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public static PrivateKey S(ContextWrapper contextWrapper) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        File file = new File(contextWrapper.getFilesDir().getPath() + "/key/private.key");
        if (!file.exists()) {
            return null;
        }
        byte[] bArr = new byte[(int) file.length()];
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            fileInputStream.read(bArr);
            fileInputStream.close();
            return KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(bArr));
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public static void W(ContextWrapper contextWrapper, h.x xVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        File file = new File(contextWrapper.getFilesDir().getPath() + "/key/cert.pem");
        a.a aVar = new a.a();
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write("-----BEGIN CERTIFICATE-----".getBytes(Charset.forName(HTTP.UTF_8)));
            fileOutputStream.write(10);
            aVar.a(xVar.getEncoded(), fileOutputStream);
            fileOutputStream.write(10);
            fileOutputStream.write("-----END CERTIFICATE-----".getBytes(Charset.forName(HTTP.UTF_8)));
            fileOutputStream.close();
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    public static void X(ContextWrapper contextWrapper, PrivateKey privateKey) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(contextWrapper.getFilesDir().getPath() + "/key/private.key"));
        try {
            fileOutputStream.write(privateKey.getEncoded());
            fileOutputStream.close();
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ed, code lost:
    
        r2.write(new byte[]{66});
        r2.write(new byte[]{28, 10});
        r2.flush();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ShellResultData L(String str) {
        String strConcat;
        synchronized (this) {
            try {
                ShellResultData shellResultData = new ShellResultData();
                if (str.startsWith("adb ")) {
                    String strTrim = str.substring(4).trim();
                    if (!strTrim.startsWith("shell ")) {
                        int iIndexOf = strTrim.indexOf(" ");
                        if (iIndexOf == -1) {
                            strConcat = strTrim.concat(":");
                        } else {
                            strConcat = strTrim.substring(0, iIndexOf) + ":" + strTrim.substring(iIndexOf + 1);
                        }
                        shellResultData.lines.add(P(strConcat));
                        shellResultData.code = 0;
                        return shellResultData;
                    }
                    str = strTrim.substring(6).trim();
                }
                try {
                    AdbStream adbStream = this.f5715b;
                    if (adbStream == null || adbStream.isClosed()) {
                        Q();
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    AdbOutputStream adbOutputStreamOpenOutputStream = this.f5715b.openOutputStream();
                    this.f5717d.clear();
                    adbOutputStreamOpenOutputStream.write(String.format("%1$s\n", str).getBytes(Charset.forName(HTTP.UTF_8)));
                    adbOutputStreamOpenOutputStream.flush();
                    adbOutputStreamOpenOutputStream.write(new byte[]{10});
                    adbOutputStreamOpenOutputStream.flush();
                    String str2 = "";
                    while (true) {
                        String str3 = (String) this.f5717d.poll(5L, TimeUnit.SECONDS);
                        if (str3 != null) {
                            shellResultData.lines.add(str3);
                            if (N(str3)) {
                                int iIndexOf2 = str3.indexOf("|");
                                if (iIndexOf2 == -1 || iIndexOf2 <= 0) {
                                    shellResultData.code = 0;
                                } else {
                                    shellResultData.code = Integer.valueOf(str3.substring(0, iIndexOf2)).intValue();
                                }
                            } else {
                                str2 = str3;
                            }
                        } else if ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000 <= 300) {
                            if (str2.length() < 20 && (str2.endsWith(": ") || str2.endsWith("> "))) {
                                break;
                            }
                            if (str2.contains(":") && (str2.endsWith(" # ") || str2.endsWith(" $ "))) {
                                adbOutputStreamOpenOutputStream.write(String.format("%1$s\n", "cd").getBytes(Charset.forName(HTTP.UTF_8)));
                                adbOutputStreamOpenOutputStream.flush();
                                adbOutputStreamOpenOutputStream.write(new byte[]{10});
                                adbOutputStreamOpenOutputStream.flush();
                            }
                        } else {
                            shellResultData.lines.add("接收超时");
                            break;
                        }
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    shellResultData.lines.add(e7.getMessage() + "");
                }
                return shellResultData;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:238:0x05bb  */
    /* JADX WARN: Removed duplicated region for block: B:296:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void M(Context context) {
        boolean zConnect;
        boolean zConnect2;
        String str;
        setTimeout(3333L, TimeUnit.MILLISECONDS);
        this.f5714a = context;
        setApi(Build.VERSION.SDK_INT);
        if (wa.t.f17728a.f17755v) {
            wa.w.b("AdbPair尝试连接中");
        }
        try {
            try {
                zConnect = connect(com.yunpan.appmanage.util.v.f4106a.f4127k);
            } catch (Exception unused) {
                K();
                zConnect = autoConnect(this.f5714a, 3333L);
            }
        } catch (AdbPairingRequiredException unused2) {
            if (wa.t.f17728a.f17755v) {
                wa.w.b("需要配对码");
            }
            throw new Exception("连接adb需要配对码");
        } catch (Exception e7) {
            if (wa.t.f17728a.f17755v) {
                wa.w.b("连接失败，重新尝试1   " + e7.getMessage());
            }
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            if (wVar.f4134o) {
                boolean zQ = wVar.z ? u9.d.r("setprop service.adb.tcp.port 5555").l0().q() : false;
                if (wVar.A && u9.d.r("setprop persist.adb.tcp.port 5555").l0().q()) {
                    zQ = true;
                }
                if (zQ) {
                    Thread.sleep(333L);
                    u9.d.r("setprop ctl.restart adbd").l0();
                    Thread.sleep(2000L);
                }
            }
            try {
                try {
                    zConnect = connect(wVar.f4127k);
                } catch (Exception unused3) {
                    zConnect = autoConnect(this.f5714a, PopupConst.DURATION_POPUP_SHORT);
                }
            } catch (AdbPairingRequiredException unused4) {
                if (wa.t.f17728a.f17755v) {
                    wa.w.b("需要配对码");
                }
                throw new Exception("连接adb需要配对码");
            } catch (Exception e10) {
                if (wa.t.f17728a.f17755v) {
                    wa.w.b("连接失败，重新尝试2   " + e10.getMessage());
                }
                try {
                    com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                    int i10 = wVar2.f4127k;
                    if (i10 != 5555) {
                        zConnect2 = connect(5555);
                        if (zConnect2) {
                            wVar2.n(5555);
                        }
                    } else if (i10 != 5557) {
                        zConnect2 = connect(5557);
                        if (zConnect2) {
                            wVar2.n(5557);
                        }
                    } else {
                        zConnect = false;
                        if (!zConnect) {
                            boolean z = wVar2.z;
                            if ((!z && !wVar2.A) || !wVar2.f4134o) {
                                throw e7;
                            }
                            if (z && !u9.d.r("setprop service.adb.tcp.port 5555").l0().q()) {
                                throw e7;
                            }
                            if (wVar2.A && !u9.d.r("setprop persist.adb.tcp.port 5555").l0().q()) {
                                throw e7;
                            }
                            Thread.sleep(333L);
                            u9.d.r("setprop ctl.restart adbd").l0();
                            Thread.sleep(2000L);
                            zConnect = connect(5555);
                            if (zConnect) {
                                wVar2.n(5555);
                            }
                        }
                    }
                    zConnect = zConnect2;
                    if (!zConnect) {
                    }
                } catch (Exception unused5) {
                    throw e10;
                }
            }
        }
        wa.u uVar = wa.t.f17728a;
        if (uVar.f17755v) {
            wa.w.b("连接是否成功：" + zConnect);
        }
        if (!zConnect) {
            throw new Exception("adb连接失败");
        }
        if (uVar.f17755v) {
            wa.w.b("连接完成");
        }
        Q();
        b bVar = a.f5646a;
        if (!bVar.f()) {
            L(b.a(AppStart.f3772h));
        } else if (this.f5716c && bVar.f5651b.getUid() != 0) {
            L(b.a(AppStart.f3772h));
        }
        com.yunpan.appmanage.util.w wVar3 = com.yunpan.appmanage.util.v.f4106a;
        int i11 = wVar3.O;
        if (i11 == 1) {
            if (P("root:").contains("adbd cannot run as root in production builds")) {
                u9.d.r("setprop ro.debuggable 1").l0();
                if (u9.d.r("setprop service.adb.root 1").l0().q()) {
                    u9.d.r("setprop ctl.restart adbd").l0();
                } else {
                    b0.f5652a.getClass();
                    w0.q(2000L, "setprop ro.debuggable 1");
                    if (w0.q(2000L, "setprop service.adb.root 1").f5648a == 0) {
                        w0.q(2000L, "setprop ctl.restart adbd");
                    }
                }
            }
            try {
                Thread.sleep(1000L);
            } catch (Exception unused6) {
            }
            if (!isConnected()) {
                M(this.f5714a);
            }
            h.f5683a.f5702h = "已连接";
            if (com.yunpan.appmanage.util.v.f4106a.F) {
                return;
            }
            com.yunpan.appmanage.util.a0.w("adb连接成功");
            return;
        }
        if (i11 == 2) {
            L(wVar3.f4110b0);
        }
        com.yunpan.appmanage.util.w wVar4 = com.yunpan.appmanage.util.v.f4106a;
        if (wVar4.P > 0) {
            L("setenforce 0");
            L("setprop ro.adb.secure 0");
            L("setprop ro.secure 0");
        }
        ShellResultData shellResultDataL = L(Name.MARK);
        shellResultDataL.getListStr();
        if (shellResultDataL.getListStr().contains("uid=0(")) {
            this.f5716c = true;
            ShellResultData shellResultDataL2 = L("touch /system/bin/111222");
            if (wVar4.P == 1) {
                O("adb remount");
                shellResultDataL2 = L("touch /system/bin/111222");
            }
            if (shellResultDataL2.code != 0 && wVar4.P > 0) {
                Iterator<String> it = L("mount").lines.iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (next.contains(" /system ")) {
                        str = "/system";
                    } else if (next.contains(" /vendor ")) {
                        str = "/vendor";
                    } else if (next.contains(" /oem ")) {
                        str = "/oem";
                    } else if (next.contains(" / ")) {
                        str = "/";
                    }
                    if (next.contains("ro,")) {
                        while (next.contains("  ")) {
                            next = next.trim().replaceAll("  ", " ");
                        }
                        String[] strArrSplit = next.split(" ");
                        if (strArrSplit.length >= 4) {
                            try {
                                L("mount -o remount,rw -t " + (next.contains(" (r") ? strArrSplit[4] : strArrSplit[2]) + " " + str);
                            } catch (Exception unused7) {
                            }
                        }
                    }
                }
                shellResultDataL2 = L("touch /system/bin/111222");
                if (shellResultDataL2.code != 0) {
                    L("mount -o remount,rw /system");
                    L("mount -o remount,rw /");
                    shellResultDataL2 = L("touch /system/bin/111222");
                }
            }
            if (shellResultDataL2.code == 0) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.j.f4033a.l = true;
                L("rm -rf /system/bin/111222");
            }
            if (L("touch /system/app/111222").code == 0) {
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.j.f4033a.f4058m = true;
                L("rm -rf /system/app/111222");
            }
        }
        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (!kVar.f4069s.isEmpty()) {
            if (L("ls -l '" + kVar.f4069s + "/'").code == 1) {
                kVar.L = false;
            }
        }
        h0 h0Var = g0.f5682a;
        if (!h0Var.f() && !h0Var.d().isEmpty()) {
            try {
                String str2 = h0Var.d() + "/.111111222222";
                new File(str2).delete();
                L("touch " + str2);
                if (com.yunpan.appmanage.util.a0.g(str2)) {
                    new File(str2).delete();
                } else {
                    ShellResultData shellResultDataL3 = L("df");
                    if (shellResultDataL3.code != 0) {
                        throw new Exception("执行df失败");
                    }
                    for (String str3 : shellResultDataL3.lines) {
                        if (str3.contains("/mnt/user/") && str3.contains("/emulated")) {
                            String strN = p000if.a.N(str3, "/mnt/user/", "/emulated", false);
                            String str4 = "/mnt/user/" + strN + "/emulated/" + strN;
                            if (L("touch " + (str4 + "/.111111222222")).code == 0) {
                                com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                                kVar2.O = str4;
                                kVar2.N = strN;
                            }
                        }
                    }
                }
            } catch (Exception unused8) {
            }
        }
        com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
        if (!kVar3.f4053j) {
            boolean z4 = kVar3.f4055k;
            if (!z4) {
                U("WRITE_SETTINGS");
                T("android.permission.WRITE_SECURE_SETTINGS");
                T("android.permission.DUMP");
                T("android.permission.READ_LOGS");
            }
            int i12 = Build.VERSION.SDK_INT;
            if (i12 >= 23) {
                if (!z4) {
                    if (!XXPermissions.isGrantedPermission(kVar3.f4035a, PermissionLists.getAnswerPhoneCallsPermission())) {
                        U("ANSWER_PHONE_CALLS");
                    }
                    if (!XXPermissions.isGrantedPermission(kVar3.f4035a, PermissionLists.getPackageUsageStatsPermission())) {
                        T("android.permission.PACKAGE_USAGE_STATS");
                        U("GET_USAGE_STATS");
                    }
                    T("android.permission.GET_APP_OPS_STATS");
                    if (!XXPermissions.isGrantedPermissions(kVar3.f4035a, new IPermission[]{PermissionLists.getReadExternalStoragePermission(), PermissionLists.getWriteExternalStoragePermission()})) {
                        U("READ_EXTERNAL_STORAGE");
                        U("WRITE_EXTERNAL_STORAGE");
                    }
                    if (!XXPermissions.isGrantedPermission(kVar3.f4035a, PermissionLists.getSystemAlertWindowPermission())) {
                        U("SYSTEM_ALERT_WINDOW");
                    }
                }
                if (!XXPermissions.isGrantedPermission(kVar3.f4035a, PermissionLists.getRequestInstallPackagesPermission())) {
                    if (i12 == 30) {
                        Toaster.show((CharSequence) "Android11授权[安装权限]，如果闪退请重新打开即可");
                        try {
                            Thread.sleep(3222L);
                        } catch (Exception unused9) {
                        }
                    }
                    U("REQUEST_INSTALL_PACKAGES");
                }
            }
        }
        L("setprop persist.sv.enable_adb_install 1");
        if (p000if.a.b0(this.f5714a)) {
            if (Build.VERSION.SDK_INT >= 18) {
                com.yunpan.appmanage.util.k kVar4 = com.yunpan.appmanage.util.j.f4033a;
                String string = Settings.Secure.getString(kVar4.f4035a.getContentResolver(), "enabled_notification_listeners");
                if (string == null || string.equals("null")) {
                    string = "";
                }
                if (!android.support.v4.media.session.a.D(new StringBuilder(), kVar4.f4041d, "/", string)) {
                    StringBuilder sbB = d0.f.b(string, ":");
                    sbB.append(kVar4.f4041d);
                    sbB.append("/");
                    sbB.append(StartService.class.getName());
                    String strReplace = sbB.toString().replace("::", "");
                    if (strReplace.startsWith(":")) {
                        strReplace = strReplace.substring(1);
                    }
                    if (strReplace.endsWith(":")) {
                        strReplace = android.support.v4.media.session.a.l(1, 0, strReplace);
                    }
                    Settings.Secure.putString(kVar4.f4035a.getContentResolver(), "enabled_notification_listeners", strReplace);
                    Settings.Secure.putInt(kVar4.f4035a.getContentResolver(), "notification_enabled", 1);
                    StringBuilder sb2 = new StringBuilder("cmd notification allow_listener");
                    sb2.append(kVar4.f4060n != 0 ? " --user " + kVar4.f4060n : "");
                    sb2.append(" ");
                    sb2.append(kVar4.f4041d);
                    sb2.append("/");
                    sb2.append(StartService.class.getName());
                    L(sb2.toString());
                }
            }
            try {
                com.yunpan.appmanage.util.k kVar5 = com.yunpan.appmanage.util.j.f4033a;
                Settings.Global.putInt(kVar5.f4035a.getContentResolver(), "verifier_verify_adb_installs", 0);
                Settings.Global.putInt(kVar5.f4035a.getContentResolver(), "package_verifier_enable", 0);
                Settings.Secure.putInt(kVar5.f4035a.getContentResolver(), "install_non_market_apps", 1);
            } catch (Exception unused10) {
                L("settings put secure install_non_market_apps 1");
            }
        } else {
            com.yunpan.appmanage.util.a0.u("请在开发者选项中：开启【USB调试(安全设置)】");
        }
        h.f5683a.f5702h = "已连接";
        if (com.yunpan.appmanage.util.v.f4106a.F) {
        }
    }

    public final void O(String str) {
        try {
            if (str.startsWith("adb ")) {
                str = str.substring(4);
            }
            if (!str.contains(":")) {
                String strTrim = str.trim();
                int iIndexOf = strTrim.indexOf(" ");
                if (iIndexOf == -1) {
                    str = strTrim.concat(":");
                } else {
                    str = strTrim.substring(0, iIndexOf) + ":" + strTrim.substring(iIndexOf + 1);
                }
            }
            getAdbConnection().open(str);
            Thread.sleep(1000L);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public final String P(String str) {
        try {
            if (str.startsWith("adb ")) {
                str = str.substring(4);
            }
            boolean z = true;
            if (!str.contains(":")) {
                String strTrim = str.trim();
                int iIndexOf = strTrim.indexOf(" ");
                if (iIndexOf == -1) {
                    str = strTrim.concat(":");
                } else {
                    str = strTrim.substring(0, iIndexOf) + ":" + strTrim.substring(iIndexOf + 1);
                }
            }
            System.out.getClass();
            if (!str.startsWith("remount") && !str.startsWith("reboot")) {
                z = false;
            }
            long j10 = z ? PopupConst.DURATION_POPUP_SHORT : 8000L;
            if (str.startsWith("install:")) {
                return "不支持adb install流式安装，请用pm install";
            }
            AdbStream adbStreamOpen = getAdbConnection().open(str);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(adbStreamOpen.openInputStream()));
            LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            fg.b bVar = new fg.b(new k(adbStreamOpen, bufferedReader, linkedBlockingQueue, 0), 1);
            bVar.start();
            long jCurrentTimeMillis = System.currentTimeMillis();
            String str2 = "";
            while (true) {
                String str3 = (String) linkedBlockingQueue.poll(666L, TimeUnit.MILLISECONDS);
                if (str3 != null) {
                    str2 = str2 + str3 + SignParameters.NEW_LINE;
                } else if (str2.isEmpty()) {
                    if (System.currentTimeMillis() - jCurrentTimeMillis > j10) {
                        str2 = str2 + "执行命令超时\n";
                        break;
                    }
                    str3 = "继续";
                }
                if (str3 == null) {
                    break;
                }
            }
            System.out.getClass();
            bVar.interrupt();
            return str2;
        } catch (Exception e7) {
            e7.printStackTrace();
            return da.b.b(e7, new StringBuilder(), "");
        }
    }

    public final void Q() throws Exception {
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        if (!wVar.l.isEmpty()) {
            openStream(1, wVar.l.replace("\"", "'").split(" "));
            Thread.sleep(333L);
        }
        this.f5715b = openStream(1, new String[0]);
        this.f5717d = new LinkedBlockingQueue();
        new fg.b(new a2.h(17, this), 1).start();
        AdbStream adbStream = this.f5715b;
        if (adbStream == null || adbStream.isClosed()) {
            return;
        }
        if ((wVar.l.isEmpty() ? L("adb36987") : L(wVar.l.replace("\"", "'"))).getListStr().toLowerCase().contains("tream open actively rejected")) {
            this.f5715b.close();
            this.f5715b = null;
            throw new Exception("adb shell 需要密码");
        }
    }

    public final void T(String str) {
        String str2;
        StringBuilder sb2 = new StringBuilder("pm grant");
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (kVar.f4060n == 0) {
            str2 = "";
        } else {
            str2 = " --user " + kVar.f4060n;
        }
        sb2.append(str2);
        sb2.append(" ");
        sb2.append(AppStart.f3772h.getPackageName());
        sb2.append(" ");
        sb2.append(str);
        L(sb2.toString());
    }

    public final void U(String str) {
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        String str2 = "";
        sb2.append(kVar.f4047g ? "cmd " : "");
        sb2.append("appops set ");
        if (kVar.f4060n != 0) {
            str2 = " --user " + kVar.f4060n;
        }
        sb2.append(str2);
        sb2.append(" ");
        sb2.append(AppStart.f3772h.getPackageName());
        sb2.append(" ");
        sb2.append(str);
        sb2.append(" allow");
        L(sb2.toString());
    }

    public final void V() {
        try {
            AdbOutputStream adbOutputStreamOpenOutputStream = this.f5715b.openOutputStream();
            adbOutputStreamOpenOutputStream.write(new byte[]{3, 10});
            adbOutputStreamOpenOutputStream.flush();
            adbOutputStreamOpenOutputStream.write(new byte[]{10});
        } catch (Exception unused) {
        }
    }

    @Override // io.github.muntashirakon.adb.AbsAdbConnectionManager
    public final Certificate getCertificate() {
        return this.f5719f;
    }

    @Override // io.github.muntashirakon.adb.AbsAdbConnectionManager
    public final String getDeviceName() {
        return this.f5714a.getResources().getString(R.string.app_name);
    }

    @Override // io.github.muntashirakon.adb.AbsAdbConnectionManager
    public final PrivateKey getPrivateKey() {
        return this.f5718e;
    }
}
