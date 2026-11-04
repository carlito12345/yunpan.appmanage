package ua;

import android.content.ComponentName;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.provider.Settings;
import android.widget.TextView;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.httpserver.HttpMdns;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.ui.ActivityNezha;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public final /* synthetic */ class b2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15579a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityHome f15580b;

    public /* synthetic */ b2(ActivityHome activityHome, int i10) {
        this.f15579a = i10;
        this.f15580b = activityHome;
    }

    private final void a() throws IllegalAccessException, Resources.NotFoundException, IOException, IllegalArgumentException, InvocationTargetException {
        List<ApplicationInfo> installedApplications;
        AppBean appBean;
        int i10 = ActivityHome.O;
        ActivityHome activityHome = this.f15580b;
        activityHome.getClass();
        ActivityHome.G();
        MyDb.get().getAppDao().deleteAll();
        try {
            installedApplications = Build.VERSION.SDK_INT >= 24 ? com.yunpan.appmanage.util.j.f4033a.f4037b.getInstalledApplications(8192) : com.yunpan.appmanage.util.j.f4033a.f4037b.getInstalledApplications(8192);
            try {
                if (installedApplications.size() < 3) {
                    installedApplications = com.yunpan.appmanage.util.j.f4033a.f4037b.getInstalledApplications(1);
                }
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            installedApplications = null;
        }
        com.yunpan.appmanage.carsdk.u uVar = activityHome.M;
        if (installedApplications == null) {
            uVar.sendEmptyMessage(124);
            return;
        }
        Iterator<ApplicationInfo> it = installedApplications.iterator();
        while (it.hasNext()) {
            try {
                appBean = new AppBean(it.next());
            } catch (Exception e7) {
                e7.printStackTrace();
                appBean = null;
            }
            if (appBean != null) {
                String str = appBean.pack;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                if (!str.equals(kVar.f4041d)) {
                    try {
                        MyDb.get().getAppDao().insert(appBean);
                        if (kVar.f4066q == null && appBean.uid % 100000 == 1000 && appBean.isSystem) {
                            kVar.f4066q = d.b.v(appBean.pack);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
        kVar2.B = true;
        if (installedApplications.size() < 3) {
            uVar.sendEmptyMessage(124);
            return;
        }
        uVar.sendEmptyMessage(123);
        if (kVar2.f4055k && Build.VERSION.SDK_INT >= 24 && android.support.v4.media.session.a.k("com.gj.openfile") == null) {
            try {
                InputStream inputStreamOpenRawResource = activityHome.A.getResources().openRawResource(R.raw.openfilecj);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(activityHome.A.getCacheDir() + "/openfilecj.apk");
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
                        ma.h.f11033a.d(activityHome.A.getCacheDir() + "/openfilecj.apk");
                        fileOutputStream.close();
                        inputStreamOpenRawResource.close();
                    } catch (Throwable th2) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                            } catch (Exception unused3) {
                            }
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    if (inputStreamOpenRawResource != null) {
                        try {
                            inputStreamOpenRawResource.close();
                        } catch (Throwable th5) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                            } catch (Exception unused4) {
                            }
                        }
                    }
                    throw th4;
                }
            } catch (Exception unused5) {
            }
        }
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        if (!wVar.X.isEmpty() && MyDb.get().getAppDao().get_appBean(wVar.X) == null) {
            wVar.X = "";
            try {
                wVar.f4123i.m("InstallSource", "");
            } catch (Exception unused6) {
            }
            wVar.m();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(wVar.f4107a);
        File file = new File(g.b.l(com.yunpan.appmanage.util.j.f4033a.f4041d, ".png", sb2));
        if (!file.exists()) {
            try {
                Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(activityHome.getResources(), R.drawable.apk);
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        bitmapDecodeResource.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream2);
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                    } catch (Throwable th6) {
                        try {
                            fileOutputStream2.close();
                        } catch (Throwable th7) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th6, th7);
                            } catch (Exception unused7) {
                            }
                        }
                        throw th6;
                    }
                } finally {
                    bitmapDecodeResource.recycle();
                }
            } catch (Exception unused8) {
            }
        }
        for (File file2 : new File(com.yunpan.appmanage.util.v.f4106a.f4107a).listFiles()) {
            String name = file2.getName();
            if (name.endsWith(".png")) {
                String strL = android.support.v4.media.session.a.l(4, 0, name);
                if (android.support.v4.media.session.a.k(strL) == null && !strL.equals(com.yunpan.appmanage.util.j.f4033a.f4041d)) {
                    file2.delete();
                }
            } else {
                file2.delete();
            }
        }
        uVar.sendEmptyMessageDelayed(125, 6666L);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:(1:212)(2:213|(1:215)(2:307|(1:232)(2:248|230)))|216|272|217|(2:223|309)(2:219|308)) */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, NoSuchMethodException, PackageManager.NameNotFoundException, IOException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i10;
        String str;
        Response response;
        ResponseBody responseBodyBody;
        ActivityHome activityHome = this.f15580b;
        int i11 = 1;
        switch (this.f15579a) {
            case 0:
                int i12 = ActivityHome.O;
                activityHome.getClass();
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                        kVar.f4064p = com.yunpan.appmanage.util.h0.a(new File(kVar.f4043e));
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                }
                ExecutorService executorService = u9.d.f15554a;
                v9.c.a();
                com.yunpan.appmanage.util.b0 b0Var = wa.v.f17759a;
                b0Var.b();
                String strString = "";
                if (com.yunpan.appmanage.util.v.f4106a.R && !((String) b0Var.f4000c).isEmpty()) {
                    try {
                        String string = Settings.Secure.getString(activityHome.A.getContentResolver(), "enabled_accessibility_services");
                        if (string == null) {
                            string = "";
                        }
                        HashSet hashSet = new HashSet();
                        if (!string.isEmpty()) {
                            for (String str2 : string.split(":")) {
                                if (str2.contains("/")) {
                                    try {
                                        hashSet.add(ComponentName.unflattenFromString(str2.trim()).flattenToString());
                                    } catch (Exception unused) {
                                    }
                                }
                            }
                        }
                        StringBuilder sb2 = new StringBuilder();
                        for (String str3 : ((String) b0Var.f4000c).split(":")) {
                            if (str3.contains("/")) {
                                try {
                                    String strFlattenToString = ComponentName.unflattenFromString(str3.trim()).flattenToString();
                                    if (!hashSet.contains(strFlattenToString)) {
                                        if (sb2.length() == 0) {
                                            sb2.append(strFlattenToString);
                                        } else {
                                            sb2.append(":");
                                            sb2.append(strFlattenToString);
                                        }
                                    }
                                } catch (Exception unused2) {
                                }
                            }
                        }
                        if (sb2.length() > 0) {
                            StringBuilder sb3 = new StringBuilder();
                            Iterator it = hashSet.iterator();
                            while (it.hasNext()) {
                                sb3.append((String) it.next());
                                sb3.append(":");
                            }
                            if (wa.t.f17728a.f17753t) {
                                wa.w.c("无障碍服务配置不一致，追加\n还需开启：" + ((Object) sb2) + "\n当前开启：" + ((Object) sb3));
                            }
                            sb3.append((CharSequence) sb2);
                            if (Settings.Secure.putString(activityHome.A.getContentResolver(), "enabled_accessibility_services", sb3.toString())) {
                                Settings.Secure.putInt(activityHome.A.getContentResolver(), "accessibility_enabled", 1);
                            }
                        }
                    } catch (Exception unused3) {
                    }
                }
                ArrayList arrayListC = com.yunpan.appmanage.util.e0.f4012a.c();
                for (int i13 = 0; i13 < arrayListC.size(); i13++) {
                    if (((x9.n5) arrayListC.get(i13)).f18296g.isEmpty()) {
                        ((x9.n5) arrayListC.get(i13)).f18296g = p000if.a.p0(((x9.n5) arrayListC.get(i13)).b() + System.currentTimeMillis());
                        com.yunpan.appmanage.util.e0.f4012a.h(i13, (x9.n5) arrayListC.get(i13));
                    }
                }
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                if (!wVar.U.isEmpty()) {
                    ActivityNezha.y();
                }
                if (wVar.V == -1) {
                    try {
                        activityHome.getPackageManager().getApplicationInfo("com.ecarx.appstore", 8704);
                        wVar.z(1);
                        wVar.s(true);
                    } catch (Exception unused4) {
                        com.yunpan.appmanage.util.v.f4106a.z(0);
                    }
                }
                String strD = fa.g0.f5682a.d();
                System.out.getClass();
                if (!strD.isEmpty()) {
                    try {
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                        String absolutePath = activityHome.A.getExternalCacheDir().getAbsolutePath();
                        kVar2.f4069s = absolutePath;
                        if (absolutePath.startsWith("/data/")) {
                            kVar2.f4069s = "";
                        }
                    } catch (Exception unused5) {
                    }
                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
                    if (kVar3.f4069s.isEmpty()) {
                        StringBuilder sbB = d0.f.b(strD, "/Android/data/");
                        sbB.append(activityHome.getPackageName());
                        sbB.append("/cache");
                        kVar3.f4069s = sbB.toString();
                    }
                    try {
                        kVar3.f4070t = activityHome.A.getObbDir().getPath();
                    } catch (Exception unused6) {
                    }
                    com.yunpan.appmanage.util.k kVar4 = com.yunpan.appmanage.util.j.f4033a;
                    if (kVar4.f4070t.isEmpty()) {
                        StringBuilder sbB2 = d0.f.b(strD, "/Android/obb/");
                        sbB2.append(activityHome.getPackageName());
                        kVar4.f4070t = sbB2.toString();
                    }
                    try {
                        String absolutePath2 = activityHome.A.getExternalFilesDir(null).getAbsolutePath();
                        kVar4.r = absolutePath2;
                        if (absolutePath2.startsWith("/data/")) {
                            kVar4.r = "";
                        }
                    } catch (Exception unused7) {
                    }
                    com.yunpan.appmanage.util.k kVar5 = com.yunpan.appmanage.util.j.f4033a;
                    if (kVar5.r.isEmpty()) {
                        StringBuilder sbB3 = d0.f.b(strD, "/Android/data/");
                        sbB3.append(activityHome.getPackageName());
                        sbB3.append("/files");
                        kVar5.r = sbB3.toString();
                    }
                    String absolutePath3 = new File(kVar5.r).getParentFile().getParentFile().getAbsolutePath();
                    if (!com.yunpan.appmanage.util.a0.d(absolutePath3) && com.yunpan.appmanage.util.a0.d(absolutePath3.replace("/data", "/\u200bdata"))) {
                        kVar5.f4069s = kVar5.f4069s.replace("/data", "/\u200bdata");
                        kVar5.f4070t = kVar5.f4070t.replace("/data", "/\u200bdata");
                        kVar5.r = kVar5.r.replace("/data", "/\u200bdata");
                    }
                }
                if (strD.isEmpty()) {
                    DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.j.f4033a.z = activityHome.A.getCacheDir().getParent() + "/image/";
                } else {
                    StringBuilder sbD = da.b.d("rm -rf '", strD, "/.");
                    sbD.append(activityHome.getPackageName());
                    sbD.append("/cache/'");
                    u9.d.r(sbD.toString()).l0();
                    DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar6 = com.yunpan.appmanage.util.j.f4033a;
                    StringBuilder sbB4 = d0.f.b(strD, "/.");
                    sbB4.append(activityHome.getPackageName());
                    sbB4.append("/");
                    kVar6.z = sbB4.toString();
                }
                try {
                    com.yunpan.appmanage.util.k kVar7 = com.yunpan.appmanage.util.j.f4033a;
                    new File(kVar7.z).mkdirs();
                    new File(kVar7.z + "apk_ico_cache/").mkdirs();
                } catch (Exception unused8) {
                }
                try {
                    StringBuilder sb4 = new StringBuilder();
                    DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
                    sb4.append(com.yunpan.appmanage.util.j.f4033a.z);
                    sb4.append("bdVideo/");
                    new File(sb4.toString()).mkdirs();
                } catch (Exception unused9) {
                }
                if (!strD.isEmpty()) {
                    try {
                        DecimalFormat decimalFormat7 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar8 = com.yunpan.appmanage.util.j.f4033a;
                        File parentFile = new File(kVar8.f4069s).getParentFile().getParentFile();
                        kVar8.P = parentFile.getParentFile().getName();
                        PrintStream printStream = System.out;
                        parentFile.getAbsolutePath();
                        printStream.getClass();
                        File[] fileArrListFiles = parentFile.listFiles();
                        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                            kVar8.K = true;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                u9.d.r("rm -rf '" + activityHome.A.getCacheDir().getAbsolutePath() + "'").l0();
                if (!strD.isEmpty()) {
                    DecimalFormat decimalFormat8 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar9 = com.yunpan.appmanage.util.j.f4033a;
                    if (!kVar9.f4069s.isEmpty() && com.yunpan.appmanage.util.a0.g(kVar9.f4069s)) {
                        u9.d.r(g.b.l(kVar9.f4069s, "'", new StringBuilder("rm -rf '"))).l0();
                    }
                    if (!kVar9.r.isEmpty() && com.yunpan.appmanage.util.a0.g(kVar9.r) && !kVar9.r.startsWith("/data/")) {
                        u9.d.r(g.b.l(kVar9.r, "'", new StringBuilder("rm -rf '"))).l0();
                    }
                    u9.d.r(g.b.l(kVar9.f4041d, "/cache'", da.b.d("rm -rf '", strD, "/."))).l0();
                }
                try {
                    new File(activityHome.A.getCacheDir().getPath() + "/apkico/").mkdirs();
                } catch (Exception unused10) {
                }
                DecimalFormat decimalFormat9 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar10 = com.yunpan.appmanage.util.j.f4033a;
                if (!kVar10.f4069s.isEmpty()) {
                    try {
                        new File(kVar10.f4069s + "/").mkdirs();
                        new File(kVar10.r + "/").mkdirs();
                    } catch (Exception unused11) {
                    }
                }
                fa.g0.f5682a.e();
                activityHome.M.sendEmptyMessageDelayed(10000, 1000L);
                MyDb.get().getApkFileDao().deleteInsertTime(System.currentTimeMillis() - 2592000000L);
                MyDb.get().getFileInfoDao().deleteAll();
                if (!strD.isEmpty()) {
                    com.yunpan.appmanage.util.j.f4033a.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(strD)));
                }
                activityHome.B();
                long jCurrentTimeMillis = System.currentTimeMillis();
                StringBuilder sb5 = new StringBuilder();
                DecimalFormat decimalFormat10 = com.yunpan.appmanage.util.k.f4034u0;
                File file = new File(g.b.l(com.yunpan.appmanage.util.j.f4033a.z, "thumbnail/", sb5));
                if (file.exists()) {
                    for (File file2 : file.listFiles()) {
                        if (jCurrentTimeMillis - file2.lastModified() > 2592000000L) {
                            file2.delete();
                        }
                    }
                }
                Iterator it2 = com.yunpan.appmanage.util.e0.f4012a.c().iterator();
                String strL = "";
                while (it2.hasNext()) {
                    strL = g.b.l(((x9.n5) it2.next()).f18296g, "|", g.b.m(strL));
                }
                File file3 = new File(g.b.l(com.yunpan.appmanage.util.j.f4033a.z, "wp_image_cache/", new StringBuilder()));
                if (file3.exists()) {
                    File[] fileArrListFiles2 = file3.listFiles();
                    int length = fileArrListFiles2.length;
                    int i14 = 0;
                    while (i14 < length) {
                        File file4 = fileArrListFiles2[i14];
                        if (file4.isDirectory()) {
                            if (strL.contains(file4.getName())) {
                                for (File file5 : file4.listFiles()) {
                                    if (jCurrentTimeMillis - file5.lastModified() > 2592000000L) {
                                        file5.delete();
                                    }
                                }
                            } else {
                                String[] strArr = new String[i11];
                                strArr[0] = "rm -rf '" + file4.getPath() + "'";
                                u9.d.r(strArr).l0();
                            }
                        }
                        i14++;
                        i11 = 1;
                    }
                }
                File file6 = new File(g.b.l(com.yunpan.appmanage.util.j.f4033a.z, "apk_ico_cache/", new StringBuilder()));
                if (file6.exists()) {
                    for (File file7 : file6.listFiles()) {
                        if (jCurrentTimeMillis - file7.lastModified() > 2592000000L) {
                            file7.delete();
                        }
                    }
                }
                File file8 = new File(g.b.l(com.yunpan.appmanage.util.j.f4033a.z, "bdVideo/", new StringBuilder()));
                if (file8.exists()) {
                    for (File file9 : file8.listFiles()) {
                        if (jCurrentTimeMillis - file9.lastModified() > 2592000000L) {
                            file9.delete();
                        }
                    }
                }
                com.yunpan.appmanage.util.k kVar11 = com.yunpan.appmanage.util.j.f4033a;
                kVar11.getClass();
                HttpMdns httpMdns = new HttpMdns();
                kVar11.f4068r0 = httpMdns;
                httpMdns.start();
                if (activityHome.A("log-开机日志.txt") || activityHome.A("log-日志映射.txt") || activityHome.A("log-adb.txt")) {
                    if (XXPermissions.isGrantedPermission(activityHome.A, PermissionLists.getSystemAlertWindowPermission())) {
                        try {
                            v8.b.c(String.valueOf(607));
                            v8.a aVar = new v8.a(AppStart.f3772h);
                            aVar.f16661h = String.valueOf(607);
                            aVar.j(R.layout.window_show_toast2);
                            aVar.a(256);
                            aVar.l(Build.VERSION.SDK_INT >= 28 ? 1 : 0);
                            v8.h hVar = aVar.f16656c;
                            TextView textView = (TextView) (hVar == null ? null : hVar.findViewById(R.id.v_msg));
                            if (textView != null) {
                                textView.setTextSize(2, 16.0f);
                            }
                            aVar.o(R.id.v_msg, "检测到保存的日志过多，已清理\n如无必要，去【实验室】的【开发者日志调试】中关闭");
                            aVar.r(3000);
                            aVar.t();
                        } catch (Exception unused12) {
                        }
                    } else {
                        com.yunpan.appmanage.util.a0.u("检测到日志过多，已清理\n如无必要，去【实验室】的【开发者日志调试】中关闭");
                    }
                }
                int i15 = 0;
                Response responseA = null;
                do {
                    if (i15 == 0) {
                        str = "https://yun.123pan.cn/api/dydomain";
                        i10 = 1;
                    } else {
                        i10 = 1;
                        str = i15 == 1 ? "https://www.123865.com/api/dydomain" : i15 == 2 ? "https://www.123684.com/api/dydomain" : "https://www.123pan.cn/api/dydomain";
                    }
                    i15 += i10;
                    int i16 = 0;
                    do {
                        if (i16 == 0) {
                            response = null;
                            com.yunpan.appmanage.util.f0.f4019a.f11674b = null;
                        } else {
                            response = null;
                            if (i16 <= 3) {
                                com.yunpan.appmanage.util.f0.f4019a.f11674b = HttpUrl.get(com.yunpan.appmanage.util.f0.a(i16 - 1));
                            } else if (responseA == null && strString.contains("cppClientDomain")) {
                                try {
                                    z7.s sVarQ = d.b.b0(strString).g().q("data");
                                    DecimalFormat decimalFormat11 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar12 = com.yunpan.appmanage.util.j.f4033a;
                                    kVar12.W = "https://" + sVarQ.p("domains").l(0).i();
                                    kVar12.X = "https://" + sVarQ.o("cppClientDomain").i();
                                    System.out.getClass();
                                    break;
                                } catch (Exception unused13) {
                                    return;
                                }
                            }
                        }
                        i16 += i10;
                        l9.a aVar2 = new l9.a(str);
                        k9.a aVar3 = aVar2.f11017i;
                        DecimalFormat decimalFormat12 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar13 = com.yunpan.appmanage.util.j.f4033a;
                        aVar3.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0");
                        aVar3.b("Referer", str);
                        responseA = aVar2.a();
                        if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                            strString = responseBodyBody.string();
                        } else {
                            responseA = response;
                        }
                    } while (responseA == null);
                    if (responseA == null) {
                    }
                } while (i15 < 4);
                break;
            case 1:
                a();
                break;
            default:
                ActivityHome.x(activityHome);
                break;
        }
    }
}
