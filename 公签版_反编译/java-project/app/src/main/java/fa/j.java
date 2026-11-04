package fa;

import a2.w0;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.service.StartService;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.nio.charset.Charset;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Name;
import ua.h6;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public g f5695a;

    /* renamed from: b, reason: collision with root package name */
    public y9.b f5696b;

    /* renamed from: c, reason: collision with root package name */
    public Socket f5697c;

    /* renamed from: d, reason: collision with root package name */
    public y9.f f5698d;

    /* renamed from: e, reason: collision with root package name */
    public y9.g f5699e;

    /* renamed from: i, reason: collision with root package name */
    public y9.c f5703i;

    /* renamed from: f, reason: collision with root package name */
    public boolean f5700f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5701g = false;

    /* renamed from: h, reason: collision with root package name */
    public String f5702h = "";

    /* renamed from: j, reason: collision with root package name */
    public int f5704j = -1;

    /* renamed from: k, reason: collision with root package name */
    public int f5705k = -1;
    public final com.yunpan.appmanage.carsdk.u l = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 4);

    public final void a() throws Exception {
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        if (!wVar.l.trim().isEmpty()) {
            this.f5696b.J("shell:" + wVar.l.trim());
            Thread.sleep(333L);
        }
        y9.f fVarJ = this.f5696b.J("shell:");
        this.f5698d = fVarJ;
        if (this.f5697c == null || fVarJ.f19008f) {
            throw new Exception("未连接");
        }
        y9.g gVar = fVarJ.f19007e;
        this.f5699e = gVar;
        if (gVar == null) {
            throw new Exception("连接输出流出错");
        }
        if (!wVar.f4130m) {
            if (wVar.l.isEmpty()) {
                this.f5698d.A("adb36987\n");
                f(2000L);
            } else {
                this.f5698d.A(wVar.l + SignParameters.NEW_LINE);
                f(2000L);
            }
        }
        this.f5698d.A("id\n");
        Thread.sleep(888L);
        e();
        this.f5698d.A("id\n");
        String strA = f(2000L).a();
        if (strA.toLowerCase().contains("tream open actively rejected")) {
            this.f5698d.close();
            this.f5698d = null;
            throw new Exception("adb shell 需要密码");
        }
        if (strA.contains("uid=")) {
            return;
        }
        if (wVar.G) {
            Toaster.showLong((CharSequence) "adb shell密码错误");
        }
        throw new Exception("可以连接，但adb shell需要密码");
    }

    public final void b() {
        try {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            Settings.Global.putInt(kVar.f4035a.getContentResolver(), "verifier_verify_adb_installs", 0);
            Settings.Global.putInt(kVar.f4035a.getContentResolver(), "package_verifier_enable", 0);
            Settings.Secure.putInt(kVar.f4035a.getContentResolver(), "install_non_market_apps", 1);
        } catch (Exception unused) {
            c("settings put secure install_non_market_apps 1");
        }
        c("setprop persist.TCL.debug.installapk 1");
        c("setprop persist.tcl.installapk.enable 1");
    }

    public final i c(String str) {
        y9.f fVar;
        i iVar = new i();
        if (this.f5697c == null || (fVar = this.f5698d) == null || fVar.f19008f || this.f5699e == null) {
            iVar.f5691a = -1;
            iVar.f5693c.add("未连接adb");
            return iVar;
        }
        try {
            return n(str);
        } catch (Exception unused) {
            iVar.f5691a = 404;
            iVar.f5692b = "执行失败";
            iVar.f5693c.add(iVar.f5692b);
            return iVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d(boolean z) {
        this.f5701g = false;
        if (z) {
            try {
                if (this.f5696b != null && i()) {
                    this.f5696b.J("disconnect:");
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        try {
            try {
                y9.f fVar = this.f5698d;
                if (fVar != null) {
                    fVar.close();
                }
            } finally {
                this.f5698d = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            try {
                y9.g gVar = this.f5699e;
                if (gVar != null) {
                    gVar.f19009a = false;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            try {
                try {
                    y9.b bVar = this.f5696b;
                    if (bVar != null) {
                        bVar.close();
                    }
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
                try {
                    try {
                        Socket socket = this.f5697c;
                        if (socket != null) {
                            socket.close();
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    h.f5683a.f5702h = "未连接";
                } finally {
                    this.f5697c = null;
                }
            } finally {
                this.f5696b = null;
            }
        } finally {
            this.f5699e = null;
        }
    }

    public final void e() {
        o();
        try {
            byte[] bArr = new byte[6666];
            int i10 = 0;
            do {
                if (this.f5699e.read(bArr) <= 0) {
                    i10++;
                }
            } while (i10 < 3);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final i f(long j10) throws InterruptedException, IOException {
        byte b10;
        i iVar = new i();
        long jCurrentTimeMillis = System.currentTimeMillis();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[6666];
        int i10 = 0;
        boolean z = false;
        while (true) {
            if (!this.f5696b.f18985f) {
                break;
            }
            if (System.currentTimeMillis() - jCurrentTimeMillis > j10) {
                System.currentTimeMillis();
                new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8));
                break;
            }
            int i11 = this.f5699e.read(bArr);
            if (i11 <= 0) {
                i10++;
                if (i10 > 2) {
                    if (byteArrayOutputStream.size() > 4 && byteArrayOutputStream.size() < 20 && new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8)).trim().endsWith("assword:")) {
                        break;
                    }
                    try {
                        Thread.sleep(200L);
                    } catch (Exception unused) {
                    }
                }
            } else {
                byteArrayOutputStream.write(bArr, 0, i11);
                if (byteArrayOutputStream.size() > 4) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    int length = byteArray.length;
                    if (byteArray[length - 1] != 32 || (((b10 = byteArray[length - 2]) != 38 && b10 != 35 && b10 != 36) || byteArray[length - 3] != 32 || byteArray[length - 4] != 47 || byteArray[length - 5] != 58)) {
                        String str = new String(byteArray, Charset.forName(HTTP.UTF_8));
                        if (!str.contains(":") || (!str.endsWith(" $ ") && !str.endsWith(" # "))) {
                            i10 = 0;
                        }
                    }
                    i10 = 0;
                    z = true;
                }
            }
            if (z) {
                break;
            }
        }
        if (z) {
            String str2 = new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8));
            String strSubstring = str2.substring(str2.lastIndexOf(SignParameters.NEW_LINE) + 1);
            if (strSubstring.contains("|")) {
                iVar.f5691a = new Integer(strSubstring.substring(0, strSubstring.indexOf("|"))).intValue();
            } else {
                iVar.f5691a = 0;
            }
            ArrayList arrayList = new ArrayList(Arrays.asList(str2.split(SignParameters.NEW_LINE)));
            iVar.f5693c = arrayList;
            if (!arrayList.isEmpty()) {
                iVar.f5693c.remove(0);
            }
        } else {
            o();
            iVar.f5691a = 404;
            iVar.f5692b = "命令执行超时";
            iVar.f5693c.add("命令执行超时");
        }
        return iVar;
    }

    public final void g(String str) {
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
        c(sb2.toString());
    }

    public final void h(h6 h6Var) {
        this.f5695a = h6Var;
        new fg.b(new f(this, 0), 1).start();
    }

    public final boolean i() {
        y9.f fVar;
        if (this.f5697c == null || (fVar = this.f5698d) == null || fVar.f19008f || this.f5699e == null) {
            return false;
        }
        return this.f5700f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0291 A[Catch: Exception -> 0x0841, TRY_ENTER, TryCatch #21 {Exception -> 0x0841, blocks: (B:88:0x01c7, B:91:0x01e9, B:94:0x020b, B:110:0x0294, B:114:0x02c3, B:117:0x02da, B:120:0x02e9, B:155:0x03e4, B:205:0x04f2, B:210:0x052a, B:233:0x0616, B:242:0x0641, B:271:0x0706, B:295:0x07ff, B:237:0x062a, B:109:0x0291, B:77:0x01a3, B:79:0x01a7, B:81:0x01ad, B:75:0x0194), top: B:383:0x0194 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x029d A[Catch: Exception -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02cb A[Catch: Exception -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02e4 A[Catch: Exception -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02f1 A[Catch: Exception -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x04fe A[Catch: Exception -> 0x01bf, TRY_ENTER, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0534 A[Catch: Exception -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x057b A[Catch: Exception -> 0x0616, TryCatch #6 {Exception -> 0x0616, blocks: (B:214:0x0542, B:216:0x057b, B:217:0x0585, B:219:0x0596, B:220:0x059c, B:222:0x05a2, B:224:0x05b0, B:226:0x05b8, B:228:0x05fa, B:231:0x060e, B:232:0x0615), top: B:357:0x0542 }] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0585 A[Catch: Exception -> 0x0616, TryCatch #6 {Exception -> 0x0616, blocks: (B:214:0x0542, B:216:0x057b, B:217:0x0585, B:219:0x0596, B:220:0x059c, B:222:0x05a2, B:224:0x05b0, B:226:0x05b8, B:228:0x05fa, B:231:0x060e, B:232:0x0615), top: B:357:0x0542 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x061e A[Catch: Exception -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x062a A[Catch: Exception -> 0x0841, TRY_ENTER, TRY_LEAVE, TryCatch #21 {Exception -> 0x0841, blocks: (B:88:0x01c7, B:91:0x01e9, B:94:0x020b, B:110:0x0294, B:114:0x02c3, B:117:0x02da, B:120:0x02e9, B:155:0x03e4, B:205:0x04f2, B:210:0x052a, B:233:0x0616, B:242:0x0641, B:271:0x0706, B:295:0x07ff, B:237:0x062a, B:109:0x0291, B:77:0x01a3, B:79:0x01a7, B:81:0x01ad, B:75:0x0194), top: B:383:0x0194 }] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x064e A[Catch: Exception -> 0x01bf, TRY_ENTER, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x070c A[Catch: Exception -> 0x01bf, TRY_ENTER, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0730  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x074c A[Catch: Exception -> 0x01bf, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0809 A[Catch: Exception -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0832 A[Catch: Exception -> 0x083b, TryCatch #14 {Exception -> 0x083b, blocks: (B:301:0x081a, B:303:0x0832, B:311:0x0847, B:312:0x0852), top: B:373:0x00d4 }] */
    /* JADX WARN: Removed duplicated region for block: B:322:0x088a  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x08df  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0932  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01cf A[Catch: Exception -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0206 A[Catch: Exception -> 0x01bf, TRY_ENTER, TRY_LEAVE, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0214 A[Catch: Exception -> 0x01bf, TRY_ENTER, TryCatch #11 {Exception -> 0x01bf, blocks: (B:90:0x01cf, B:93:0x0206, B:97:0x0214, B:99:0x0222, B:101:0x0242, B:102:0x0253, B:104:0x026e, B:105:0x027d, B:107:0x0289, B:113:0x029d, B:116:0x02cb, B:119:0x02e4, B:122:0x02f1, B:153:0x03d9, B:152:0x0357, B:159:0x03fd, B:161:0x0407, B:162:0x040c, B:164:0x0414, B:166:0x041c, B:167:0x0427, B:169:0x042f, B:170:0x043b, B:172:0x0441, B:184:0x0471, B:186:0x0477, B:187:0x0480, B:175:0x0452, B:178:0x045d, B:181:0x0468, B:197:0x04b1, B:199:0x04b9, B:200:0x04cc, B:202:0x04d0, B:204:0x04e6, B:207:0x04fe, B:209:0x0523, B:212:0x0534, B:235:0x061e, B:244:0x064e, B:246:0x065e, B:247:0x0663, B:249:0x0673, B:250:0x0678, B:252:0x068d, B:254:0x0695, B:256:0x06a5, B:257:0x06af, B:259:0x06c4, B:260:0x06ce, B:262:0x06de, B:263:0x06e3, B:267:0x06f7, B:270:0x0701, B:274:0x070c, B:276:0x0716, B:278:0x0728, B:281:0x0731, B:283:0x074c, B:285:0x077e, B:287:0x0785, B:289:0x078b, B:290:0x0795, B:294:0x07dd, B:293:0x07c6, B:297:0x0809, B:239:0x062e, B:241:0x0636, B:84:0x01b7, B:32:0x00e7, B:34:0x00f1, B:37:0x0102, B:29:0x00d4), top: B:367:0x00d4, inners: #9, #17 }] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j() {
        i iVar;
        String str;
        Exception exc;
        String str2;
        String str3;
        String str4;
        Object obj;
        String str5;
        Socket socket;
        String str6;
        b bVar;
        String string;
        int i10;
        String str7;
        String str8;
        String str9;
        String str10;
        InputStream inputStreamOpenRawResource;
        String str11 = "ADB连接成功，可执行ADB命令";
        String str12 = "setprop ctl.restart adbd";
        String str13 = "enabled_notification_listeners";
        i iVar2 = new i();
        boolean zI = i();
        String str14 = "/emulated";
        com.yunpan.appmanage.carsdk.u uVar = this.l;
        String str15 = "/mnt/user/";
        if ((zI || l.f5712a.isConnected()) && this.f5704j == com.yunpan.appmanage.util.w.b().O && this.f5705k == com.yunpan.appmanage.util.w.b().P) {
            if (wa.u.a().f17755v) {
                wa.w.b("adb连接过了，返回");
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 100;
            iVar2.f5691a = 0;
            iVar2.f5692b = "连接过了";
            this.f5702h = "已连接";
            messageObtain.obj = iVar2;
            uVar.sendMessage(messageObtain);
            com.yunpan.appmanage.util.k.f().f4049h = true;
            return;
        }
        this.f5704j = com.yunpan.appmanage.util.w.b().O;
        this.f5705k = com.yunpan.appmanage.util.w.b().P;
        if (wa.u.a().f17755v) {
            wa.w.b("尝试连接adb");
        }
        this.f5700f = false;
        this.f5702h = "连接中";
        try {
            a.a();
            a.b();
            if (com.yunpan.appmanage.util.w.b().i()) {
                try {
                    if (Build.VERSION.SDK_INT >= 21) {
                        throw new Exception("使用新版Adb协议");
                    }
                    str = "连接中";
                    try {
                        try {
                            try {
                                this.f5697c = new Socket("", com.yunpan.appmanage.util.w.b().f4127k);
                            } catch (Exception e7) {
                                exc = e7;
                                str2 = str11;
                                iVar = str5;
                                exc.printStackTrace();
                                if (wa.u.a().f17755v) {
                                }
                                iVar.f5691a = -1;
                                String strS = android.support.v4.media.session.a.s(new StringBuilder("ADB连接失败，请确保系统已开启USB无线调试，并且正确设置无线adb端口，您在管家中设置的端口是："), com.yunpan.appmanage.util.w.b().f4127k, SignParameters.NEW_LINE);
                                iVar.f5692b = strS;
                                iVar.f5693c.add(0, strS);
                                iVar.f5693c.add(exc.getMessage() + "");
                                d(true);
                                if (Build.VERSION.SDK_INT < 21) {
                                }
                                com.yunpan.appmanage.util.k.f().f4049h = true;
                                Message messageObtain2 = Message.obtain();
                                messageObtain2.what = 100;
                                messageObtain2.obj = iVar;
                                uVar.sendMessage(messageObtain2);
                            }
                        } catch (Exception unused) {
                            try {
                                if (com.yunpan.appmanage.util.w.b().f4127k != 5557) {
                                    this.f5697c = new Socket("", 5557);
                                    com.yunpan.appmanage.util.w.b().n(5557);
                                } else {
                                    this.f5697c = new Socket("", 5555);
                                    com.yunpan.appmanage.util.w.b().n(5555);
                                }
                            } catch (Exception e10) {
                                try {
                                    try {
                                        if (!com.yunpan.appmanage.util.w.b().z) {
                                            try {
                                                if (!com.yunpan.appmanage.util.w.b().A) {
                                                    throw e10;
                                                }
                                            } catch (Exception e11) {
                                                exc = e11;
                                                obj = iVar2;
                                                str2 = str11;
                                                iVar = obj;
                                                exc.printStackTrace();
                                                if (wa.u.a().f17755v) {
                                                }
                                                iVar.f5691a = -1;
                                                String strS2 = android.support.v4.media.session.a.s(new StringBuilder("ADB连接失败，请确保系统已开启USB无线调试，并且正确设置无线adb端口，您在管家中设置的端口是："), com.yunpan.appmanage.util.w.b().f4127k, SignParameters.NEW_LINE);
                                                iVar.f5692b = strS2;
                                                iVar.f5693c.add(0, strS2);
                                                iVar.f5693c.add(exc.getMessage() + "");
                                                d(true);
                                                if (Build.VERSION.SDK_INT < 21) {
                                                }
                                                com.yunpan.appmanage.util.k.f().f4049h = true;
                                                Message messageObtain22 = Message.obtain();
                                                messageObtain22.what = 100;
                                                messageObtain22.obj = iVar;
                                                uVar.sendMessage(messageObtain22);
                                            }
                                        }
                                        if (com.yunpan.appmanage.util.w.b().z && !u9.d.r("setprop service.adb.tcp.port 5555").l0().q()) {
                                            throw e10;
                                        }
                                        if (com.yunpan.appmanage.util.w.b().A && !u9.d.r("setprop persist.adb.tcp.port 5555").l0().q()) {
                                            throw e10;
                                        }
                                        Thread.sleep(333L);
                                        u9.d.r("setprop ctl.restart adbd").l0();
                                        Thread.sleep(2000L);
                                        long jCurrentTimeMillis = System.currentTimeMillis();
                                        String str16 = str12;
                                        String str17 = iVar2;
                                        while (true) {
                                            try {
                                                str5 = str17;
                                            } catch (Exception unused2) {
                                                str5 = str17;
                                            }
                                            try {
                                                this.f5697c = new Socket("", 5555);
                                                break;
                                            } catch (Exception unused3) {
                                                try {
                                                    Thread.sleep(222L);
                                                } catch (Exception e12) {
                                                    e = e12;
                                                    str3 = str11;
                                                    str4 = str5;
                                                    exc = e;
                                                    iVar = str4;
                                                    str2 = str3;
                                                    exc.printStackTrace();
                                                    if (wa.u.a().f17755v) {
                                                    }
                                                    iVar.f5691a = -1;
                                                    String strS22 = android.support.v4.media.session.a.s(new StringBuilder("ADB连接失败，请确保系统已开启USB无线调试，并且正确设置无线adb端口，您在管家中设置的端口是："), com.yunpan.appmanage.util.w.b().f4127k, SignParameters.NEW_LINE);
                                                    iVar.f5692b = strS22;
                                                    iVar.f5693c.add(0, strS22);
                                                    iVar.f5693c.add(exc.getMessage() + "");
                                                    d(true);
                                                    if (Build.VERSION.SDK_INT < 21) {
                                                    }
                                                    com.yunpan.appmanage.util.k.f().f4049h = true;
                                                    Message messageObtain222 = Message.obtain();
                                                    messageObtain222.what = 100;
                                                    messageObtain222.obj = iVar;
                                                    uVar.sendMessage(messageObtain222);
                                                }
                                                if (System.currentTimeMillis() - jCurrentTimeMillis >= PopupConst.DURATION_POPUP_SHORT) {
                                                    socket = this.f5697c;
                                                    if (socket != null || socket.isClosed()) {
                                                        throw new Exception("无法连接，自动打开无线adb");
                                                    }
                                                    str6 = str16;
                                                    if (com.yunpan.appmanage.util.w.b().f4127k != 5555) {
                                                        com.yunpan.appmanage.util.w.b().n(5555);
                                                        str6 = str16;
                                                    }
                                                    if (wa.u.a().f17755v) {
                                                    }
                                                    y9.c cVarC = a.c(AppStart.b());
                                                    this.f5703i = cVarC;
                                                    y9.b bVarA = y9.b.A(this.f5697c, cVarC);
                                                    this.f5696b = bVarA;
                                                    bVarA.r();
                                                    if (wa.u.a().f17755v) {
                                                    }
                                                    if (com.yunpan.appmanage.util.w.b().O == 1) {
                                                    }
                                                    if (com.yunpan.appmanage.util.w.b().O == 2) {
                                                    }
                                                    if (com.yunpan.appmanage.util.w.b().P > 0) {
                                                    }
                                                    this.f5702h = "已连接";
                                                    if (wa.u.a().f17755v) {
                                                    }
                                                    if (com.yunpan.appmanage.util.w.b().J) {
                                                    }
                                                    this.f5700f = true;
                                                    if (c(Name.MARK).a().contains("uid=0(")) {
                                                    }
                                                    if (!com.yunpan.appmanage.util.k.f().f4069s.isEmpty()) {
                                                    }
                                                    if (!h0.c().f()) {
                                                    }
                                                    bVar = a.f5646a;
                                                    if (!bVar.f()) {
                                                    }
                                                    c("setprop persist.sv.enable_adb_install 1");
                                                    if (!com.yunpan.appmanage.util.k.f().f4053j) {
                                                    }
                                                    if (Build.VERSION.SDK_INT >= 18) {
                                                    }
                                                    if (com.yunpan.appmanage.util.w.b().f()) {
                                                    }
                                                    iVar = str5;
                                                    iVar.f5691a = 0;
                                                    iVar.f5692b = str11;
                                                    iVar.f5693c.clear();
                                                    iVar.f5693c.add(iVar.f5692b);
                                                    if (com.yunpan.appmanage.util.w.b().c()) {
                                                    }
                                                    com.yunpan.appmanage.util.k.f().f4049h = true;
                                                    Message messageObtain2222 = Message.obtain();
                                                    messageObtain2222.what = 100;
                                                    messageObtain2222.obj = iVar;
                                                    uVar.sendMessage(messageObtain2222);
                                                }
                                                str15 = str15;
                                                str13 = str13;
                                                jCurrentTimeMillis = jCurrentTimeMillis;
                                                str17 = str5;
                                                str16 = str16;
                                                str14 = str14;
                                                str11 = str11;
                                            }
                                        }
                                        socket = this.f5697c;
                                        if (socket != null) {
                                        }
                                        throw new Exception("无法连接，自动打开无线adb");
                                    } catch (Exception e13) {
                                        e = e13;
                                        iVar = iVar2;
                                        str3 = str11;
                                        str4 = iVar;
                                        exc = e;
                                        iVar = str4;
                                        str2 = str3;
                                        exc.printStackTrace();
                                        if (wa.u.a().f17755v) {
                                        }
                                        iVar.f5691a = -1;
                                        String strS222 = android.support.v4.media.session.a.s(new StringBuilder("ADB连接失败，请确保系统已开启USB无线调试，并且正确设置无线adb端口，您在管家中设置的端口是："), com.yunpan.appmanage.util.w.b().f4127k, SignParameters.NEW_LINE);
                                        iVar.f5692b = strS222;
                                        iVar.f5693c.add(0, strS222);
                                        iVar.f5693c.add(exc.getMessage() + "");
                                        d(true);
                                        if (Build.VERSION.SDK_INT < 21) {
                                        }
                                        com.yunpan.appmanage.util.k.f().f4049h = true;
                                        Message messageObtain22222 = Message.obtain();
                                        messageObtain22222.what = 100;
                                        messageObtain22222.obj = iVar;
                                        uVar.sendMessage(messageObtain22222);
                                    }
                                } catch (Exception e14) {
                                    e = e14;
                                    iVar = iVar2;
                                }
                            }
                        }
                        str5 = iVar2;
                        str6 = str12;
                        if (wa.u.a().f17755v) {
                            wa.w.b("tcp连接成功,端口：" + com.yunpan.appmanage.util.w.b().f4127k);
                        }
                        y9.c cVarC2 = a.c(AppStart.b());
                        this.f5703i = cVarC2;
                        y9.b bVarA2 = y9.b.A(this.f5697c, cVarC2);
                        this.f5696b = bVarA2;
                        bVarA2.r();
                        if (wa.u.a().f17755v) {
                            wa.w.b("adb协议连接成功");
                        }
                        if (com.yunpan.appmanage.util.w.b().O == 1) {
                            if (k("root:").contains("adbd cannot run as root in production builds")) {
                                u9.d.r("setprop ro.debuggable 1").l0();
                                if (u9.d.r("setprop service.adb.root 1").l0().q()) {
                                    u9.d.r(str6).l0();
                                    Thread.sleep(1000L);
                                } else {
                                    w0.F().getClass();
                                    w0.q(2000L, "setprop ro.debuggable 1");
                                    w0.F().getClass();
                                    if (w0.q(2000L, "setprop service.adb.root 1").f5648a == 0) {
                                        w0.F().getClass();
                                        w0.q(2000L, str6);
                                        Thread.sleep(1000L);
                                    }
                                }
                            }
                            m();
                            if (com.yunpan.appmanage.util.w.b().P == 1) {
                                this.f5696b.J("remount:");
                            }
                        } else {
                            a();
                        }
                        if (com.yunpan.appmanage.util.w.b().O == 2) {
                            this.f5698d.A(com.yunpan.appmanage.util.w.b().f4110b0 + SignParameters.NEW_LINE);
                            com.yunpan.appmanage.util.w.b().getClass();
                            f(888L);
                        }
                        if (com.yunpan.appmanage.util.w.b().P > 0) {
                            c("setenforce 0");
                            c("setprop ro.adb.secure 0");
                            c("setprop ro.secure 0");
                        }
                        this.f5702h = "已连接";
                        if (wa.u.a().f17755v) {
                            wa.w.b("已完成连接");
                        }
                        if (com.yunpan.appmanage.util.w.b().J) {
                            if (!com.yunpan.appmanage.util.a0.g("/data/local/tmp/su_xingrui")) {
                                try {
                                    inputStreamOpenRawResource = com.yunpan.appmanage.util.k.f().f4035a.getResources().openRawResource(R.raw.su_xingrui);
                                } catch (Exception unused4) {
                                }
                                try {
                                    FileOutputStream fileOutputStream = new FileOutputStream(h0.c().d() + "/su_xingrui");
                                    try {
                                        byte[] bArr = new byte[1048576];
                                        while (true) {
                                            int i11 = inputStreamOpenRawResource.read(bArr);
                                            if (i11 == -1) {
                                                break;
                                            } else {
                                                fileOutputStream.write(bArr, 0, i11);
                                            }
                                        }
                                        fileOutputStream.close();
                                        inputStreamOpenRawResource.close();
                                        w0 w0VarF = w0.F();
                                        String str18 = "dd if='" + h0.c().d() + "/su_xingrui' of='/data/local/tmp/su_xingrui'";
                                        w0VarF.getClass();
                                        w0.h(str18);
                                        w0 w0VarF2 = w0.F();
                                        String str19 = "mv '" + h0.c().d() + "/su_xingrui' '/data/local/tmp/'";
                                        w0VarF2.getClass();
                                        w0.h(str19);
                                        w0 w0VarF3 = w0.F();
                                        String str20 = "rm -rf " + h0.c().d() + "/su_xingrui";
                                        w0VarF3.getClass();
                                        w0.h(str20);
                                        w0.F().getClass();
                                        w0.h("chmod 777 '/data/local/tmp/su_xingrui'");
                                    } finally {
                                    }
                                } finally {
                                }
                            }
                            w0.F().getClass();
                            w0.h("/data/local/tmp/su_xingrui");
                        }
                        this.f5700f = true;
                        if (c(Name.MARK).a().contains("uid=0(")) {
                            this.f5701g = true;
                            if (wa.u.a().f17755v) {
                                wa.w.b("uid=0,已获得root权限");
                            }
                            i iVarC = c("touch /system/app/111222");
                            if (iVarC.f5691a != 0) {
                                if (com.yunpan.appmanage.util.w.b().J) {
                                    c("mount -o remount,rw -t ext4 /system");
                                    iVarC = c("touch /system/app/111222");
                                } else if (com.yunpan.appmanage.util.w.b().P > 0) {
                                    Iterator it = c("mount").f5693c.iterator();
                                    while (it.hasNext()) {
                                        String strReplaceAll = (String) it.next();
                                        if (strReplaceAll.contains(" /system ")) {
                                            str10 = "/system";
                                        } else if (strReplaceAll.contains(" /vendor ")) {
                                            str10 = "/vendor";
                                        } else if (strReplaceAll.contains(" /oem ")) {
                                            str10 = "/oem";
                                        } else if (strReplaceAll.contains(" / ")) {
                                            str10 = "/";
                                        }
                                        while (strReplaceAll.contains("  ")) {
                                            strReplaceAll = strReplaceAll.trim().replaceAll("  ", " ");
                                        }
                                        String[] strArrSplit = strReplaceAll.split(" ");
                                        if (strArrSplit.length >= 4) {
                                            try {
                                                c("mount -o remount,rw -t " + (strReplaceAll.contains(" (r") ? strArrSplit[4] : strArrSplit[2]) + " " + str10);
                                            } catch (Exception unused5) {
                                            }
                                        }
                                    }
                                    iVarC = c("touch /system/app/111222");
                                    if (iVarC.f5691a != 0) {
                                        c("mount -o remount,rw /oem");
                                        c("mount -o remount,rw /system");
                                        c("mount -o remount,rw /");
                                        iVarC = c("touch /system/app/111222");
                                    }
                                }
                            }
                            if (iVarC.f5691a == 0) {
                                com.yunpan.appmanage.util.k.f().f4058m = true;
                                c("rm -rf /system/app/111222");
                                if (c("touch /system/bin/111222").f5691a == 0) {
                                    com.yunpan.appmanage.util.k.f().l = true;
                                    c("rm -rf /system/bin/111222");
                                }
                            }
                        }
                        if (!com.yunpan.appmanage.util.k.f().f4069s.isEmpty()) {
                            if (c("ls -l \"" + com.yunpan.appmanage.util.k.f().f4069s + "/\"").f5691a == 1) {
                                com.yunpan.appmanage.util.k.f().L = false;
                            }
                        }
                        if (!h0.c().f() && !h0.c().d().isEmpty()) {
                            try {
                                str8 = h0.c().d() + "/.111111222222";
                                new File(str8).delete();
                                c("touch " + str8);
                                if (com.yunpan.appmanage.util.a0.g(str8)) {
                                    com.yunpan.appmanage.util.k.f().getClass();
                                    i iVarC2 = c("df");
                                    if (iVarC2.f5691a != 0) {
                                        throw new Exception("执行df失败");
                                    }
                                    Iterator it2 = iVarC2.f5693c.iterator();
                                    while (it2.hasNext()) {
                                        String str21 = (String) it2.next();
                                        String str22 = str15;
                                        if (str21.contains(str22)) {
                                            str9 = str14;
                                            if (str21.contains(str9)) {
                                                String strN = p000if.a.N(str21, str22, str9, false);
                                                String str23 = str22 + strN + "/emulated/" + strN;
                                                if (c("touch " + (str23 + "/.111111222222")).f5691a == 0) {
                                                    com.yunpan.appmanage.util.k.f().O = str23;
                                                    com.yunpan.appmanage.util.k.f().N = strN;
                                                }
                                            }
                                        } else {
                                            str9 = str14;
                                        }
                                        str15 = str22;
                                        str14 = str9;
                                    }
                                } else {
                                    new File(str8).delete();
                                }
                            } catch (Exception unused6) {
                            }
                        }
                        bVar = a.f5646a;
                        if (!bVar.f()) {
                            c(b.a(AppStart.b()));
                        } else if (this.f5701g && bVar.f5651b.getUid() != 0) {
                            c(b.a(AppStart.b()));
                        }
                        c("setprop persist.sv.enable_adb_install 1");
                        if (!com.yunpan.appmanage.util.k.f().f4053j) {
                            if (!XXPermissions.isGrantedPermission(com.yunpan.appmanage.util.k.f().f4035a, PermissionLists.getWriteSettingsPermission())) {
                                l("WRITE_SETTINGS");
                            }
                            if (!XXPermissions.isGrantedPermission(com.yunpan.appmanage.util.k.f().f4035a, PermissionLists.getAnswerPhoneCallsPermission())) {
                                l("ANSWER_PHONE_CALLS");
                            }
                            g("android.permission.WRITE_SECURE_SETTINGS");
                            g("android.permission.DUMP");
                            g("android.permission.READ_LOGS");
                            int i12 = Build.VERSION.SDK_INT;
                            if (i12 >= 23) {
                                if (!com.yunpan.appmanage.util.k.f().f4055k) {
                                    if (!XXPermissions.isGrantedPermission(com.yunpan.appmanage.util.k.f().f4035a, PermissionLists.getPackageUsageStatsPermission())) {
                                        l("GET_USAGE_STATS");
                                        l("android.permission.PACKAGE_USAGE_STATS");
                                    }
                                    l("android.permission.GET_APP_OPS_STATS");
                                    if (!XXPermissions.isGrantedPermission(com.yunpan.appmanage.util.k.f().f4035a, PermissionLists.getWriteExternalStoragePermission())) {
                                        l("READ_EXTERNAL_STORAGE");
                                        l("WRITE_EXTERNAL_STORAGE");
                                    }
                                    if (!XXPermissions.isGrantedPermission(com.yunpan.appmanage.util.k.f().f4035a, PermissionLists.getSystemAlertWindowPermission())) {
                                        l("SYSTEM_ALERT_WINDOW");
                                    }
                                }
                                if (!XXPermissions.isGrantedPermission(com.yunpan.appmanage.util.k.f().f4035a, PermissionLists.getRequestInstallPackagesPermission())) {
                                    if (i12 == 30) {
                                        com.yunpan.appmanage.util.a0.r("授权中，如果出现闪退请重新打开");
                                        try {
                                            Thread.sleep(2222L);
                                        } catch (Exception unused7) {
                                        }
                                    }
                                    l("REQUEST_INSTALL_PACKAGES");
                                }
                            }
                        }
                        if (Build.VERSION.SDK_INT >= 18 && p000if.a.b0(AppStart.b())) {
                            String str24 = str13;
                            string = Settings.Secure.getString(com.yunpan.appmanage.util.k.f().f4035a.getContentResolver(), str24);
                            if (string != null || string.equals("null")) {
                                string = "";
                            }
                            if (!string.contains(com.yunpan.appmanage.util.k.f().f4041d + "/")) {
                                String strReplace = (string + ":" + com.yunpan.appmanage.util.k.f().f4041d + "/" + StartService.class.getName()).replace("::", "");
                                if (strReplace.startsWith(":")) {
                                    i10 = 1;
                                    strReplace = strReplace.substring(1);
                                } else {
                                    i10 = 1;
                                }
                                if (strReplace.endsWith(":")) {
                                    strReplace = strReplace.substring(0, strReplace.length() - i10);
                                }
                                Settings.Secure.putString(com.yunpan.appmanage.util.k.f().f4035a.getContentResolver(), str24, strReplace);
                                Settings.Secure.putInt(com.yunpan.appmanage.util.k.f().f4035a.getContentResolver(), "notification_enabled", 1);
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("cmd notification allow_listener");
                                if (com.yunpan.appmanage.util.k.f().f4060n == 0) {
                                    str7 = "";
                                } else {
                                    str7 = " --user " + com.yunpan.appmanage.util.k.f().f4060n;
                                }
                                sb2.append(str7);
                                sb2.append(" ");
                                sb2.append(com.yunpan.appmanage.util.k.f().f4041d);
                                sb2.append("/");
                                sb2.append(StartService.class.getName());
                                c(sb2.toString());
                            }
                        }
                        if (com.yunpan.appmanage.util.w.b().f()) {
                            b();
                            com.yunpan.appmanage.util.w.b().A();
                        }
                        iVar = str5;
                        try {
                            iVar.f5691a = 0;
                            iVar.f5692b = str11;
                            iVar.f5693c.clear();
                            iVar.f5693c.add(iVar.f5692b);
                            if (com.yunpan.appmanage.util.w.b().c()) {
                                com.yunpan.appmanage.util.a0.w("adb连接成功");
                            }
                        } catch (Exception e15) {
                            e = e15;
                            str3 = str11;
                            str4 = iVar;
                            exc = e;
                            iVar = str4;
                            str2 = str3;
                            exc.printStackTrace();
                            if (wa.u.a().f17755v) {
                            }
                            iVar.f5691a = -1;
                            String strS2222 = android.support.v4.media.session.a.s(new StringBuilder("ADB连接失败，请确保系统已开启USB无线调试，并且正确设置无线adb端口，您在管家中设置的端口是："), com.yunpan.appmanage.util.w.b().f4127k, SignParameters.NEW_LINE);
                            iVar.f5692b = strS2222;
                            iVar.f5693c.add(0, strS2222);
                            iVar.f5693c.add(exc.getMessage() + "");
                            d(true);
                            if (Build.VERSION.SDK_INT < 21) {
                            }
                            com.yunpan.appmanage.util.k.f().f4049h = true;
                            Message messageObtain222222 = Message.obtain();
                            messageObtain222222.what = 100;
                            messageObtain222222.obj = iVar;
                            uVar.sendMessage(messageObtain222222);
                        }
                    } catch (Exception e16) {
                        e = e16;
                        str4 = str12;
                        str3 = iVar2;
                    }
                } catch (Exception e17) {
                    exc = e17;
                    obj = iVar2;
                    str = "连接中";
                    str2 = str11;
                    iVar = obj;
                    exc.printStackTrace();
                    if (wa.u.a().f17755v) {
                        wa.w.b("连接失败：" + exc.getMessage());
                    }
                    iVar.f5691a = -1;
                    String strS22222 = android.support.v4.media.session.a.s(new StringBuilder("ADB连接失败，请确保系统已开启USB无线调试，并且正确设置无线adb端口，您在管家中设置的端口是："), com.yunpan.appmanage.util.w.b().f4127k, SignParameters.NEW_LINE);
                    iVar.f5692b = strS22222;
                    iVar.f5693c.add(0, strS22222);
                    iVar.f5693c.add(exc.getMessage() + "");
                    d(true);
                    if (Build.VERSION.SDK_INT < 21) {
                        try {
                            this.f5702h = str;
                            l.f5712a.M(com.yunpan.appmanage.util.k.f().f4035a);
                            if (l.f5712a.isConnected()) {
                                this.f5702h = "已连接";
                                iVar.f5691a = 0;
                                iVar.f5692b = str2;
                                iVar.f5693c.clear();
                                iVar.f5693c.add(iVar.f5692b);
                            } else {
                                this.f5702h = "未连接";
                            }
                        } catch (Exception e18) {
                            if (wa.u.a().f17755v) {
                                wa.w.b("AdbPair连接失败：" + exc.getMessage());
                            }
                            e18.printStackTrace();
                            this.f5702h = "未连接";
                        }
                    } else {
                        this.f5702h = "未连接";
                    }
                    com.yunpan.appmanage.util.k.f().f4049h = true;
                    Message messageObtain2222222 = Message.obtain();
                    messageObtain2222222.what = 100;
                    messageObtain2222222.obj = iVar;
                    uVar.sendMessage(messageObtain2222222);
                }
            } else {
                str = "连接中";
                this.f5697c = new Socket("", com.yunpan.appmanage.util.w.b().f4127k);
                str5 = iVar2;
                str6 = str12;
                if (wa.u.a().f17755v) {
                }
                y9.c cVarC22 = a.c(AppStart.b());
                this.f5703i = cVarC22;
                y9.b bVarA22 = y9.b.A(this.f5697c, cVarC22);
                this.f5696b = bVarA22;
                bVarA22.r();
                if (wa.u.a().f17755v) {
                }
                if (com.yunpan.appmanage.util.w.b().O == 1) {
                }
                if (com.yunpan.appmanage.util.w.b().O == 2) {
                }
                if (com.yunpan.appmanage.util.w.b().P > 0) {
                }
                this.f5702h = "已连接";
                if (wa.u.a().f17755v) {
                }
                if (com.yunpan.appmanage.util.w.b().J) {
                }
                this.f5700f = true;
                if (c(Name.MARK).a().contains("uid=0(")) {
                }
                if (!com.yunpan.appmanage.util.k.f().f4069s.isEmpty()) {
                }
                if (!h0.c().f()) {
                    str8 = h0.c().d() + "/.111111222222";
                    new File(str8).delete();
                    c("touch " + str8);
                    if (com.yunpan.appmanage.util.a0.g(str8)) {
                    }
                }
                bVar = a.f5646a;
                if (!bVar.f()) {
                }
                c("setprop persist.sv.enable_adb_install 1");
                if (!com.yunpan.appmanage.util.k.f().f4053j) {
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    String str242 = str13;
                    string = Settings.Secure.getString(com.yunpan.appmanage.util.k.f().f4035a.getContentResolver(), str242);
                    if (string != null) {
                        string = "";
                        if (!string.contains(com.yunpan.appmanage.util.k.f().f4041d + "/")) {
                        }
                    }
                }
                if (com.yunpan.appmanage.util.w.b().f()) {
                }
                iVar = str5;
                iVar.f5691a = 0;
                iVar.f5692b = str11;
                iVar.f5693c.clear();
                iVar.f5693c.add(iVar.f5692b);
                if (com.yunpan.appmanage.util.w.b().c()) {
                }
            }
        } catch (Exception e19) {
            e = e19;
            iVar = iVar2;
            str = "连接中";
        }
        com.yunpan.appmanage.util.k.f().f4049h = true;
        Message messageObtain22222222 = Message.obtain();
        messageObtain22222222.what = 100;
        messageObtain22222222.obj = iVar;
        uVar.sendMessage(messageObtain22222222);
    }

    public final String k(String str) {
        y9.f fVar;
        y9.f fVarJ;
        try {
            if (str.startsWith("install:")) {
                return "不支持adb install流式安装，请用pm install";
            }
            fVarJ = this.f5696b.J(str.trim());
            try {
                if (this.f5697c == null) {
                    throw new Exception("未连接");
                }
                y9.g gVar = fVarJ.f19007e;
                if (gVar == null) {
                    throw new Exception("连接输出流出错");
                }
                Thread.sleep(666L);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[6666];
                int i10 = 0;
                do {
                    int i11 = gVar.read(bArr);
                    if (i11 > 0) {
                        byteArrayOutputStream.write(bArr, 0, i11);
                    } else {
                        if (byteArrayOutputStream.size() > 5) {
                            break;
                        }
                        i10++;
                        Thread.sleep(333L);
                    }
                } while (i10 < 10);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                int length = byteArray.length;
                String str2 = new String(byteArray, Charset.forName(HTTP.UTF_8));
                q4.a.e(gVar);
                q4.a.e(fVarJ);
                return str2;
            } catch (Exception unused) {
                q4.a.e(null);
                q4.a.e(fVarJ);
                return "";
            } catch (Throwable th2) {
                fVar = fVarJ;
                th = th2;
                q4.a.e(null);
                q4.a.e(fVar);
                throw th;
            }
        } catch (Exception unused2) {
            fVarJ = null;
        } catch (Throwable th3) {
            th = th3;
            fVar = null;
        }
    }

    public final void l(String str) {
        StringBuilder sb2 = new StringBuilder();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        String str2 = "";
        sb2.append(kVar.f4047g ? "cmd " : "");
        sb2.append("appops set");
        if (kVar.f4060n != 0) {
            str2 = " --user " + kVar.f4060n;
        }
        sb2.append(str2);
        sb2.append(" ");
        sb2.append(AppStart.f3772h.getPackageName());
        sb2.append(" ");
        sb2.append(str);
        sb2.append(" allow");
        c(sb2.toString());
    }

    public final void m() {
        Socket socket;
        Thread.sleep(666L);
        boolean zI = i();
        if (zI) {
            try {
                zI = this.f5696b.f18985f;
            } catch (Exception unused) {
            }
        }
        if (!zI) {
            try {
                q4.a.e(this.f5699e);
                q4.a.e(this.f5698d);
                q4.a.e(this.f5696b);
                q4.a.e(this.f5697c);
                this.f5699e = null;
                this.f5698d = null;
                this.f5696b = null;
                this.f5697c = null;
            } catch (Exception unused2) {
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            do {
                try {
                    socket = new Socket("", com.yunpan.appmanage.util.v.f4106a.f4127k);
                    this.f5697c = socket;
                } catch (Exception unused3) {
                }
                if (!socket.isClosed()) {
                    break;
                }
            } while (System.currentTimeMillis() - jCurrentTimeMillis < PopupConst.DURATION_POPUP_RADIO);
            Socket socket2 = this.f5697c;
            if (socket2 == null || socket2.isClosed()) {
                throw new Exception("未连接，提权后连接失败");
            }
            y9.b bVarA = y9.b.A(this.f5697c, this.f5703i);
            this.f5696b = bVarA;
            bVarA.r();
        }
        a();
        this.f5702h = "已连接";
    }

    public final i n(String str) {
        i iVarF;
        synchronized (this) {
            try {
                e();
                this.f5698d.A(str + SignParameters.NEW_LINE);
                iVarF = f(str.startsWith("cp ") ? 3000000 : (str.startsWith("\\cp ") || str.startsWith("cp -R '")) ? 3000001 : str.startsWith("ls -lR ") ? 3000002 : (str.contains("pm install ") || str.contains("pm install-write ") || str.startsWith("cmd package install")) ? 600000 : str.startsWith("rm ") ? 15000 : 50000);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iVarF;
    }

    public final void o() {
        try {
            this.f5698d.J(new byte[]{0, 28, 10});
            Thread.sleep(60L);
        } catch (Exception unused) {
        }
    }
}
