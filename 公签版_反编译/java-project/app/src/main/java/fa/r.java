package fa;

import android.os.Build;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.ShellResultData;
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
import java.util.Date;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class r extends AbsAdbConnectionManager {

    /* renamed from: a, reason: collision with root package name */
    public AppStart f5741a;

    /* renamed from: b, reason: collision with root package name */
    public AdbStream f5742b;

    /* renamed from: c, reason: collision with root package name */
    public LinkedBlockingQueue f5743c;

    /* renamed from: d, reason: collision with root package name */
    public final PrivateKey f5744d;

    /* renamed from: e, reason: collision with root package name */
    public final Certificate f5745e;

    public r() throws NoSuchAlgorithmException {
        setApi(Build.VERSION.SDK_INT);
        try {
            PrivateKey privateKeyQ = Q(AppStart.f3772h);
            this.f5744d = privateKeyQ;
            this.f5745e = P(AppStart.f3772h);
            if (privateKeyQ == null) {
                KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
                keyPairGenerator.initialize(2048, SecureRandom.getInstance("SHA1PRNG"));
                KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
                PublicKey publicKey = keyPairGenerateKeyPair.getPublic();
                PrivateKey privateKey = keyPairGenerateKeyPair.getPrivate();
                this.f5744d = privateKey;
                long jCurrentTimeMillis = System.currentTimeMillis() + 86400000;
                h.g gVar = new h.g();
                gVar.b(new h.v((byte[]) new h.o(publicKey).f6248a.clone()), "SubjectKeyIdentifier");
                h.w wVar = new h.w();
                Date date = new Date();
                Date date2 = new Date(jCurrentTimeMillis);
                gVar.b(new h.s(date, date2), "PrivateKeyUsage");
                h.k kVar = new h.k(date, date2);
                h.y yVar = new h.y();
                yVar.e(new h.l(0), "version");
                yVar.e(new h.i(new Random().nextInt() & Integer.MAX_VALUE), "serialNumber");
                yVar.e(new h.f(h.d.c("SHA512withRSA")), "algorithmID");
                yVar.e(new h.j(wVar), "subject");
                yVar.e(new h.m(publicKey), "key");
                yVar.e(kVar, "validity");
                yVar.e(new h.h(wVar), "issuer");
                yVar.e(gVar, "extensions");
                h.x xVar = new h.x(yVar);
                xVar.c(privateKey);
                this.f5745e = xVar;
                S(AppStart.f3772h, privateKey);
                R(AppStart.f3772h, xVar);
            }
        } catch (Exception unused) {
        }
    }

    public static boolean M(String str) {
        if (str.length() >= 5 && str.substring(str.length() - 5, str.length() - 2).equals(":/ ")) {
            return true;
        }
        if (str.contains(":")) {
            return str.endsWith(" # ") || str.endsWith(" $ ");
        }
        return false;
    }

    public static Certificate P(AppStart appStart) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        File file = new File(appStart.getFilesDir().getPath() + "/key/cert.pem");
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

    public static PrivateKey Q(AppStart appStart) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        File file = new File(appStart.getFilesDir().getPath() + "/key/private.key");
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

    public static void R(AppStart appStart, h.x xVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        File file = new File(appStart.getFilesDir().getPath() + "/key/cert.pem");
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

    public static void S(AppStart appStart, PrivateKey privateKey) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(appStart.getFilesDir().getPath() + "/key/private.key"));
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
    public final ShellResultData K(String str) {
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
                        shellResultData.lines.add(N(strConcat));
                        shellResultData.code = 0;
                        return shellResultData;
                    }
                    str = strTrim.substring(6).trim();
                }
                try {
                    AdbStream adbStream = this.f5742b;
                    if (adbStream == null || adbStream.isClosed()) {
                        O();
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    AdbOutputStream adbOutputStreamOpenOutputStream = this.f5742b.openOutputStream();
                    this.f5743c.clear();
                    adbOutputStreamOpenOutputStream.write(String.format("%1$s\n", str).getBytes(Charset.forName(HTTP.UTF_8)));
                    adbOutputStreamOpenOutputStream.flush();
                    adbOutputStreamOpenOutputStream.write(new byte[]{10});
                    adbOutputStreamOpenOutputStream.flush();
                    String str2 = "";
                    while (true) {
                        String str3 = (String) this.f5743c.poll(5L, TimeUnit.SECONDS);
                        if (str3 != null) {
                            shellResultData.lines.add(str3);
                            if (M(str3)) {
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

    public final void L() {
        boolean zConnect;
        setTimeout(PopupConst.DURATION_POPUP_SHORT, TimeUnit.MILLISECONDS);
        this.f5741a = AppStart.f3772h;
        setApi(Build.VERSION.SDK_INT);
        if (wa.t.f17728a.f17755v) {
            wa.w.b("MyBootTaskAdbPair 尝试连接中");
        }
        try {
            zConnect = connect(com.yunpan.appmanage.util.v.f4106a.f4127k);
        } catch (Exception unused) {
            try {
                m.K();
                zConnect = autoConnect(this.f5741a, 3333L);
            } catch (AdbPairingRequiredException unused2) {
                throw new Exception("连接adb需要配对码");
            } catch (Exception unused3) {
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                if (wVar.f4134o) {
                    boolean zQ = wVar.z ? u9.d.r("setprop service.adb.tcp.port 5555").l0().q() : false;
                    if (wVar.A) {
                        zQ = u9.d.r("setprop persist.adb.tcp.port 5555").l0().q();
                    }
                    if (zQ) {
                        Thread.sleep(333L);
                        u9.d.r("setprop ctl.restart adbd").l0();
                        Thread.sleep(2000L);
                    }
                }
                try {
                    zConnect = autoConnect(this.f5741a, 3333L);
                } catch (AdbPairingRequiredException unused4) {
                    throw new Exception("连接adb需要配对码");
                } catch (Exception unused5) {
                    zConnect = connect(com.yunpan.appmanage.util.v.f4106a.f4127k);
                }
            }
        }
        if (!zConnect) {
            throw new Exception("adb连接失败");
        }
        if (wa.t.f17728a.f17755v) {
            wa.w.b("MyBootTaskAdbPair 连接成功");
        }
        O();
        if (a.f5646a.f()) {
            return;
        }
        K(b.a(AppStart.f3772h));
    }

    public final String N(String str) {
        try {
            if (str.startsWith("adb ")) {
                str = str.substring(4);
            }
            String strTrim = str.trim();
            boolean z = true;
            if (!strTrim.contains(":")) {
                String strTrim2 = strTrim.trim();
                int iIndexOf = strTrim2.indexOf(" ");
                if (iIndexOf == -1) {
                    strTrim = strTrim2.concat(":");
                } else {
                    strTrim = strTrim2.substring(0, iIndexOf) + ":" + strTrim2.substring(iIndexOf + 1);
                }
            }
            System.out.getClass();
            if (!strTrim.startsWith("remount") && !strTrim.startsWith("reboot")) {
                z = false;
            }
            long j10 = z ? PopupConst.DURATION_POPUP_SHORT : 8000L;
            if (strTrim.startsWith("install:")) {
                return "不支持adb install流式安装，请用pm install";
            }
            AdbStream adbStreamOpen = getAdbConnection().open(strTrim);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(adbStreamOpen.openInputStream()));
            LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
            fg.b bVar = new fg.b(new k(adbStreamOpen, bufferedReader, linkedBlockingQueue, 1), 1);
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

    public final void O() throws Exception {
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        if (!wVar.l.isEmpty()) {
            openStream(1, wVar.l.replace("\"", "'").split(" "));
            Thread.sleep(333L);
        }
        this.f5742b = openStream(1, new String[0]);
        this.f5743c = new LinkedBlockingQueue();
        new fg.b(new a2.h(18, this), 1).start();
        AdbStream adbStream = this.f5742b;
        if (adbStream == null || adbStream.isClosed()) {
            return;
        }
        if ((wVar.l.isEmpty() ? K("adb36987") : K(wVar.l.replace("\"", "'"))).getListStr().toLowerCase().contains("tream open actively rejected")) {
            this.f5742b.close();
            this.f5742b = null;
            throw new Exception("adb shell 需要密码");
        }
    }

    @Override // io.github.muntashirakon.adb.AbsAdbConnectionManager
    public final Certificate getCertificate() {
        return this.f5745e;
    }

    @Override // io.github.muntashirakon.adb.AbsAdbConnectionManager
    public final String getDeviceName() {
        return this.f5741a.getResources().getString(R.string.app_name);
    }

    @Override // io.github.muntashirakon.adb.AbsAdbConnectionManager
    public final PrivateKey getPrivateKey() {
        return this.f5744d;
    }
}
