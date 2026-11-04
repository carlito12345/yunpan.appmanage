package a2;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.ListView;
import androidx.viewpager2.widget.ViewPager2;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.FileAttributeBean;
import com.yunpan.appmanage.bean.ShellResultData;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.shizuku.CmdResult;
import com.yunpan.appmanage.shizuku.IGjAdbFace;
import com.yunpan.appmanage.shizuku.IUserService;
import com.yunpan.appmanage.ui.ActivityAdb;
import ha.l2;
import ha.u3;
import ha.wd;
import io.github.muntashirakon.adb.AdbStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.Inflater;
import x9.w3;

/* loaded from: classes.dex */
public class w0 implements i3.j, w4.e, wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f345a;

    /* renamed from: b, reason: collision with root package name */
    public Object f346b;

    /* renamed from: c, reason: collision with root package name */
    public Object f347c;

    /* renamed from: d, reason: collision with root package name */
    public Object f348d;

    /* renamed from: e, reason: collision with root package name */
    public Object f349e;

    public /* synthetic */ w0(int i10, boolean z) {
        this.f345a = i10;
    }

    public static String A(File file) {
        String strA;
        if (!com.yunpan.appmanage.util.a0.f(file) || !com.yunpan.appmanage.util.a0.c(file)) {
            fa.a0 a0VarN = n(15000L, "rm -rf \"" + file.getPath() + "\"");
            strA = a0VarN.a();
            if (a0VarN.f5648a != 0 && !strA.contains("such file or directory")) {
                if (strA.contains("ermission denied")) {
                    return "无权限删除";
                }
                fa.a0 a0VarN2 = n(15000L, "rmdir \"" + file.getPath() + "\"");
                String strA2 = a0VarN2.a();
                if (a0VarN2.f5648a != 0 && !strA2.contains("such file or directory")) {
                    if (strA2.contains("ermission denied")) {
                        return "无权限删除此文件";
                    }
                    strA2.contains("not empty");
                }
            }
            return "删除成功";
        }
        String str = "rm -rf \"" + file.getPath() + "\"";
        try {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4060n > 0) {
                w(str);
            } else {
                u9.d.r(str).l0();
            }
        } catch (Exception unused) {
        }
        PrintStream printStream = System.out;
        file.getAbsolutePath();
        printStream.getClass();
        if (s(file) && !com.yunpan.appmanage.util.a0.f(file)) {
            return "删除成功";
        }
        try {
            File file2 = new File(file.getParent() + "/delete.tem");
            file.renameTo(file2);
            if (!com.yunpan.appmanage.util.a0.f(file)) {
                s(file2);
                n(15000L, "rm -rf \"" + file2.getPath() + "\"");
                return "删除成功";
            }
        } catch (Exception unused2) {
        }
        strA = "删除失败";
        if (!strA.contains("Text file busy")) {
            if (!strA.contains("Read-only")) {
                if (!strA.contains("not empty")) {
                    if (strA.contains("ermission denied")) {
                        return "无权限删除";
                    }
                    if (strA.contains("such file or directory")) {
                        return "删除成功";
                    }
                    if (strA.contains("if you mean it")) {
                        return "你是认真的吗";
                    }
                    if (!strA.contains("Device or resource busy")) {
                        if (!strA.trim().isEmpty()) {
                            return strA;
                        }
                    }
                }
            }
            return "系统禁止删除此文件";
        }
        return "删除失败";
    }

    public static String B(String str) {
        return A(new File(str));
    }

    public static void C(String str, String str2) throws IOException {
        fa.a0 a0VarH;
        File file = new File(str);
        if (file.getName().equals(str2)) {
            return;
        }
        if (com.yunpan.appmanage.util.a0.d(str)) {
            try {
                if (file.renameTo(new File(file.getParent(), str2))) {
                    return;
                }
            } catch (Exception unused) {
            }
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (kVar.f4060n > 0) {
            fa.b0.f5652a.getClass();
            if (K()) {
                fa.h0 h0Var = fa.g0.f5682a;
                if (str.startsWith(h0Var.d())) {
                    String str3 = kVar.f4062o + str.substring(h0Var.d().length());
                    StringBuilder sbD = da.b.d("mv \"", str3, "\" \"");
                    sbD.append(new File(str3).getParent());
                    sbD.append("/");
                    sbD.append(str2);
                    sbD.append("\"");
                    if (h(sbD.toString()).b()) {
                        return;
                    }
                }
            }
        }
        if (!kVar.O.isEmpty()) {
            fa.h0 h0Var2 = fa.g0.f5682a;
            if (str.startsWith(h0Var2.d())) {
                str = kVar.O + str.substring(h0Var2.d().length());
            } else if (str.startsWith(kVar.M)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(kVar.O);
                str = ta.q.m(kVar.M, str, sb2);
            }
        }
        StringBuilder sbD2 = da.b.d("mv \"", str, "\" \"");
        sbD2.append(new File(str).getParent());
        sbD2.append("/");
        sbD2.append(str2);
        sbD2.append("\"");
        if (com.yunpan.appmanage.util.a0.d(str)) {
            String string = sbD2.toString();
            a0VarH = new fa.a0();
            androidx.room.s sVarL0 = u9.d.r(string).l0();
            sVarL0.k().addAll(sVarL0.j());
            a0VarH.f5648a = sVarL0.f2426b;
            a0VarH.f5649b = sVarL0.k();
        } else {
            a0VarH = h(sbD2.toString());
        }
        if (a0VarH.b()) {
            return;
        }
        String strA = a0VarH.a();
        if (strA.contains("Read-only")) {
            strA = "无权限";
        }
        if (strA.isEmpty()) {
            strA = "更改失败";
        }
        throw new IOException(strA);
    }

    public static w0 F() {
        return fa.b0.f5652a;
    }

    public static void I(String str) throws Exception {
        String strA;
        String str2;
        String strC;
        int i10;
        ArrayList arrayListJ;
        ArrayList arrayListJ2;
        ArrayList arrayListK;
        ef.b bVar = new ef.b(new File(str));
        try {
            bVar.M();
            ff.c cVar = bVar.f4963e;
            String str3 = cVar.f5813a;
            if (Long.valueOf(cVar.f5819g).longValue() > Build.VERSION.SDK_INT) {
                throw new Exception("此应用不支持您的系统，系统版本过低");
            }
            AppBean appBean = MyDb.get().getAppDao().get_appBean(str3);
            if (appBean != null) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (!str3.equals(com.yunpan.appmanage.util.j.f4033a.f4041d)) {
                    if (appBean.isSystem) {
                        throw new Exception("避免版本冲突，请先卸载旧版");
                    }
                    h("am force-stop \"" + appBean.apkPath + "\"");
                    try {
                        w0 w0Var = fa.b0.f5652a;
                        String str4 = appBean.pack;
                        w0Var.getClass();
                        Z(str4, true, false);
                        Thread.sleep(666L);
                    } catch (Exception unused) {
                    }
                }
            }
            String str5 = cVar.f5818f;
            if (str5 != null && str5.equals("android.uid.system")) {
                AppBean appBean2 = MyDb.get().getAppDao().get_appBean("com.android.settings");
                if (appBean2 == null) {
                    List<AppBean> list = MyDb.get().getAppDao().get_appBean(1000);
                    if (list.size() > 0) {
                        appBean2 = list.get(0);
                    }
                }
                if (appBean2 != null) {
                    ef.b bVar2 = new ef.b(new File(appBean2.apkPath));
                    ArrayList arrayListK2 = null;
                    try {
                        try {
                            arrayListJ = bVar.J();
                        } catch (Exception unused2) {
                            arrayListJ = null;
                        }
                        try {
                            arrayListJ2 = bVar2.J();
                        } catch (Exception unused3) {
                            arrayListJ2 = null;
                        }
                        if (arrayListJ != null) {
                            if (arrayListJ2 == null || arrayListJ.size() != arrayListJ2.size()) {
                                throw new Exception("此应用使用的签名不适合您的系统");
                            }
                            if (arrayListJ.size() > 0) {
                                if (arrayListJ.get(0) != null) {
                                    throw new ClassCastException();
                                }
                                throw null;
                            }
                        } else if (arrayListJ2 != null) {
                            throw new Exception("此应用使用的签名不适合您的系统");
                        }
                        try {
                            arrayListK = bVar.K();
                        } catch (Exception unused4) {
                            arrayListK = null;
                        }
                        try {
                            arrayListK2 = bVar2.K();
                        } catch (Exception unused5) {
                        }
                        if (arrayListK != null) {
                            if (arrayListK2 == null || arrayListK.size() != arrayListK2.size()) {
                                throw new Exception("此应用使用的签名不适合您的系统");
                            }
                            for (int i11 = 0; i11 < arrayListK.size(); i11++) {
                                if (!((ff.e) ((ff.d) arrayListK.get(i11)).f5822a.get(0)).f5827e.equals(((ff.e) ((ff.d) arrayListK2.get(i11)).f5822a.get(0)).f5827e)) {
                                    throw new Exception("此应用使用的签名不适合您的系统");
                                }
                            }
                        } else if (arrayListK2 != null) {
                            throw new Exception("此应用使用的签名不适合您的系统");
                        }
                        bVar2.close();
                    } finally {
                    }
                }
            }
            bVar.close();
            try {
                strA = q4.a.A(new File(str));
            } catch (Exception unused6) {
            }
            if (!strA.equals("all")) {
                if (!strA.endsWith(",")) {
                    strA = strA.concat(",");
                }
                if (!strA.contains("v7a") || !strA.contains("x86,")) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        str2 = "";
                        for (String str6 : Build.SUPPORTED_ABIS) {
                            str2 = str2.isEmpty() ? str6 : str2 + "," + str6;
                        }
                    } else {
                        str2 = Build.CPU_ABI;
                    }
                    String[] strArrSplit = strA.split(",");
                    String[] strArrSplit2 = str2.split(",");
                    for (String str7 : strArrSplit) {
                        for (String str8 : strArrSplit2) {
                            if (!str7.equals(str8)) {
                            }
                        }
                    }
                    throw new Exception("您的系统不兼容此应用架构");
                }
            }
            AppBean appBeanK = android.support.v4.media.session.a.k(str);
            if (appBeanK != null) {
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                if (!str3.equals(com.yunpan.appmanage.util.j.f4033a.f4041d)) {
                    f0(appBeanK.pack);
                    if (appBeanK.apkPath.startsWith("/data/app/")) {
                        StringBuilder sb2 = new StringBuilder("pm uninstall -k '");
                        sb2.append(appBeanK.pack);
                        sb2.append("'");
                        i10 = h(sb2.toString()).f5648a == 0 ? 1 : 0;
                        if (i10 == 0) {
                            StringBuilder sb3 = new StringBuilder("pm uninstall -k --user 0 '");
                            sb3.append(appBeanK.pack);
                            sb3.append("'");
                            i10 = h(sb3.toString()).f5648a != 0 ? 0 : 1;
                        }
                    } else {
                        i10 = 0;
                    }
                    if (i10 == 0) {
                        if (Build.VERSION.SDK_INT >= 21 && appBeanK.apkPath.split("/").length > 4) {
                            String str9 = appBeanK.apkPath;
                            String strSubstring = str9.substring(0, str9.lastIndexOf("/"));
                            h("rm -rf \"" + strSubstring + "/oat\"");
                            h("rm -rf \"" + strSubstring + "/lib\"");
                        }
                        h("rm -rf \"" + appBeanK.apkPath + "\"");
                    }
                }
            }
            if (com.yunpan.appmanage.util.a0.j("/data/") < new File(str).length() * 2) {
                throw new Exception("安装分区存储空间不足");
            }
            if (Build.VERSION.SDK_INT >= 21) {
                String strC2 = da.b.c("/data/app/", str3);
                if (com.yunpan.appmanage.util.a0.g(strC2 + "/")) {
                    strC2 = g.b.j(strC2, ".gj");
                }
                String strJ = g.b.j(strC2, "/");
                h("mkdir \"" + strJ + "\"");
                h("chmod 755 \"" + strJ + "\"");
                h("chown system:system \"" + strJ + "\"");
                strC = g.b.l(strJ, "base", new StringBuilder());
            } else {
                strC = da.b.c("/data/app/", str3);
                if (com.yunpan.appmanage.util.a0.g(strC)) {
                    strC = g.b.j(strC, "123");
                }
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append(strC);
            sb4.append(".apk");
            String strJ2 = com.yunpan.appmanage.util.a0.g(sb4.toString()) ? g.b.j(strC, "123.apk") : g.b.j(strC, ".apk");
            if (h("\\cp -R \"" + str + "\" \"" + strJ2 + "\"").f5648a != 0) {
                throw new Exception("写入apk文件出错");
            }
            fa.a0 a0VarH = h("chmod 644 \"" + strJ2 + "\"");
            if (strJ2.startsWith("/data/")) {
                h("chown system:system \"" + strJ2 + "\"");
            } else {
                h("chown root:root \"" + strJ2 + "\"");
            }
            if (a0VarH.f5648a != 0) {
                throw new Exception("修改apk权限失败");
            }
            if (appBeanK != null) {
                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                if (str3.equals(com.yunpan.appmanage.util.j.f4033a.f4041d)) {
                    if (appBeanK.isSystem) {
                        h("rm -rf \"" + appBeanK.apkPath + "\"");
                        return;
                    }
                    if (h("pm uninstall -k '" + appBeanK.pack + "'").f5648a != 0) {
                        h("pm uninstall -k --user 0 '" + appBeanK.pack + "'");
                    }
                }
            }
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused7) {
                }
            }
            throw th2;
        }
    }

    public static boolean J() {
        return fa.h.f5683a.i() || fa.l.f5712a.isConnected();
    }

    public static boolean K() {
        if (fa.g0.f5682a.f()) {
            return true;
        }
        fa.j jVar = fa.h.f5683a;
        if (jVar.i()) {
            return jVar.f5701g;
        }
        fa.m mVar = fa.l.f5712a;
        if (mVar.isConnected()) {
            return mVar.f5716c;
        }
        return false;
    }

    public static boolean L() {
        if (P()) {
            return true;
        }
        fa.o0 o0Var = fa.n0.f5722a;
        return o0Var.f5726a && o0Var.f5730e != null;
    }

    public static boolean M() {
        fa.b0.f5652a.getClass();
        if (P()) {
            return true;
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        return com.yunpan.appmanage.util.j.f4033a.f4053j;
    }

    public static boolean N() {
        fa.b0.f5652a.getClass();
        if (M()) {
            return true;
        }
        fa.o0 o0Var = fa.n0.f5722a;
        return o0Var.f5726a && o0Var.f5730e != null;
    }

    public static boolean O() {
        fa.b0.f5652a.getClass();
        if (M()) {
            return true;
        }
        fa.o0 o0Var = fa.n0.f5722a;
        return (o0Var.f5726a && o0Var.f5730e != null) || fa.a.f5646a.f();
    }

    public static boolean P() {
        if (fa.g0.f5682a.f()) {
            return true;
        }
        fa.j jVar = fa.h.f5683a;
        if (jVar.i()) {
            return true;
        }
        fa.m mVar = fa.l.f5712a;
        if (mVar.isConnected()) {
            return true;
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (kVar.f4058m) {
            kVar.f4058m = false;
        }
        if (kVar.l) {
            kVar.l = false;
        }
        if (jVar.f5701g) {
            jVar.f5701g = false;
        }
        if (mVar.f5716c) {
            mVar.f5716c = false;
        }
        return false;
    }

    public static boolean Q() {
        fa.b0.f5652a.getClass();
        if (!P() && !fa.a.f5646a.f()) {
            fa.o0 o0Var = fa.n0.f5722a;
            if (!o0Var.f5726a || o0Var.f5730e == null) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                return com.yunpan.appmanage.util.j.f4033a.f4053j && Build.VERSION.SDK_INT < 23;
            }
        }
        return true;
    }

    public static String U(String str) {
        fa.a0 a0VarQ = q(5555L, "pm clear '" + str + "'");
        String strA = a0VarQ.a();
        if (a0VarQ.f5648a != 0 || strA.contains("Error:") || com.yunpan.appmanage.util.j.f4033a.f4060n != 0) {
            a0VarQ = q(5555L, "pm clear --user " + com.yunpan.appmanage.util.j.f4033a.f4060n + " '" + str + "'");
            strA = a0VarQ.a();
        }
        if (!strA.contains("ailure") && !strA.contains("rror:") && (a0VarQ.f5648a == 0 || strA.contains("Success"))) {
            return "清理成功";
        }
        if (strA.contains("known package")) {
            return "此应用不存在";
        }
        if (strA.contains("not found") || strA.contains("known command")) {
            return "命令不存在，无法使用此功能";
        }
        if (strA.contains("android.permission.MANAGE_USERS") || strA.contains("Neither user 2000") || strA.contains("Permission") || strA.contains("Killed")) {
            return "无权限，此功能需要root权限";
        }
        if (strA.contains("Cannot clear data for a protected package")) {
            return "此应用是设备管理员，无法进行此操作";
        }
        if (strA.contains("pm by system default")) {
            return "此系统把pm命令禁用了";
        }
        if (!strA.contains("[][]")) {
            return strA;
        }
        return "Error:" + a0VarQ.f5648a + " " + strA;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006b, code lost:
    
        if (r13 != false) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f6 A[PHI: r4
  0x00f6: PHI (r4v9 fa.a0) = (r4v5 fa.a0), (r4v1 fa.a0) binds: [B:44:0x012d, B:37:0x00f3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void V(String str, boolean z) throws Exception {
        String str2;
        String strA;
        String strA2;
        String strA3;
        String str3 = 1;
        try {
            if (str.contains("/")) {
                if (z) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                    if (kVar.f4060n != 0) {
                        strA3 = "pm disable --user " + kVar.f4060n + " '" + str + "'";
                    } else {
                        strA3 = g.b.A("pm disable '", str, "'");
                    }
                    fa.a0 a0VarL = l(strA3);
                    String strA4 = a0VarL.a();
                    String strA5 = strA4;
                    if (a0VarL.f5648a != 0) {
                        fa.a0 a0VarL2 = l(strA3.replace(" disable ", " disable-user "));
                        strA5 = strA4;
                        if (a0VarL2.b()) {
                            strA5 = a0VarL2.a();
                        }
                    }
                    if (a0VarL.f5648a == 0) {
                        boolean zContains = strA5.contains("rror:");
                        str3 = strA5;
                    }
                    AppStart.f3772h.f3775c.setComponentEnabledSetting(ComponentName.unflattenFromString(str), 2, 0);
                    return;
                }
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                if (kVar2.f4060n != 0) {
                    strA2 = "pm enable --user " + kVar2.f4060n + " '" + str + "'";
                } else {
                    strA2 = g.b.A("pm enable '", str, "'");
                }
                fa.a0 a0VarL3 = l(strA2);
                String strA6 = a0VarL3.a();
                if (a0VarL3.f5648a != 0 || strA6.contains("rror:")) {
                    try {
                        AppStart.f3772h.f3775c.setComponentEnabledSetting(ComponentName.unflattenFromString(str), 1, 0);
                        return;
                    } catch (Exception unused) {
                    }
                }
                str3 = strA6;
            } else if (z) {
                StringBuilder sb2 = new StringBuilder("pm disable-user --user ");
                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
                sb2.append(kVar3.f4060n);
                sb2.append(" '");
                sb2.append(str);
                sb2.append("'");
                String string = sb2.toString();
                fa.a0 a0VarN = n(3333L, string);
                String strA7 = a0VarN.a();
                if (a0VarN.f5648a != 0 || strA7.contains("rror:")) {
                    String strReplace = string.replace(" --user " + kVar3.f4060n, "");
                    a0VarN = n(3333L, strReplace);
                    String strA8 = a0VarN.a();
                    if (a0VarN.f5648a != 0) {
                        fa.a0 a0VarN2 = n(3333L, strReplace.replace("-user", ""));
                        strA8 = a0VarN2.a();
                        a0VarN = a0VarN2;
                    }
                    String str4 = !strA8.contains("known command") ? strA8 : strA7;
                    str3 = str4;
                    if (a0VarN.f5648a != 0) {
                        str3 = str4;
                        if (kVar3.f4053j) {
                            AppStart.f3772h.f3775c.setApplicationEnabledSetting(str, 2, 0);
                            return;
                        }
                    }
                }
            } else {
                DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar4 = com.yunpan.appmanage.util.j.f4033a;
                if (kVar4.f4060n != 0) {
                    strA = "pm enable --user " + kVar4.f4060n + " '" + str + "'";
                } else {
                    strA = g.b.A("pm enable '", str, "'");
                }
                fa.a0 a0VarN3 = n(2000L, strA);
                String strA9 = a0VarN3.a();
                if (a0VarN3.f5648a != 0 && kVar4.f4053j) {
                    try {
                        AppStart.f3772h.f3775c.setApplicationEnabledSetting(str, 1, 0);
                        return;
                    } catch (Exception unused2) {
                    }
                }
                str3 = strA9;
            }
        } catch (Exception unused3) {
        }
        System.out.getClass();
        if (str3.contains("ailure") || str3.contains("rror:") || !str3.contains("new state")) {
            if (str3.contains("Unknown package")) {
                str2 = "此应用不存在";
            } else if (str3.contains("not found") || str3.contains("known command")) {
                str2 = "此命令不存在";
            } else if (str3.contains("Could not access the Package Manager")) {
                str2 = "冲突，需卸载其它adb应用";
            } else if (str3.contains("android.permission.MANAGE_USERS") || str3.contains("Neither user 2000") || str3.contains("Permission") || str3.contains("Killed")) {
                str2 = "无权限，需要root权限";
            } else if (str3.contains("pm by system default")) {
                str2 = "此系统把pm命令禁用了";
            } else if (str3.contains("cannot change component")) {
                str2 = !fa.g0.f5682a.f() ? "无法禁用组件，需要root权或adb root" : "此系统无法禁用服务组件";
            } else if (str3.contains("Cannot disable a protected package")) {
                str2 = "此应用受设备管理员保护，无法禁用";
            } else {
                boolean zContains2 = str3.contains("SecurityException");
                str2 = str3;
                if (zContains2) {
                }
            }
            throw new Exception(str2);
        }
    }

    public static void W(String str, boolean z) throws Exception {
        String str2;
        StringBuilder sb2 = new StringBuilder("pm ");
        sb2.append(z ? "hide" : "unhide");
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (kVar.f4060n == 0) {
            str2 = "";
        } else {
            str2 = " --user " + kVar.f4060n;
        }
        sb2.append(str2);
        sb2.append(" '");
        sb2.append(str);
        sb2.append("'");
        String strA = q(3333L, sb2.toString()).a();
        if (strA.contains("Failure") || strA.contains("Error:") || !strA.contains("new hidden state")) {
            if (strA.contains("known package")) {
                strA = "此应用不存在";
            } else if (strA.contains("not found") || strA.contains("known command")) {
                strA = "命令不存在，无法使用此功能";
            } else if (strA.contains("android.permission.MANAGE_USERS") || strA.contains("Neither user 2000") || strA.contains("Permission") || strA.contains("Killed")) {
                strA = "无权限，此功能需要root权限";
            } else if (strA.contains("pm by system default")) {
                strA = "此系统把pm命令禁用了";
            } else if (strA.contains("Shell cannot change component")) {
                strA = "此系统无法隐藏应用";
            }
            throw new Exception(strA);
        }
    }

    public static void X(String str) throws Exception {
        String str2;
        StringBuilder sb2 = new StringBuilder("cmd package install-existing");
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (kVar.f4060n == 0) {
            str2 = "";
        } else {
            str2 = " --user " + kVar.f4060n;
        }
        sb2.append(str2);
        sb2.append(" '");
        sb2.append(str);
        sb2.append("'");
        String strA = q(PopupConst.DURATION_POPUP_SHORT, sb2.toString()).a();
        if (strA.contains("known command")) {
            strA = Build.VERSION.SDK_INT < 26 ? "此系统没有恢复应用的命令,系统版本过低" : "此系统没有恢复应用的命令";
        } else {
            if (strA.contains("installed for user")) {
                return;
            }
            if (strA.contains("doesn't exist")) {
                strA = "不存在此应用";
            } else if (strA.contains("not found")) {
                strA = "命令不存在，低版本系统无法使用此功能，如需恢复请恢复出厂设置";
            } else if (strA.contains("android.permission.MANAGE_USERS") || strA.contains("Neither user 2000") || strA.contains("ermission") || strA.contains("Killed")) {
                strA = "无权限，此功能需要root权限";
            } else if (strA.contains("pm by system default")) {
                strA = "失败：此系统把pm命令禁用了！";
            }
        }
        throw new Exception(strA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:229:0x052d  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0669  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0718  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x071b  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0727  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0733  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x0751  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0761  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0789  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x07d6  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0815 A[PHI: r13
  0x0815: PHI (r13v13 boolean) = (r13v65 boolean), (r13v66 boolean) binds: [B:330:0x07d4, B:332:0x07dc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:351:0x083e  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x08a2  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0a89  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0a8c  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0abe  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0ac1  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x0b0f  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0b1b  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x0bd8  */
    /* JADX WARN: Removed duplicated region for block: B:495:0x0bff  */
    /* JADX WARN: Removed duplicated region for block: B:766:0x10a5  */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v56 */
    /* JADX WARN: Type inference failed for: r10v57 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v25, types: [int] */
    /* JADX WARN: Type inference failed for: r13v27, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v29, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v34, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v53 */
    /* JADX WARN: Type inference failed for: r13v54 */
    /* JADX WARN: Type inference failed for: r13v9, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static fa.x Y(int i10, String str) {
        String str2;
        String str3;
        boolean z;
        String str4;
        ArrayList arrayList;
        String str5;
        String str6;
        String str7;
        String string;
        fa.a0 a0VarH;
        int i11;
        fa.x xVar;
        String strN;
        boolean z4;
        fa.a0 a0VarH2;
        String str8;
        String strA;
        ef.b bVar;
        ef.b bVar2;
        ef.b bVar3;
        fa.a0 a0Var;
        String str9;
        fa.a0 a0VarH3;
        boolean z10;
        String str10;
        String str11;
        fa.a0 a0Var2;
        boolean z11;
        ?? r13;
        String str12;
        String str13;
        ?? r10;
        String str14;
        fa.a0 a0VarH4;
        String strConcat;
        String strReplace;
        String str15;
        StringBuilder sb2;
        boolean zPutString;
        String str16;
        String str17;
        String str18;
        String str19;
        File[] fileArr;
        int i12;
        String str20;
        boolean z12;
        ArrayList arrayList2;
        String str21;
        String str22 = str;
        String str23 = "rm ";
        System.out.getClass();
        String str24 = "/data/";
        if (str22.startsWith("/data/") && com.yunpan.appmanage.util.k.f().f4058m && !str22.startsWith("/data/app/")) {
            h("chmod 777 \"" + str22 + "\"");
        }
        fa.x xVar2 = new fa.x();
        boolean zContains = str.toLowerCase().contains("shizuku");
        boolean zY = p000if.a.Y(str);
        if (zY && Build.VERSION.SDK_INT < 21) {
            xVar2.f5762a = false;
            xVar2.f5764c = "此系统不支持安装apks";
            xVar2.f5763b = -111;
            return xVar2;
        }
        if (com.yunpan.appmanage.util.k.f().f4058m && com.yunpan.appmanage.util.w.b().J) {
            try {
                F().getClass();
                I(str);
                xVar2.f5762a = true;
                xVar2.f5764c = "安装成功，请重启车机";
                xVar2.f5763b = 0;
            } catch (Exception e7) {
                xVar2.f5762a = false;
                xVar2.f5764c = e7.getMessage();
                xVar2.f5763b = -111;
            }
            return xVar2;
        }
        ArrayList arrayList3 = new ArrayList();
        String str25 = "";
        if (!zY) {
            str2 = "rm ";
            str3 = "/data/";
            z = zContains;
            str4 = "";
            arrayList = arrayList3;
            str5 = str4;
        } else {
            if (fa.h0.c().d().isEmpty()) {
                xVar2.f5762a = false;
                xVar2.f5763b = -8;
                xVar2.f5764c = "解包失败，没有内部存储";
                return xVar2;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(fa.h0.c().d());
            String str26 = File.separator;
            sb3.append(str26);
            sb3.append(".");
            sb3.append(com.yunpan.appmanage.util.k.f().f4041d);
            sb3.append(str26);
            sb3.append("cache");
            sb3.append(str26);
            ArrayList arrayList4 = arrayList3;
            sb3.append(System.currentTimeMillis());
            sb3.append(str26);
            String string2 = sb3.toString();
            try {
                if (com.yunpan.appmanage.util.w.b().e()) {
                    p000if.a.w(new File(str22), string2, null, null);
                } else {
                    za.g.e(new File(str22), string2, null, null);
                }
                File[] fileArrListFiles = new File(string2).listFiles();
                int length = fileArrListFiles.length;
                String str27 = "";
                int i13 = 0;
                boolean z13 = false;
                while (true) {
                    str16 = ".obb";
                    if (i13 >= length) {
                        break;
                    }
                    File file = fileArrListFiles[i13];
                    int i14 = length;
                    if (file.getName().toLowerCase().endsWith(".apk")) {
                        arrayList2 = arrayList4;
                        arrayList2.add(file.getPath());
                        if (str27.isEmpty()) {
                            try {
                                str21 = str25;
                                try {
                                    PackageInfo packageArchiveInfo = com.yunpan.appmanage.util.k.f().f4037b.getPackageArchiveInfo(file.getAbsolutePath(), 1);
                                    if (packageArchiveInfo != null) {
                                        String str28 = packageArchiveInfo.packageName;
                                        try {
                                            if (arrayList2.size() > 1) {
                                                arrayList2.remove(arrayList2.size() - 1);
                                                arrayList2.add(0, file.getPath());
                                            }
                                            str27 = str28;
                                        } catch (Exception e10) {
                                            e = e10;
                                            str27 = str28;
                                            e.printStackTrace();
                                            i13++;
                                            str25 = str21;
                                            arrayList4 = arrayList2;
                                            length = i14;
                                        }
                                    }
                                } catch (Exception e11) {
                                    e = e11;
                                }
                            } catch (Exception e12) {
                                e = e12;
                                str21 = str25;
                            }
                        } else {
                            str21 = str25;
                        }
                    } else {
                        arrayList2 = arrayList4;
                        str21 = str25;
                        if (file.getName().toLowerCase().endsWith(".obb")) {
                            z13 = true;
                        }
                    }
                    i13++;
                    str25 = str21;
                    arrayList4 = arrayList2;
                    length = i14;
                }
                arrayList = arrayList4;
                str4 = str25;
                if (!str27.isEmpty() && z13) {
                    int length2 = fileArrListFiles.length;
                    int i15 = 0;
                    while (i15 < length2) {
                        File file2 = fileArrListFiles[i15];
                        if (file2.getName().toLowerCase().endsWith(str16)) {
                            try {
                                str17 = str16;
                                try {
                                    StringBuilder sb4 = new StringBuilder();
                                    fileArr = fileArrListFiles;
                                    try {
                                        sb4.append(com.yunpan.appmanage.util.k.f().f4070t);
                                        String str29 = File.separator;
                                        sb4.append(str29);
                                        i12 = length2;
                                        str20 = str27;
                                        try {
                                            sb4.append(str20);
                                            sb4.append(str29);
                                            new File(sb4.toString()).mkdirs();
                                            StringBuilder sb5 = new StringBuilder();
                                            z12 = zContains;
                                            try {
                                                sb5.append(com.yunpan.appmanage.util.k.f().f4070t);
                                                sb5.append(str29);
                                                sb5.append(str20);
                                                sb5.append(str29);
                                                sb5.append(file2.getName());
                                            } catch (Exception unused) {
                                            }
                                            if (file2.renameTo(new File(sb5.toString()))) {
                                                str18 = str23;
                                                str19 = str24;
                                            } else {
                                                FileInputStream fileInputStream = new FileInputStream(file2);
                                                try {
                                                    str18 = str23;
                                                    try {
                                                        StringBuilder sb6 = new StringBuilder();
                                                        str19 = str24;
                                                        try {
                                                            sb6.append(com.yunpan.appmanage.util.k.f().f4070t);
                                                            sb6.append(str29);
                                                            sb6.append(str20);
                                                            sb6.append(str29);
                                                            sb6.append(file2.getName());
                                                            FileOutputStream fileOutputStream = new FileOutputStream(new File(sb6.toString()));
                                                            try {
                                                                byte[] bArr = new byte[1048576];
                                                                while (true) {
                                                                    int i16 = fileInputStream.read(bArr);
                                                                    if (i16 <= 0) {
                                                                        break;
                                                                    }
                                                                    fileOutputStream.write(bArr, 0, i16);
                                                                }
                                                                fileOutputStream.close();
                                                                try {
                                                                    fileInputStream.close();
                                                                } catch (Exception unused2) {
                                                                }
                                                            } finally {
                                                            }
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            Throwable th3 = th;
                                                            try {
                                                                fileInputStream.close();
                                                            } catch (Throwable th4) {
                                                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                                                            }
                                                            throw th3;
                                                        }
                                                    } catch (Throwable th5) {
                                                        th = th5;
                                                        str19 = str24;
                                                        Throwable th32 = th;
                                                        fileInputStream.close();
                                                        throw th32;
                                                    }
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                    str18 = str23;
                                                }
                                            }
                                        } catch (Exception unused3) {
                                            str18 = str23;
                                            str19 = str24;
                                        }
                                    } catch (Exception unused4) {
                                        str18 = str23;
                                        str19 = str24;
                                    }
                                } catch (Exception unused5) {
                                    str18 = str23;
                                    str19 = str24;
                                }
                            } catch (Exception unused6) {
                            }
                        } else {
                            str18 = str23;
                            str19 = str24;
                            str17 = str16;
                            fileArr = fileArrListFiles;
                            i12 = length2;
                            str20 = str27;
                            z12 = zContains;
                        }
                        i15++;
                        str16 = str17;
                        zContains = z12;
                        fileArrListFiles = fileArr;
                        str23 = str18;
                        str24 = str19;
                        str27 = str20;
                        length2 = i12;
                    }
                }
                str2 = str23;
                str3 = str24;
                str5 = str27;
                z = zContains;
            } catch (Exception e13) {
                xVar2.f5762a = false;
                xVar2.f5763b = -8;
                xVar2.f5764c = g.b.z(e13, new StringBuilder("解包失败："));
                return xVar2;
            }
        }
        if (com.yunpan.appmanage.util.w.b().g()) {
            if (str5.isEmpty()) {
                try {
                    ef.b bVar4 = new ef.b(new File(str22));
                    try {
                        bVar4.M();
                        str5 = bVar4.f4963e.f5813a;
                        System.out.getClass();
                        bVar4.close();
                    } finally {
                    }
                } catch (Exception unused7) {
                }
            }
            if (!str5.isEmpty()) {
                String strTrim = Settings.Global.getString(com.yunpan.appmanage.util.k.f().f4035a.getContentResolver(), "OUSHANG_WHILTE_APP_LIST").trim();
                if (strTrim == null || strTrim.equals("null")) {
                    strTrim = str4;
                }
                HashSet hashSet = new HashSet();
                if (!strTrim.isEmpty()) {
                    for (String str30 : strTrim.split(",")) {
                        if (str30.contains(".") && !str30.contains("/") && !str30.contains(",")) {
                            hashSet.add(str30);
                        }
                    }
                }
                if (!hashSet.contains(str5)) {
                    StringBuilder sb7 = new StringBuilder();
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        sb7.append((String) it.next());
                        sb7.append(",");
                    }
                    sb7.append(str5);
                    try {
                        zPutString = Settings.Global.putString(com.yunpan.appmanage.util.k.f().f4035a.getContentResolver(), "OUSHANG_WHILTE_APP_LIST", sb7.toString());
                    } catch (Exception unused8) {
                        zPutString = false;
                    }
                    if (!zPutString) {
                        h("settings put global OUSHANG_WHILTE_APP_LIST \"" + sb7.toString() + "\"");
                    }
                }
            }
        }
        if (com.yunpan.appmanage.util.w.b().T == 1) {
            o(2000L, "pm disable-user --user 0 com.android.packageinstaller");
        }
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                ArrayList arrayList5 = new ArrayList();
                if (arrayList.isEmpty()) {
                    arrayList5.add(Uri.fromFile(new File(str22)));
                } else {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        arrayList5.add(Uri.fromFile(new File((String) it2.next())));
                    }
                }
                d.g(i10, arrayList5);
                xVar2.f5762a = true;
                xVar2.f5763b = 0;
                xVar2.f5764c = "安装成功";
                if (com.yunpan.appmanage.util.w.b().T == 1) {
                    o(2000L, "pm enable --user 0 com.android.packageinstaller");
                }
                return xVar2;
            } catch (Exception e14) {
                e14.printStackTrace();
            }
        }
        if (com.yunpan.appmanage.util.w.b().T == 1) {
            o(2000L, "pm enable --user 0 com.android.packageinstaller");
        }
        if (!h("ls -ls \"" + new File(str22).getParent() + "\"").b() && com.yunpan.appmanage.util.a0.g(str) && !zY) {
            if (android.support.v4.media.session.a.D(new StringBuilder("data/"), com.yunpan.appmanage.util.k.f().f4041d, "/", str22)) {
                if (h("ls -ls \"" + fa.h0.c().d() + "\"").f5648a == 0) {
                    StringBuilder sb8 = new StringBuilder("ls -ls \"");
                    String str31 = str3;
                    sb8.append(str22.replace(str31, "/\u200bdata/"));
                    sb8.append("\"");
                    if (h(sb8.toString()).f5648a == 0) {
                        strReplace = str22.replace(str31, "/\u200bdata/");
                    } else {
                        if (h("ls -ls \"" + fa.h0.c().d() + "\"").f5648a == 0) {
                            strReplace = fa.h0.c().d() + "/." + com.yunpan.appmanage.util.k.f().f4041d + "/cache/.temp" + System.currentTimeMillis();
                            try {
                                new File(strReplace).getParentFile().mkdirs();
                            } catch (Exception unused9) {
                            }
                            if (!com.yunpan.appmanage.util.a0.e(str22, strReplace)) {
                                strReplace = str22;
                            }
                        }
                    }
                    str22 = strReplace;
                } else if (com.yunpan.appmanage.util.k.f().O.isEmpty()) {
                    if (str22.startsWith("/mnt/media_rw/")) {
                        strConcat = "/mnt/user/" + com.yunpan.appmanage.util.k.f().N + "/" + str22.substring(14);
                        if (!com.yunpan.appmanage.util.a0.g(strConcat)) {
                            strConcat = str22;
                        }
                    } else {
                        String str32 = com.yunpan.appmanage.util.k.f().f4073v.isEmpty() ? str4 : (String) com.yunpan.appmanage.util.k.f().f4073v.iterator().next();
                        if (!str32.isEmpty() && com.yunpan.appmanage.util.a0.d(str32)) {
                            if (h("ls -ls \"" + str32 + "\"").f5648a == 0) {
                                strConcat = str32.concat("/.temp");
                                if (com.yunpan.appmanage.util.a0.e(str22, strConcat)) {
                                }
                            }
                        }
                        if (h("ls -ls \"" + new File(str22).getParentFile().getPath() + "\"").f5648a != 0) {
                        }
                    }
                    str22 = strConcat;
                    if (h("ls -ls \"" + new File(str22).getParentFile().getPath() + "\"").f5648a != 0) {
                    }
                } else {
                    if (str22.startsWith(fa.h0.c().d())) {
                        strConcat = com.yunpan.appmanage.util.k.f().O + str22.substring(fa.h0.c().d().length());
                    } else if (com.yunpan.appmanage.util.k.f().M.isEmpty() || !str22.startsWith(com.yunpan.appmanage.util.k.f().M)) {
                        if (str22.startsWith("/mnt/media_rw/")) {
                            strConcat = "/mnt/user/" + com.yunpan.appmanage.util.k.f().N + "/" + str22.substring(14);
                        }
                        if (h("ls -ls \"" + new File(str22).getParentFile().getPath() + "\"").f5648a != 0) {
                            strReplace = "/data/local/tmp/.temp";
                            try {
                                sb2 = new StringBuilder();
                                str15 = str2;
                            } catch (Exception e15) {
                                e = e15;
                                str15 = str2;
                            }
                            try {
                                sb2.append(str15);
                                sb2.append("/data/local/tmp/.temp");
                                h(sb2.toString());
                                if (fa.h.f5683a.i()) {
                                    a0(str22, "/data/local/tmp/.temp", null);
                                } else if (fa.l.f5712a.isConnected()) {
                                    b0(str22, "/data/local/tmp/.temp", null);
                                }
                            } catch (Exception e16) {
                                e = e16;
                                if (com.yunpan.appmanage.util.k.f().f4060n <= 0) {
                                    xVar2.f5762a = false;
                                    xVar2.f5764c = e.getMessage();
                                    xVar2.f5763b = -111;
                                    return xVar2;
                                }
                                strReplace = Environment.getExternalStorageDirectory().getParentFile() + "/0/.temp";
                                h(str15 + strReplace);
                                try {
                                    if (!fa.h.f5683a.i()) {
                                        if (fa.l.f5712a.isConnected()) {
                                            b0(str22, strReplace, null);
                                        }
                                        System.out.getClass();
                                        if (com.yunpan.appmanage.util.a0.o()) {
                                        }
                                        StringBuilder sbB = d0.f.b(str, " -r -d -t");
                                        ?? r132 = " --user ";
                                        sbB.append((i10 == -1 || Build.VERSION.SDK_INT < 21) ? str4 : da.b.a(i10, " --user "));
                                        sbB.append(" \"");
                                        sbB.append(str22);
                                        sbB.append("\"");
                                        String string3 = sbB.toString();
                                        String strReplace2 = string3;
                                        if (com.yunpan.appmanage.util.w.b().f4150x) {
                                        }
                                        ArrayList arrayList6 = arrayList;
                                        String str33 = str;
                                        if (zY) {
                                        }
                                        strA = a0VarH2.a();
                                        System.out.getClass();
                                        if (!strA.contains("ailure")) {
                                            if (strA.contains("permission")) {
                                                strA = "无权限访问此目录下文件";
                                                xVar.f5764c = strA;
                                            }
                                        }
                                        return xVar;
                                    }
                                    a0(str22, strReplace, null);
                                    str22 = strReplace;
                                    System.out.getClass();
                                    if (com.yunpan.appmanage.util.a0.o()) {
                                    }
                                    StringBuilder sbB2 = d0.f.b(str, " -r -d -t");
                                    ?? r1322 = " --user ";
                                    sbB2.append((i10 == -1 || Build.VERSION.SDK_INT < 21) ? str4 : da.b.a(i10, " --user "));
                                    sbB2.append(" \"");
                                    sbB2.append(str22);
                                    sbB2.append("\"");
                                    String string32 = sbB2.toString();
                                    String strReplace22 = string32;
                                    if (com.yunpan.appmanage.util.w.b().f4150x) {
                                    }
                                    ArrayList arrayList62 = arrayList;
                                    String str332 = str;
                                    if (zY) {
                                    }
                                    strA = a0VarH2.a();
                                    System.out.getClass();
                                    if (!strA.contains("ailure")) {
                                    }
                                    return xVar;
                                } catch (Exception e17) {
                                    xVar2.f5762a = false;
                                    xVar2.f5764c = e17.getMessage();
                                    xVar2.f5763b = -111;
                                    return xVar2;
                                }
                            }
                            str22 = strReplace;
                        }
                    } else {
                        StringBuilder sb9 = new StringBuilder();
                        sb9.append(com.yunpan.appmanage.util.k.f().O);
                        strConcat = ta.q.m(com.yunpan.appmanage.util.k.f().M, str22, sb9);
                    }
                    str22 = strConcat;
                    if (h("ls -ls \"" + new File(str22).getParentFile().getPath() + "\"").f5648a != 0) {
                    }
                }
            }
        }
        System.out.getClass();
        String str34 = com.yunpan.appmanage.util.a0.o() ? "cmd package install" : "pm install";
        StringBuilder sbB22 = d0.f.b(str34, " -r -d -t");
        ?? r13222 = " --user ";
        sbB22.append((i10 == -1 || Build.VERSION.SDK_INT < 21) ? str4 : da.b.a(i10, " --user "));
        sbB22.append(" \"");
        sbB22.append(str22);
        sbB22.append("\"");
        String string322 = sbB22.toString();
        String strReplace222 = string322;
        if (com.yunpan.appmanage.util.w.b().f4150x) {
            strReplace222 = string322;
            if (!com.yunpan.appmanage.util.k.f().C) {
                int i17 = Build.VERSION.SDK_INT;
                if (i17 > 23) {
                    strReplace222 = string322;
                    if (i17 >= 29) {
                        strReplace222 = string322.replace(" -r -d -t ", " -r -d -t -g ");
                    }
                }
            }
        }
        ArrayList arrayList622 = arrayList;
        String str3322 = str34;
        if (zY) {
            String str35 = "\"";
            StringBuilder sbB3 = d0.f.b(str3322, "-create -r -d -t ");
            if (com.yunpan.appmanage.util.w.b().f4150x) {
                str6 = str22;
                if (Build.VERSION.SDK_INT >= 23 && !com.yunpan.appmanage.util.k.f().C) {
                    str7 = "-g ";
                }
                sbB3.append(str7);
                sbB3.append(i10 != -1 ? str4 : g.b.i("--user ", i10, " "));
                string = sbB3.toString();
                a0VarH = h(string);
                if (a0VarH.f5648a != 0 && (a0VarH.a().contains("Unknown option") || a0VarH.a().contains("ption: -g") || a0VarH.a().contains("ption -g") || a0VarH.a().contains("input string: \"-g\""))) {
                    com.yunpan.appmanage.util.k.f().C = true;
                    a0VarH = h(string.replace(" -g ", " "));
                }
                i11 = a0VarH.f5648a;
                if (i11 == 0) {
                    xVar2.f5762a = false;
                    xVar2.f5763b = i11;
                    xVar2.f5764c = "无法创建安装会话";
                    return xVar2;
                }
                xVar = xVar2;
                String strA2 = a0VarH.a();
                try {
                    Matcher matcher = Pattern.compile("(\\d+)").matcher(strA2);
                    matcher.find();
                    strN = matcher.group(1);
                } catch (Exception unused10) {
                    strN = str4;
                }
                if (strN.isEmpty() && strA2.contains("[")) {
                    z4 = false;
                    strN = p000if.a.N(strA2, "[", "]", false);
                } else {
                    z4 = false;
                }
                if (strN.isEmpty()) {
                    xVar.f5762a = z4;
                    xVar.f5763b = a0VarH.f5648a;
                    xVar.f5764c = "无法获取安装会话ID";
                    return xVar;
                }
                Iterator it3 = arrayList622.iterator();
                while (it3.hasNext()) {
                    String str36 = (String) it3.next();
                    StringBuilder sbB4 = d0.f.b(str3322, "-write -S ");
                    sbB4.append(new File(str36).length());
                    sbB4.append(" ");
                    sbB4.append(strN);
                    sbB4.append(" \"");
                    sbB4.append(new File(str36).getName());
                    sbB4.append("\" \"");
                    sbB4.append(str36);
                    sbB4.append(str35);
                    fa.a0 a0VarH5 = h(sbB4.toString());
                    if (a0VarH5.f5648a != 0) {
                        a0VarH5.a();
                    }
                }
                a0VarH2 = h(str3322 + "-commit " + strN);
                str8 = str35;
            } else {
                str6 = str22;
            }
            str7 = str4;
            sbB3.append(str7);
            sbB3.append(i10 != -1 ? str4 : g.b.i("--user ", i10, " "));
            string = sbB3.toString();
            a0VarH = h(string);
            if (a0VarH.f5648a != 0) {
                com.yunpan.appmanage.util.k.f().C = true;
                a0VarH = h(string.replace(" -g ", " "));
            }
            i11 = a0VarH.f5648a;
            if (i11 == 0) {
            }
        } else {
            fa.a0 a0VarH6 = h(strReplace222);
            if (a0VarH6.f5648a == 0 || i10 >= 1) {
                a0Var = a0VarH6;
            } else {
                a0Var = a0VarH6;
                if (a0VarH6.a().contains("--user current") && !strReplace222.contains(" --user ")) {
                    str9 = " --user ";
                    String strReplace3 = strReplace222.replace(g.b.A("\"", str22, "\""), " --user current \"" + str22 + "\"");
                    a0VarH3 = h(strReplace3);
                    str10 = strReplace3;
                    z10 = " --user current \"";
                }
                boolean z14 = z10;
                if (a0VarH3.f5648a == 0) {
                    boolean zContains2 = str22.contains("/Android/data/");
                    z14 = zContains2;
                    if (zContains2) {
                        ?? A = a0VarH3.a();
                        a0Var2 = a0VarH3;
                        boolean zContains3 = A.contains("ermission ");
                        boolean z15 = A;
                        if (zContains3) {
                            z15 = A;
                            if (!com.yunpan.appmanage.util.a0.b(str22)) {
                                boolean zB = com.yunpan.appmanage.util.a0.b(str22.replace("/Android/data/", "/Android/\u200bdata/"));
                                z15 = zB;
                                if (zB) {
                                    String strReplace4 = str10.replace("/Android/data/", "/Android/\u200bdata/");
                                    fa.a0 a0VarH7 = h(strReplace4);
                                    str11 = "\"";
                                    String strReplace5 = strReplace4;
                                    if (a0VarH7.f5648a != 0) {
                                        strReplace5 = strReplace4.replace("/Android/\u200bdata/", "/Android/data/");
                                    }
                                    a0VarH2 = a0VarH7;
                                    str12 = strReplace5;
                                    r13 = a0VarH7;
                                    if (a0VarH2.a().contains("must be streamed") || !str12.startsWith("cmd")) {
                                        str13 = str3322;
                                        r10 = str12;
                                    } else {
                                        String strReplace6 = str12.replace("cmd package", "pm");
                                        a0VarH2 = h(strReplace6);
                                        str13 = "pm install";
                                        r10 = strReplace6;
                                    }
                                    if (a0VarH2.f5648a != 0 && (a0VarH2.a().contains("Unknown option") || a0VarH2.a().contains("ption: -g") || a0VarH2.a().contains("ption -g") || a0VarH2.a().contains("input string: \"-g\""))) {
                                        com.yunpan.appmanage.util.k.f().C = true;
                                        a0VarH2 = h(r10.replace(" -g ", " "));
                                    }
                                    if (i10 > 0 && (r13 = a0VarH2.f5648a) == 0 && z) {
                                        r13 = "--user " + i10;
                                        h(r10.replace(r13, "--user 0"));
                                    }
                                    if (a0VarH2.a().contains("Can't open file")) {
                                        String strReplace7 = "cat '" + str22.trim() + "' | " + str13 + " -r -d -t -S " + new File(str22).length();
                                        if (com.yunpan.appmanage.util.w.b().f4150x && Build.VERSION.SDK_INT >= 23 && !com.yunpan.appmanage.util.k.f().C) {
                                            strReplace7 = strReplace7.replace(" -r -d -t", " -r -d -t -g");
                                        }
                                        if (i10 > 0) {
                                            strReplace7 = strReplace7 + str9 + i10;
                                        }
                                        fa.a0 a0VarH8 = h(strReplace7);
                                        if (a0VarH8.f5648a == 0 || !(a0VarH8.a().contains("Unknown option") || a0VarH8.a().contains("ption: -g") || a0VarH8.a().contains("ption -g") || a0VarH8.a().contains("input string: \"-g\""))) {
                                            a0VarH2 = a0VarH8;
                                        } else {
                                            com.yunpan.appmanage.util.k.f().C = true;
                                            a0VarH2 = h(strReplace7.replace(" -g ", " "));
                                        }
                                    }
                                    if (a0VarH2.f5648a == 0 && a0VarH2.a().contains("parse ")) {
                                        try {
                                            String strReplace8 = str13 + "-create -r -d -t --user " + i10;
                                            if (com.yunpan.appmanage.util.w.b().f4150x) {
                                                try {
                                                    if (Build.VERSION.SDK_INT >= 23 && !com.yunpan.appmanage.util.k.f().C) {
                                                        strReplace8 = strReplace8.replace(" -r -d -t", " -r -d -t -g");
                                                    }
                                                } catch (Exception unused11) {
                                                }
                                            }
                                            a0VarH4 = h(strReplace8);
                                            try {
                                            } catch (Exception unused12) {
                                                str14 = r13;
                                                str6 = str22;
                                                xVar = xVar2;
                                                str8 = str14;
                                                strA = a0VarH2.a();
                                                System.out.getClass();
                                                if (!strA.contains("ailure")) {
                                                }
                                                return xVar;
                                            }
                                        } catch (Exception unused13) {
                                            r13 = str11;
                                        }
                                        if (a0VarH4.f5648a != 0) {
                                            throw new Exception(str4 + a0VarH4.a());
                                        }
                                        String strN2 = p000if.a.N(a0VarH4.a(), "[", "]", false);
                                        if (strN2.isEmpty()) {
                                            throw new Exception(str4 + a0VarH4.a());
                                        }
                                        long jP = com.yunpan.appmanage.util.a0.p(new File(str22));
                                        if (jP < 1) {
                                            fa.b bVar5 = fa.a.f5646a;
                                            if (bVar5.f()) {
                                                jP = bVar5.f5651b.file_length(str22);
                                            }
                                        }
                                        if (jP < 1) {
                                            throw new Exception("文件不存在");
                                        }
                                        StringBuilder sb10 = new StringBuilder();
                                        sb10.append(str13);
                                        sb10.append("-write -S ");
                                        sb10.append(jP);
                                        sb10.append(" ");
                                        sb10.append(strN2);
                                        sb10.append(" \"");
                                        sb10.append(new File(str22).getName());
                                        sb10.append("\" \"");
                                        sb10.append(str22);
                                        String str37 = str11;
                                        sb10.append(str37);
                                        fa.a0 a0VarH9 = h(sb10.toString());
                                        if (a0VarH9.f5648a != 0) {
                                            throw new Exception(str4 + a0VarH9.a());
                                        }
                                        fa.a0 a0VarH10 = h(str13 + "-commit " + strN2);
                                        str14 = str37;
                                        if (a0VarH10.f5648a == 0) {
                                            a0VarH2 = a0VarH10;
                                            str14 = str37;
                                        }
                                        str6 = str22;
                                        xVar = xVar2;
                                        str8 = str14;
                                    } else {
                                        str14 = str11;
                                        str6 = str22;
                                        xVar = xVar2;
                                        str8 = str14;
                                    }
                                }
                            }
                        }
                        str11 = "\"";
                        z11 = z15;
                    } else {
                        str11 = "\"";
                        a0Var2 = a0VarH3;
                        z11 = z14;
                    }
                    a0VarH2 = a0Var2;
                    str12 = str10;
                    r13 = z11;
                    if (a0VarH2.a().contains("must be streamed")) {
                        str13 = str3322;
                        r10 = str12;
                        if (a0VarH2.f5648a != 0) {
                            com.yunpan.appmanage.util.k.f().C = true;
                            a0VarH2 = h(r10.replace(" -g ", " "));
                        }
                        if (i10 > 0) {
                            r13 = "--user " + i10;
                            h(r10.replace(r13, "--user 0"));
                        }
                        if (a0VarH2.a().contains("Can't open file")) {
                        }
                        if (a0VarH2.f5648a == 0) {
                            str14 = str11;
                            str6 = str22;
                            xVar = xVar2;
                            str8 = str14;
                        }
                    }
                }
            }
            str9 = " --user ";
            a0VarH3 = a0Var;
            str10 = strReplace222;
            z10 = r13222;
            boolean z142 = z10;
            if (a0VarH3.f5648a == 0) {
            }
        }
        strA = a0VarH2.a();
        System.out.getClass();
        if (!strA.contains("ailure") || a0VarH2.f5648a != 0 || strA.contains("rror:")) {
            if (!strA.contains("permission") || strA.contains("ermission denied")) {
                strA = "无权限访问此目录下文件";
            } else if (strA.trim().contains("allowedtoinstall")) {
                xVar.f5763b = -8;
                strA = "系统禁止命令式安装";
            } else if (strA.contains("file or directory") || strA.contains("Can't open file")) {
                strA = "不存在（无法识别）";
            } else if (strA.contains("not found") || strA.contains("syntax error")) {
                strA = "命令出错";
            } else if (strA.contains("Killed")) {
                strA = "无权限，此操作需要root权限";
            } else if (strA.contains("INSTALL_FAILED_VERIF")) {
                strA = "安装失败：此系统禁用命令安装";
            } else if (strA.contains("INSTALL_FAILED_VERSION_DOWNGRADE")) {
                xVar.f5763b = -111;
                try {
                    bVar3 = new ef.b(new File(str6));
                } catch (Exception unused14) {
                }
                try {
                    bVar3.M();
                    String str38 = bVar3.f4963e.f5813a;
                    try {
                        AppStart.b().f3775c.getApplicationInfo(str38, 0);
                    } catch (Exception unused15) {
                        h("pm uninstall \"" + str38 + str8);
                    }
                    bVar3.close();
                    strA = "已经安装了该应用更高版本，如果需要降级请先卸载";
                } finally {
                    try {
                        bVar3.close();
                        throw th;
                    } catch (Throwable th7) {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th7);
                    }
                }
            } else {
                String str39 = str6;
                if (strA.contains("INSTALL_FAILED_ALREADY_EXISTS") || strA.contains("INSTALL_FAILED_UPDATE_INCOMPATIBLE")) {
                    xVar.f5763b = -111;
                    try {
                        bVar = new ef.b(new File(str39));
                    } catch (Exception unused16) {
                    }
                    try {
                        bVar.M();
                        String str40 = bVar.f4963e.f5813a;
                        try {
                            AppStart.b().f3775c.getApplicationInfo(str40, 0);
                        } catch (Exception unused17) {
                            h("pm uninstall \"" + str40 + str8);
                        }
                        bVar.close();
                        strA = "与之前安装的版本冲突，请卸载原来的版本再安装";
                    } finally {
                        try {
                            bVar.close();
                            throw th;
                        } catch (Throwable th8) {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th8);
                        }
                    }
                } else if (strA.contains("INSTALL_FAILED_SHARED_USER_INCOMPATIBLE")) {
                    xVar.f5763b = -111;
                    strA = "与系统签名不一致：此APK指定了android.uid.system，需要与系统签名一致才能安装";
                } else if (strA.contains("INSTALL_FAILED_OLDER_SDK")) {
                    xVar.f5763b = -111;
                    strA = "不兼容，您的系统太旧，此应用不兼容您的系统！";
                } else if (strA.contains("INSTALL_FAILED_NEWER_SDK")) {
                    xVar.f5763b = -111;
                    strA = "不兼容，此应用不支持您的系统";
                } else if (strA.contains("INSTALL_PARSE_FAILED_NO_CERTIFICATES")) {
                    xVar.f5763b = -111;
                    strA = "没有签名证书，需要对apk签名才能安装";
                } else if (strA.contains("is a persistent app")) {
                    xVar.f5763b = -111;
                    strA = "无法更新，此应用设置有持续运行标记：android:persistent=true";
                } else if (strA.contains("INSTALL_FAILED_UID_CHANGED")) {
                    xVar.f5763b = -111;
                    try {
                        bVar2 = new ef.b(new File(str39));
                    } catch (Exception unused18) {
                    }
                    try {
                        bVar2.M();
                        String str41 = bVar2.f4963e.f5813a;
                        try {
                            AppStart.b().f3775c.getApplicationInfo(str41, 0);
                        } catch (Exception unused19) {
                            h("pm uninstall \"" + str41 + str8);
                        }
                        bVar2.close();
                        strA = "旧版本卸载不干净，有残留文件，需清理干净才能安装";
                    } finally {
                        try {
                            bVar2.close();
                            throw th;
                        } catch (Throwable th9) {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th9);
                        }
                    }
                } else if (strA.contains("INSTALL_FAILED_CPU_ABL_INCOMPATIBLE")) {
                    xVar.f5763b = -111;
                    strA = "不兼容，APP架构不匹配此系统";
                } else if (strA.contains("INSTALL_FAILED_INVALID_APK") || strA.contains("instant app illegality")) {
                    xVar.f5763b = -111;
                    strA = "APK无效 或 系统有限制，请解除";
                } else if (strA.contains("verify failed") || strA.contains("is not auth")) {
                    xVar.f5763b = -111;
                    strA = "此系统安装应用需要白名单";
                } else if (strA.contains("INSTALL_FAILED_INVALID_URI")) {
                    strA = "无效的APK包名";
                } else if (strA.contains("INSTALL_FAILED_INSUFFICIENT_STORAGE") || strA.contains("STATUS_FAILURE_STORAGE") || (strA.contains("Failed to allocate") && strA.contains("allocatable"))) {
                    xVar.f5763b = -111;
                    strA = "data分区,存储空间不足";
                } else if (strA.contains("INSTALL_FAILED_DUPLICATE_PACKAGE")) {
                    xVar.f5763b = -111;
                    strA = "本机上已经存在相同包名的APP";
                } else if (strA.contains("INSTALL_FAILED_NO_SHARED_USER")) {
                    xVar.f5763b = -111;
                    strA = "此应用请求的共享用户本系统不存在";
                } else if (strA.contains("INSTALL_FAILED_MISSING_SHARED_LIBRARY")) {
                    xVar.f5763b = -111;
                    strA = "不兼容，此应用使用了设备上不可用的共享库";
                } else if (strA.contains("INSTALL_FAILED_REPLACE_COULDNT_DELETE")) {
                    strA = "替换时无法删除";
                } else if (strA.contains("INSTALL_FAILED_DEXOPT")) {
                    strA = "dex优化验证失败或空间不足";
                } else if (strA.contains("INSTALL_FAILED_CONFLICTING_PROVIDER")) {
                    strA = "设备里已经存在与应用里同名的 content provider";
                } else if (strA.contains("INSTALL_FAILED_CPU_ABI_INCOMPATIBLE")) {
                    xVar.f5763b = -111;
                    strA = "不兼容，此应用含有不兼容本机 CPU 的代码";
                } else if (strA.contains("INSTALL_FAILED_NO_MATCHING_ABIS")) {
                    xVar.f5763b = -111;
                    strA = "不兼容，此应用含有本机不支持的接口代码";
                } else if (strA.contains("INSTALL_FAILED_MISSING_FEATURE")) {
                    xVar.f5763b = -111;
                    strA = "不兼容，此应用使用了本机不可用的功能";
                } else if (strA.contains("INSTALL_FAILED_ACWF_INCOMPATIBLE")) {
                    xVar.f5763b = -111;
                    strA = "不兼容，此应用与本机不兼容";
                } else if (strA.contains("INSTALL_CANCELED_BY_USER")) {
                    strA = "此应用安装需要在设备上确认，但未操作设备或点了取消，在设备上同意安装";
                } else if (strA.contains("INSTALL_FAILED_CONTAINER_ERROR")) {
                    strA = "sdcard 访问失败；应用签名与 ROM 签名一致，被当作内置应用，确认 sdcard 可用，或者安装到内置存储；打包时不与 ROM 使用相同签名";
                } else if (strA.contains("INSTALL_FAILED_INVALID_INSTALL_LOCATION")) {
                    strA = "不能安装到指定位置，应用签名与 ROM 签名一致，被当作内置应用。切换安装位置，添加或删除 -s 参数；打包时不与 ROM 使用相同签名";
                } else if (strA.contains("INSTALL_FAILED_MEDIA_UNAVAILABLE")) {
                    strA = "安装位置不可用，一般为 sdcard，确认 sdcard 可用或安装到内置存储";
                } else if (strA.contains("INSTALL_FAILED_VERIFICATION_TIMEOUT")) {
                    strA = "验证安装包超时";
                } else if (strA.contains("INSTALL_FAILED_VERIFICATION_FAILURE")) {
                    strA = "验证安装包失败";
                } else if (strA.contains("INSTALL_FAILED_INTERNAL_ERROR")) {
                    strA = "因系统问题安装失败";
                } else if (strA.contains("INSTALL_FAILED_USER_RESTRICTED")) {
                    strA = "用户被限制安装应用 在开发者选项里将「USB安装」打开，如果已经打开了，那先关闭再打开";
                } else if (strA.contains("INSTALL_FAILED_DUPLICATE_PERMISSION")) {
                    xVar.f5763b = -111;
                    strA = "权限冲突：此应用尝试定义一个已经存在的权限名称";
                } else if (strA.contains("INSTALL_FAILED_PACKAGE_CHANGED")) {
                    strA = "应用与调用程序期望的不一致";
                } else if (strA.contains("INSTALL_PARSE_FAILED_NOT_APK")) {
                    strA = "文件解析失败";
                } else if (strA.contains("INSTALL_PARSE_FAILED_BAD_MANIFEST")) {
                    strA = "无法解析的AndroidManifest.xml文件";
                } else if (strA.contains("INSTALL_PARSE_FAILED_MANIFEST_MALFORMED")) {
                    strA = "解析 manifest 文件时遇到结构性错误";
                } else if (strA.contains("INSTALL_PARSE_FAILED_MANIFEST_EMPTY")) {
                    strA = "在 manifest 文件里找不到找可操作标签（instrumentation 或 application）";
                } else if (strA.contains("INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME")) {
                    strA = "manifest 文件里没有或者使用了无效的包名";
                } else if (strA.contains("INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID")) {
                    strA = "manifest 文件里指定了无效的共享用户 ID";
                } else if (strA.contains("INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING")) {
                    strA = "解析 APK 文件时遇到 CertificateEncodingException";
                } else if (strA.contains("INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION")) {
                    strA = "解析器遇到异常";
                } else if (strA.contains("INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES")) {
                    xVar.f5763b = -111;
                    try {
                        ef.b bVar6 = new ef.b(new File(str39));
                        try {
                            bVar6.M();
                            String str42 = bVar6.f4963e.f5813a;
                            try {
                                AppStart.b().f3775c.getApplicationInfo(str42, 0);
                            } catch (Exception unused20) {
                                h("pm uninstall \"" + str42 + str8);
                            }
                            bVar6.close();
                        } finally {
                            try {
                                bVar6.close();
                                throw th;
                            } catch (Throwable th10) {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th10);
                            }
                        }
                    } catch (Exception unused21) {
                    }
                    strA = "您之前已安装该应用，且签名与 APK 文件不一致，请先卸载设备上的原应用，再安装";
                } else if (strA.contains("INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE")) {
                    xVar.f5763b = -111;
                    strA = "已安装 target SDK 支持运行时权限的同名应用，要安装的版本不支持运行时权限";
                } else if (strA.contains("code is missing")) {
                    xVar.f5763b = -111;
                    strA = "此APK文件非正常应用，无法安装";
                } else if (strA.contains("does not contain AndroidManifest.xml") || strA.contains("is not a valid zip file")) {
                    xVar.f5763b = -111;
                    strA = "无效的 APK 文件";
                } else if (strA.contains("Offline")) {
                    strA = "设备未连接成功，先将设备与 adb 连接成功";
                } else if (strA.contains("unauthorized")) {
                    strA = "设备未授权允许调试,请在开发者选项中勾选USB调试";
                } else if (strA.contains("protocol failure")) {
                    strA = "设备已断开连接 ，先将设备与 root 或 adb 连接成功";
                } else if (strA.contains("Unknown option: -s")) {
                    strA = "Android 2.2 以下不支持安装到 sdcard 不使用 -s 参数";
                } else if (strA.contains("install apk has be disabled")) {
                    strA = "此系统禁止使用adb安装应用";
                } else if (strA.contains("Failed to parse APK")) {
                    strA = "解析失败，无权限读取文件 或 apk文件损坏";
                } else if (strA.contains("is already used by")) {
                    try {
                        strA = "此应用与【" + strA.substring(strA.indexOf("is already used by ") + 19) + "】产生冲突，无法安装";
                    } catch (Exception unused22) {
                        strA = "此应用与某个已装应用产生冲突，无法安装";
                    }
                    xVar.f5763b = -111;
                } else if (strA.isEmpty()) {
                    strA = "安装失败：原因未明";
                }
            }
            xVar.f5764c = strA;
        } else if (strA.contains("Success")) {
            xVar.f5763b = 0;
            xVar.f5762a = true;
            xVar.f5764c = "安装成功";
        } else {
            xVar.f5764c = "安装失败";
        }
        return xVar;
    }

    public static void Z(String str, boolean z, boolean z4) throws Exception {
        StringBuilder sb2 = new StringBuilder("pm uninstall");
        sb2.append(z ? " -k" : "");
        sb2.append(" --user ");
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        sb2.append(kVar.f4060n);
        sb2.append(" '");
        sb2.append(str);
        sb2.append("'");
        String string = sb2.toString();
        fa.a0 a0VarO = o(2222L, string);
        String strA = a0VarO.a();
        if (kVar.f4072u.size() > 1) {
            if (z4) {
                for (String str2 : kVar.f4072u.keySet()) {
                    com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                    if (!str2.equals(String.valueOf(kVar2.f4060n))) {
                        o(2222L, string.replace(android.support.v4.media.session.a.s(new StringBuilder(" "), kVar2.f4060n, " "), " " + str2 + " "));
                    }
                }
                o(2222L, string.replace(" --user " + com.yunpan.appmanage.util.j.f4033a.f4060n, ""));
            }
        } else if (a0VarO.f5648a != 0 || strA.contains("Error:")) {
            StringBuilder sb3 = new StringBuilder("pm uninstall");
            sb3.append(z ? " -k" : "");
            sb3.append(" '");
            sb3.append(str);
            sb3.append("'");
            a0VarO = o(2222L, sb3.toString());
            strA = a0VarO.a();
        }
        if (strA.contains("Failure") || strA.contains("Error:") || !(a0VarO.f5648a == 0 || strA.contains("Success"))) {
            if (strA.contains("known package")) {
                strA = "此应用不存在";
            } else if (strA.contains("not found")) {
                strA = "此命令不存在";
            } else if (strA.contains("ermission") || strA.contains("illed") || strA.contains("android.permission.MANAGE_USERS") || strA.contains("Neither user 2000")) {
                strA = "无权限，此功能需要root权限";
            } else if (strA.contains("pm by system default")) {
                strA = "卸载失败：系统把pm命令禁用了！";
            } else if (strA.contains("DELETE_FAILED_OWNER_BLOCKED")) {
                strA = "加锁了，请先解锁再卸载";
            } else if (strA.contains("DELETE_FAILED_DEVICE_POLICY_MANAGER")) {
                strA = "此应用是设备管理员，需自身取消设备管理器权限方可卸载";
            } else if (strA.contains("DELETE_FAILED_INTERNAL_ERROR")) {
                strA = "系统禁止卸载此应用";
            } else if (strA.contains("is auth app")) {
                strA = "系统禁止您卸载此应用";
            } else if (strA.trim().isEmpty()) {
                strA = "失败：未知错误";
            }
            throw new Exception(strA);
        }
    }

    public static void a0(String str, String str2, mc.b bVar) throws Exception {
        String str3;
        Throwable th2;
        String str4;
        mc.b bVar2 = bVar;
        int i10 = 2;
        char c7 = 1;
        int i11 = 0;
        String str5 = "addSuppressed";
        try {
            y9.f fVarJ = fa.h.f5683a.f5696b.J("sync:");
            try {
                FileInputStream fileInputStream = new FileInputStream(str);
                try {
                    fVarJ.J(p000if.a.n("SEND".getBytes(), p000if.a.W((str2 + ",33206").length())));
                    fVarJ.J(str2.getBytes());
                    fVarJ.J(",33206".getBytes());
                    byte[] bArr = new byte[4000];
                    long jP = com.yunpan.appmanage.util.a0.p(new File(str));
                    long j10 = 0;
                    try {
                        if (jP == 0) {
                            throw new Exception("此文件疑是损坏");
                        }
                        long j11 = 0;
                        int i12 = 0;
                        while (true) {
                            int i13 = fileInputStream.read(bArr);
                            if (i13 < 0) {
                                break;
                            }
                            long j12 = i13;
                            long j13 = j10 + j12;
                            if (bVar2 != null) {
                                StringBuilder sb2 = new StringBuilder();
                                str4 = str5;
                                sb2.append("传输中：");
                                sb2.append(j13);
                                bVar2.f(sb2.toString());
                            } else {
                                str4 = str5;
                            }
                            fVarJ.J(p000if.a.n("DATA".getBytes(), p000if.a.W(i13)));
                            if (i13 == 4000) {
                                fVarJ.J(bArr);
                            } else {
                                byte[] bArr2 = new byte[i13];
                                System.arraycopy(bArr, 0, bArr2, 0, i13);
                                fVarJ.J(bArr2);
                            }
                            j11 += j12;
                            int i14 = (int) ((100 * j11) / jP);
                            if (i12 != i14) {
                                i12 = i14;
                            }
                            bVar2 = bVar;
                            str5 = str4;
                            j10 = j13;
                            i10 = 2;
                            c7 = 1;
                            i11 = 0;
                        }
                        if (bVar2 != null) {
                            try {
                                bVar2.f("传输完成");
                            } catch (Throwable th3) {
                                th2 = th3;
                                str3 = str5;
                                try {
                                    fileInputStream.close();
                                    throw th2;
                                } catch (Throwable th4) {
                                    try {
                                        try {
                                            Throwable.class.getDeclaredMethod(str3, Throwable.class).invoke(th2, th4);
                                            throw th2;
                                        } catch (Exception unused) {
                                            throw th2;
                                        }
                                    } catch (Exception unused2) {
                                        throw th2;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        str5 = str3;
                                        Throwable th6 = th;
                                        try {
                                            fVarJ.close();
                                            throw th6;
                                        } catch (Throwable th7) {
                                            try {
                                                Throwable.class.getDeclaredMethod(str5, Throwable.class).invoke(th6, th7);
                                                throw th6;
                                            } catch (Exception unused3) {
                                                throw th6;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        byte[] bytes = "DONE".getBytes();
                        byte[] bArrW = p000if.a.W((int) System.currentTimeMillis());
                        byte[][] bArr3 = new byte[i10][];
                        bArr3[i11] = bytes;
                        bArr3[c7] = bArrW;
                        fVarJ.J(p000if.a.n(bArr3));
                        byte[] bytes2 = "QUIT".getBytes();
                        byte[] bArrW2 = p000if.a.W(i11);
                        byte[][] bArr4 = new byte[i10][];
                        bArr4[i11] = bytes2;
                        bArr4[c7] = bArrW2;
                        fVarJ.J(p000if.a.n(bArr4));
                        Thread.sleep(100L);
                        fileInputStream.close();
                        fVarJ.close();
                    } catch (Throwable th8) {
                        th = th8;
                        th2 = th;
                        fileInputStream.close();
                        throw th2;
                    }
                } catch (Throwable th9) {
                    th = th9;
                    str3 = str5;
                }
            } catch (Throwable th10) {
                th = th10;
            }
        } catch (Exception e7) {
            e7.printStackTrace();
            throw new Exception(g.b.z(e7, new StringBuilder("传输失败：")));
        }
    }

    public static void b0(String str, String str2, mc.b bVar) throws Exception {
        String str3;
        Throwable th2;
        String str4;
        mc.b bVar2 = bVar;
        int i10 = 2;
        char c7 = 1;
        int i11 = 0;
        String str5 = "addSuppressed";
        try {
            AdbStream adbStreamOpen = fa.l.f5712a.getAdbConnection().open("sync:");
            try {
                FileInputStream fileInputStream = new FileInputStream(str);
                try {
                    byte[] bArrN = p000if.a.n("SEND".getBytes(), p000if.a.W((str2 + ",33206").length()));
                    adbStreamOpen.write(bArrN, 0, bArrN.length);
                    adbStreamOpen.write(str2.getBytes(), 0, str2.getBytes().length);
                    adbStreamOpen.write(",33206".getBytes(), 0, ",33206".getBytes().length);
                    byte[] bArr = new byte[4000];
                    long jP = com.yunpan.appmanage.util.a0.p(new File(str));
                    long j10 = 0;
                    try {
                        if (jP == 0) {
                            throw new Exception("此文件疑是损坏");
                        }
                        long j11 = 0;
                        int i12 = 0;
                        while (true) {
                            int i13 = fileInputStream.read(bArr);
                            if (i13 < 0) {
                                break;
                            }
                            long j12 = i13;
                            long j13 = j10 + j12;
                            if (bVar2 != null) {
                                StringBuilder sb2 = new StringBuilder();
                                str4 = str5;
                                sb2.append("传输中：");
                                sb2.append(j13);
                                bVar2.f(sb2.toString());
                            } else {
                                str4 = str5;
                            }
                            byte[] bArrN2 = p000if.a.n("DATA".getBytes(), p000if.a.W(i13));
                            adbStreamOpen.write(bArrN2, 0, bArrN2.length);
                            if (i13 == 4000) {
                                adbStreamOpen.write(bArr, 0, 4000);
                            } else {
                                byte[] bArr2 = new byte[i13];
                                System.arraycopy(bArr, 0, bArr2, 0, i13);
                                adbStreamOpen.write(bArr2, 0, i13);
                            }
                            j11 += j12;
                            int i14 = (int) ((100 * j11) / jP);
                            if (i12 != i14) {
                                i12 = i14;
                            }
                            bVar2 = bVar;
                            str5 = str4;
                            j10 = j13;
                            i10 = 2;
                            c7 = 1;
                            i11 = 0;
                        }
                        if (bVar2 != null) {
                            try {
                                bVar2.f("传输完成");
                            } catch (Throwable th3) {
                                th2 = th3;
                                str3 = str5;
                                try {
                                    fileInputStream.close();
                                    throw th2;
                                } catch (Throwable th4) {
                                    try {
                                        try {
                                            Throwable.class.getDeclaredMethod(str3, Throwable.class).invoke(th2, th4);
                                            throw th2;
                                        } catch (Exception unused) {
                                            throw th2;
                                        }
                                    } catch (Exception unused2) {
                                        throw th2;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        str5 = str3;
                                        Throwable th6 = th;
                                        if (adbStreamOpen == null) {
                                            throw th6;
                                        }
                                        try {
                                            adbStreamOpen.close();
                                            throw th6;
                                        } catch (Throwable th7) {
                                            try {
                                                Throwable.class.getDeclaredMethod(str5, Throwable.class).invoke(th6, th7);
                                                throw th6;
                                            } catch (Exception unused3) {
                                                throw th6;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        byte[] bytes = "DONE".getBytes();
                        byte[] bArrW = p000if.a.W((int) System.currentTimeMillis());
                        byte[][] bArr3 = new byte[i10][];
                        bArr3[i11] = bytes;
                        bArr3[c7] = bArrW;
                        byte[] bArrN3 = p000if.a.n(bArr3);
                        adbStreamOpen.write(bArrN3, i11, bArrN3.length);
                        byte[] bytes2 = "QUIT".getBytes();
                        byte[] bArrW2 = p000if.a.W(i11);
                        byte[][] bArr4 = new byte[i10][];
                        bArr4[i11] = bytes2;
                        bArr4[c7] = bArrW2;
                        byte[] bArrN4 = p000if.a.n(bArr4);
                        adbStreamOpen.write(bArrN4, i11, bArrN4.length);
                        Thread.sleep(100L);
                        fileInputStream.close();
                        adbStreamOpen.close();
                    } catch (Throwable th8) {
                        th = th8;
                        th2 = th;
                        fileInputStream.close();
                        throw th2;
                    }
                } catch (Throwable th9) {
                    th = th9;
                    str3 = str5;
                }
            } catch (Throwable th10) {
                th = th10;
            }
        } catch (Exception e7) {
            e7.printStackTrace();
            throw new Exception(g.b.z(e7, new StringBuilder("传输失败：")));
        }
    }

    public static FileAttributeBean c0(w3 w3Var) throws Exception {
        String strL = g.b.l(w3Var.f18365b, "\"", new StringBuilder("ls -ld \""));
        fa.a0 a0Var = new fa.a0(u9.d.r(strL).l0());
        if (!a0Var.b()) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            if (kVar.f4060n > 0) {
                fa.h0 h0Var = fa.g0.f5682a;
                if (h0Var.f() && w3Var.f18365b.startsWith(h0Var.d())) {
                    a0Var = new fa.a0(u9.d.r("ls -ld \"" + kVar.f4062o + w3Var.f18365b.substring(h0Var.d().length()) + "\"").l0());
                }
            }
        }
        if (a0Var.f5648a != 0) {
            fa.j jVar = fa.h.f5683a;
            if (jVar.i()) {
                a0Var = new fa.a0(jVar.c(strL));
            } else {
                fa.m mVar = fa.l.f5712a;
                if (mVar.isConnected()) {
                    a0Var = new fa.a0(mVar.L(strL));
                }
            }
        }
        if (a0Var.b()) {
            a0Var.a();
            Iterator it = a0Var.f5649b.iterator();
            if (it.hasNext()) {
                String str = (String) it.next();
                Matcher matcher = Pattern.compile("([ld-])([rwxtTsS-]{9})\\s+\\d+\\s+(\\w+)\\s+(\\w+)\\s+").matcher(str);
                if (!matcher.find()) {
                    matcher = Pattern.compile("([ld-])([rwxtTsS-]{9})\\s+(\\w+)\\s+(\\w+)\\s+").matcher(str);
                    if (!matcher.find()) {
                        throw new Exception("查询文件属性失败");
                    }
                }
                FileAttributeBean fileAttributeBean = new FileAttributeBean();
                fileAttributeBean.filePath = w3Var.f18365b;
                fileAttributeBean.isDirectory = w3Var.f18366c;
                String strGroup = matcher.group(2);
                fileAttributeBean.filePermissions = strGroup;
                fileAttributeBean.filePermission = com.yunpan.appmanage.util.a0.h(strGroup);
                fileAttributeBean.fileOwner = matcher.group(3);
                fileAttributeBean.fileGroup = matcher.group(4);
                return fileAttributeBean;
            }
        }
        throw new Exception("查询文件属性失败");
    }

    public static void d0() {
        new mc.c(0, new u0(26)).d(rc.f.f13757b).a(fc.b.a()).b(new l2(28));
    }

    public static String f(String str) {
        try {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            if (!kVar.f4069s.isEmpty()) {
                String str2 = new File(kVar.f4069s).getParentFile().getParent() + "/" + str + "/cache/";
                fa.b0.f5652a.getClass();
                B(str2);
            }
        } catch (Exception unused) {
        }
        String str3 = com.yunpan.appmanage.util.v.f4106a.f4109b.getCacheDir().getParentFile().getParent() + "/" + str + "/cache/";
        fa.b0.f5652a.getClass();
        B(str3);
        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
        if (!com.yunpan.appmanage.util.j.f4033a.f4058m) {
            return "已简单清理，深度清理的话需root：/data/data目录中的缓存";
        }
        B(str3.replace("/cache", "/code_cache"));
        return "清理成功";
    }

    public static void f0(String str) {
        h("am force-stop '" + str.trim() + "'");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static fa.a0 h(String str) {
        fa.a0 a0Var = new fa.a0();
        fa.h0 h0Var = fa.g0.f5682a;
        if (!h0Var.f() || !h0Var.f5687d) {
            if (h0Var.f()) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                    fa.j jVar = fa.h.f5683a;
                    if (jVar.i()) {
                        fa.i iVarC = jVar.c(str);
                        a0Var.f5648a = iVarC.f5691a;
                        a0Var.f5649b = iVarC.f5693c;
                        return a0Var;
                    }
                    fa.m mVar = fa.l.f5712a;
                    if (mVar.isConnected()) {
                        ShellResultData shellResultDataL = mVar.L(str);
                        a0Var.f5648a = shellResultDataL.code;
                        a0Var.f5649b = shellResultDataL.lines;
                        return a0Var;
                    }
                }
            }
        }
        androidx.room.s sVarL0 = u9.d.r(str).l0();
        sVarL0.k().addAll(sVarL0.j());
        a0Var.f5648a = sVarL0.f2426b;
        a0Var.f5649b = sVarL0.k();
        return a0Var;
    }

    public static fa.a0 k(String str) {
        fa.a0 a0Var = new fa.a0();
        fa.j jVar = fa.h.f5683a;
        if (jVar.i()) {
            fa.i iVarC = jVar.c(str);
            a0Var.f5648a = iVarC.f5691a;
            a0Var.f5649b = iVarC.f5693c;
            return a0Var;
        }
        fa.m mVar = fa.l.f5712a;
        if (!mVar.isConnected()) {
            a0Var.f5648a = -111;
            a0Var.f5649b.add("未连接adb");
            return a0Var;
        }
        ShellResultData shellResultDataL = mVar.L(str);
        a0Var.f5648a = shellResultDataL.code;
        a0Var.f5649b = shellResultDataL.lines;
        return a0Var;
    }

    public static fa.a0 l(String str) {
        IGjAdbFace iGjAdbFace;
        IUserService iUserService;
        fa.a0 a0Var = new fa.a0();
        fa.j jVar = fa.h.f5683a;
        if (jVar.i()) {
            fa.i iVarC = jVar.c(str);
            a0Var.f5648a = iVarC.f5691a;
            a0Var.f5649b = iVarC.f5693c;
        } else {
            fa.m mVar = fa.l.f5712a;
            if (mVar.isConnected()) {
                ShellResultData shellResultDataL = mVar.L(str);
                a0Var.f5648a = shellResultDataL.code;
                a0Var.f5649b = shellResultDataL.lines;
            } else {
                fa.o0 o0Var = fa.n0.f5722a;
                if (!o0Var.f5726a || (iUserService = o0Var.f5730e) == null) {
                    fa.b bVar = fa.a.f5646a;
                    if (!bVar.f() || (iGjAdbFace = bVar.f5651b) == null) {
                        androidx.room.s sVarL0 = u9.d.r(str).l0();
                        sVarL0.k().addAll(sVarL0.j());
                        a0Var.f5648a = sVarL0.f2426b;
                        a0Var.f5649b = sVarL0.k();
                    } else {
                        try {
                            CmdResult cmdResultExec = iGjAdbFace.exec(str, 3333L);
                            a0Var.f5648a = cmdResultExec.code;
                            a0Var.f5649b = cmdResultExec.lists;
                        } catch (Exception unused) {
                            a0Var.f5648a = -1;
                            a0Var.f5649b.add("出错");
                        }
                    }
                } else {
                    try {
                        CmdResult cmdResultExec2 = iUserService.exec(str, 3333L);
                        a0Var.f5648a = cmdResultExec2.code;
                        a0Var.f5649b = cmdResultExec2.lists;
                    } catch (Exception unused2) {
                        a0Var.f5648a = -1;
                        a0Var.f5649b.add("出错");
                    }
                }
            }
        }
        return a0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static fa.a0 m(String str) {
        fa.a0 a0Var = new fa.a0();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        if (com.yunpan.appmanage.util.j.f4033a.f4053j || fa.g0.f5682a.f()) {
            androidx.room.s sVarL0 = u9.d.r(str).l0();
            sVarL0.k().addAll(sVarL0.j());
            a0Var.f5648a = sVarL0.f2426b;
            a0Var.f5649b = sVarL0.k();
            if (a0Var.f5648a != 0 && !fa.g0.f5682a.f()) {
                fa.j jVar = fa.h.f5683a;
                if (jVar.i()) {
                    fa.i iVarC = jVar.c(str);
                    a0Var.f5648a = iVarC.f5691a;
                    a0Var.f5649b = iVarC.f5693c;
                } else {
                    fa.m mVar = fa.l.f5712a;
                    if (mVar.isConnected()) {
                        ShellResultData shellResultDataL = mVar.L(str);
                        a0Var.f5648a = shellResultDataL.code;
                        a0Var.f5649b = shellResultDataL.lines;
                    }
                }
            }
        }
        return a0Var;
    }

    public static fa.a0 n(long j10, String str) {
        IUserService iUserService;
        fa.a0 a0Var = new fa.a0();
        fa.h0 h0Var = fa.g0.f5682a;
        if (h0Var.f()) {
            androidx.room.s sVarL0 = u9.d.r(str).l0();
            sVarL0.k().addAll(sVarL0.j());
            a0Var.f5648a = sVarL0.f2426b;
            a0Var.f5649b = sVarL0.k();
            if (a0Var.f5648a == 0 || (!fa.h.f5683a.i() && !fa.l.f5712a.isConnected() && !fa.n0.f5722a.f5726a)) {
                return a0Var;
            }
        }
        fa.j jVar = fa.h.f5683a;
        if (!jVar.i() || h0Var.f()) {
            fa.m mVar = fa.l.f5712a;
            if (!mVar.isConnected() || h0Var.f()) {
                fa.o0 o0Var = fa.n0.f5722a;
                if (!o0Var.f5726a || (iUserService = o0Var.f5730e) == null) {
                    androidx.room.s sVarL02 = u9.d.r(str).l0();
                    sVarL02.k().addAll(sVarL02.j());
                    a0Var.f5648a = sVarL02.f2426b;
                    a0Var.f5649b = sVarL02.k();
                } else {
                    try {
                        CmdResult cmdResultExec = iUserService.exec(str, j10);
                        a0Var.f5648a = cmdResultExec.code;
                        a0Var.f5649b = cmdResultExec.lists;
                    } catch (Exception unused) {
                        a0Var.f5648a = -1;
                        a0Var.f5649b.add("出错");
                    }
                }
            } else {
                ShellResultData shellResultDataL = mVar.L(str);
                a0Var.f5648a = shellResultDataL.code;
                a0Var.f5649b = shellResultDataL.lines;
            }
        } else {
            fa.i iVarC = jVar.c(str);
            a0Var.f5648a = iVarC.f5691a;
            a0Var.f5649b = iVarC.f5693c;
        }
        return a0Var;
    }

    public static fa.a0 o(long j10, String str) {
        IUserService iUserService;
        fa.a0 a0Var = new fa.a0();
        fa.h0 h0Var = fa.g0.f5682a;
        if (h0Var.f()) {
            androidx.room.s sVarL0 = u9.d.r(str).l0();
            sVarL0.k().addAll(sVarL0.j());
            a0Var.f5648a = sVarL0.f2426b;
            a0Var.f5649b = sVarL0.k();
        } else {
            fa.j jVar = fa.h.f5683a;
            if (!jVar.i() || h0Var.f()) {
                fa.m mVar = fa.l.f5712a;
                if (!mVar.isConnected() || h0Var.f()) {
                    fa.o0 o0Var = fa.n0.f5722a;
                    if (!o0Var.f5726a || (iUserService = o0Var.f5730e) == null) {
                        fa.b bVar = fa.a.f5646a;
                        if (bVar.f()) {
                            try {
                                CmdResult cmdResultExec = bVar.f5651b.exec(str, j10);
                                a0Var.f5648a = cmdResultExec.code;
                                a0Var.f5649b = cmdResultExec.lists;
                            } catch (Exception unused) {
                                a0Var.f5648a = -1;
                                a0Var.f5649b.add("出错");
                            }
                        } else {
                            androidx.room.s sVarL02 = u9.d.r(str).l0();
                            sVarL02.k().addAll(sVarL02.j());
                            a0Var.f5648a = sVarL02.f2426b;
                            a0Var.f5649b = sVarL02.k();
                        }
                    } else {
                        try {
                            CmdResult cmdResultExec2 = iUserService.exec(str, j10);
                            a0Var.f5648a = cmdResultExec2.code;
                            a0Var.f5649b = cmdResultExec2.lists;
                        } catch (Exception unused2) {
                            a0Var.f5648a = -1;
                            a0Var.f5649b.add("出错");
                        }
                    }
                } else {
                    ShellResultData shellResultDataL = mVar.L(str);
                    a0Var.f5648a = shellResultDataL.code;
                    a0Var.f5649b = shellResultDataL.lines;
                }
            } else {
                fa.i iVarC = jVar.c(str);
                a0Var.f5648a = iVarC.f5691a;
                a0Var.f5649b = iVarC.f5693c;
            }
        }
        return a0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0096  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static fa.a0 p(String str) {
        IUserService iUserService;
        fa.a0 a0Var = new fa.a0();
        fa.h0 h0Var = fa.g0.f5682a;
        if (!h0Var.f()) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j) {
                androidx.room.s sVarL0 = u9.d.r(str).l0();
                sVarL0.k().addAll(sVarL0.j());
                a0Var.f5648a = sVarL0.f2426b;
                a0Var.f5649b = sVarL0.k();
            } else {
                fa.j jVar = fa.h.f5683a;
                if (!jVar.i() || h0Var.f()) {
                    fa.m mVar = fa.l.f5712a;
                    if (!mVar.isConnected() || h0Var.f()) {
                        fa.o0 o0Var = fa.n0.f5722a;
                        if (!o0Var.f5726a || (iUserService = o0Var.f5730e) == null) {
                            androidx.room.s sVarL02 = u9.d.r(str).l0();
                            sVarL02.k().addAll(sVarL02.j());
                            a0Var.f5648a = sVarL02.f2426b;
                            a0Var.f5649b = sVarL02.k();
                        } else {
                            try {
                                CmdResult cmdResultExec = iUserService.exec(str, 3333L);
                                a0Var.f5648a = cmdResultExec.code;
                                a0Var.f5649b = cmdResultExec.lists;
                            } catch (Exception unused) {
                                a0Var.f5648a = -1;
                                a0Var.f5649b.add("出错");
                            }
                        }
                    } else {
                        ShellResultData shellResultDataL = mVar.L(str);
                        a0Var.f5648a = shellResultDataL.code;
                        a0Var.f5649b = shellResultDataL.lines;
                    }
                } else {
                    fa.i iVarC = jVar.c(str);
                    a0Var.f5648a = iVarC.f5691a;
                    a0Var.f5649b = iVarC.f5693c;
                }
            }
        }
        return a0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static fa.a0 q(long j10, String str) {
        fa.a0 a0Var = new fa.a0();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        if (com.yunpan.appmanage.util.j.f4033a.f4053j || fa.g0.f5682a.f()) {
            androidx.room.s sVarL0 = u9.d.r(str).l0();
            sVarL0.k().addAll(sVarL0.j());
            a0Var.f5648a = sVarL0.f2426b;
            a0Var.f5649b = sVarL0.k();
            if (a0Var.f5648a != 0 && !fa.g0.f5682a.f()) {
                fa.j jVar = fa.h.f5683a;
                if (jVar.i()) {
                    fa.i iVarC = jVar.c(str);
                    a0Var.f5648a = iVarC.f5691a;
                    a0Var.f5649b = iVarC.f5693c;
                } else {
                    fa.m mVar = fa.l.f5712a;
                    if (mVar.isConnected()) {
                        ShellResultData shellResultDataL = mVar.L(str);
                        a0Var.f5648a = shellResultDataL.code;
                        a0Var.f5649b = shellResultDataL.lines;
                    } else {
                        IUserService iUserService = fa.n0.f5722a.f5730e;
                        if (iUserService != null) {
                            try {
                                CmdResult cmdResultExec = iUserService.exec(str, j10);
                                a0Var.f5648a = cmdResultExec.code;
                                a0Var.f5649b = cmdResultExec.lists;
                            } catch (Exception unused) {
                                a0Var.f5648a = -1;
                                a0Var.f5649b.add("出错");
                            }
                        } else {
                            fa.b bVar = fa.a.f5646a;
                            if (bVar.f()) {
                                try {
                                    CmdResult cmdResultExec2 = bVar.f5651b.exec(str, j10);
                                    a0Var.f5648a = cmdResultExec2.code;
                                    a0Var.f5649b = cmdResultExec2.lists;
                                } catch (Exception unused2) {
                                    a0Var.f5648a = -1;
                                    a0Var.f5649b.add("出错");
                                }
                            } else {
                                androidx.room.s sVarL02 = u9.d.r(str).l0();
                                sVarL02.k().addAll(sVarL02.j());
                                a0Var.f5648a = sVarL02.f2426b;
                                a0Var.f5649b = sVarL02.k();
                            }
                        }
                    }
                }
            }
        }
        return a0Var;
    }

    public static String r(String str) {
        String strTrim = str.trim();
        if (strTrim.startsWith("adb shell")) {
            strTrim = strTrim.substring(9);
        }
        return strTrim.trim();
    }

    public static boolean s(File file) throws InterruptedException {
        boolean z;
        try {
            file.getPath();
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    s(file2);
                }
            }
            int i10 = 0;
            while (true) {
                if (i10 >= 3) {
                    z = false;
                    break;
                }
                file.delete();
                Thread.sleep(200L);
                if (!com.yunpan.appmanage.util.a0.f(file)) {
                    z = true;
                    break;
                }
                i10++;
            }
            if (z) {
                return true;
            }
            File file3 = new File(file.getPath() + ".tem");
            if (!file.renameTo(file3)) {
                return false;
            }
            for (int i11 = 0; i11 < 3; i11++) {
                file3.delete();
                Thread.sleep(200L);
                if (!com.yunpan.appmanage.util.a0.f(file3)) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void u(AppBean appBean) throws Exception {
        int i10;
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        if (!com.yunpan.appmanage.util.j.f4033a.f4058m) {
            throw new Exception("没有权限");
        }
        U(appBean.pack);
        h("am force-stop '" + appBean.pack + "'");
        if (h("rm -rf \"" + appBean.apkPath + "\"").f5648a != 0) {
            throw new Exception("删除失败");
        }
        String str = appBean.dataDir;
        if (str != null && !str.isEmpty()) {
            B(appBean.dataDir);
        }
        h("rm -rf '/data/data/" + appBean.pack + "'");
        HashSet hashSet = new HashSet();
        Iterator it = h("pm list users").f5649b.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            if (str2.contains("UserInfo{")) {
                String strTrim = p000if.a.N(str2, "UserInfo{", ":", false).trim();
                if (!strTrim.isEmpty()) {
                    hashSet.add(strTrim);
                }
            }
        }
        if (hashSet.isEmpty()) {
            hashSet.add("0");
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            String str3 = (String) it2.next();
            StringBuilder sbD = da.b.d("rm -rf '/data/user/", str3, "/");
            sbD.append(appBean.pack);
            sbD.append("'");
            h(sbD.toString());
            h("rm -rf '/data/user_de/" + str3 + "/" + appBean.pack + "'");
            h("rm -rf '/data/media/" + str3 + "/Android/data/" + appBean.pack + "'");
            h("rm -rf '/data/media/" + str3 + "/Android/obb/" + appBean.pack + "'");
            h("rm -rf '/data/media/" + str3 + "/Android/media/" + appBean.pack + "'");
        }
        if (!fa.g0.f5682a.d().isEmpty()) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("rm -rf \"");
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                sb2.append(new File(kVar.f4069s).getParentFile().getParentFile().getPath());
                sb2.append("/");
                sb2.append(appBean.pack);
                sb2.append("\"");
                h(sb2.toString());
                h("rm -rf \"" + new File(kVar.f4070t).getParentFile().getPath() + "/" + appBean.pack + "\"");
            } catch (Exception unused) {
            }
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 19) {
            if (i11 >= 21) {
                try {
                    ApplicationInfo applicationInfo = com.yunpan.appmanage.util.j.f4033a.f4037b.getApplicationInfo(appBean.pack, 0);
                    if (applicationInfo.splitSourceDirs != null) {
                        for (String str4 : applicationInfo.splitSourceDirs) {
                            h("rm -rf '" + str4 + "'");
                        }
                    }
                } catch (Exception unused2) {
                }
            }
            try {
                String path = new File(appBean.apkPath).getParentFile().getPath();
                if (path.split("/").length > 3) {
                    if (path.contains(appBean.pack)) {
                        B(path);
                    } else {
                        if (new File(path + "/oat/").exists()) {
                            B(path + "/oat");
                        }
                        if (new File(path + "/lib/").exists()) {
                            B(path + "/lib");
                        }
                    }
                }
            } catch (Exception unused3) {
            }
        }
        MyDb.get().getAppDao().deletePackageName(appBean.pack);
    }

    public static void w(String str) throws InterruptedException, IOException, RemoteException {
        fa.a0 a0Var = new fa.a0();
        try {
            ProcessBuilder processBuilder = new ProcessBuilder("/system/bin/sh", "-c", str);
            processBuilder.redirectErrorStream(true);
            Process processStart = processBuilder.start();
            fg.b bVar = new fg.b(new c0(processStart, 22, a0Var), 1);
            bVar.start();
            if (Build.VERSION.SDK_INT < 26) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                while (bVar.isAlive() && System.currentTimeMillis() - jCurrentTimeMillis < 10000) {
                    Thread.sleep(333L);
                }
                if (bVar.isAlive()) {
                    bVar.interrupt();
                    processStart.destroy();
                    throw new RemoteException("执行命令超时");
                }
            } else if (!processStart.waitFor(10000L, TimeUnit.MILLISECONDS)) {
                processStart.destroyForcibly();
                bVar.interrupt();
                throw new RemoteException("执行命令超时");
            }
            bVar.join(1000L);
            a0Var.f5648a = processStart.exitValue();
        } catch (Exception e7) {
            a0Var.f5649b.add(e7.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void x(String str, boolean z) throws Exception {
        File file = new File(str);
        if (file.getAbsolutePath().length() > 1) {
            try {
                if (com.yunpan.appmanage.util.a0.d(file.getAbsolutePath())) {
                    if (z) {
                        if (file.mkdirs()) {
                            return;
                        }
                    } else if (file.createNewFile()) {
                        return;
                    }
                }
            } catch (Exception unused) {
            }
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (kVar.f4060n > 0) {
            fa.b0.f5652a.getClass();
            if (K()) {
                fa.h0 h0Var = fa.g0.f5682a;
                if (str.startsWith(h0Var.d())) {
                    String str2 = kVar.f4062o + str.substring(h0Var.d().length());
                    StringBuilder sb2 = new StringBuilder();
                    if (z) {
                        sb2.append("mkdir \"");
                    } else {
                        sb2.append("touch \"");
                    }
                    sb2.append(str2);
                    sb2.append("\"");
                    if (h(sb2.toString()).b()) {
                        return;
                    }
                }
            }
        }
        if (!kVar.O.isEmpty()) {
            fa.h0 h0Var2 = fa.g0.f5682a;
            if (str.startsWith(h0Var2.d())) {
                str = kVar.O + str.substring(h0Var2.d().length());
            } else if (str.startsWith(kVar.M)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(kVar.O);
                str = ta.q.m(kVar.M, str, sb3);
            }
        }
        fa.a0 a0VarH = h(z ? g.b.A("mkdir \"", str, "\"") : g.b.A("touch \"", str, "\""));
        if (a0VarH.b()) {
            if (str.startsWith("/data/data/")) {
                h("chown sdcard_rw:sdcard_rw \"" + str + "\"");
                h("chmod -R 777 \"" + str + "\"");
                return;
            }
            return;
        }
        String strA = a0VarH.a();
        if (strA.contains("No space left on device")) {
            strA = "空间存储不足";
        } else if (!strA.contains("Read-only")) {
            if (strA.contains("File exists")) {
                strA = "已存在";
            } else if (strA.contains("File name too long")) {
                strA = "名称过长";
            } else if (strA.contains("Permission")) {
                strA = "无权限在此目录新建";
            }
        }
        if (strA.isEmpty()) {
            strA = "创建失败";
        }
        throw new Exception(strA);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0091 A[PHI: r0
  0x0091: PHI (r0v1 java.lang.String) = (r0v0 java.lang.String), (r0v12 java.lang.String) binds: [B:3:0x000c, B:14:0x007e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void y(String str, w3 w3Var) throws Exception {
        String strConcat;
        String strM = w3Var.f18365b;
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (!kVar.O.isEmpty()) {
            fa.h0 h0Var = fa.g0.f5682a;
            if (strM.startsWith(h0Var.d())) {
                strM = kVar.O + strM.substring(h0Var.d().length());
            } else if (strM.startsWith(kVar.M)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(kVar.O);
                strM = ta.q.m(kVar.M, strM, sb2);
            }
            if (str.startsWith(h0Var.d())) {
                strConcat = kVar.O + str.substring(h0Var.d().length());
            } else if (str.startsWith(kVar.M)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(kVar.O);
                strConcat = ta.q.m(kVar.M, str, sb3);
            } else {
                strConcat = str;
            }
        }
        if (!strConcat.endsWith("/")) {
            strConcat = strConcat.concat("/");
        }
        System.out.getClass();
        AppStart.f3772h.f3773a.g(666L);
        fa.a0 a0VarH = h("\\cp -R \"" + strM + "\" \"" + strConcat + "\"");
        if (!a0VarH.b() && K()) {
            String str2 = w3Var.f18365b;
            fa.h0 h0Var2 = fa.g0.f5682a;
            if (str2.startsWith(h0Var2.d()) || str.startsWith(h0Var2.d())) {
                if (w3Var.f18365b.startsWith(h0Var2.d())) {
                    strM = kVar.f4062o + strM.substring(h0Var2.d().length());
                }
                if (str.startsWith(h0Var2.d())) {
                    strConcat = kVar.f4062o + str.substring(h0Var2.d().length());
                }
                a0VarH = h("\\cp -R \"" + strM + "\" \"" + strConcat + "\"");
            }
        }
        AppStart.f3772h.f3773a.g(40L);
        if (!a0VarH.b()) {
            String strA = a0VarH.a();
            if (strA.contains("No space left on device")) {
                strA = "空间存储不足";
            } else if (strA.contains("permission") || strA.contains("Permission denied") || strA.contains("Read-only file system")) {
                strA = "无权限写入文件";
            } else if (strA.contains("such file or directory")) {
                strA = "文件或目录不存在";
            }
            if (strA.isEmpty()) {
                strA = "拷贝失败";
            }
            throw new Exception(strA);
        }
        if (kVar.f4058m) {
            if (strConcat.startsWith("/data/data/") || strConcat.startsWith("/data/user/") || strConcat.startsWith("/data/user_de/")) {
                if (w3Var.f18366c) {
                    h("chown -R sdcard_rw:sdcard_rw \"" + strConcat + w3Var.f18364a + "/\"");
                    return;
                }
                h("chown -R sdcard_rw:sdcard_rw \"" + strConcat + w3Var.f18364a + "\"");
                return;
            }
            if (w3Var.f18366c) {
                return;
            }
            if (w3Var.f18364a.contains("/oat/")) {
                h("chmod 644 \"" + strConcat + w3Var.f18364a + "\"");
                return;
            }
            h("chmod 755 \"" + strConcat + w3Var.f18364a + "\"");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void z(String str, String str2) {
        String strM;
        String strM2;
        fa.a0 a0VarH;
        fa.h0 h0Var;
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (!kVar.O.isEmpty()) {
            fa.h0 h0Var2 = fa.g0.f5682a;
            if (str.startsWith(h0Var2.d())) {
                strM = kVar.O + str.substring(h0Var2.d().length());
            } else if (str.startsWith(kVar.M)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(kVar.O);
                strM = ta.q.m(kVar.M, str, sb2);
            } else {
                strM = str;
            }
            if (str2.startsWith(h0Var2.d())) {
                strM2 = kVar.O + str2.substring(h0Var2.d().length());
            } else if (str2.startsWith(kVar.M)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(kVar.O);
                strM2 = ta.q.m(kVar.M, str2, sb3);
            }
            AppStart.f3772h.f3773a.g(666L);
            a0VarH = h("\\cp -R \"" + strM + "\" \"" + strM2 + "\"");
            if (!a0VarH.b() && K()) {
                h0Var = fa.g0.f5682a;
                if (!str.startsWith(h0Var.d()) || str2.startsWith(h0Var.d())) {
                    if (str.startsWith(h0Var.d())) {
                        strM = kVar.f4062o + strM.substring(h0Var.d().length());
                    }
                    if (str2.startsWith(h0Var.d())) {
                        str2 = kVar.f4062o + str2.substring(h0Var.d().length());
                    }
                    a0VarH = h("\\cp -R \"" + strM + "\" \"" + str2 + "\"");
                }
            }
            AppStart.f3772h.f3773a.g(40L);
            if (a0VarH.f5648a == 0) {
                String strA = a0VarH.a();
                if (strA.contains("No space left on device")) {
                    strA = "空间存储不足";
                } else if (strA.contains("permission") || strA.contains("Permission denied")) {
                    strA = "无权限写入文件到此目录";
                } else if (strA.contains("Read-only file system")) {
                    strA = "此目录无权限写入文件";
                } else if (strA.contains("such file or directory")) {
                    strA = "文件或目录不存在";
                }
                if (strA.isEmpty()) {
                    strA = "拷贝失败";
                }
                throw new Exception(strA);
            }
            if (kVar.f4058m) {
                if (strM2.startsWith("/data/data/") || strM2.startsWith("/data/user/") || strM2.startsWith("/data/user_de/")) {
                    h("chown sdcard_rw:sdcard_rw \"" + strM2 + "\"");
                    return;
                }
                if (strM.toLowerCase().endsWith(".apk")) {
                    h("chmod 644 \"" + strM2 + "\"");
                    return;
                }
                return;
            }
            return;
        }
        strM = str;
        strM2 = str2;
        AppStart.f3772h.f3773a.g(666L);
        a0VarH = h("\\cp -R \"" + strM + "\" \"" + strM2 + "\"");
        if (!a0VarH.b()) {
            h0Var = fa.g0.f5682a;
            if (!str.startsWith(h0Var.d())) {
                if (str.startsWith(h0Var.d())) {
                }
                if (str2.startsWith(h0Var.d())) {
                }
                a0VarH = h("\\cp -R \"" + strM + "\" \"" + str2 + "\"");
            }
        }
        AppStart.f3772h.f3773a.g(40L);
        if (a0VarH.f5648a == 0) {
        }
    }

    @Override // ha.wd
    public void D() {
        ActivityAdb.y((ActivityAdb) this.f349e, (String) this.f346b, (String) this.f347c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:128:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0309 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void E() {
        int i10;
        int i11;
        s4.j[] jVarArr;
        s4.j jVar;
        int i12;
        w4.l lVar;
        int i13;
        s4.m mVar;
        s4.u uVarH;
        boolean z;
        s4.e eVar;
        s4.a aVar;
        int[] iArr;
        int i14;
        w4.b bVar;
        s4.c cVar;
        boolean zEquals;
        boolean z4;
        w4.k kVar;
        int i15;
        w4.k kVarD;
        int i16 = 0;
        if (((s4.i) this.f349e) != null) {
            return;
        }
        s4.r rVar = (s4.r) this.f346b;
        if (rVar.f14404d >= 0) {
            throw new UnsupportedOperationException("already processed");
        }
        int size = rVar.f14403c.size();
        s4.j[] jVarArr2 = new s4.j[size];
        for (int i17 = 0; i17 < size; i17++) {
            jVarArr2[i17] = ((s4.h) rVar.f14403c.get(i17)).f14307b;
        }
        rVar.f(jVarArr2);
        do {
            int i18 = rVar.f14404d;
            i10 = rVar.f14402b;
            int i19 = i18 + i10 + rVar.f14405e;
            int i20 = rVar.f14406f;
            int i21 = i19 - i20;
            Iterator it = rVar.f14403c.iterator();
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            int i25 = 0;
            while (it.hasNext()) {
                w4.l lVar2 = ((s4.h) it.next()).f14309d;
                for (int i26 = 0; i26 < lVar2.f2559b.length; i26++) {
                    w4.k kVar2 = (w4.k) lVar2.d(i26);
                    if (kVar2.e()) {
                        int i27 = kVar2.f17466a;
                        boolean z10 = i27 >= i21;
                        if ((i27 & 1) == 0) {
                            if (z10) {
                                i23++;
                            } else {
                                i25++;
                            }
                        } else if (z10) {
                            i22++;
                        } else {
                            i24++;
                        }
                    }
                }
            }
            if (i22 > i23 && i24 > i25) {
                rVar.c();
            } else if (i22 <= i23) {
                if (i24 <= i25) {
                    break;
                }
                rVar.c();
                if (i20 != 0 && i23 > i22) {
                    rVar.b();
                }
            } else {
                rVar.b();
            }
        } while (rVar.f(jVarArr2));
        if (rVar.f14404d == 0) {
            int size2 = rVar.f14403c.size();
            for (int i28 = 0; i28 < size2; i28++) {
                s4.h hVar = (s4.h) rVar.f14403c.get(i28);
                s4.j jVar2 = hVar.f14307b;
                s4.j jVar3 = jVarArr2[i28];
                if (jVar2 != jVar3) {
                    rVar.f14403c.set(i28, hVar.i(jVar3));
                }
            }
        } else {
            int size3 = rVar.f14403c.size();
            ArrayList arrayList = new ArrayList(size3 * 2);
            ArrayList arrayList2 = new ArrayList();
            int i29 = 0;
            while (i29 < size3) {
                s4.h hVarK = (s4.h) rVar.f14403c.get(i29);
                s4.j jVar4 = hVarK.f14307b;
                s4.j jVar5 = jVarArr2[i29];
                if (jVar5 != null) {
                    i11 = size3;
                    jVarArr = jVarArr2;
                    mVar = null;
                    uVarH = null;
                } else {
                    s4.j jVarD = rVar.d(hVarK);
                    BitSet bitSetK = jVarD.f14314d.k(hVarK);
                    boolean z11 = bitSetK.get(i16);
                    s4.j jVar6 = hVarK.f14307b;
                    if (jVar6.f14315e) {
                        bitSetK.set(i16);
                    }
                    w4.l lVar3 = hVarK.f14309d;
                    Object[] objArr = lVar3.f2559b;
                    i11 = size3;
                    int length = objArr.length - bitSetK.cardinality();
                    if (length == 0) {
                        lVar = w4.l.f17468c;
                        jVarArr = jVarArr2;
                        jVar = jVarD;
                        i12 = 0;
                    } else {
                        jVarArr = jVarArr2;
                        w4.l lVar4 = new w4.l(length);
                        jVar = jVarD;
                        int i30 = 0;
                        int i31 = 0;
                        while (i30 < objArr.length) {
                            if (bitSetK.get(i30)) {
                                i13 = 1;
                            } else {
                                lVar4.e(i31, lVar3.d(i30));
                                i13 = 1;
                                i31++;
                            }
                            i30 += i13;
                        }
                        if (lVar3.f2570a) {
                            i12 = 0;
                        } else {
                            i12 = 0;
                            lVar4.f2570a = false;
                        }
                        lVar = lVar4;
                    }
                    boolean z12 = jVar6.f14315e;
                    if (z12) {
                        bitSetK.set(i12, z11);
                    }
                    int length2 = lVar.f2559b.length;
                    w4.p pVar = hVarK.f14308c;
                    mVar = length2 == 0 ? null : new s4.m(pVar, lVar);
                    if (!z12 || bitSetK.get(0)) {
                        uVarH = null;
                    } else {
                        w4.k kVar3 = (w4.k) lVar3.d(0);
                        uVarH = s4.h.h(pVar, kVar3, kVar3.f17466a == 0 ? kVar3 : w4.k.d(0, kVar3.f17467b));
                    }
                    hVarK = hVarK.k(lVar3.i(z12, bitSetK));
                    jVar5 = jVar;
                }
                if (hVarK instanceof s4.f) {
                }
                if (mVar != null) {
                    arrayList.add(mVar);
                }
                if (!(hVarK instanceof s4.w) && arrayList2.size() > 0) {
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        arrayList.add((s4.f) it2.next());
                    }
                    arrayList2.clear();
                }
                if (jVar5 != jVar4) {
                    hVarK = hVarK.i(jVar5);
                }
                arrayList.add(hVarK);
                if (uVarH != null) {
                    arrayList.add(uVarH);
                }
                i29++;
                size3 = i11;
                jVarArr2 = jVarArr;
                i16 = 0;
            }
            rVar.f14403c = arrayList;
        }
        do {
            int size4 = rVar.f14403c.size();
            int iB = 0;
            for (int i32 = 0; i32 < size4; i32++) {
                s4.h hVar2 = (s4.h) rVar.f14403c.get(i32);
                if (iB < 0) {
                    hVar2.getClass();
                    throw new IllegalArgumentException("address < 0");
                }
                hVar2.f14306a = iB;
                iB += hVar2.b();
            }
            int size5 = rVar.f14403c.size();
            z = false;
            int i33 = 0;
            while (i33 < size5) {
                s4.h hVar3 = (s4.h) rVar.f14403c.get(i33);
                if (hVar3 instanceof s4.v) {
                    s4.j jVar7 = hVar3.f14307b;
                    s4.v vVar = (s4.v) hVar3;
                    if (!jVar7.f14314d.d(vVar)) {
                        if (jVar7.f14312b == 40) {
                            s4.j jVarE = rVar.e(hVar3, jVar7);
                            if (jVarE == null) {
                                throw new UnsupportedOperationException("method too long");
                            }
                            rVar.f14403c.set(i33, hVar3.i(jVarE));
                        } else {
                            try {
                                int i34 = i33 + 1;
                                s4.f fVar = (s4.f) rVar.f14403c.get(i34);
                                rVar.f14403c.set(i33, new s4.v(s4.k.I, vVar.f14308c, w4.l.f17468c, vVar.f14409e));
                                rVar.f14403c.add(i33, vVar.o(fVar));
                                size5++;
                                i33 = i34;
                            } catch (ClassCastException unused) {
                                throw new IllegalStateException("unpaired TargetInsn");
                            } catch (IndexOutOfBoundsException unused2) {
                                throw new IllegalStateException("unpaired TargetInsn (dangling)");
                            }
                        }
                        z = true;
                    }
                }
                i33++;
            }
        } while (z);
        ArrayList arrayList3 = rVar.f14403c;
        int i35 = rVar.f14404d + i10 + rVar.f14405e;
        int size6 = arrayList3.size();
        s4.i iVar = new s4.i(size6, i35);
        for (int i36 = 0; i36 < size6; i36++) {
            iVar.e(i36, (s4.h) arrayList3.get(i36));
        }
        iVar.f2570a = false;
        this.f349e = iVar;
        int i37 = s4.s.f14407c;
        int i38 = s4.o.f14400c;
        int length3 = iVar.f2559b.length;
        u3 u3Var = new u3(length3);
        Object obj = u3Var.f7853b;
        for (int i39 = 0; i39 < length3; i39++) {
            s4.h hVar4 = (s4.h) iVar.d(i39);
            if (hVar4 instanceof s4.p) {
                hVar4.e();
                ((s4.p) hVar4).getClass();
                throw null;
            }
            if (hVar4 instanceof s4.q) {
                s4.q qVar = (s4.q) hVar4;
                int iE = hVar4.e();
                qVar.getClass();
                w4.k kVar4 = null;
                int i40 = kVar4.f17466a;
                w4.k kVarD2 = u3.d(null);
                u3Var.a(iE, i40);
                w4.k kVarD3 = ((w4.m) u3Var.f7854c).d(i40);
                if (kVarD3 == null) {
                    zEquals = false;
                } else {
                    y4.c cVar2 = kVarD2.f17467b;
                    cVar2.getClass();
                    y4.c cVar3 = kVarD3.f17467b;
                    cVar3.getClass();
                    zEquals = cVar2.equals(cVar3);
                }
                if (zEquals) {
                    z4 = kVarD2.f17466a == kVarD3.f17466a;
                    if (!z4) {
                        w4.k[] kVarArr = ((w4.m) u3Var.f7854c).f17469b;
                        int length4 = kVarArr.length;
                        int i41 = 0;
                        while (true) {
                            if (i41 >= length4) {
                                kVar = null;
                                break;
                            }
                            kVar = kVarArr[i41];
                            if (kVar != null) {
                                y4.c cVar4 = kVarD2.f17467b;
                                cVar4.getClass();
                                y4.c cVar5 = kVar.f17467b;
                                cVar5.getClass();
                                if (cVar4.equals(cVar5)) {
                                    break;
                                }
                            }
                            i41++;
                        }
                        if (kVar != null) {
                            u3Var.b(iE, 4, kVar);
                        }
                        int i42 = ((int[]) u3Var.f7855d)[i40];
                        if (kVarD3 != null) {
                            new s4.n(iE, 3, kVarD3);
                            throw null;
                        }
                        if (i42 >= 0) {
                            ((s4.n) ((ArrayList) obj).get(i42)).getClass();
                            if (iE == 0) {
                                throw null;
                            }
                        }
                        if (i40 > 0 && (kVarD = ((w4.m) u3Var.f7854c).d(i40 - 1)) != null && kVarD.e()) {
                            u3Var.b(iE, 6, kVarD);
                        }
                        if (kVarD2.e()) {
                            i15 = 1;
                            w4.k kVarD4 = ((w4.m) u3Var.f7854c).d(i40 + 1);
                            if (kVarD4 != null) {
                                u3Var.b(iE, 5, kVarD4);
                            }
                        } else {
                            i15 = 1;
                        }
                        new s4.n(iE, i15, kVarD2);
                        throw null;
                    }
                } else {
                    kVarD2.getClass();
                }
                if (!z4) {
                }
            }
        }
        u3Var.a(Integer.MAX_VALUE, 0);
        ArrayList arrayList4 = (ArrayList) obj;
        int size7 = arrayList4.size();
        int i43 = size7 - u3Var.f7852a;
        if (i43 == 0) {
            int i44 = s4.o.f14400c;
        } else {
            s4.n[] nVarArr = new s4.n[i43];
            if (size7 == i43) {
                arrayList4.toArray(nVarArr);
            } else {
                Iterator it3 = arrayList4.iterator();
                int i45 = 0;
                while (it3.hasNext()) {
                    s4.n nVar = (s4.n) it3.next();
                    if (nVar != null) {
                        nVarArr[i45] = nVar;
                        i45++;
                    }
                }
            }
            Arrays.sort(nVarArr);
            s4.o oVar = new s4.o(i43);
            for (int i46 = 0; i46 < i43; i46++) {
                oVar.e(i46, nVarArr[i46]);
            }
            oVar.f2570a = false;
        }
        s4.a aVar2 = (s4.a) this.f347c;
        int[] iArr2 = (int[]) aVar2.f14294c;
        int length5 = iArr2.length;
        w4.b bVar2 = (w4.b) ((s4.a) aVar2.f14293b).f14293b;
        ArrayList arrayList5 = new ArrayList(length5);
        s4.c cVar6 = s4.c.f14298c;
        int i47 = 0;
        w4.a aVar3 = null;
        w4.a aVar4 = null;
        while (true) {
            s4.a aVar5 = (s4.a) aVar2.f14295d;
            if (i47 >= length5) {
                if (cVar6.f2559b.length != 0) {
                    aVar5.getClass();
                    arrayList5.add(new s4.d(((s4.f[]) aVar5.f14294c)[aVar3.f17443a].e(), ((s4.f[]) aVar5.f14295d)[aVar4.f17443a].e(), cVar6));
                }
                int size8 = arrayList5.size();
                if (size8 == 0) {
                    eVar = s4.e.f14302c;
                } else {
                    s4.e eVar2 = new s4.e(size8);
                    for (int i48 = 0; i48 < size8; i48++) {
                        eVar2.e(i48, (s4.d) arrayList5.get(i48));
                    }
                    eVar2.f2570a = false;
                    eVar = eVar2;
                }
                this.f348d = eVar;
                this.f346b = null;
                this.f347c = null;
                return;
            }
            w4.a aVarH = bVar2.h(iArr2[i47]);
            w4.g gVar = aVarH.f17444b;
            if (gVar.g().f17458a.f17474d.f2559b.length != 0) {
                b5.e eVar3 = aVarH.f17445c;
                int i49 = eVar3.f2568c;
                y4.e eVarC = gVar.g().c();
                int length6 = ((b5.c) eVarC).f2559b.length;
                if (length6 != 0) {
                    aVar = aVar2;
                    iArr = iArr2;
                    int i50 = aVarH.f17446d;
                    if (i50 == -1 && i49 != length6) {
                        break;
                    }
                    i14 = length5;
                    if (i50 != -1 && (i49 != length6 + 1 || i50 != eVar3.e(length6))) {
                        break;
                    }
                    int i51 = 0;
                    while (true) {
                        if (i51 >= length6) {
                            break;
                        }
                        if (eVarC.b(i51).equals(y4.c.f18959v)) {
                            length6 = i51 + 1;
                            break;
                        }
                        i51++;
                    }
                    s4.c cVar7 = new s4.c(length6);
                    int i52 = 0;
                    while (i52 < length6) {
                        cVar7.e(i52, new s4.b(new x4.u(eVarC.b(i52)), ((s4.f[]) aVar5.f14293b)[eVar3.e(i52)].e()));
                        i52++;
                        bVar2 = bVar2;
                    }
                    bVar = bVar2;
                    cVar7.f2570a = false;
                    cVar = cVar7;
                } else {
                    cVar = s4.c.f14298c;
                    aVar = aVar2;
                    iArr = iArr2;
                    i14 = length5;
                    bVar = bVar2;
                }
                if (cVar6.f2559b.length != 0) {
                    if (cVar6.equals(cVar)) {
                        if (aVar3 == null) {
                            throw new NullPointerException("start == null");
                        }
                        aVar5.getClass();
                        if (((s4.f[]) aVar5.f14295d)[aVarH.f17443a].e() - ((s4.f[]) aVar5.f14294c)[aVar3.f17443a].e() <= 65535) {
                            aVar4 = aVarH;
                        }
                    }
                    if (cVar6.f2559b.length != 0) {
                        aVar5.getClass();
                        arrayList5.add(new s4.d(((s4.f[]) aVar5.f14294c)[aVar3.f17443a].e(), ((s4.f[]) aVar5.f14295d)[aVar4.f17443a].e(), cVar6));
                    }
                    aVar3 = aVarH;
                    aVar4 = aVar3;
                    cVar6 = cVar;
                } else {
                    aVar3 = aVarH;
                    aVar4 = aVar3;
                    cVar6 = cVar;
                }
            } else {
                aVar = aVar2;
                iArr = iArr2;
                i14 = length5;
                bVar = bVar2;
            }
            i47++;
            aVar2 = aVar;
            iArr2 = iArr;
            length5 = i14;
            bVar2 = bVar;
        }
        throw new RuntimeException("shouldn't happen: weird successors list");
    }

    public u.f G(u.a aVar) {
        ArrayList arrayList = (ArrayList) this.f348d;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            u.f fVar = (u.f) arrayList.get(i10);
            if (fVar != null && fVar.f15118b == aVar) {
                return fVar;
            }
        }
        u.f fVar2 = new u.f((Context) this.f347c, aVar);
        arrayList.add(fVar2);
        return fVar2;
    }

    public w4.k H() {
        int i10 = ((w4.a) this.f347c).f17446d;
        if (i10 < 0) {
            return null;
        }
        w4.f fVar = (w4.f) ((w4.b) ((s4.a) ((l6.f) this.f349e).f10659d).f14293b).h(i10).f17444b.d(0);
        if (fVar.f17458a.f17471a != 56) {
            return null;
        }
        return fVar.f17460c;
    }

    public boolean R(u.a aVar, MenuItem menuItem) {
        return ((ActionMode.Callback) this.f346b).onActionItemClicked(G(aVar), new v.r((Context) this.f347c, (r0.a) menuItem));
    }

    public boolean S(u.a aVar, v.k kVar) {
        u.f fVarG = G(aVar);
        a0.t tVar = (a0.t) this.f349e;
        Menu a0Var = (Menu) tVar.get(kVar);
        if (a0Var == null) {
            a0Var = new v.a0((Context) this.f347c, kVar);
            tVar.put(kVar, a0Var);
        }
        return ((ActionMode.Callback) this.f346b).onCreateActionMode(fVarG, a0Var);
    }

    public void T(int i10) {
        ListView listView = (ListView) this.f346b;
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, 0.0f, 0.0f, 0);
        listView.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        float f10 = i10;
        MotionEvent motionEventObtain2 = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 2, 0.0f, f10, 0);
        listView.onTouchEvent(motionEventObtain2);
        motionEventObtain2.recycle();
        MotionEvent motionEventObtain3 = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, f10, 0);
        listView.onTouchEvent(motionEventObtain3);
        motionEventObtain3.recycle();
    }

    @Override // w4.e
    public void a(w4.q qVar) {
        w4.p pVar = qVar.f17459b;
        s4.j jVarA = s4.t.a(qVar);
        w4.n nVar = qVar.f17458a;
        if (nVar.f17475e != 6) {
            throw new RuntimeException("Expected BRANCH_THROW got " + nVar.f17475e);
        }
        c((s4.f) this.f348d);
        boolean z = nVar.f17476f;
        x4.a aVar = qVar.f17449e;
        if (z) {
            c(new s4.g(jVarA, pVar, qVar.f17461d, aVar));
            return;
        }
        w4.k kVarH = H();
        w4.l lVarC = l6.f.c(qVar, kVarH);
        boolean z4 = jVarA.f14315e;
        int i10 = nVar.f17471a;
        if ((z4 || i10 == 43) == (kVarH != null)) {
            c((i10 != 41 || jVarA.f14311a == 35) ? new s4.g(jVarA, pVar, lVarC, aVar) : new s4.u(jVarA, pVar, lVarC));
        } else {
            throw new RuntimeException("Insn with result/move-result-pseudo mismatch " + qVar);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008c  */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean, int] */
    @Override // i3.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(byte[] bArr, int i10, int i11, i3.i iVar, u1.f fVar) {
        ArrayList arrayList;
        ?? r22;
        t1.b bVar;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int iE;
        int i17 = 4;
        int i18 = 128;
        u1.q qVar = (u1.q) this.f346b;
        qVar.M(i10 + i11, bArr);
        qVar.O(i10);
        if (((Inflater) this.f349e) == null) {
            this.f349e = new Inflater();
        }
        Inflater inflater = (Inflater) this.f349e;
        String str = u1.f0.f15206a;
        if (qVar.a() > 0 && qVar.k() == 120) {
            u1.q qVar2 = (u1.q) this.f347c;
            if (u1.f0.A(qVar, qVar2, inflater)) {
                qVar.M(qVar2.f15268c, qVar2.f15266a);
            }
        }
        l3.a aVar = (l3.a) this.f348d;
        int i19 = 0;
        aVar.f10553d = 0;
        aVar.f10554e = 0;
        aVar.f10555f = 0;
        aVar.f10556g = 0;
        aVar.f10557h = 0;
        aVar.f10558i = 0;
        u1.q qVar3 = aVar.f10550a;
        qVar3.L(0);
        aVar.f10552c = false;
        ArrayList arrayList2 = new ArrayList();
        while (qVar.a() >= 3) {
            int i20 = qVar.f15268c;
            int iB = qVar.B();
            int I = qVar.I();
            int i21 = qVar.f15267b + I;
            if (i21 > i20) {
                qVar.O(i20);
                arrayList = arrayList2;
                bVar = null;
            } else {
                int[] iArr = aVar.f10551b;
                if (iB != i18) {
                    switch (iB) {
                        case 20:
                            if (I % 5 == 2) {
                                qVar.P(2);
                                Arrays.fill(iArr, i19);
                                int i22 = I / 5;
                                int i23 = 0;
                                while (i23 < i22) {
                                    int iB2 = qVar.B();
                                    int iB3 = qVar.B();
                                    int iB4 = qVar.B();
                                    int iB5 = qVar.B();
                                    int iB6 = qVar.B();
                                    double d10 = iB3;
                                    double d11 = iB4 - 128;
                                    Double.isNaN(d11);
                                    Double.isNaN(d10);
                                    double d12 = iB5 - 128;
                                    Double.isNaN(d12);
                                    Double.isNaN(d10);
                                    Double.isNaN(d11);
                                    Double.isNaN(d12);
                                    Double.isNaN(d10);
                                    iArr[iB2] = u1.f0.g((int) ((d12 * 1.772d) + d10), 0, 255) | (iB6 << 24) | (u1.f0.g((int) ((1.402d * d11) + d10), 0, 255) << 16) | (u1.f0.g((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 0, 255) << 8);
                                    i23++;
                                    i21 = i21;
                                    i22 = i22;
                                    arrayList2 = arrayList2;
                                }
                                i14 = i21;
                                arrayList = arrayList2;
                                aVar.f10552c = true;
                                break;
                            } else {
                                i14 = i21;
                                arrayList = arrayList2;
                                break;
                            }
                        case 21:
                            if (I >= i17) {
                                qVar.P(3);
                                int i24 = I - 4;
                                if (!((qVar.B() & i18) != 0)) {
                                    i15 = qVar3.f15267b;
                                    i16 = qVar3.f15268c;
                                    if (i15 < i16 && i24 > 0) {
                                        int iMin = Math.min(i24, i16 - i15);
                                        qVar.l(i15, iMin, qVar3.f15266a);
                                        qVar3.O(i15 + iMin);
                                    }
                                } else if (i24 >= 7 && (iE = qVar.E()) >= i17) {
                                    aVar.f10557h = qVar.I();
                                    aVar.f10558i = qVar.I();
                                    qVar3.L(iE - i17);
                                    i24 = I - 11;
                                    i15 = qVar3.f15267b;
                                    i16 = qVar3.f15268c;
                                    if (i15 < i16) {
                                        int iMin2 = Math.min(i24, i16 - i15);
                                        qVar.l(i15, iMin2, qVar3.f15266a);
                                        qVar3.O(i15 + iMin2);
                                    }
                                }
                            }
                            i14 = i21;
                            arrayList = arrayList2;
                            break;
                        case 22:
                            if (I >= 19) {
                                aVar.f10553d = qVar.I();
                                aVar.f10554e = qVar.I();
                                qVar.P(11);
                                aVar.f10555f = qVar.I();
                                aVar.f10556g = qVar.I();
                            }
                            i14 = i21;
                            arrayList = arrayList2;
                            break;
                    }
                    i12 = i14;
                    bVar = null;
                } else {
                    arrayList = arrayList2;
                    if (aVar.f10553d == 0 || aVar.f10554e == 0 || aVar.f10557h == 0 || aVar.f10558i == 0 || (i13 = qVar3.f15268c) == 0 || qVar3.f15267b != i13 || !aVar.f10552c) {
                        r22 = 0;
                        bVar = null;
                    } else {
                        qVar3.O(0);
                        int i25 = aVar.f10557h * aVar.f10558i;
                        int[] iArr2 = new int[i25];
                        int i26 = 0;
                        while (i26 < i25) {
                            int iB7 = qVar3.B();
                            if (iB7 != 0) {
                                iArr2[i26] = iArr[iB7];
                                i26++;
                            } else {
                                int iB8 = qVar3.B();
                                if (iB8 != 0) {
                                    int iB9 = ((iB8 & 64) == 0 ? iB8 & 63 : ((iB8 & 63) << 8) | qVar3.B()) + i26;
                                    Arrays.fill(iArr2, i26, iB9, (iB8 & 128) == 0 ? iArr[0] : iArr[qVar3.B()]);
                                    i26 = iB9;
                                }
                            }
                        }
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr2, aVar.f10557h, aVar.f10558i, Bitmap.Config.ARGB_8888);
                        float f10 = aVar.f10555f;
                        float f11 = aVar.f10553d;
                        float f12 = f10 / f11;
                        float f13 = aVar.f10556g;
                        float f14 = aVar.f10554e;
                        bVar = new t1.b(null, null, null, bitmapCreateBitmap, f13 / f14, 0, 0, f12, 0, Integer.MIN_VALUE, -3.4028235E38f, aVar.f10557h / f11, aVar.f10558i / f14, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
                        r22 = 0;
                    }
                    aVar.f10553d = r22;
                    aVar.f10554e = r22;
                    aVar.f10555f = r22;
                    aVar.f10556g = r22;
                    aVar.f10557h = r22;
                    aVar.f10558i = r22;
                    qVar3.L(r22);
                    aVar.f10552c = r22;
                    i12 = i21;
                }
                qVar.O(i12);
            }
            if (bVar != null) {
                arrayList.add(bVar);
            }
            arrayList2 = arrayList;
            i17 = 4;
            i18 = 128;
            i19 = 0;
        }
        fVar.accept(new i3.a(-9223372036854775807L, -9223372036854775807L, arrayList2));
    }

    public void c(s4.h hVar) {
        ((s4.r) ((kf.d) this.f346b).f10287c).a(hVar);
    }

    @Override // w4.e
    public void d(w4.h hVar) {
        w4.p pVar = hVar.f17459b;
        s4.j jVarA = s4.t.a(hVar);
        w4.n nVar = hVar.f17458a;
        int i10 = nVar.f17471a;
        if (nVar.f17475e != 1) {
            throw new RuntimeException("shouldn't happen");
        }
        x4.a aVar = hVar.f17449e;
        w4.k kVar = hVar.f17460c;
        if (i10 != 3) {
            c(new s4.g(jVarA, pVar, l6.f.c(hVar, kVar), aVar));
            return;
        }
        l6.f fVar = (l6.f) this.f349e;
        if (fVar.f10658c) {
            return;
        }
        int i11 = (fVar.f10656a - fVar.f10657b) + ((x4.j) aVar).f18126a;
        y4.c cVar = kVar.f17467b;
        cVar.getClass();
        c(new s4.u(jVarA, pVar, w4.l.h(kVar, w4.k.d(i11, cVar))));
    }

    @Override // i3.j
    public /* synthetic */ i3.d e(int i10, int i11, byte[] bArr) {
        return g.b.a(this, bArr, i11);
    }

    public void e0(int i10, Object obj) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i10;
        messageObtain.obj = obj;
        ((com.yunpan.appmanage.carsdk.u) this.f346b).sendMessage(messageObtain);
    }

    public void g(String str, fa.z zVar) {
        this.f349e = zVar;
        u9.d.f15554a.execute(new fa.u(this, str, 6));
    }

    public void g0() {
        int iB;
        ViewPager2 viewPager2 = (ViewPager2) this.f349e;
        int i10 = R.id.accessibilityActionPageLeft;
        x0.b1.s(R.id.accessibilityActionPageLeft, viewPager2);
        x0.b1.s(R.id.accessibilityActionPageRight, viewPager2);
        x0.b1.s(R.id.accessibilityActionPageUp, viewPager2);
        x0.b1.s(R.id.accessibilityActionPageDown, viewPager2);
        if (viewPager2.getAdapter() == null || (iB = viewPager2.getAdapter().b()) == 0 || !viewPager2.f2486s) {
            return;
        }
        int orientation = viewPager2.getOrientation();
        m4.j jVar = (m4.j) this.f347c;
        m4.j jVar2 = (m4.j) this.f346b;
        if (orientation != 0) {
            if (viewPager2.f2474d < iB - 1) {
                x0.b1.u(viewPager2, new y0.f(R.id.accessibilityActionPageDown), jVar2);
            }
            if (viewPager2.f2474d > 0) {
                x0.b1.u(viewPager2, new y0.f(R.id.accessibilityActionPageUp), jVar);
                return;
            }
            return;
        }
        boolean z = viewPager2.f2477g.getLayoutDirection() == 1;
        int i11 = z ? R.id.accessibilityActionPageLeft : R.id.accessibilityActionPageRight;
        if (z) {
            i10 = R.id.accessibilityActionPageRight;
        }
        if (viewPager2.f2474d < iB - 1) {
            x0.b1.u(viewPager2, new y0.f(i11), jVar2);
        }
        if (viewPager2.f2474d > 0) {
            x0.b1.u(viewPager2, new y0.f(i10), jVar);
        }
    }

    @Override // w4.e
    public void i(w4.r rVar) {
        w4.p pVar = rVar.f17459b;
        s4.j jVarA = s4.t.a(rVar);
        if (rVar.f17458a.f17475e != 6) {
            throw new RuntimeException("shouldn't happen");
        }
        w4.k kVarH = H();
        if (jVarA.f14315e == (kVarH != null)) {
            c((s4.f) this.f348d);
            c(new s4.u(jVarA, pVar, l6.f.c(rVar, kVarH)));
        } else {
            throw new RuntimeException("Insn with result/move-result-pseudo mismatch" + rVar);
        }
    }

    @Override // w4.e
    public void j(w4.i iVar) {
        s4.h uVar;
        w4.n nVar = iVar.f17458a;
        int i10 = nVar.f17471a;
        if (i10 == 54 || i10 == 56) {
            return;
        }
        s4.j jVarA = s4.t.a(iVar);
        w4.k kVar = iVar.f17460c;
        w4.p pVar = iVar.f17459b;
        int i11 = nVar.f17475e;
        if (i11 == 1 || i11 == 2) {
            uVar = new s4.u(jVarA, pVar, l6.f.c(iVar, kVar));
        } else {
            if (i11 == 3) {
                return;
            }
            if (i11 != 4) {
                if (i11 != 6) {
                    throw new RuntimeException("shouldn't happen");
                }
                uVar = new s4.u(jVarA, pVar, l6.f.c(iVar, kVar));
            } else {
                uVar = new s4.v(jVarA, pVar, l6.f.c(iVar, kVar), ((s4.f[]) ((s4.a) ((l6.f) this.f349e).f10660e).f14293b)[((w4.a) this.f347c).f17445c.e(1)]);
            }
        }
        c(uVar);
    }

    @Override // i3.j
    public /* synthetic */ void reset() {
    }

    @Override // ha.wd
    public void t() {
        int i10 = ActivityAdb.G;
        ActivityAdb activityAdb = (ActivityAdb) this.f349e;
        if (pa.e.b(activityAdb.A)) {
            com.yunpan.appmanage.util.a0.t("疑是乱用，拒绝您使用此功能");
        } else {
            ActivityAdb.y(activityAdb, (String) this.f346b, (String) this.f348d);
        }
    }

    public String toString() {
        switch (this.f345a) {
            case 3:
                return "horizontal=" + ((androidx.leanback.widget.x0) this.f347c) + "; vertical=" + ((androidx.leanback.widget.x0) this.f346b);
            case 7:
                StringBuilder sb2 = new StringBuilder("StreamMap with indices of ");
                sb2.append(((int[]) this.f346b).length);
                sb2.append(" folders, offsets of ");
                sb2.append(((long[]) this.f347c).length);
                sb2.append(" packed streams, first files of ");
                sb2.append(((int[]) this.f348d).length);
                sb2.append(" folders and folder indices for ");
                return android.support.v4.media.session.a.s(sb2, ((int[]) this.f349e).length, " files");
            default:
                return super.toString();
        }
    }

    public void v(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((a0.t) this.f347c).get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i10 = 0; i10 < size; i10++) {
                v(arrayList2.get(i10), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public /* synthetic */ w0(Object obj, Object obj2, Object obj3, Object obj4, int i10) {
        this.f345a = i10;
        this.f346b = obj;
        this.f347c = obj2;
        this.f348d = obj3;
        this.f349e = obj4;
    }

    public w0(int i10) {
        this.f345a = i10;
        switch (i10) {
            case 5:
                this.f346b = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 5);
                break;
            case 6:
                this.f346b = new a0.e();
                this.f347c = new SparseArray();
                this.f348d = new a0.k();
                this.f349e = new a0.e();
                break;
            case 7:
            default:
                androidx.leanback.widget.x0 x0Var = new androidx.leanback.widget.x0();
                this.f346b = x0Var;
                androidx.leanback.widget.x0 x0Var2 = new androidx.leanback.widget.x0();
                this.f347c = x0Var2;
                this.f348d = x0Var2;
                this.f349e = x0Var;
                break;
            case 8:
                this.f346b = new d0.d(10);
                this.f347c = new a0.t(0);
                this.f348d = new ArrayList();
                this.f349e = new HashSet();
                break;
            case 9:
                this.f346b = new u1.q();
                this.f347c = new u1.q();
                this.f348d = new l3.a();
                break;
        }
    }

    public w0(Typeface typeface, h1.b bVar) {
        int i10;
        int i11;
        this.f345a = 2;
        this.f349e = typeface;
        this.f346b = bVar;
        this.f348d = new androidx.emoji2.text.t(1024);
        int iA = bVar.a(6);
        if (iA != 0) {
            int i12 = iA + bVar.f6320a;
            i10 = ((ByteBuffer) bVar.f6323d).getInt(((ByteBuffer) bVar.f6323d).getInt(i12) + i12);
        } else {
            i10 = 0;
        }
        this.f347c = new char[i10 * 2];
        int iA2 = bVar.a(6);
        if (iA2 != 0) {
            int i13 = iA2 + bVar.f6320a;
            i11 = ((ByteBuffer) bVar.f6323d).getInt(((ByteBuffer) bVar.f6323d).getInt(i13) + i13);
        } else {
            i11 = 0;
        }
        for (int i14 = 0; i14 < i11; i14++) {
            androidx.emoji2.text.p pVar = new androidx.emoji2.text.p(this, i14);
            h1.a aVarC = pVar.c();
            int iA3 = aVarC.a(4);
            Character.toChars(iA3 != 0 ? ((ByteBuffer) aVarC.f6323d).getInt(iA3 + aVarC.f6320a) : 0, (char[]) this.f347c, i14 * 2);
            s1.g.j("invalid metadata codepoint length", pVar.b() > 0);
            ((androidx.emoji2.text.t) this.f348d).a(pVar, 0, pVar.b() - 1);
        }
    }

    public w0(s4.r rVar, s4.a aVar) {
        this.f345a = 11;
        if (rVar != null) {
            this.f346b = rVar;
            this.f347c = aVar;
            this.f348d = null;
            this.f349e = null;
            return;
        }
        throw new NullPointerException("unprocessedInsns == null");
    }

    public w0(Context context, ActionMode.Callback callback) {
        this.f345a = 13;
        this.f347c = context;
        this.f346b = callback;
        this.f348d = new ArrayList();
        this.f349e = new a0.t(0);
    }

    public w0(u7.y0 y0Var, v1.i iVar, v1.i iVar2, v1.i iVar3) {
        Object objM;
        this.f345a = 15;
        if (y0Var != null) {
            objM = u7.g0.m(y0Var);
        } else {
            u7.e0 e0Var = u7.g0.f15471b;
            objM = u7.y0.f15549e;
        }
        this.f346b = objM;
        this.f347c = iVar;
        this.f348d = iVar2;
        this.f349e = iVar3;
    }

    public w0(l6.f fVar, kf.d dVar) {
        this.f345a = 12;
        this.f349e = fVar;
        this.f346b = dVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [a2.v0, java.lang.Object] */
    public w0(AudioTrack audioTrack, a1.i iVar) {
        this.f345a = 0;
        this.f346b = audioTrack;
        this.f347c = iVar;
        Handler handlerK = u1.f0.k(null);
        this.f348d = handlerK;
        ?? r02 = new AudioRouting.OnRoutingChangedListener() { // from class: a2.v0
            @Override // android.media.AudioRouting.OnRoutingChangedListener
            public final void onRoutingChanged(AudioRouting audioRouting) {
                w0 w0Var = this.f327a;
                if (((v0) w0Var.f349e) == null) {
                    return;
                }
                u1.a.h().execute(new c0(w0Var, 2, audioRouting));
            }
        };
        this.f349e = r02;
        audioTrack.addOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) r02, handlerK);
    }

    public w0(ActivityAdb activityAdb, String str, String str2, String str3) {
        this.f345a = 14;
        this.f349e = activityAdb;
        this.f346b = str;
        this.f347c = str2;
        this.f348d = str3;
    }

    public w0(f2.j1 j1Var, boolean[] zArr) {
        this.f345a = 4;
        this.f346b = j1Var;
        this.f347c = zArr;
        int i10 = j1Var.f5299a;
        this.f348d = new boolean[i10];
        this.f349e = new boolean[i10];
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public w0(ViewPager2 viewPager2) {
        this(10, false);
        this.f345a = 10;
        this.f349e = viewPager2;
        this.f346b = new m4.j(this, 0 == true ? 1 : 0);
        this.f347c = new m4.j(this, 1);
    }
}
