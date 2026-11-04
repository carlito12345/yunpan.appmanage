package fa;

import android.app.ActivityManager;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Environment;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.magica.MagicaService;
import com.yunpan.appmanage.service.AccService;
import j$.nio.charset.StandardCharsets;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Name;
import rikka.shizuku.ShizukuProvider;
import ua.i6;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: b, reason: collision with root package name */
    public String f5663b;

    /* renamed from: a, reason: collision with root package name */
    public boolean f5662a = false;

    /* renamed from: c, reason: collision with root package name */
    public v9.i f5664c = null;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5665d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5666e = false;

    /* renamed from: f, reason: collision with root package name */
    public oa.d f5667f = null;

    /* renamed from: g, reason: collision with root package name */
    public final com.yunpan.appmanage.carsdk.f f5668g = new com.yunpan.appmanage.carsdk.f(3, this);

    /* renamed from: h, reason: collision with root package name */
    public gh.a f5669h = null;

    /* renamed from: i, reason: collision with root package name */
    public long f5670i = 0;

    public static HashSet a(AccService accService) {
        HashSet hashSet = new HashSet();
        String strU = qf.c.u(accService);
        if (strU != null) {
            hashSet.add(strU);
        } else if (hashSet.isEmpty()) {
            Iterator it = qf.c.r(accService).iterator();
            while (it.hasNext()) {
                hashSet.add(((DesktopBean) it.next()).packageName);
            }
        }
        hashSet.add(accService.getPackageName());
        hashSet.add("com.google.android.leanback.ime");
        hashSet.add("android.ext.services");
        return hashSet;
    }

    public static HashSet b(AccService accService) {
        HashSet hashSet = new HashSet();
        for (ApplicationInfo applicationInfo : accService.getPackageManager().getInstalledApplications(1)) {
            if ((applicationInfo.flags & 1) != 0) {
                hashSet.add(applicationInfo.packageName);
            }
        }
        return hashSet;
    }

    public static HashSet c(AccService accService) {
        HashSet hashSet = new HashSet();
        ActivityManager activityManager = (ActivityManager) accService.getSystemService("activity");
        for (ActivityManager.RunningServiceInfo runningServiceInfo : activityManager.getRunningServices(Integer.MAX_VALUE)) {
            if (runningServiceInfo.pid >= 1) {
                hashSet.add(runningServiceInfo.service.getPackageName());
            }
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid >= 1) {
                String str = runningAppProcessInfo.processName;
                if (str.contains(":")) {
                    str = str.split(":")[0];
                }
                if (str.contains("@")) {
                    str = str.split("@")[0];
                }
                if (str.contains(".")) {
                    hashSet.add(str);
                }
            }
        }
        return hashSet;
    }

    public static e e() {
        return d.f5659a;
    }

    public static void f(AccService accService) {
        int iIndexOf;
        String strTrim;
        int iIndexOf2;
        int i10 = 1;
        HashSet hashSetA = a(accService);
        HashSet hashSetB = b(accService);
        i6 i6Var = null;
        if (accService.getPackageManager().checkPermission("android.permission.DEVICE_POWER", accService.getPackageName()) == 0) {
            Iterator it = c(accService).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (!str.startsWith("com.android.") && !str.startsWith("android.hardware.") && !wa.t.f17728a.f17756w.contains(str) && !hashSetA.contains(str)) {
                    System.out.getClass();
                    u9.d.r("am force-stop '" + str + "'").e0(null);
                }
            }
        } else {
            HashSet hashSet = new HashSet();
            androidx.room.s sVarL0 = u9.d.r("ps -A").l0();
            if (sVarL0.k().size() < 20) {
                sVarL0 = u9.d.r("ps").l0();
            }
            if (sVarL0.k().size() > 20) {
                for (String str2 : sVarL0.k()) {
                    if (!str2.endsWith("]") && (str2.startsWith("u") || str2.startsWith("system"))) {
                        int iLastIndexOf = str2.lastIndexOf(" ");
                        if (iLastIndexOf != -1) {
                            String strTrim2 = str2.substring(iLastIndexOf + i10).trim();
                            int iLastIndexOf2 = strTrim2.lastIndexOf(":");
                            if (iLastIndexOf2 != -1) {
                                strTrim2 = strTrim2.substring(0, iLastIndexOf2);
                            }
                            int iLastIndexOf3 = strTrim2.lastIndexOf("@");
                            if (iLastIndexOf3 != -1) {
                                strTrim2 = strTrim2.substring(0, iLastIndexOf3);
                            }
                            if (strTrim2.contains(".")) {
                                hashSet.add(strTrim2.trim());
                            }
                            i10 = 1;
                        }
                    }
                }
            } else {
                androidx.room.s sVarL02 = u9.d.r("dumpsys -t 30000 meminfo").l0();
                if (sVarL02.k().size() < 20) {
                    sVarL02 = u9.d.r("dumpsys meminfo").l0();
                }
                try {
                    sVarL02.k().addAll(sVarL02.j());
                    for (String str3 : sVarL02.k()) {
                        if (str3.endsWith(")") && str3.contains("pid") && (iIndexOf = str3.indexOf(":")) != -1 && (iIndexOf2 = (strTrim = str3.substring(iIndexOf + 1).trim()).indexOf(" ")) != -1) {
                            String strSubstring = strTrim.substring(0, iIndexOf2);
                            int iIndexOf3 = strSubstring.indexOf("@");
                            if (iIndexOf3 != -1) {
                                strSubstring = strSubstring.substring(0, iIndexOf3);
                            }
                            int iIndexOf4 = strSubstring.indexOf(":");
                            if (iIndexOf4 != -1) {
                                strSubstring = strSubstring.substring(0, iIndexOf4);
                            }
                            if (strSubstring.contains(".")) {
                                hashSet.add(strSubstring);
                            }
                        }
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                String str4 = (String) it2.next();
                if (!str4.startsWith("com.android.") && !str4.startsWith("android.hardware.") && !wa.t.f17728a.f17756w.contains(str4) && !hashSetA.contains(str4) && !hashSetB.contains(str4)) {
                    System.out.getClass();
                    u9.d.r("am force-stop '" + str4 + "'").e0(null);
                }
            }
            i10 = 1;
            i6Var = null;
        }
        String[] strArr = new String[i10];
        strArr[0] = "am kill-all";
        u9.d.r(strArr).e0(i6Var);
    }

    public static void g(AccService accService) {
        String strSubstring;
        int iLastIndexOf;
        HashSet hashSetA = a(accService);
        for (String str : u9.d.r("dumpsys activity all | grep ACTIVITY").l0().k()) {
            int iIndexOf = str.indexOf("/");
            if (iIndexOf >= 15 && (iLastIndexOf = (strSubstring = str.substring(0, iIndexOf)).lastIndexOf(" ")) >= 5) {
                String strTrim = strSubstring.substring(iLastIndexOf).trim();
                if (!strTrim.startsWith("com.android.") && !strTrim.startsWith("android.hardware.") && !hashSetA.contains(strTrim) && !wa.t.f17728a.f17756w.contains(strTrim)) {
                    System.out.getClass();
                    u9.d.r("am force-stop '" + strTrim + "'").e0(null);
                }
            }
        }
    }

    public final String d() {
        String str = this.f5663b;
        if (str != null) {
            return str;
        }
        try {
            if (AppStart.f3772h.getCacheDir().getParentFile().getParentFile().getName().length() < 4 && Integer.valueOf(AppStart.f3772h.getCacheDir().getParentFile().getParentFile().getName()).intValue() > 0) {
                String path = AppStart.f3772h.getExternalCacheDir().getParentFile().getParentFile().getParentFile().getParentFile().getPath();
                this.f5663b = path;
                if (!path.isEmpty()) {
                    return this.f5663b;
                }
            }
        } catch (Exception unused) {
        }
        if (Build.VERSION.SDK_INT >= 19) {
            androidx.room.s sVarL0 = u9.d.r("ls -l /sdcard").l0();
            String string = sVarL0.k().toString();
            if (sVarL0.q() && string.contains("storage/")) {
                String strSubstring = string.substring(string.lastIndexOf("storage/"));
                this.f5663b = strSubstring;
                if (strSubstring.contains("]")) {
                    String str2 = this.f5663b;
                    this.f5663b = str2.substring(0, str2.indexOf("]"));
                }
                if (!this.f5663b.startsWith("/")) {
                    this.f5663b = "/" + this.f5663b;
                }
            }
        }
        if (this.f5663b == null) {
            if (Environment.getExternalStorageState().contains("mounted")) {
                this.f5663b = Environment.getExternalStorageDirectory().getAbsolutePath();
            } else {
                this.f5663b = "";
            }
        }
        return this.f5663b;
    }

    public final void h() {
        if (this.f5666e) {
            return;
        }
        this.f5666e = true;
        if (!com.yunpan.appmanage.util.v.f4106a.f4136p && Build.VERSION.SDK_INT >= 24 && !n0.f5722a.f5733h) {
            ii.a.a(AppStart.f3772h.getPackageName());
            ShizukuProvider.a(false);
            ShizukuProvider.b(AppStart.f3772h);
            new fg.b(new com.gj.server.a(1), 1);
        }
        new fg.b(new c(this, 0), 1).start();
        if (this.f5665d) {
            return;
        }
        new fg.b(new c(this, 1), 1).start();
    }

    public final void i() throws InterruptedException {
        com.yunpan.appmanage.carsdk.f fVar = this.f5668g;
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        if (com.yunpan.appmanage.util.a0.g(AppStart.f3772h.getFilesDir().getPath() + "/EnableAccSeccompRoot")) {
            b bVar = a.f5646a;
            if (bVar.f()) {
                return;
            }
            try {
                AppStart.f3772h.bindIsolatedService(new Intent(AppStart.f3772h, (Class<?>) MagicaService.class), 1, "magica", AppStart.f3772h.getMainExecutor(), fVar);
                Thread.sleep(800L);
                if (this.f5667f != null) {
                    this.f5662a = true;
                    AppStart.f3772h.f3773a.b(new oa.g(this.f5667f.f()));
                    u9.d.r(b.a(AppStart.f3772h)).e0(null);
                    Thread.sleep(400L);
                    if (bVar.f()) {
                        AppStart.f3772h.f3773a.b(new oa.g(bVar.f5651b.getNewProcess()));
                    }
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            try {
                this.f5667f = null;
                AppStart.f3772h.unbindService(fVar);
            } catch (Exception unused) {
            }
        }
    }

    public final void j() {
        gh.a aVar;
        int i10;
        try {
            gh.a aVar2 = new gh.a();
            this.f5669h = aVar2;
            aVar2.f3251a = NoConst.MIN_HEARTBEAT_INTERVAL;
            aVar2.c("", 23);
            gh.a aVar3 = this.f5669h;
            BufferedInputStream bufferedInputStream = aVar3.r;
            gh.c cVar = aVar3.f6177s;
            cVar.write("id\n".getBytes(StandardCharsets.UTF_8));
            cVar.flush();
            Thread.sleep(333L);
            this.f5670i = System.currentTimeMillis();
            new fg.b(new c(this, 2), 1).start();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (this.f5669h.f() && bufferedInputStream != null && bufferedInputStream.available() > 0) {
                try {
                    i10 = bufferedInputStream.read(bArr);
                } catch (SocketTimeoutException unused) {
                    i10 = 0;
                }
                if (i10 <= 0) {
                    break;
                } else {
                    byteArrayOutputStream.write(bArr, 0, i10);
                }
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            Charset charset = StandardCharsets.UTF_8;
            String str = new String(byteArray, charset);
            byteArrayOutputStream.reset();
            System.out.getClass();
            if (str.contains("uid=0(root")) {
                cVar.write((b.a(AppStart.f3772h) + SignParameters.NEW_LINE).getBytes(charset));
                cVar.flush();
                Thread.sleep(1000L);
                b bVar = a.f5646a;
                if (bVar.f() && bVar.f5651b.getUid() == 0) {
                    AppStart.f3772h.f3773a.b(new oa.g(bVar.f5651b.getNewProcess()));
                    Thread.sleep(50L);
                    if (u9.d.r(Name.MARK).l0().k().toString().contains("uid=0(root")) {
                        this.f5662a = true;
                    }
                }
            }
            aVar = this.f5669h;
            if (aVar == null) {
                return;
            }
        } catch (Exception unused2) {
            aVar = this.f5669h;
            if (aVar == null) {
                return;
            }
        } catch (Throwable th2) {
            gh.a aVar4 = this.f5669h;
            if (aVar4 != null) {
                try {
                    aVar4.d();
                } catch (Exception unused3) {
                }
            }
            throw th2;
        }
        try {
            aVar.d();
        } catch (Exception unused4) {
        }
    }
}
