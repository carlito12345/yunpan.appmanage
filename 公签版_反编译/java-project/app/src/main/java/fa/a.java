package fa;

import a2.u0;
import android.provider.Settings;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.ShellResultData;
import java.io.File;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final b f5646a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static final e0 f5647b = new e0();

    public static void a() throws Exception {
        if (com.yunpan.appmanage.util.v.f4106a.f4132n) {
            int i10 = -1;
            for (int i11 = 0; i11 < 2; i11++) {
                g();
                u9.d.r("setprop persist.sv.debug.adb_enable 1").l0();
                u9.d.r("setprop persist.adb.tls_server.enable 1").l0();
                Thread.sleep(668L);
                androidx.room.s sVarL0 = u9.d.r("getprop service.adb.tls.port").l0();
                if (sVarL0.f2426b != 0 || sVarL0.k().isEmpty()) {
                    Thread.sleep(668L);
                } else {
                    try {
                        i10 = Integer.parseInt((String) sVarL0.k().get(0));
                    } catch (Exception unused) {
                    }
                    if (i10 >= 0 && i10 <= 65535) {
                        com.yunpan.appmanage.util.v.f4106a.n(i10);
                        throw new Exception("使用AdbPair");
                    }
                }
            }
        }
    }

    public static void b() throws Exception {
        if (com.yunpan.appmanage.util.v.f4106a.f4130m) {
            int i10 = -1;
            for (int i11 = 0; i11 < 2; i11++) {
                g();
                u9.d.r("setprop persist.adb.tls_server.enable 1").l0();
                Thread.sleep(668L);
                androidx.room.s sVarL0 = u9.d.r("getprop service.adb.tls.port").l0();
                if (sVarL0.f2426b != 0 || sVarL0.k().isEmpty()) {
                    Thread.sleep(668L);
                } else {
                    try {
                        i10 = Integer.parseInt((String) sVarL0.k().get(0));
                    } catch (Exception unused) {
                    }
                    if (i10 >= 0 && i10 <= 65535) {
                        com.yunpan.appmanage.util.v.f4106a.n(i10);
                        throw new Exception("使用MyAdbPair");
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static y9.c c(AppStart appStart) {
        String str = appStart.getFilesDir().getAbsolutePath() + "/key/";
        if (!new File(str).exists()) {
            new File(str).mkdirs();
        }
        String packageName = appStart.getPackageName();
        if (!new File(str, "privateKey").exists()) {
            h0 h0Var = g0.f5682a;
            if (h0Var.d().isEmpty()) {
                h0 h0Var2 = g0.f5682a;
                if (!h0Var2.d().isEmpty()) {
                    if (com.yunpan.appmanage.util.a0.g(h0Var2.d() + "/." + packageName + "/key/privateKey")) {
                        if (!com.yunpan.appmanage.util.a0.g(h0Var2.d() + "/." + packageName + "/key/publicKey")) {
                            com.yunpan.appmanage.util.a0.e(g.b.j(str, "privateKey"), h0Var2.d() + "/." + packageName + "/key/privateKey");
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(str);
                            sb2.append("publicKey");
                            com.yunpan.appmanage.util.a0.e(sb2.toString(), h0Var2.d() + "/." + packageName + "/key/publicKey");
                        }
                    }
                }
            } else {
                if (com.yunpan.appmanage.util.a0.g(h0Var.d() + "/." + packageName + "/key/privateKey")) {
                    if (com.yunpan.appmanage.util.a0.g(h0Var.d() + "/." + packageName + "/key/publicKey")) {
                        com.yunpan.appmanage.util.a0.e(h0Var.d() + "/." + packageName + "/key/privateKey", str + "privateKey");
                        com.yunpan.appmanage.util.a0.e(h0Var.d() + "/." + packageName + "/key/publicKey", str + "publicKey");
                    }
                }
            }
        }
        File file = new File(g.b.j(str, "privateKey"));
        File file2 = new File(g.b.j(str, "publicKey"));
        try {
            if (file.exists() && file2.exists() && file2.length() > 0 && file.length() > 0) {
                return y9.c.c(new u0(24), file, file2);
            }
            y9.c cVarA = y9.c.a(new u0(25));
            cVarA.d(file, file2);
            h0 h0Var3 = g0.f5682a;
            if (!h0Var3.d().isEmpty()) {
                new File(h0Var3.d() + "/." + packageName + "/key/").mkdirs();
                com.yunpan.appmanage.util.a0.e(file.getAbsolutePath(), h0Var3.d() + "/." + packageName + "/key/privateKey");
                com.yunpan.appmanage.util.a0.e(file2.getAbsolutePath(), h0Var3.d() + "/." + packageName + "/key/publicKey");
            }
            return cVarA;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void d() throws InterruptedException {
        try {
            Thread.sleep(1666L);
        } catch (Exception unused) {
        }
        n.f5721a.f();
        try {
            q.f5740a.disconnect();
        } catch (Exception unused2) {
        }
    }

    public static void e(String str) throws InterruptedException {
        p pVar = n.f5721a;
        if (!pVar.d()) {
            if (wa.t.f17728a.f17753t) {
                wa.w.c("执行命令时，无法连接adb");
                return;
            }
            return;
        }
        if (wa.t.f17728a.f17753t) {
            wa.w.c("执行命令：" + str);
        }
        String strTrim = str.trim();
        if (!strTrim.startsWith("adb ")) {
            f(strTrim);
            return;
        }
        if (pVar.j()) {
            String strTrim2 = (strTrim.startsWith("adb ") ? strTrim.substring(4) : strTrim).trim();
            if (!strTrim2.contains(":")) {
                String strTrim3 = strTrim2.trim();
                int iIndexOf = strTrim3.indexOf(" ");
                if (iIndexOf == -1) {
                    strTrim2 = strTrim3.concat(":");
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(strTrim3.substring(0, iIndexOf));
                    sb2.append(":");
                    strTrim2 = android.support.v4.media.session.a.p(strTrim3, iIndexOf + 1, sb2);
                }
            }
            System.out.getClass();
            try {
                pVar.f5735b.J(strTrim2);
            } catch (Exception unused) {
            }
        } else {
            r rVar = q.f5740a;
            if (!rVar.isConnected()) {
                return;
            } else {
                rVar.N(strTrim);
            }
        }
        if (strTrim.equals("adb root")) {
            try {
                Thread.sleep(1668L);
            } catch (Exception unused2) {
            }
        }
    }

    public static ShellResultData f(String str) {
        p pVar = n.f5721a;
        if (!pVar.j()) {
            r rVar = q.f5740a;
            if (rVar.isConnected()) {
                return rVar.K(str);
            }
            return null;
        }
        o oVarB = pVar.b(str);
        ShellResultData shellResultData = new ShellResultData();
        shellResultData.code = oVarB.f5723a;
        shellResultData.lines = oVarB.f5725c;
        return shellResultData;
    }

    public static void g() {
        if (u9.d.r("settings put global adb_enabled 1").l0().q()) {
            return;
        }
        try {
            Settings.Global.putInt(AppStart.f3772h.getContentResolver(), "adb_enabled", 1);
        } catch (Exception unused) {
        }
    }
}
