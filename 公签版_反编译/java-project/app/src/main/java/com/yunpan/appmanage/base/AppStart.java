package com.yunpan.appmanage.base;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Process;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.f0;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.w;
import da.c;
import fa.e;
import io.github.muntashirakon.adb.PRNGFixes;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import me.jessyan.autosize.AutoSizeConfig;
import org.lsposed.hiddenapibypass.i;
import org.lsposed.hiddenapibypass.j;
import rikka.shizuku.ShizukuProvider;
import sun.misc.Unsafe;
import u9.d;
import v9.a;
import w3.b;
import wa.u;
import wa.v;

/* loaded from: classes.dex */
public class AppStart extends Application {

    /* renamed from: h, reason: collision with root package name */
    public static AppStart f3772h;

    /* renamed from: a, reason: collision with root package name */
    public a f3773a;

    /* renamed from: b, reason: collision with root package name */
    public Drawable f3774b = null;

    /* renamed from: c, reason: collision with root package name */
    public PackageManager f3775c = null;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f3776d = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    public boolean f3777e = false;

    /* renamed from: f, reason: collision with root package name */
    public int f3778f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3779g = true;

    public static AppStart b() {
        return f3772h;
    }

    public final void a(Context context) {
        ApplicationInfo applicationInfo;
        super.attachBaseContext(context);
        if (b.f17433b) {
            return;
        }
        try {
            try {
                applicationInfo = getApplicationInfo();
            } catch (RuntimeException unused) {
                applicationInfo = null;
            }
            if (applicationInfo == null) {
                return;
            }
            b.c(this, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir));
        } catch (Exception e7) {
            throw new RuntimeException(da.b.b(e7, new StringBuilder("MultiDex installation failed ("), ")."));
        }
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        a(context);
        if (Build.VERSION.SDK_INT >= 28) {
            Unsafe unsafe = j.f12508a;
            HashSet hashSet = i.f12507a;
            hashSet.addAll(Arrays.asList("L"));
            String[] strArr = new String[hashSet.size()];
            hashSet.toArray(strArr);
            j.b(strArr);
        }
    }

    public final String c() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == iMyPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        try {
            return (String) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentProcessName", null).invoke(null, null);
        } catch (Exception unused) {
            return "";
        }
    }

    public final void d() {
        AtomicBoolean atomicBoolean = this.f3776d;
        if (!atomicBoolean.get()) {
            atomicBoolean.set(true);
        }
        try {
            u.a().b(this);
            w.b().j(this);
            v.f17759a.b();
            wa.w.a();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00fe A[EXC_TOP_SPLITTER, PHI: r1
  0x00fe: PHI (r1v9 java.io.File) = (r1v8 java.io.File), (r1v13 java.io.File) binds: [B:36:0x00de, B:38:0x00f1] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    @Override // android.app.Application
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCreate() {
        super.onCreate();
        f3772h = this;
        this.f3775c = getPackageManager();
        a0.l(this);
        d();
        try {
            ExecutorService executorService = d.f15554a;
            a aVarC = a.c();
            aVarC.f();
            aVarC.g(80L);
            this.f3773a = aVarC;
            d.A(aVarC);
        } catch (Exception unused) {
        }
        String strC = c();
        System.out.getClass();
        this.f3777e = strC.endsWith(":acc");
        if (u.a().f17753t) {
            wa.w.d("进程：".concat(strC));
        }
        if (strC.contains("magica") || strC.endsWith(":acc1")) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                PRNGFixes.apply();
            } catch (Exception unused2) {
            }
        }
        z8.a.a(this);
        if (strC.endsWith(":acc") || strC.endsWith(":boot")) {
            e.e().h();
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                if (!ii.a.a(getPackageName())) {
                    ShizukuProvider.a(true);
                }
            } catch (Exception unused3) {
            }
        }
        com.yunpan.appmanage.util.a.a().b(this);
        String path = new File(getFilesDir().getParentFile(), "bj.png").getPath();
        String str = "";
        if (!a0.g(path)) {
            path = new File(getFilesDir().getParentFile(), "bj.jpg").getPath();
            if (!a0.g(path)) {
                path = "";
            }
        }
        File file = new File(getFilesDir().getParentFile(), "bj.png");
        if (!file.exists()) {
            file = new File(getFilesDir().getParentFile(), "bj.jpg");
            if (file.exists()) {
                try {
                    if (file.length() > 2097152) {
                        file.delete();
                    } else {
                        str = path;
                    }
                    path = str;
                } catch (Exception unused4) {
                }
                if (path.isEmpty()) {
                    this.f3774b = getResources().getDrawable(R.drawable.bj_2);
                } else {
                    this.f3774b = new BitmapDrawable(getResources(), BitmapFactory.decodeFile(path, null));
                }
            } else {
                this.f3774b = getResources().getDrawable(R.drawable.bj_2);
            }
        }
        k.f().h(this);
        a0.f3996a.c(this);
        f0.b();
        MyDb.init(this);
        if (Build.VERSION.SDK_INT >= 21) {
            ma.i.a().b(this);
        }
        com.bumptech.glide.b.b(this).d();
        registerActivityLifecycleCallbacks(new da.d(this));
        AutoSizeConfig.getInstance().setExcludeFontScale(true).setOnAdaptListener(new c());
    }
}
