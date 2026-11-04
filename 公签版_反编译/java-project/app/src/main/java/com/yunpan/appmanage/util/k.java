package com.yunpan.appmanage.util;

import a2.w0;
import android.app.AppOpsManager;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.ImageData;
import com.yunpan.appmanage.bean.PermissionBean;
import com.yunpan.appmanage.bean.SignatureBean;
import com.yunpan.appmanage.bean.WpVideoStreamBean;
import com.yunpan.appmanage.httpserver.HttpMdns;
import com.yunpan.appmanage.httpserver.NsdHelper;
import com.yunpan.appmanage.httpserver.RemoteServer;
import com.yunpan.appmanage.service.StartService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import x9.n5;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: u0, reason: collision with root package name */
    public static final DecimalFormat f4034u0 = new DecimalFormat("0.00");
    public n5 A;
    public boolean B;
    public boolean C;
    public boolean D;
    public RemoteServer E;
    public boolean F;
    public long G;
    public String H;
    public WpVideoStreamBean I;
    public String J;
    public boolean K;
    public boolean L;
    public String M;
    public String N;
    public String O;
    public String P;
    public String Q;
    public int R;
    public int S;
    public int T;
    public boolean U;
    public boolean V;
    public String W;
    public String X;
    public String Y;
    public String Z;

    /* renamed from: a, reason: collision with root package name */
    public ContextWrapper f4035a;

    /* renamed from: a0, reason: collision with root package name */
    public String f4036a0;

    /* renamed from: b, reason: collision with root package name */
    public PackageManager f4037b;

    /* renamed from: b0, reason: collision with root package name */
    public final SimpleDateFormat f4038b0;

    /* renamed from: c, reason: collision with root package name */
    public String f4039c;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f4040c0;

    /* renamed from: d, reason: collision with root package name */
    public String f4041d;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f4042d0;

    /* renamed from: e, reason: collision with root package name */
    public String f4043e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f4044e0;

    /* renamed from: f0, reason: collision with root package name */
    public final ExecutorService f4046f0;

    /* renamed from: g0, reason: collision with root package name */
    public final ExecutorService f4048g0;

    /* renamed from: h0, reason: collision with root package name */
    public final ExecutorService f4050h0;

    /* renamed from: i, reason: collision with root package name */
    public w5.e f4051i;

    /* renamed from: i0, reason: collision with root package name */
    public String f4052i0;

    /* renamed from: j0, reason: collision with root package name */
    public int f4054j0;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f4055k;

    /* renamed from: k0, reason: collision with root package name */
    public long f4056k0;
    public boolean l;

    /* renamed from: l0, reason: collision with root package name */
    public ArrayList f4057l0;

    /* renamed from: m, reason: collision with root package name */
    public boolean f4058m;

    /* renamed from: m0, reason: collision with root package name */
    public ArrayList f4059m0;

    /* renamed from: n, reason: collision with root package name */
    public int f4060n;

    /* renamed from: n0, reason: collision with root package name */
    public ArrayList f4061n0;

    /* renamed from: o, reason: collision with root package name */
    public String f4062o;

    /* renamed from: o0, reason: collision with root package name */
    public ArrayList f4063o0;

    /* renamed from: p, reason: collision with root package name */
    public String f4064p;

    /* renamed from: p0, reason: collision with root package name */
    public ArrayList f4065p0;

    /* renamed from: q, reason: collision with root package name */
    public SignatureBean f4066q;

    /* renamed from: q0, reason: collision with root package name */
    public ArrayList f4067q0;
    public String r;

    /* renamed from: r0, reason: collision with root package name */
    public HttpMdns f4068r0;

    /* renamed from: s, reason: collision with root package name */
    public String f4069s;
    public NsdHelper s0;

    /* renamed from: t, reason: collision with root package name */
    public String f4070t;

    /* renamed from: t0, reason: collision with root package name */
    public AppOpsManager f4071t0;

    /* renamed from: u, reason: collision with root package name */
    public HashMap f4072u;

    /* renamed from: v, reason: collision with root package name */
    public HashSet f4073v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f4074w;

    /* renamed from: x, reason: collision with root package name */
    public String f4075x;

    /* renamed from: y, reason: collision with root package name */
    public ImageData f4076y;
    public String z;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4045f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f4047g = true;

    /* renamed from: h, reason: collision with root package name */
    public boolean f4049h = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4053j = false;

    public k() {
        this.f4055k = Process.myUid() % 100000 == 1000;
        this.l = false;
        this.f4058m = false;
        this.f4060n = 0;
        this.f4062o = "";
        this.f4064p = "";
        this.f4066q = null;
        this.r = "";
        this.f4069s = "";
        this.f4070t = "";
        this.f4072u = new HashMap();
        this.f4073v = new HashSet();
        this.f4074w = false;
        this.f4076y = null;
        this.z = "";
        this.B = false;
        this.C = Build.VERSION.SDK_INT < 23;
        this.D = false;
        this.E = null;
        this.F = false;
        this.G = 0L;
        this.H = "";
        this.J = "";
        this.K = false;
        this.L = true;
        this.M = "";
        this.N = "";
        this.O = "";
        this.P = "";
        this.Q = "";
        this.R = 80;
        this.S = 240;
        this.T = 135;
        this.U = true;
        this.V = false;
        this.W = "https://yun.123pan.cn";
        this.X = "https://api.123pan.cn";
        this.Y = "";
        this.Z = "";
        this.f4036a0 = "";
        this.f4038b0 = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        this.f4040c0 = false;
        this.f4042d0 = false;
        this.f4044e0 = false;
        this.f4046f0 = Executors.newFixedThreadPool(1);
        this.f4048g0 = Executors.newFixedThreadPool(5);
        this.f4050h0 = Executors.newFixedThreadPool(1);
        this.f4052i0 = "";
        this.f4054j0 = 9898;
        this.f4056k0 = 0L;
        this.f4057l0 = new ArrayList();
        this.f4059m0 = new ArrayList();
        this.f4061n0 = new ArrayList();
        this.f4063o0 = new ArrayList();
        this.f4065p0 = new ArrayList();
        this.f4067q0 = new ArrayList();
        this.f4071t0 = null;
    }

    public static int d(Context context, int i10) {
        return Math.round(i10 * context.getResources().getDisplayMetrics().density);
    }

    public static void e(File file) throws InterruptedException {
        for (int i10 = 0; i10 < 5 && file.exists(); i10++) {
            file.delete();
            try {
                Thread.sleep(333L);
            } catch (Exception unused) {
            }
        }
    }

    public static k f() {
        return j.f4033a;
    }

    public static boolean i(String str) {
        fa.h0 h0Var = fa.g0.f5682a;
        if (!h0Var.d().isEmpty() && str.startsWith(h0Var.d())) {
            return true;
        }
        k kVar = j.f4033a;
        if (kVar.f4073v.isEmpty()) {
            return false;
        }
        Iterator it = kVar.f4073v.iterator();
        while (it.hasNext()) {
            if (str.startsWith((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static void j(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            String str = (String) arrayList.get(size);
            if (str.startsWith(".")) {
                arrayList.set(size, str.substring(1));
            }
            if (str.isEmpty()) {
                arrayList.remove(size);
            }
        }
    }

    public static void m(Context context, String str) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 18 || XXPermissions.isGrantedPermission(context, PermissionLists.getBindNotificationListenerServicePermission(StartService.class))) {
            return;
        }
        wa.t.f17728a.g(System.currentTimeMillis());
        fa.b0.f5652a.getClass();
        if (w0.M() || i10 < 28) {
            j.f4033a.f4048g0.submit(new i(context, 0));
        } else {
            a0.v("请授予管家【通知使用权】", false);
            XXPermissions.with(context).permission(PermissionLists.getBindNotificationListenerServicePermission(StartService.class)).request(new b8.a(str, 4));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r11v33 */
    public final String a(String str, int i10, String str2) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 19) {
            return "已允许";
        }
        if (this.f4071t0 == null) {
            this.f4071t0 = m0.h.g(this.f4035a.getSystemService("appops"));
        }
        String strC = da.b.c("android:", str2.trim().toLowerCase().replace("android.permission.", ""));
        try {
            str = i11 >= 29 ? this.f4071t0.unsafeCheckOpNoThrow(strC, i10, str) : this.f4071t0.checkOpNoThrow(strC, i10, str);
        } catch (Exception e7) {
            if (!("" + e7.getMessage()).contains("does not have")) {
                return "";
            }
            w0 w0Var = fa.b0.f5652a;
            StringBuilder sb2 = new StringBuilder();
            android.support.v4.media.session.a.C(sb2, this.f4047g ? "cmd " : "", "appops get ", str, " ");
            sb2.append(str2.substring(str2.lastIndexOf(".") + 1));
            String string = sb2.toString();
            w0Var.getClass();
            fa.a0 a0VarQ = w0.q(2000L, string);
            String strA = a0VarQ.a();
            a0VarQ.a();
            str = strA.contains(": allow") ? 0 : strA.contains(": deny") ? 5 : strA.contains(": ignore") ? 1 : strA.contains(": errored") ? 2 : strA.contains(": default") ? 3 : strA.contains(": foreground") ? 4 : 6;
        } catch (Throwable unused) {
            return "";
        }
        return (str == 0 || str == 4) ? "已允许" : (str == 1 || str == 2 || str != 3) ? "" : "默认";
    }

    public final void b(String str, int i10, PermissionBean permissionBean) throws Exception {
        String strTrim;
        int iUnsafeCheckOpNoThrow;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 19) {
            permissionBean.str_status = "不知道";
            return;
        }
        if (this.f4071t0 == null) {
            this.f4071t0 = m0.h.g(this.f4035a.getSystemService("appops"));
        }
        if (permissionBean.permissionName_ops.isEmpty()) {
            strTrim = permissionBean.permissionName.trim();
            if (strTrim.startsWith("android.permission.")) {
                strTrim = strTrim.substring(19);
            }
        } else {
            strTrim = permissionBean.permissionName_ops;
        }
        String lowerCase = strTrim.trim().toLowerCase();
        try {
            if (i11 >= 29) {
                iUnsafeCheckOpNoThrow = this.f4071t0.unsafeCheckOpNoThrow("android:" + lowerCase, i10, str);
            } else {
                iUnsafeCheckOpNoThrow = this.f4071t0.checkOpNoThrow("android:" + lowerCase, i10, str);
            }
            if (permissionBean.permissionName_ops.isEmpty()) {
                permissionBean.permissionName_ops = lowerCase.toUpperCase();
            }
        } catch (Exception e7) {
            try {
                if (!lowerCase.equals("op_read_phone_state")) {
                    throw e7;
                }
                permissionBean.permissionName_ops = "READ_PHONE_STATE";
                iUnsafeCheckOpNoThrow = Build.VERSION.SDK_INT >= 29 ? this.f4071t0.unsafeCheckOpNoThrow("android:read_phone_state", i10, str) : this.f4071t0.checkOpNoThrow("android:read_phone_state", i10, str);
                if (permissionBean.permissionName_ops.isEmpty()) {
                    permissionBean.permissionName_ops = "read_phone_state".toUpperCase();
                }
            } catch (Exception e10) {
                String strZ = g.b.z(e10, new StringBuilder(""));
                if (lowerCase.equals("op_read_phone_state")) {
                    strZ = "does not have";
                }
                if (lowerCase.equals("request_install_packages")) {
                    strZ = "does not have";
                }
                if (!strZ.contains("does not have")) {
                    if (permissionBean.permissionName_ops.isEmpty()) {
                        return;
                    }
                    permissionBean.str_status = "未设置";
                    return;
                }
                if (permissionBean.permissionName_ops.isEmpty()) {
                    permissionBean.permissionName_ops = lowerCase.toUpperCase();
                }
                w0 w0Var = fa.b0.f5652a;
                StringBuilder sb2 = new StringBuilder();
                android.support.v4.media.session.a.C(sb2, this.f4047g ? "cmd " : "", "appops get ", str, " ");
                sb2.append(permissionBean.permissionName_ops);
                String string = sb2.toString();
                w0Var.getClass();
                String strA = w0.q(2000L, string).a();
                iUnsafeCheckOpNoThrow = strA.contains(": allow") ? 0 : strA.contains(": deny") ? 5 : strA.contains(": ignore") ? 1 : strA.contains(": errored") ? 2 : strA.contains(": default") ? 3 : strA.contains(": foreground") ? 4 : 6;
            }
        }
        permissionBean.ops_is_open = false;
        if (iUnsafeCheckOpNoThrow == -1) {
            if (!permissionBean.pms_is_open) {
                permissionBean.str_status = "未设置";
                return;
            } else {
                permissionBean.ops_is_open = true;
                permissionBean.str_status = "已允许";
                return;
            }
        }
        if (iUnsafeCheckOpNoThrow == 0 || iUnsafeCheckOpNoThrow == 4) {
            permissionBean.ops_is_open = true;
            permissionBean.str_status = "已允许";
            return;
        }
        if (iUnsafeCheckOpNoThrow == 1) {
            permissionBean.str_status = "忽略";
            return;
        }
        if (iUnsafeCheckOpNoThrow == 2) {
            permissionBean.str_status = "错误";
            return;
        }
        if (iUnsafeCheckOpNoThrow == 3) {
            permissionBean.str_status = "默认";
        } else if (iUnsafeCheckOpNoThrow == 5) {
            permissionBean.str_status = "已拒绝";
        } else {
            permissionBean.str_status = "未设置";
        }
    }

    public final void c(String str) {
        ((ClipboardManager) this.f4035a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(AnnotatedPrivateKey.LABEL, str));
    }

    public final String g() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int ipAddress = ((WifiManager) this.f4035a.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getIpAddress();
        if (ipAddress != 0) {
            linkedHashSet.add(String.format("%d.%d.%d.%d", Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255)));
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                String displayName = networkInterfaceNextElement.getDisplayName();
                if (displayName.equals("eth0") || displayName.equals("wlan0")) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                            linkedHashSet.add(inetAddressNextElement.getHostAddress());
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        if (linkedHashSet.isEmpty()) {
            try {
                Enumeration<NetworkInterface> networkInterfaces2 = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces2.hasMoreElements()) {
                    Enumeration<InetAddress> inetAddresses2 = networkInterfaces2.nextElement().getInetAddresses();
                    while (inetAddresses2.hasMoreElements()) {
                        InetAddress inetAddressNextElement2 = inetAddresses2.nextElement();
                        if (!inetAddressNextElement2.isLoopbackAddress() && (inetAddressNextElement2 instanceof Inet4Address)) {
                            linkedHashSet.add(inetAddressNextElement2.getHostAddress());
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
        String str = linkedHashSet.isEmpty() ? "0.0.0.0" : (linkedHashSet.contains("198.18.34.15") && v.f4106a.I) ? "198.18.34.15" : (String) linkedHashSet.iterator().next();
        if (!str.equals(this.f4052i0)) {
            this.f4052i0 = str;
            o();
        }
        return this.f4052i0;
    }

    public final void h(AppStart appStart) {
        this.f4035a = appStart;
        this.f4037b = AppStart.f3772h.getPackageManager();
        this.f4039c = this.f4035a.getResources().getString(R.string.app_name);
        this.f4041d = appStart.getPackageName();
        this.Q = appStart.getCacheDir().getPath();
        boolean zG = a0.g("/system/bin/cmd");
        this.f4047g = zG;
        if (!zG) {
            this.f4047g = a0.g("/system/xbin/cmd");
        }
        p();
        File file = new File(this.f4035a.getFilesDir().getPath() + "/share_id");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Exception unused) {
            }
        }
        j.f4033a.f4056k0 = file.lastModified();
        try {
            String path = this.f4035a.getExternalCacheDir().getParentFile().getParentFile().getParentFile().getParentFile().getPath();
            this.M = path;
            if (path.startsWith("/data/")) {
                this.M = "";
            }
        } catch (Exception unused2) {
        }
        try {
            this.f4053j = this.f4037b.checkPermission("android.permission.DEVICE_POWER", this.f4041d) == 0;
        } catch (Exception unused3) {
        }
        if (new Intent().setAction("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", this.f4041d, null)).resolveActivity(this.f4037b) != null) {
            this.D = true;
        } else {
            this.D = false;
        }
        String strTrim = Build.DISPLAY.trim();
        int iIndexOf = strTrim.indexOf(" ");
        if (iIndexOf > 0) {
            strTrim = strTrim.substring(0, iIndexOf);
        }
        this.J = "Mozilla/5.0 (Linux; Android " + Build.VERSION.RELEASE + "; " + Build.MODEL + " Build/" + strTrim + ") AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36";
        l();
    }

    public final void k() {
        w5.e eVar = (w5.e) new w5.e().w(new o5.x(8), true);
        int i10 = this.R;
        this.f4051i = (w5.e) ((w5.e) ((w5.e) eVar.o(i10, i10)).t(new z5.d(Long.valueOf(v.f4106a.f4122h0)))).g(R.drawable.tp_cj);
    }

    public final void l() {
        w wVar = v.f4106a;
        ArrayList arrayList = new ArrayList(Arrays.asList(wVar.f4153y0.split("\\|")));
        this.f4057l0 = arrayList;
        j(arrayList);
        ArrayList arrayList2 = new ArrayList(Arrays.asList(wVar.D0.split("\\|")));
        this.f4059m0 = arrayList2;
        j(arrayList2);
        ArrayList arrayList3 = new ArrayList(Arrays.asList(wVar.f4154z0.split("\\|")));
        this.f4061n0 = arrayList3;
        j(arrayList3);
        ArrayList arrayList4 = new ArrayList(Arrays.asList(wVar.A0.split("\\|")));
        this.f4065p0 = arrayList4;
        j(arrayList4);
        ArrayList arrayList5 = new ArrayList(Arrays.asList(wVar.B0.split("\\|")));
        this.f4067q0 = arrayList5;
        j(arrayList5);
        ArrayList arrayList6 = new ArrayList(Arrays.asList(wVar.C0.split("\\|")));
        this.f4063o0 = arrayList6;
        j(arrayList6);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0033 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n(Bitmap bitmap, String str) throws IOException {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(this.f4035a.getFilesDir().getPath() + "/" + str);
        } catch (Exception unused) {
        }
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
        } catch (Exception unused2) {
            fileOutputStream2 = fileOutputStream;
            fileOutputStream = fileOutputStream2;
            if (fileOutputStream != null) {
            }
            bitmap.recycle();
        }
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (Exception unused3) {
            }
        }
        bitmap.recycle();
    }

    public final void o() {
        StringBuilder sb2 = new StringBuilder("http://");
        sb2.append(this.f4052i0);
        sb2.append(":");
        String strS = android.support.v4.media.session.a.s(sb2, this.f4054j0, "/");
        try {
            int iD = d(this.f4035a, 320);
            n(a9.o.J(iD, iD, strS), "qrCode_share");
            n(a9.o.J(iD, iD, strS + "url.html"), "qrCode_url");
            n(a9.o.J(iD, iD, strS + "cmd.html"), "qrCode_cmd");
        } catch (Exception unused) {
        }
    }

    public final void p() {
        int i10 = v.f4106a.f4137p0;
        if (i10 == 0) {
            this.R = 80;
            this.S = 240;
            this.T = 135;
        } else if (i10 == 1) {
            this.R = CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ;
            this.S = 320;
            this.T = 180;
        } else {
            this.R = 320;
            this.S = 480;
            this.T = SubsamplingScaleImageView.ORIENTATION_270;
        }
    }
}
