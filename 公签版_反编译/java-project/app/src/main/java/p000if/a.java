package p000if;

import a2.g1;
import a2.m;
import a2.w0;
import a9.f0;
import a9.h0;
import a9.n;
import a9.o;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.IActivityManager;
import android.app.PendingIntent;
import android.app.usage.UsageEvents;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.hardware.input.IInputManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Property;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import android.widget.EditText;
import androidx.fragment.app.o1;
import androidx.leanback.transition.e;
import b2.g;
import ba.l;
import ba.r;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.AmStackListBean;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.shizuku.CmdResult;
import com.yunpan.appmanage.shizuku.IUserService;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import fa.b0;
import fa.d;
import fa.n0;
import fa.o0;
import ha.jd;
import ha.v2;
import j$.nio.charset.StandardCharsets;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.StandardOpenOption;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import java.util.concurrent.ArrayBlockingQueue;
import jg.t;
import mc.b;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.simpleframework.xml.strategy.Name;
import p0.f;
import ph.h;
import ta.q;
import wa.c;
import x9.b6;
import x9.n5;
import x9.t3;
import z7.s;

/* loaded from: classes.dex */
public abstract class a implements e, g {
    public static void A(AccService accService, s sVar, int i10) throws InterruptedException {
        Intent intentM;
        Intent intentM2;
        o0 o0Var = n0.f5722a;
        IUserService iUserService = o0Var.f5730e;
        if (iUserService == null) {
            a0.u("未连接shizuku");
            return;
        }
        if (i10 == 920) {
            o0Var.f5730e.exec(sVar.o("str1").i(), 6666L);
            return;
        }
        if (i10 == 924) {
            CmdResult cmdResultExec = o0Var.f5730e.exec(sVar.o("str1").i(), 6666L);
            if (cmdResultExec.code == 0 && cmdResultExec.getAllStr().trim().isEmpty()) {
                a0.w("执行成功");
                return;
            } else {
                a0.w(cmdResultExec.getAllStr());
                return;
            }
        }
        if (i10 == 921) {
            int iE = sVar.o("keycode").e();
            int iE2 = sVar.o("action").e();
            if (iE2 == 0) {
                c.d(o0.c(), iE, true);
                return;
            }
            if (iE2 <= 0 || iE2 >= 4) {
                return;
            }
            while (iE2 > 0) {
                n0.f5722a.getClass();
                c.d(o0.c(), iE, false);
                Thread.sleep(200L);
                iE2--;
            }
            return;
        }
        if (i10 == 922) {
            sVar.o("api").e();
            int iE3 = sVar.o("action").e();
            int iE4 = sVar.o("x").e();
            int iE5 = sVar.o("y").e();
            if (iE3 == 0) {
                c.g(o0.c(), iE4, iE5, true);
                return;
            }
            if (iE3 <= 0 || iE3 >= 4) {
                return;
            }
            while (iE3 > 0) {
                n0.f5722a.getClass();
                c.g(o0.c(), iE4, iE5, false);
                Thread.sleep(180L);
                iE3--;
            }
            return;
        }
        if (i10 == 923) {
            IInputManager iInputManagerC = o0.c();
            if (iInputManagerC != null) {
                q4.a.G(iInputManagerC, sVar);
                return;
            }
            return;
        }
        if (i10 == 942) {
            o0.b().forceStopPackage(sVar.o("str1").i(), 0);
            return;
        }
        if (i10 == 943) {
            try {
                String string = accService.getRootInActiveWindow().getPackageName().toString();
                if (string.contains(".")) {
                    String strU = qf.c.u(accService);
                    if (strU.isEmpty() || !strU.equals(string)) {
                        if (!string.startsWith("com.android.") && !string.equals(accService.getPackageName()) && !string.equals("moe.shizuku.privileged.api")) {
                            o0.b().forceStopPackage(string, 0);
                            return;
                        }
                        accService.performGlobalAction(1);
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception unused) {
                return;
            }
        }
        if (i10 != 940) {
            if (i10 != 944) {
                if (i10 == 945) {
                    iUserService.exec("am startservice -n \"" + sVar.o("str1").i() + "\"", 2222L);
                    return;
                }
                return;
            }
            if (!Environment.getExternalStorageState().contains("mounted")) {
                a0.t("截屏失败：没有内部存储卡");
                return;
            }
            File file = new File(d.f5659a.d() + "/Download");
            try {
                file.mkdir();
            } catch (Exception unused2) {
            }
            CmdResult cmdResultExec2 = n0.f5722a.f5730e.exec("screencap -p '" + file.getPath() + "/截屏" + System.currentTimeMillis() + ".png'", 3333L);
            if (cmdResultExec2.code == 0) {
                a0.w("截屏已保存到 Download 目录");
                return;
            }
            a0.t("截屏失败：" + cmdResultExec2.getAllStr());
            return;
        }
        IActivityManager iActivityManagerB = o0.b();
        int i11 = Build.VERSION.SDK_INT;
        ArrayList arrayList = new ArrayList(i11 >= 28 ? iActivityManagerB.getTasks(50) : iActivityManagerB.getTasks(50, 0));
        if (arrayList.size() > 1) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) arrayList.get(0);
            int i12 = i11 >= 29 ? runningTaskInfo.taskId : runningTaskInfo.id;
            Collections.sort(arrayList, new qa.e(28));
            PrintStream printStream = System.out;
            arrayList.size();
            printStream.getClass();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) it.next();
                if ((Build.VERSION.SDK_INT >= 29 ? runningTaskInfo2.taskId : runningTaskInfo2.id) > i12 && runningTaskInfo2.topActivity != null) {
                    String packageName = runningTaskInfo2.topActivity.getPackageName();
                    if (!packageName.equals("com.android.systemui") && packageName.contains(".") && (intentM2 = M(packageName)) != null) {
                        x0(1, accService, intentM2);
                        return;
                    }
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ActivityManager.RunningTaskInfo runningTaskInfo3 = (ActivityManager.RunningTaskInfo) it2.next();
                if ((Build.VERSION.SDK_INT >= 29 ? runningTaskInfo3.taskId : runningTaskInfo3.id) != i12 && runningTaskInfo3.topActivity != null) {
                    String packageName2 = runningTaskInfo3.topActivity.getPackageName();
                    if (!packageName2.equals("com.android.systemui") && packageName2.contains(".") && (intentM = M(packageName2)) != null) {
                        x0(1, accService, intentM);
                        return;
                    }
                }
            }
        }
    }

    public static void A0(Window window, int i10, boolean z) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 21) {
            B0(window, i10);
            return;
        }
        if (i10 == 6) {
            if (z) {
                return;
            } else {
                i10 = 1;
            }
        }
        if (i10 == 0 || i10 == 4 || i10 == 5) {
            window.clearFlags(Integer.MIN_VALUE);
            window.clearFlags(67108864);
            window.clearFlags(134217728);
            window.addFlags(1024);
            window.addFlags(512);
        } else if (i10 == 1 || i10 == 2) {
            window.clearFlags(1024);
            window.clearFlags(67108864);
            window.clearFlags(134217728);
            window.clearFlags(512);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
            window.setNavigationBarColor(0);
        } else if (i10 == 3) {
            window.clearFlags(1024);
            window.clearFlags(67108864);
            window.clearFlags(134217728);
            window.clearFlags(512);
            window.addFlags(Integer.MIN_VALUE);
            window.setNavigationBarColor(0);
        }
        B0(window, i10);
        if (i11 >= 28) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            window.setAttributes(attributes);
        }
        if (i10 == 5) {
            window.clearFlags(1024);
            try {
                WindowManager.LayoutParams attributes2 = window.getAttributes();
                Field declaredField = attributes2.getClass().getDeclaredField("splitState");
                declaredField.setAccessible(true);
                declaredField.set(attributes2, 1);
            } catch (Exception unused) {
            }
        }
        if (z) {
            return;
        }
        if (i10 == 2) {
            window.findViewById(R.id.v_root).setPadding(0, 36, 0, 0);
        } else {
            window.findViewById(R.id.v_root).setPadding(0, 0, 0, 0);
        }
    }

    public static void B(InputStream inputStream, String str, b bVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        kg.d dVar = new kg.d(inputStream);
        try {
            byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
            for (kg.c cVarL = dVar.L(); cVarL != null; cVarL = dVar.L()) {
                if (bVar != null) {
                    bVar.f(cVarL.f10293a);
                }
                if (cVarL.b() || cVarL.f10293a.endsWith("/")) {
                    new File(str + cVarL.f10293a).mkdirs();
                } else {
                    FileOutputStream fileOutputStream = new FileOutputStream(str + cVarL.f10293a);
                    try {
                        for (int i10 = dVar.read(bArr); i10 != -1; i10 = dVar.read(bArr)) {
                            fileOutputStream.write(bArr, 0, i10);
                        }
                        fileOutputStream.close();
                    } finally {
                        try {
                        } catch (Throwable th2) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            dVar.close();
        } catch (Throwable th3) {
            try {
                dVar.close();
            } catch (Throwable th4) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                } catch (Exception unused2) {
                }
            }
            throw th3;
        }
    }

    public static void B0(Window window, int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 30) {
            WindowInsetsController insetsController = window.getInsetsController();
            if (i10 == 0) {
                insetsController.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
                return;
            }
            if (i10 == 3) {
                insetsController.show(WindowInsets.Type.systemBars());
                insetsController.hide(WindowInsets.Type.statusBars());
                return;
            } else {
                if (i10 != 4) {
                    insetsController.show(WindowInsets.Type.systemBars());
                    return;
                }
                insetsController.hide(WindowInsets.Type.statusBars());
                insetsController.hide(WindowInsets.Type.navigationBars());
                insetsController.setSystemBarsAppearance(8, 8);
                insetsController.setSystemBarsBehavior(2);
                return;
            }
        }
        if (i10 == 0 || i10 == 5) {
            int i12 = i11 >= 21 ? 3846 : 1542;
            if (i11 == 29 && window.getContext().getResources().getConfiguration().orientation == 1) {
                i12 = 6;
            }
            window.getDecorView().setSystemUiVisibility(i12);
            return;
        }
        if (i10 == 3) {
            window.getDecorView().setSystemUiVisibility(1284);
        } else if (i10 == 4) {
            window.getDecorView().setSystemUiVisibility(2062);
        } else {
            window.getDecorView().setSystemUiVisibility(0);
        }
    }

    public static long C(long j10, long j11) {
        return j10 >= 0 ? j10 / j11 : ((j10 + 1) / j11) - 1;
    }

    public static void C0(String str, String str2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            Class.forName("android.os.SystemProperties").getDeclaredMethod("set", String.class, String.class).invoke(null, str, str2);
        } catch (Exception unused) {
        }
    }

    public static int D(int i10, long j10) {
        long j11 = i10;
        return (int) (((j10 % j11) + j11) % j11);
    }

    public static String D0(double d10) {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        double d11 = 1099511627776L;
        if (d10 >= d11) {
            Double.isNaN(d11);
            return q.n(decimalFormat, d10 / d11, new StringBuilder(), "T");
        }
        double d12 = 1073741824L;
        if (d10 >= d12) {
            Double.isNaN(d12);
            return q.n(decimalFormat, d10 / d12, new StringBuilder(), "G");
        }
        double d13 = 1048576L;
        if (d10 >= d13) {
            Double.isNaN(d13);
            return q.n(decimalFormat, d10 / d13, new StringBuilder(), "M");
        }
        double d14 = 1024L;
        if (d10 >= d14) {
            Double.isNaN(d14);
            return q.n(decimalFormat, d10 / d14, new StringBuilder(), "K");
        }
        return d10 + "b";
    }

    public static void E0(Activity activity, Context context, AppBean appBean) {
        if (appBean.isDisable) {
            Toaster.show((CharSequence) "此应用已被禁用，无法打开");
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            Intent leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? packageManager.getLeanbackLaunchIntentForPackage(appBean.pack) : null;
            if (leanbackLaunchIntentForPackage == null) {
                leanbackLaunchIntentForPackage = packageManager.getLaunchIntentForPackage(appBean.pack);
            }
            if (leanbackLaunchIntentForPackage != null) {
                leanbackLaunchIntentForPackage.setPackage(null);
                leanbackLaunchIntentForPackage.setFlags(270532608);
                x0(1, context, leanbackLaunchIntentForPackage);
                return;
            }
            Intent intent = new Intent();
            if (appBean.pack.equals("com.android.settings")) {
                intent.setComponent(new ComponentName(appBean.pack, "com.android.settings.Settings"));
            } else if (appBean.pack.equals("com.android.tv.settings")) {
                intent.setComponent(new ComponentName(appBean.pack, "com.android.tv.settings.MainSettings"));
            } else {
                ArrayList arrayList = new ArrayList();
                try {
                    ActivityInfo[] activityInfoArr = packageManager.getPackageInfo(appBean.pack, 1).activities;
                    if (activityInfoArr != null) {
                        for (ActivityInfo activityInfo : activityInfoArr) {
                            if (activityInfo.exported && activityInfo.enabled) {
                                arrayList.add(new t3(activityInfo.loadIcon(packageManager), activityInfo.loadLabel(packageManager).toString(), activityInfo.packageName, activityInfo.name));
                            }
                        }
                    }
                } catch (PackageManager.NameNotFoundException e7) {
                    e7.printStackTrace();
                }
                if (arrayList.size() == 1) {
                    intent.setComponent(new ComponentName(appBean.pack, ((t3) arrayList.get(0)).f18340d));
                } else if (arrayList.size() > 1) {
                    new v2(activity, context, arrayList).show();
                    return;
                }
            }
            intent.setFlags(270532608);
            x0(1, context, intent);
        } catch (Exception unused) {
            Toaster.show((CharSequence) "此应用无法打开");
        }
    }

    public static void F0(Context context) {
        HashSet hashSet = new HashSet();
        String strU = qf.c.u(context);
        if (strU.isEmpty()) {
            Iterator it = qf.c.r(context).iterator();
            while (it.hasNext()) {
                hashSet.add(((DesktopBean) it.next()).packageName);
            }
        } else {
            hashSet.add(strU);
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        int i10 = 0;
        do {
            i10++;
            for (ActivityManager.RunningTaskInfo runningTaskInfo : activityManager.getRunningTasks(100)) {
                if (runningTaskInfo.topActivity != null) {
                    PrintStream printStream = System.out;
                    runningTaskInfo.topActivity.getPackageName();
                    printStream.getClass();
                    if (hashSet.contains(runningTaskInfo.topActivity.getPackageName())) {
                        activityManager.moveTaskToFront(runningTaskInfo.id, 0);
                        return;
                    }
                }
            }
        } while (i10 < 2);
        z0(context, (String) hashSet.iterator().next());
    }

    public static int G(int[] iArr, int[] iArr2, int i10) {
        if (iArr.length < 9 || iArr2.length < 38) {
            return 0;
        }
        switch (i10) {
            case 0:
                return iArr2[0] & 3;
            case 1:
                return iArr2[1];
            case 2:
                return iArr2[2] & 1;
            case 3:
                return (iArr2[2] >> 1) & 1;
            case 4:
                return (iArr2[2] >> 2) & 1;
            case 5:
                return (iArr2[2] >> 3) & 1;
            case 6:
                return (iArr2[2] >> 4) & 1;
            case 7:
                return (iArr2[2] >> 5) & 1;
            default:
                if (i10 == 9) {
                    return (iArr2[2] >> 6) & 1;
                }
                if (i10 == 10) {
                    return (iArr2[2] >> 7) & 1;
                }
                switch (i10) {
                    case 12:
                        return iArr2[3] & 1;
                    case 13:
                        return (iArr2[3] >> 1) & 1;
                    case 14:
                        return (iArr2[3] >> 2) & 1;
                    case 15:
                        return (iArr2[3] >> 3) & 1;
                    default:
                        switch (i10) {
                            case 26:
                                return (iArr2[3] >> 5) & 1;
                            case 27:
                                return iArr2[7] & 15;
                            case 28:
                                return (iArr2[7] >> 4) & 7;
                            case 29:
                                return (iArr2[7] >> 7) & 1;
                            case 30:
                                return iArr2[8] & 1;
                            case 31:
                                return (iArr2[8] >> 4) & 1;
                            case 32:
                                return (iArr2[8] >> 5) & 1;
                            case 33:
                                return (iArr2[8] >> 6) & 1;
                            case 34:
                                return (iArr2[8] >> 7) & 1;
                            case 35:
                                return iArr2[9] & 1;
                            case 36:
                                return (iArr2[9] >> 1) & 1;
                            case 37:
                                return (iArr2[9] >> 2) & 1;
                            case 38:
                                return iArr2[10] & 1;
                            case 39:
                                return (iArr2[10] >> 1) & 1;
                            case 40:
                                return (iArr2[10] >> 2) & 1;
                            case 41:
                                return (iArr2[10] >> 3) & 1;
                            case 42:
                                return (iArr2[10] >> 4) & 1;
                            case 43:
                                return (iArr2[10] >> 5) & 1;
                            case 44:
                                return (iArr2[10] >> 6) & 1;
                            case 45:
                                return (iArr2[10] >> 7) & 1;
                            case 46:
                                return iArr2[11] & 1;
                            case 47:
                                return iArr2[12] & 7;
                            case 48:
                                return (iArr2[12] >> 3) & 7;
                            case 49:
                                return (iArr2[12] >> 6) & 1;
                            case 50:
                                return (iArr2[13] >> 4) & 3;
                            case 51:
                                return (iArr2[13] >> 6) & 3;
                            case 52:
                                return iArr2[14] & 3;
                            case 53:
                                return (iArr2[14] >> 2) & 3;
                            case 54:
                                return (iArr2[14] >> 4) & 1;
                            case 55:
                                return (iArr2[14] >> 5) & 1;
                            case 56:
                                return (iArr2[14] >> 6) & 1;
                            case 57:
                                return (iArr2[14] >> 7) & 1;
                            case 58:
                                return iArr2[15] & 1;
                            case 59:
                                return (iArr2[15] >> 1) & 1;
                            case 60:
                                return (iArr2[15] >> 2) & 1;
                            case 61:
                                return (iArr2[15] >> 3) & 1;
                            case 62:
                                return (iArr2[15] >> 4) & 1;
                            case 63:
                                return (iArr2[15] >> 5) & 1;
                            case 64:
                                return (iArr2[15] >> 6) & 1;
                            case 65:
                                return (iArr2[15] >> 7) & 1;
                            case 66:
                                return iArr2[16] & 3;
                            case 67:
                                return (iArr2[16] >> 2) & 1;
                            case 68:
                                return (iArr2[16] >> 3) & 1;
                            case 69:
                                return (iArr2[16] >> 4) & 1;
                            case 70:
                                return (iArr2[16] >> 5) & 1;
                            case 71:
                                return (iArr2[16] >> 6) & 1;
                            case 72:
                                return (iArr2[16] >> 7) & 1;
                            case 73:
                                return iArr2[17] & 3;
                            case 74:
                                return (iArr2[17] >> 2) & 1;
                            case 75:
                                return (iArr2[17] >> 3) & 1;
                            case 76:
                                return (iArr2[17] >> 4) & 1;
                            case 77:
                                return (iArr2[17] >> 5) & 1;
                            case 78:
                                return (iArr2[17] >> 6) & 1;
                            case 79:
                                return (iArr2[17] >> 7) & 1;
                            case 80:
                                return iArr2[18] & 1;
                            case 81:
                                return (iArr2[18] >> 1) & 1;
                            case 82:
                                return (iArr2[18] >> 2) & 1;
                            case 83:
                                return (iArr2[18] >> 3) & 1;
                            case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                                return (iArr2[18] >> 4) & 1;
                            case 85:
                                return (iArr2[18] >> 5) & 1;
                            case 86:
                                return (iArr2[18] >> 6) & 1;
                            case 87:
                                return (iArr2[18] >> 7) & 1;
                            case 88:
                                return iArr2[21] & 1;
                            case 89:
                                return (iArr2[21] >> 1) & 1;
                            case 90:
                                return (iArr2[21] >> 2) & 1;
                            case 91:
                                return (iArr2[21] >> 3) & 1;
                            case 92:
                                return (iArr2[21] >> 4) & 1;
                            case 93:
                                return (iArr2[21] >> 5) & 1;
                            case 94:
                                return (iArr2[21] >> 6) & 1;
                            case 95:
                                return (iArr2[21] >> 7) & 1;
                            case 96:
                                return iArr2[23] & 1;
                            case 97:
                                return (iArr2[23] >> 1) & 1;
                            case 98:
                                return (iArr2[23] >> 2) & 1;
                            case 99:
                                return (iArr2[23] >> 3) & 1;
                            case 100:
                                return (iArr2[23] >> 4) & 1;
                            case 101:
                                return (iArr2[23] >> 5) & 1;
                            default:
                                switch (i10) {
                                    case 103:
                                        return (iArr2[23] >> 7) & 1;
                                    case 104:
                                        return iArr2[24] & 1;
                                    case 105:
                                        return (iArr2[24] >> 1) & 1;
                                    case 106:
                                        return (iArr2[24] >> 2) & 1;
                                    case 107:
                                        return (iArr2[24] >> 3) & 1;
                                    case 108:
                                        return (iArr2[24] >> 4) & 1;
                                    case 109:
                                        return (iArr2[24] >> 5) & 1;
                                    case 110:
                                        return (iArr2[24] >> 6) & 3;
                                    case 111:
                                        return iArr2[25] & 1;
                                    case 112:
                                        return (iArr2[25] >> 1) & 1;
                                    case 113:
                                        return (iArr2[25] >> 2) & 1;
                                    case 114:
                                        return (iArr2[25] >> 3) & 1;
                                    case 115:
                                        return (iArr2[25] >> 4) & 1;
                                    case 116:
                                        return (iArr2[25] >> 5) & 1;
                                    case 117:
                                        return (iArr2[25] >> 6) & 1;
                                    case 118:
                                        return (iArr2[25] >> 7) & 1;
                                    case 119:
                                        return iArr2[26] & 1;
                                    case 120:
                                        return (iArr2[26] >> 1) & 1;
                                    case 121:
                                        return (iArr2[26] >> 2) & 1;
                                    case 122:
                                        return (iArr2[26] >> 3) & 1;
                                    case 123:
                                        return (iArr2[26] >> 4) & 1;
                                    case 124:
                                        return (iArr2[26] >> 5) & 1;
                                    case 125:
                                        return (iArr2[26] >> 6) & 1;
                                    case 126:
                                        return (iArr2[26] >> 7) & 1;
                                    case 127:
                                        return iArr2[30] & 1;
                                    case 128:
                                        return (iArr2[30] >> 1) & 1;
                                    case 129:
                                        return (iArr2[30] >> 2) & 1;
                                    case 130:
                                        return (iArr2[30] >> 3) & 3;
                                    case 131:
                                        return (iArr2[30] >> 5) & 3;
                                    case 132:
                                        return (iArr2[30] >> 7) & 1;
                                    case 133:
                                        return iArr2[31] & 1;
                                    case 134:
                                        return (iArr2[31] >> 1) & 3;
                                    case 135:
                                        return (iArr2[31] >> 3) & 1;
                                    case 136:
                                        return (iArr2[31] >> 4) & 1;
                                    case 137:
                                        return (iArr2[31] >> 5) & 1;
                                    case 138:
                                        return (iArr2[31] >> 6) & 3;
                                    case 139:
                                        return iArr2[32] & 3;
                                    default:
                                        switch (i10) {
                                            case 141:
                                                return (iArr2[32] >> 4) & 3;
                                            case 142:
                                                return (iArr2[32] >> 6) & 1;
                                            case 143:
                                                return (iArr2[32] >> 7) & 1;
                                            case 144:
                                                return iArr2[33] & 3;
                                            case 145:
                                                return (iArr2[33] >> 2) & 3;
                                            case 146:
                                                return (iArr2[33] >> 4) & 3;
                                            case 147:
                                                return (iArr2[33] >> 6) & 1;
                                            case 148:
                                                return (iArr2[33] >> 7) & 1;
                                            case 149:
                                                return iArr2[34] & 1;
                                            case 150:
                                                return (iArr2[3] >> 6) & 1;
                                            default:
                                                switch (i10) {
                                                    case 200:
                                                        return iArr[0] & 15;
                                                    case CarSettingID.Recv.IGM_INPUT_OVER_VOLT /* 201 */:
                                                        return iArr[1] & 1;
                                                    case CarSettingID.Recv.IGM_OVER_TEMP /* 202 */:
                                                        return (iArr[1] >> 1) & 1;
                                                    case CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE /* 203 */:
                                                        return (iArr[1] >> 2) & 1;
                                                    case CarSettingID.Recv.IGM_OUTPUT_OVER_CUR /* 204 */:
                                                        return iArr[2] & 3;
                                                    case 205:
                                                        return (iArr[2] >> 2) & 1;
                                                    case CarSettingID.Recv.IGM_OUTPUT_SCB /* 206 */:
                                                        return (iArr[2] >> 3) & 1;
                                                    case CarSettingID.Recv.IFC_TLR_AVAIL /* 207 */:
                                                        return (iArr[2] >> 4) & 1;
                                                    case CarSettingID.Recv.IFC_TLR_ST /* 208 */:
                                                        return (iArr[2] >> 5) & 1;
                                                    case CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN /* 209 */:
                                                        return (iArr[2] >> 6) & 3;
                                                    case CarSettingID.Recv.IFC_SGW_AVAIL /* 210 */:
                                                        return iArr[4] & 1;
                                                    case 211:
                                                        return (iArr[4] >> 1) & 7;
                                                    case CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN /* 212 */:
                                                        return (iArr[4] >> 4) & 15;
                                                    case CarSettingID.Recv.IFC_TCP_AVAIL /* 213 */:
                                                        return iArr[5] & 7;
                                                    case CarSettingID.Recv.IFC_TCP_ST /* 214 */:
                                                        return (iArr[5] >> 3) & 7;
                                                    case CarSettingID.Recv.IFC_TSR_AVAIL /* 215 */:
                                                        return (iArr[5] >> 6) & 1;
                                                    case CarSettingID.Recv.IFC_HMA_AVAIL /* 216 */:
                                                        return (iArr[6] >> 2) & 3;
                                                    case 217:
                                                        return (iArr[6] >> 4) & 3;
                                                    case 218:
                                                        return (iArr[6] >> 6) & 3;
                                                    case 219:
                                                        return iArr[7] & 15;
                                                    case CarSettingID.Recv.IFC_TCPSESSIONID /* 220 */:
                                                        return (iArr[7] >> 4) & 3;
                                                    case CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST /* 221 */:
                                                        return (iArr[7] >> 6) & 3;
                                                    case CarSettingID.Recv.FRDCM_MIRROR_FOLD_UNFOLD_ST /* 222 */:
                                                        return iArr[3] & 1;
                                                    case CarSettingID.Recv.PAA_DVR_TRIGGER /* 223 */:
                                                        return iArr2[27] & 7;
                                                    case 224:
                                                        return (iArr2[27] >> 3) & 31;
                                                    case 225:
                                                        return iArr2[19] & 1;
                                                    case 226:
                                                        return (iArr[1] >> 3) & 1;
                                                    case CarSettingID.Recv.IPB_CST_STATUS /* 227 */:
                                                        return iArr2[28] & 15;
                                                    default:
                                                        if (i10 == 229) {
                                                            return (iArr2[19] >> 1) & 1;
                                                        }
                                                        if (i10 == 230) {
                                                            return (iArr2[28] >> 4) & 1;
                                                        }
                                                        if (i10 == 10000) {
                                                            return (iArr2[11] >> 1) & 1;
                                                        }
                                                        if (i10 == 10001) {
                                                            return (iArr2[11] >> 2) & 1;
                                                        }
                                                        switch (i10) {
                                                            case 10003:
                                                                return (iArr2[13] >> 1) & 3;
                                                            case 10004:
                                                                return (iArr2[13] >> 3) & 1;
                                                            case 10005:
                                                                return (iArr2[19] >> 2) & 1;
                                                            case 10006:
                                                                return (iArr2[19] >> 3) & 1;
                                                            case 10007:
                                                                return (iArr2[28] >> 5) & 1;
                                                            case 10008:
                                                                return (iArr2[28] >> 6) & 1;
                                                            case 10009:
                                                                return (iArr2[32] >> 2) & 3;
                                                            case 10010:
                                                                return (iArr2[34] >> 1) & 3;
                                                            case 10011:
                                                                return (iArr2[34] >> 3) & 1;
                                                            case 10012:
                                                                return (iArr2[34] >> 4) & 1;
                                                            default:
                                                                if (i10 == 10089) {
                                                                    return (iArr2[29] >> 3) & 1;
                                                                }
                                                                if (i10 == 10090) {
                                                                    return (iArr2[29] >> 4) & 1;
                                                                }
                                                                if (i10 == 18) {
                                                                    return (iArr2[3] >> 4) & 1;
                                                                }
                                                                if (i10 == 10024) {
                                                                    return (iArr2[28] >> 7) & 1;
                                                                }
                                                                if (i10 == 10028) {
                                                                    return (iArr2[19] >> 4) & 1;
                                                                }
                                                                if (i10 == 10069) {
                                                                    return (iArr2[29] >> 1) & 1;
                                                                }
                                                                if (i10 == 10071) {
                                                                    return iArr2[29] & 1;
                                                                }
                                                                if (i10 == 10097) {
                                                                    return (iArr2[19] >> 5) & 3;
                                                                }
                                                                if (i10 == 10112) {
                                                                    return iArr2[2] & 3;
                                                                }
                                                                if (i10 != 10144) {
                                                                    return 0;
                                                                }
                                                                return (iArr2[11] >> 3) & 1;
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public static void G0(AccService accService) {
        try {
            if (accService.getPackageManager().checkPermission("android.permission.DEVICE_POWER", accService.getPackageName()) == 0 && System.currentTimeMillis() - accService.H > 6666) {
                ActivityManager activityManager = (ActivityManager) accService.getSystemService("activity");
                for (ActivityManager.RunningTaskInfo runningTaskInfo : activityManager.getRunningTasks(100)) {
                    if (runningTaskInfo.topActivity != null && runningTaskInfo.topActivity.getPackageName().equals(accService.getPackageName())) {
                        activityManager.moveTaskToFront(runningTaskInfo.id, 0);
                        return;
                    }
                }
            }
        } catch (Exception unused) {
        }
        H0(accService);
    }

    public static int H(int[] iArr, int[] iArr2, int i10) {
        if (iArr.length < 9 || iArr2.length < 38) {
            return 0;
        }
        switch (i10) {
            case 0:
                return iArr2[0] & 3;
            case 1:
                return iArr2[1];
            case 2:
                return iArr2[2] & 1;
            case 3:
                return (iArr2[2] >> 1) & 1;
            case 4:
                return (iArr2[2] >> 2) & 1;
            case 5:
                return (iArr2[2] >> 3) & 1;
            case 6:
                return (iArr2[2] >> 4) & 1;
            case 7:
                return (iArr2[2] >> 5) & 1;
            default:
                if (i10 == 9) {
                    return (iArr2[2] >> 6) & 1;
                }
                if (i10 == 10) {
                    return (iArr2[2] >> 7) & 1;
                }
                switch (i10) {
                    case 12:
                        return iArr2[3] & 1;
                    case 13:
                        return (iArr2[3] >> 1) & 1;
                    case 14:
                        return (iArr2[3] >> 2) & 1;
                    case 15:
                        return (iArr2[3] >> 3) & 1;
                    default:
                        switch (i10) {
                            case 26:
                                return (iArr2[3] >> 5) & 1;
                            case 27:
                                return iArr2[7] & 15;
                            case 28:
                                return (iArr2[7] >> 4) & 7;
                            case 29:
                                return (iArr2[7] >> 7) & 1;
                            case 30:
                                return iArr2[8] & 1;
                            case 31:
                                return (iArr2[8] >> 4) & 1;
                            case 32:
                                return (iArr2[8] >> 5) & 1;
                            case 33:
                                return (iArr2[8] >> 6) & 1;
                            case 34:
                                return (iArr2[8] >> 7) & 1;
                            case 35:
                                return iArr2[9] & 1;
                            case 36:
                                return (iArr2[9] >> 1) & 1;
                            case 37:
                                return (iArr2[9] >> 2) & 1;
                            case 38:
                                return iArr2[10] & 1;
                            case 39:
                                return (iArr2[10] >> 1) & 1;
                            case 40:
                                return (iArr2[10] >> 2) & 1;
                            case 41:
                                return (iArr2[10] >> 3) & 1;
                            case 42:
                                return (iArr2[10] >> 4) & 1;
                            case 43:
                                return (iArr2[10] >> 5) & 1;
                            case 44:
                                return (iArr2[10] >> 6) & 1;
                            case 45:
                                return (iArr2[10] >> 7) & 1;
                            case 46:
                                return iArr2[11] & 1;
                            case 47:
                                return iArr2[12] & 7;
                            case 48:
                                return (iArr2[12] >> 3) & 7;
                            case 49:
                                return (iArr2[12] >> 6) & 1;
                            case 50:
                                return (iArr2[13] >> 4) & 3;
                            case 51:
                                return (iArr2[13] >> 6) & 3;
                            case 52:
                                return iArr2[14] & 3;
                            case 53:
                                return (iArr2[14] >> 2) & 3;
                            case 54:
                                return (iArr2[14] >> 4) & 1;
                            case 55:
                                return (iArr2[17] >> 5) & 1;
                            default:
                                if (i10 == 57) {
                                    return (iArr2[14] >> 7) & 1;
                                }
                                if (i10 == 58) {
                                    return iArr2[15] & 1;
                                }
                                switch (i10) {
                                    case 60:
                                        return (iArr2[15] >> 2) & 1;
                                    case 61:
                                        return (iArr2[15] >> 3) & 1;
                                    case 62:
                                        return (iArr2[15] >> 4) & 1;
                                    case 63:
                                        return (iArr2[15] >> 5) & 1;
                                    case 64:
                                        return (iArr2[15] >> 6) & 1;
                                    case 65:
                                        return (iArr2[15] >> 7) & 1;
                                    case 66:
                                        return iArr2[16] & 3;
                                    case 67:
                                        return (iArr2[16] >> 2) & 1;
                                    case 68:
                                        return (iArr2[16] >> 3) & 1;
                                    case 69:
                                        return (iArr2[16] >> 4) & 1;
                                    case 70:
                                        return (iArr2[16] >> 5) & 1;
                                    case 71:
                                        return (iArr2[16] >> 6) & 1;
                                    default:
                                        switch (i10) {
                                            case 74:
                                                return (iArr2[17] >> 2) & 1;
                                            case 75:
                                                return (iArr2[17] >> 3) & 1;
                                            case 76:
                                                return (iArr2[17] >> 4) & 1;
                                            default:
                                                switch (i10) {
                                                    case 78:
                                                        return (iArr2[17] >> 6) & 1;
                                                    case 79:
                                                        return (iArr2[17] >> 7) & 1;
                                                    case 80:
                                                        return iArr2[18] & 1;
                                                    case 81:
                                                        return (iArr2[18] >> 1) & 1;
                                                    case 82:
                                                        return (iArr2[18] >> 2) & 1;
                                                    case 83:
                                                        return (iArr2[18] >> 3) & 1;
                                                    case CarSettingID.Send.HVAC_SEASONS_KEY /* 84 */:
                                                        return (iArr2[18] >> 4) & 1;
                                                    case 85:
                                                        return (iArr2[18] >> 5) & 1;
                                                    case 86:
                                                        return (iArr2[18] >> 6) & 1;
                                                    case 87:
                                                        return (iArr2[18] >> 7) & 1;
                                                    case 88:
                                                        return iArr2[21] & 1;
                                                    case 89:
                                                        return (iArr2[21] >> 1) & 1;
                                                    case 90:
                                                        return (iArr2[21] >> 2) & 1;
                                                    case 91:
                                                        return (iArr2[21] >> 3) & 1;
                                                    case 92:
                                                        return (iArr2[21] >> 4) & 1;
                                                    case 93:
                                                        return (iArr2[21] >> 5) & 1;
                                                    case 94:
                                                        return (iArr2[21] >> 6) & 1;
                                                    case 95:
                                                        return (iArr2[21] >> 7) & 1;
                                                    case 96:
                                                        return iArr2[23] & 1;
                                                    case 97:
                                                        return (iArr2[23] >> 1) & 1;
                                                    case 98:
                                                        return (iArr2[23] >> 2) & 1;
                                                    case 99:
                                                        return (iArr2[23] >> 3) & 1;
                                                    case 100:
                                                        return (iArr2[23] >> 4) & 1;
                                                    case 101:
                                                        return (iArr2[23] >> 5) & 1;
                                                    default:
                                                        switch (i10) {
                                                            case 103:
                                                                return (iArr2[23] >> 7) & 1;
                                                            case 104:
                                                                return iArr2[24] & 1;
                                                            case 105:
                                                                return (iArr2[24] >> 1) & 1;
                                                            case 106:
                                                                return (iArr2[24] >> 2) & 1;
                                                            case 107:
                                                                return (iArr2[24] >> 3) & 1;
                                                            case 108:
                                                                return (iArr2[24] >> 4) & 1;
                                                            case 109:
                                                                return (iArr2[24] >> 5) & 1;
                                                            case 110:
                                                                return (iArr2[24] >> 6) & 3;
                                                            case 111:
                                                                return iArr2[25] & 1;
                                                            case 112:
                                                                return (iArr2[25] >> 1) & 1;
                                                            case 113:
                                                                return (iArr2[25] >> 2) & 1;
                                                            case 114:
                                                                return (iArr2[25] >> 3) & 1;
                                                            case 115:
                                                                return (iArr2[25] >> 4) & 1;
                                                            case 116:
                                                                return (iArr2[25] >> 5) & 1;
                                                            case 117:
                                                                return (iArr2[25] >> 6) & 1;
                                                            case 118:
                                                                return (iArr2[25] >> 7) & 1;
                                                            case 119:
                                                                return iArr2[26] & 1;
                                                            case 120:
                                                                return (iArr2[26] >> 1) & 1;
                                                            case 121:
                                                                return (iArr2[26] >> 2) & 1;
                                                            case 122:
                                                                return (iArr2[26] >> 3) & 1;
                                                            case 123:
                                                                return (iArr2[26] >> 4) & 1;
                                                            case 124:
                                                                return (iArr2[26] >> 5) & 1;
                                                            case 125:
                                                                return (iArr2[26] >> 6) & 1;
                                                            case 126:
                                                                return (iArr2[26] >> 7) & 1;
                                                            case 127:
                                                                return iArr2[30] & 1;
                                                            case 128:
                                                                return (iArr2[30] >> 1) & 1;
                                                            case 129:
                                                                return (iArr2[30] >> 2) & 1;
                                                            case 130:
                                                                return (iArr2[30] >> 3) & 3;
                                                            case 131:
                                                                return (iArr2[30] >> 5) & 3;
                                                            case 132:
                                                                return (iArr2[30] >> 7) & 1;
                                                            case 133:
                                                                return iArr2[31] & 1;
                                                            case 134:
                                                                return (iArr2[31] >> 1) & 3;
                                                            case 135:
                                                                return (iArr2[31] >> 3) & 1;
                                                            case 136:
                                                                return (iArr2[31] >> 4) & 1;
                                                            case 137:
                                                                return (iArr2[31] >> 5) & 1;
                                                            case 138:
                                                                return (iArr2[31] >> 6) & 3;
                                                            case 139:
                                                                return iArr2[32] & 3;
                                                            case 140:
                                                                return (iArr2[32] >> 2) & 3;
                                                            case 141:
                                                                return (iArr2[32] >> 4) & 3;
                                                            case 142:
                                                                return (iArr2[32] >> 6) & 1;
                                                            case 143:
                                                                return (iArr2[32] >> 7) & 1;
                                                            case 144:
                                                                return iArr2[33] & 3;
                                                            case 145:
                                                                return (iArr2[33] >> 2) & 3;
                                                            case 146:
                                                                return (iArr2[33] >> 4) & 3;
                                                            case 147:
                                                                return (iArr2[33] >> 6) & 1;
                                                            case 148:
                                                                return (iArr2[33] >> 7) & 1;
                                                            case 149:
                                                                return iArr2[34] & 1;
                                                            case 150:
                                                                return (iArr2[3] >> 6) & 1;
                                                            default:
                                                                switch (i10) {
                                                                    case 200:
                                                                        return iArr[0] & 15;
                                                                    case CarSettingID.Recv.IGM_INPUT_OVER_VOLT /* 201 */:
                                                                        return iArr[1] & 1;
                                                                    case CarSettingID.Recv.IGM_OVER_TEMP /* 202 */:
                                                                        return (iArr[1] >> 1) & 1;
                                                                    case CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE /* 203 */:
                                                                        return (iArr[1] >> 2) & 1;
                                                                    case CarSettingID.Recv.IGM_OUTPUT_OVER_CUR /* 204 */:
                                                                        return iArr[2] & 3;
                                                                    case 205:
                                                                        return (iArr[2] >> 2) & 1;
                                                                    case CarSettingID.Recv.IGM_OUTPUT_SCB /* 206 */:
                                                                        return (iArr[2] >> 3) & 1;
                                                                    case CarSettingID.Recv.IFC_TLR_AVAIL /* 207 */:
                                                                        return (iArr[2] >> 4) & 1;
                                                                    case CarSettingID.Recv.IFC_TLR_ST /* 208 */:
                                                                        return (iArr[2] >> 5) & 1;
                                                                    case CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN /* 209 */:
                                                                        return (iArr[2] >> 6) & 3;
                                                                    case CarSettingID.Recv.IFC_SGW_AVAIL /* 210 */:
                                                                        return iArr[4] & 1;
                                                                    case 211:
                                                                        return (iArr[4] >> 1) & 7;
                                                                    case CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN /* 212 */:
                                                                        return (iArr[4] >> 4) & 15;
                                                                    case CarSettingID.Recv.IFC_TCP_AVAIL /* 213 */:
                                                                        return iArr[5] & 7;
                                                                    case CarSettingID.Recv.IFC_TCP_ST /* 214 */:
                                                                        return (iArr[5] >> 3) & 7;
                                                                    case CarSettingID.Recv.IFC_TSR_AVAIL /* 215 */:
                                                                        return (iArr[5] >> 6) & 1;
                                                                    case CarSettingID.Recv.IFC_HMA_AVAIL /* 216 */:
                                                                        return (iArr[6] >> 2) & 3;
                                                                    case 217:
                                                                        return (iArr[6] >> 4) & 3;
                                                                    case 218:
                                                                        return (iArr[6] >> 6) & 3;
                                                                    case 219:
                                                                        return iArr[7] & 15;
                                                                    case CarSettingID.Recv.IFC_TCPSESSIONID /* 220 */:
                                                                        return (iArr[7] >> 4) & 3;
                                                                    case CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST /* 221 */:
                                                                        return (iArr[7] >> 6) & 3;
                                                                    case CarSettingID.Recv.FRDCM_MIRROR_FOLD_UNFOLD_ST /* 222 */:
                                                                        return iArr[3] & 1;
                                                                    case CarSettingID.Recv.PAA_DVR_TRIGGER /* 223 */:
                                                                        return iArr2[27] & 7;
                                                                    case 224:
                                                                        return (iArr2[27] >> 3) & 31;
                                                                    case 225:
                                                                        return iArr2[19] & 1;
                                                                    case 226:
                                                                        return (iArr[1] >> 3) & 1;
                                                                    case CarSettingID.Recv.IPB_CST_STATUS /* 227 */:
                                                                        return iArr2[28] & 15;
                                                                    case 228:
                                                                        return (iArr2[9] >> 3) & 1;
                                                                    case CarSettingID.Recv.MAX_OPENNING_TAILGATE /* 229 */:
                                                                        return (iArr2[19] >> 1) & 1;
                                                                    case CarSettingID.Recv.FRONT_HATCH_SWITCH /* 230 */:
                                                                        return (iArr2[28] >> 4) & 1;
                                                                    case CarSettingID.Recv.SUNROOF_STATUS /* 231 */:
                                                                        return (iArr2[9] >> 4) & 1;
                                                                    case CarSettingID.Recv.TAILGATE_STATUS /* 232 */:
                                                                        return iArr[8] & 1;
                                                                    case CarSettingID.Recv.LF_DOOR_STATUS /* 233 */:
                                                                        return (iArr2[8] >> 1) & 1;
                                                                    case 234:
                                                                        return (iArr2[11] >> 1) & 3;
                                                                    case 235:
                                                                        return (iArr2[19] >> 2) & 1;
                                                                    case CarSettingID.Recv.RR_DOOR_STATUS /* 236 */:
                                                                        return (iArr2[9] >> 5) & 1;
                                                                    case 237:
                                                                        return (iArr2[28] >> 6) & 1;
                                                                    case 238:
                                                                        return (iArr2[0] >> 2) & 3;
                                                                    case 239:
                                                                        return (iArr2[19] >> 3) & 1;
                                                                    default:
                                                                        switch (i10) {
                                                                            case 10016:
                                                                                return iArr2[29] & 1;
                                                                            case 10017:
                                                                                return (iArr2[29] >> 1) & 1;
                                                                            case 10018:
                                                                                return (iArr2[29] >> 2) & 1;
                                                                            case 10019:
                                                                                return (iArr2[8] >> 2) & 1;
                                                                            default:
                                                                                switch (i10) {
                                                                                    case 10032:
                                                                                        return (iArr2[11] >> 3) & 1;
                                                                                    case 10033:
                                                                                        return (iArr2[11] >> 4) & 3;
                                                                                    case 10034:
                                                                                        return (iArr2[11] >> 6) & 1;
                                                                                    case 10035:
                                                                                        return (iArr2[29] >> 5) & 1;
                                                                                    case 10036:
                                                                                        return (iArr2[29] >> 6) & 1;
                                                                                    case 10037:
                                                                                        return (iArr2[29] >> 7) & 1;
                                                                                    default:
                                                                                        switch (i10) {
                                                                                            case 10048:
                                                                                                return iArr2[13] & 1;
                                                                                            case 10049:
                                                                                                return (iArr2[20] >> 5) & 1;
                                                                                            case 10050:
                                                                                                return (iArr2[20] >> 4) & 1;
                                                                                            default:
                                                                                                switch (i10) {
                                                                                                    case 10067:
                                                                                                        return (iArr[1] >> 4) & 1;
                                                                                                    case 10068:
                                                                                                        return (iArr[3] >> 1) & 1;
                                                                                                    case 10069:
                                                                                                        return (iArr2[13] >> 3) & 1;
                                                                                                    default:
                                                                                                        switch (i10) {
                                                                                                            case 10072:
                                                                                                                return (iArr2[20] >> 2) & 1;
                                                                                                            case 10073:
                                                                                                                return (iArr2[20] >> 3) & 1;
                                                                                                            case 10074:
                                                                                                                return (iArr2[20] >> 6) & 1;
                                                                                                            case 10075:
                                                                                                                return (iArr2[20] >> 7) & 1;
                                                                                                            case 10076:
                                                                                                                return (iArr2[19] >> 4) & 1;
                                                                                                            case 10077:
                                                                                                                return (iArr2[19] >> 7) & 1;
                                                                                                            case 10078:
                                                                                                                return iArr2[20] & 1;
                                                                                                            case 10079:
                                                                                                                return (iArr2[20] >> 1) & 1;
                                                                                                            case 10080:
                                                                                                                return (iArr2[34] >> 1) & 1;
                                                                                                            case 10081:
                                                                                                                return (iArr2[34] >> 2) & 1;
                                                                                                            case 10082:
                                                                                                                return (iArr2[34] >> 4) & 7;
                                                                                                            case 10083:
                                                                                                                return (iArr2[12] >> 7) & 1;
                                                                                                            case 10084:
                                                                                                                return (iArr2[22] >> 5) & 1;
                                                                                                            case 10085:
                                                                                                                return (iArr2[22] >> 1) & 1;
                                                                                                            case 10086:
                                                                                                                return (iArr[8] >> 2) & 1;
                                                                                                            case 10087:
                                                                                                                return (iArr[8] >> 3) & 1;
                                                                                                            case 10088:
                                                                                                                return (iArr[8] >> 1) & 1;
                                                                                                            case 10089:
                                                                                                                return (iArr2[11] >> 7) & 1;
                                                                                                            default:
                                                                                                                switch (i10) {
                                                                                                                    case 10092:
                                                                                                                        return (iArr[3] >> 4) & 1;
                                                                                                                    case 10093:
                                                                                                                        return (iArr[3] >> 5) & 1;
                                                                                                                    case 10094:
                                                                                                                        return iArr[6] & 3;
                                                                                                                    case 10095:
                                                                                                                        return iArr2[6] & 3;
                                                                                                                    case 10096:
                                                                                                                        return (iArr2[9] >> 6) & 1;
                                                                                                                    case 10097:
                                                                                                                        return (iArr2[19] >> 5) & 3;
                                                                                                                    case 10098:
                                                                                                                        return (iArr[3] >> 2) & 3;
                                                                                                                    default:
                                                                                                                        switch (i10) {
                                                                                                                            case 10103:
                                                                                                                                return (iArr2[6] >> 2) & 3;
                                                                                                                            case 10104:
                                                                                                                                return (iArr2[6] >> 4) & 1;
                                                                                                                            case 10105:
                                                                                                                                return (iArr2[6] >> 5) & 1;
                                                                                                                            case 10106:
                                                                                                                                return (iArr2[13] >> 1) & 1;
                                                                                                                            case 10107:
                                                                                                                                return (iArr2[13] >> 2) & 1;
                                                                                                                            case 10108:
                                                                                                                                return (iArr2[34] >> 7) & 1;
                                                                                                                            case 10109:
                                                                                                                                return iArr2[36] & 1;
                                                                                                                            case 10110:
                                                                                                                                return (iArr2[36] >> 1) & 1;
                                                                                                                            case 10111:
                                                                                                                                return (iArr2[36] >> 2) & 1;
                                                                                                                            case 10112:
                                                                                                                                return (iArr[8] >> 4) & 3;
                                                                                                                            case 10113:
                                                                                                                                return iArr2[37] & 3;
                                                                                                                            default:
                                                                                                                                if (i10 == 10134) {
                                                                                                                                    return (iArr2[5] >> 6) & 3;
                                                                                                                                }
                                                                                                                                if (i10 == 10135) {
                                                                                                                                    return (iArr2[29] >> 3) & 1;
                                                                                                                                }
                                                                                                                                if (i10 == 10138) {
                                                                                                                                    return ((iArr2[6] >> 7) & 1) == 0 ? 1 : 0;
                                                                                                                                }
                                                                                                                                if (i10 == 10139) {
                                                                                                                                    return (iArr2[22] >> 6) & 1;
                                                                                                                                }
                                                                                                                                switch (i10) {
                                                                                                                                    case 13500:
                                                                                                                                        return (iArr2[37] >> 2) & 3;
                                                                                                                                    case 13501:
                                                                                                                                        return (iArr2[37] >> 4) & 1;
                                                                                                                                    case 13502:
                                                                                                                                        return (iArr2[37] >> 5) & 1;
                                                                                                                                    case 13503:
                                                                                                                                        return (iArr2[37] >> 6) & 1;
                                                                                                                                    default:
                                                                                                                                        if (i10 == 18) {
                                                                                                                                            return (iArr2[3] >> 4) & 1;
                                                                                                                                        }
                                                                                                                                        if (i10 == 10039) {
                                                                                                                                            return (iArr2[8] >> 3) & 1;
                                                                                                                                        }
                                                                                                                                        if (i10 == 10045) {
                                                                                                                                            return iArr2[22] & 1;
                                                                                                                                        }
                                                                                                                                        if (i10 == 10101) {
                                                                                                                                            return (iArr2[22] >> 4) & 1;
                                                                                                                                        }
                                                                                                                                        if (i10 != 10122) {
                                                                                                                                            return 0;
                                                                                                                                        }
                                                                                                                                        return (iArr2[6] >> 6) & 1;
                                                                                                                                }
                                                                                                                        }
                                                                                                                }
                                                                                                        }
                                                                                                }
                                                                                        }
                                                                                }
                                                                        }
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    public static void H0(ContextWrapper contextWrapper) {
        try {
            Intent intent = new Intent(contextWrapper, (Class<?>) ActivityHome.class);
            intent.setPackage(null);
            intent.setFlags(270532608);
            x0(1, contextWrapper, intent);
        } catch (Exception unused) {
        }
    }

    public static ArrayList I(r rVar) {
        String str;
        String str2 = rVar.f2740b + "/s/" + rVar.f2744f + "?folderId=" + rVar.f2750m;
        System.out.getClass();
        l9.a aVar = new l9.a(str2);
        aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        aVar.f11017i.b("Referer", rVar.f2741c);
        boolean z = rVar.f2743e;
        String str3 = z ? "cookie" : "connection";
        if (z) {
            str = "share_passed_" + rVar.f2744f + "=" + rVar.f2742d;
        } else {
            str = "keep-alive";
        }
        aVar.f11017i.b(str3, str);
        aVar.f11017i.b("Upgrade-Insecure-Requests", "1");
        Response responseA = aVar.a();
        if (!responseA.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody = responseA.body();
        if (responseBodyBody == null) {
            throw new Exception("请求失败");
        }
        String strString = responseBodyBody.string();
        if (strString.contains("passwordSection")) {
            throw new Exception("密码错误");
        }
        return V(strString);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void I0(AccService accService, boolean z) throws NumberFormatException, SecurityException {
        ActivityManager activityManager = (ActivityManager) accService.getSystemService("activity");
        DisplayManager displayManager = (DisplayManager) accService.getSystemService("display");
        if (displayManager == null || displayManager.getDisplays().length < 2) {
            List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(100);
            for (int size = runningTasks.size(); size > 0; size--) {
                int i10 = size - 1;
                if (runningTasks.get(i10).topActivity != null) {
                    String packageName = runningTasks.get(i10).topActivity.getPackageName();
                    if (!packageName.equals("com.android.systemui") && packageName.contains(".")) {
                        if (System.currentTimeMillis() - accService.H > 6666) {
                            activityManager.moveTaskToFront(runningTasks.get(i10).id, 0);
                            return;
                        }
                        Intent intentM = M(packageName);
                        if (intentM != null) {
                            x0(1, accService, intentM);
                            return;
                        } else {
                            activityManager.moveTaskToFront(runningTasks.get(i10).id, 0);
                            return;
                        }
                    }
                }
            }
            return;
        }
        String string = "";
        for (String str : u9.d.r("dumpsys window displays").l0().k()) {
            StringBuilder sbM = g.b.m(string);
            sbM.append(str.trim());
            string = sbM.toString();
        }
        for (String str2 : string.split("Display: mDisplayId=")) {
            if (z) {
                if (str2.charAt(0) != '0') {
                    continue;
                } else {
                    ArrayList arrayListO = O(str2, " ActivityRecord{", "}");
                    if (!arrayListO.isEmpty()) {
                        for (int size2 = arrayListO.size() - 1; size2 >= 0; size2--) {
                            String[] strArrSplit = ((String) arrayListO.get(size2)).trim().split(" ");
                            if (strArrSplit.length == 4 && strArrSplit[2].contains("/") && strArrSplit[3].startsWith("t")) {
                                String str3 = strArrSplit[2];
                                String strSubstring = str3.substring(0, str3.indexOf("/"));
                                if (!strSubstring.equals("com.android.systemui")) {
                                    int i11 = Integer.parseInt(strArrSplit[3].substring(1));
                                    if (System.currentTimeMillis() - accService.H > 6666) {
                                        activityManager.moveTaskToFront(i11, 0);
                                        return;
                                    }
                                    Intent intentM2 = M(strSubstring);
                                    if (intentM2 != null) {
                                        x0(1, accService, intentM2);
                                        return;
                                    } else {
                                        activityManager.moveTaskToFront(i11, 0);
                                        return;
                                    }
                                }
                            }
                        }
                        return;
                    }
                }
            } else if (str2.charAt(0) == '0') {
                continue;
            }
        }
    }

    public static ResponseBody J(r rVar, l lVar) throws Exception {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(rVar.f2740b);
        sb2.append("/api/share/download?token=");
        sb2.append(rVar.f2744f);
        sb2.append("&fileId=");
        String strL = g.b.l(lVar.f2717c, "&hostId=1", sb2);
        System.out.getClass();
        l9.a aVar = new l9.a(strL);
        aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
        aVar.f11017i.b("Referer", rVar.f2741c);
        boolean z = rVar.f2743e;
        String str2 = z ? "cookie" : "connection";
        if (z) {
            str = "share_passed_" + rVar.f2744f + "=" + rVar.f2742d;
        } else {
            str = "keep-alive";
        }
        aVar.f11017i.b(str2, str);
        Response responseA = aVar.a();
        if (!responseA.isSuccessful()) {
            throw new Exception("请求失败");
        }
        ResponseBody responseBodyBody = responseA.body();
        if (responseBodyBody != null) {
            return responseBodyBody;
        }
        throw new Exception("请求失败");
    }

    public static void J0(AccService accService, String str) {
        try {
            ActivityManager activityManager = (ActivityManager) accService.getSystemService("activity");
            ArrayList arrayListE = s1.g.e();
            int i10 = -1;
            for (int size = arrayListE.size() - 1; size >= 0; size--) {
                if (str.equals(((AmStackListBean) arrayListE.get(size)).packageName)) {
                    i10 = ((AmStackListBean) arrayListE.get(size)).taskId;
                    arrayListE.remove(size);
                } else {
                    if (((AmStackListBean) arrayListE.get(size)).displayId != 0 || ((AmStackListBean) arrayListE.get(size)).userId != 0) {
                        arrayListE.remove(size);
                    }
                    PrintStream printStream = System.out;
                    String str2 = ((AmStackListBean) arrayListE.get(size)).packageName;
                    printStream.getClass();
                }
            }
            Collections.sort(arrayListE, new m(6));
            Iterator it = arrayListE.iterator();
            while (it.hasNext()) {
                AmStackListBean amStackListBean = (AmStackListBean) it.next();
                if (amStackListBean.taskId > i10) {
                    if (System.currentTimeMillis() - accService.H > 6666) {
                        System.out.getClass();
                        activityManager.moveTaskToFront(amStackListBean.taskId, 0);
                        return;
                    } else {
                        Intent intentM = M(amStackListBean.packageName);
                        if (intentM != null) {
                            x0(1, accService, intentM);
                            return;
                        }
                    }
                }
            }
            if (System.currentTimeMillis() - accService.H > 6666) {
                PrintStream printStream2 = System.out;
                int i11 = ((AmStackListBean) arrayListE.get(0)).taskId;
                printStream2.getClass();
                activityManager.moveTaskToFront(((AmStackListBean) arrayListE.get(0)).taskId, 0);
                return;
            }
            Intent intentM2 = M(((AmStackListBean) arrayListE.get(0)).packageName);
            if (intentM2 != null) {
                x0(1, accService, intentM2);
            } else {
                activityManager.moveTaskToFront(((AmStackListBean) arrayListE.get(0)).taskId, 0);
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static void K(n5 n5Var) {
        S(n5Var).b();
        throw null;
    }

    public static void K0(Throwable th2) {
        if (th2 instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th2);
        }
        if (th2 instanceof ThreadDeath) {
            throw ((ThreadDeath) th2);
        }
        if (th2 instanceof LinkageError) {
            throw ((LinkageError) th2);
        }
    }

    public static Intent L(String str) {
        Intent leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? AppStart.f3772h.f3775c.getLeanbackLaunchIntentForPackage(str) : null;
        if (leanbackLaunchIntentForPackage == null) {
            leanbackLaunchIntentForPackage = AppStart.f3772h.f3775c.getLaunchIntentForPackage(str);
        }
        if (leanbackLaunchIntentForPackage == null) {
            return null;
        }
        leanbackLaunchIntentForPackage.setFlags(268435456);
        return leanbackLaunchIntentForPackage;
    }

    public static long L0(String str) {
        if (str.indexOf(58) == str.lastIndexOf(58)) {
            str = str.concat(":00");
        }
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str).getTime();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static Intent M(String str) {
        Intent leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? AppStart.f3772h.f3775c.getLeanbackLaunchIntentForPackage(str) : null;
        if (leanbackLaunchIntentForPackage == null) {
            leanbackLaunchIntentForPackage = AppStart.f3772h.f3775c.getLaunchIntentForPackage(str);
        }
        if (leanbackLaunchIntentForPackage == null) {
            return null;
        }
        leanbackLaunchIntentForPackage.setPackage(null);
        leanbackLaunchIntentForPackage.setFlags(270532608);
        return leanbackLaunchIntentForPackage;
    }

    public static void M0(Response response) throws r9.b {
        if (response.isSuccessful()) {
            return;
        }
        throw new r9.b("Error contacting " + response.request().url(), response.code(), response.message());
    }

    public static String N(String str, String str2, String str3, boolean z) {
        int length;
        int iIndexOf;
        int length2;
        if (!z) {
            int iIndexOf2 = str.indexOf(str2);
            return (iIndexOf2 == -1 || (iIndexOf = str.indexOf(str3, (length = str2.length() + iIndexOf2))) == -1) ? "" : str.substring(length, iIndexOf);
        }
        int iLastIndexOf = str.lastIndexOf(str3);
        if (iLastIndexOf == -1) {
            return "";
        }
        return (iLastIndexOf != -1 && (length2 = str2.length() + str.lastIndexOf(str2, iLastIndexOf)) <= iLastIndexOf) ? str.substring(length2, iLastIndexOf) : "";
    }

    public static ArrayList O(String str, String str2, String str3) {
        int i10;
        int iIndexOf;
        ArrayList arrayList = new ArrayList();
        int length = str2.length();
        int length2 = str3.length();
        do {
            int iIndexOf2 = str.indexOf(str2);
            if (iIndexOf2 == -1 || (iIndexOf = str.indexOf(str3, (i10 = iIndexOf2 + length))) == -1) {
                break;
            }
            String strSubstring = str.substring(i10, iIndexOf);
            if (strSubstring != null && !strSubstring.isEmpty()) {
                arrayList.add(strSubstring);
                str = str.substring(iIndexOf + length2);
            }
        } while (!str.isEmpty());
        return arrayList;
    }

    public static void P(String str, int i10, String str2) {
        StringBuilder sb2 = new StringBuilder("[");
        sb2.append(str);
        sb2.append("](");
        sb2.append(i10);
        sb2.append(")");
        TextUtils.isEmpty(str2);
    }

    public static Point R(Context context) {
        Point point = new Point();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Display defaultDisplay = windowManager.getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 30) {
            Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
            point.x = bounds.width();
            point.y = bounds.height();
        } else {
            defaultDisplay.getRealSize(point);
        }
        if (point.x < 100 || point.y < 100) {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            point.x = displayMetrics.widthPixels;
            point.y = displayMetrics.heightPixels;
        }
        return point;
    }

    public static f0 S(n5 n5Var) throws SocketException, n {
        a9.l lVar = new a9.l();
        String str = n5Var.f18294e;
        String str2 = n5Var.f18292c;
        int i10 = n5Var.f18293d;
        if (str2 == null) {
            throw new n("host must not be null.");
        }
        f0 f0Var = new f0(lVar, str, str2, i10);
        if (n5Var.D.isEmpty()) {
            String str3 = n5Var.f18295f;
            if (str3 != null) {
                byte[] bArr = h0.f503a;
                f0Var.f502y = str3.getBytes(StandardCharsets.UTF_8);
            }
        } else {
            byte[] bytes = null;
            if (n5Var.f18295f.isEmpty()) {
                lVar.a(n5Var.D, null);
            } else {
                String str4 = n5Var.D;
                String str5 = n5Var.f18295f;
                if (str5 != null) {
                    byte[] bArr2 = h0.f503a;
                    bytes = str5.getBytes(StandardCharsets.UTF_8);
                }
                lVar.a(str4, bytes);
                if (bytes != null) {
                    h0.d(bytes);
                }
            }
        }
        f0Var.h("cipher.c2s", f0Var.d("cipher.c2s") + ",aes128-cbc");
        f0Var.h("cipher.s2c", f0Var.d("cipher.s2c") + ",aes128-cbc");
        StringBuilder sb2 = new StringBuilder("diffie-hellman-group1-sha1,");
        sb2.append(f0Var.d("kex"));
        f0Var.h("kex", sb2.toString());
        a9.l.f507e.put("server_host_key", a9.l.b("server_host_key") + ",ssh-rsa,ssh-dss");
        a9.l.f507e.put("PubkeyAcceptedAlgorithms", a9.l.b("PubkeyAcceptedAlgorithms") + ",ssh-rsa,ssh-dss");
        f0Var.h("StrictHostKeyChecking", "no");
        Socket socket = f0Var.f485f;
        if (socket == null) {
            f0Var.f486g = 5555;
        } else {
            try {
                socket.setSoTimeout(5555);
                f0Var.f486g = 5555;
            } catch (Exception e7) {
                throw new n(e7.toString(), e7);
            }
        }
        return f0Var;
    }

    public static int T() {
        return Process.myUid() / 100000;
    }

    public static int U(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static ArrayList V(String str) {
        h hVarZ;
        b6 b6Var;
        ArrayList arrayList = new ArrayList();
        try {
            hVarZ = d.b.Z(str);
            System.out.getClass();
        } catch (Exception unused) {
        }
        if (str.contains("downloadSection")) {
            int iIndexOf = str.indexOf("const fileId = ") + 15;
            arrayList.add(new b6(new l(hVarZ.L(".app-name").b(), Long.valueOf(hVarZ.L(".file-size.app-size").a("data-bytes")).longValue(), str.substring(iIndexOf, str.indexOf(";", iIndexOf)))));
            return arrayList;
        }
        rh.e eVarL = hVarZ.L("#fileList .file-item");
        eVarL.size();
        Iterator<E> it = eVarL.iterator();
        while (it.hasNext()) {
            ph.l lVar = (ph.l) it.next();
            if (lVar.L(".file-size").b().equals("文件夹")) {
                String strA = lVar.L(".file-name.text-blue").a("onclick");
                if (strA.contains("goToFolder")) {
                    b6Var = new b6(new l(lVar.L(".file-name.text-blue").b(), strA.substring(strA.lastIndexOf("(") + 1, strA.lastIndexOf(")"))));
                    arrayList.add(b6Var);
                }
            } else {
                String strA2 = lVar.L(".file-size").a("data-bytes");
                String strA3 = lVar.L(".action-btn").a("href");
                if (strA3.contains("fileId=")) {
                    b6Var = new b6(new l(lVar.L(".file-name").b(), Long.valueOf(strA2).longValue(), strA3.substring(strA3.lastIndexOf("fileId=") + 7)));
                    arrayList.add(b6Var);
                }
            }
        }
        return arrayList;
    }

    public static final byte[] W(int i10) {
        return ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i10).array();
    }

    public static boolean X(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return false;
        }
        String lowerCase = strTrim.toLowerCase();
        DecimalFormat decimalFormat = k.f4034u0;
        Iterator it = j.f4033a.f4057l0.iterator();
        while (it.hasNext()) {
            if (lowerCase.endsWith("." + ((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public static boolean Y(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return false;
        }
        String lowerCase = strTrim.toLowerCase();
        return lowerCase.endsWith(".apks") || lowerCase.endsWith(".xapk") || lowerCase.endsWith(".apkm");
    }

    public static boolean Z(EditText editText) {
        return editText.getInputType() != 0;
    }

    public static boolean a0(Context context) {
        try {
            UsageEvents usageEventsQueryEvents = (Build.VERSION.SDK_INT >= 22 ? o1.f(context.getSystemService("usagestats")) : o1.f(context.getSystemService("usagestats"))).queryEvents(System.currentTimeMillis() - SystemClock.elapsedRealtime(), System.currentTimeMillis() + 600000);
            if (usageEventsQueryEvents == null) {
                return false;
            }
            return usageEventsQueryEvents.hasNextEvent();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean b0(Context context) {
        try {
            return Settings.Secure.putString(context.getContentResolver(), "fgSecure", "fangge");
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean c0(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return false;
        }
        String lowerCase = strTrim.toLowerCase();
        DecimalFormat decimalFormat = k.f4034u0;
        Iterator it = j.f4033a.f4061n0.iterator();
        while (it.hasNext()) {
            if (lowerCase.endsWith("." + ((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public static boolean d0(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 1).size() > 0;
    }

    public static boolean e0(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static void f(n5 n5Var) throws Throwable {
        Throwable th2;
        f0 f0VarS;
        f0 f0Var = null;
        try {
            f0VarS = S(n5Var);
        } catch (Exception unused) {
        } catch (Throwable th3) {
            th2 = th3;
            f0VarS = null;
        }
        try {
            f0VarS.b();
            throw null;
        } catch (Exception unused2) {
            f0Var = f0VarS;
            if (f0Var == null || !f0Var.f487h) {
                return;
            }
            f0Var.c();
        } catch (Throwable th4) {
            th2 = th4;
            if (f0VarS != null && f0VarS.f487h) {
                f0VarS.c();
            }
            throw th2;
        }
    }

    public static boolean f0(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return false;
        }
        String lowerCase = strTrim.toLowerCase();
        DecimalFormat decimalFormat = k.f4034u0;
        Iterator it = j.f4033a.f4067q0.iterator();
        while (it.hasNext()) {
            if (lowerCase.endsWith("." + ((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public static WpPathBean h(n5 n5Var, String str) throws Throwable {
        WpPathBean wpPathBean;
        String strI;
        try {
            wpPathBean = new WpPathBean(str, "");
            strI = i(n5Var);
        } catch (Exception unused) {
        }
        if (strI.isEmpty()) {
            return wpPathBean;
        }
        if (strI.contains("已存在")) {
            return wpPathBean;
        }
        return null;
    }

    public static boolean h0(Context context, Class cls) throws SecurityException {
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService("activity")).getRunningServices(100);
        if (runningServices == null) {
            return false;
        }
        for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
            if (context.getPackageName().equals(runningServiceInfo.service.getPackageName()) && cls.getName().equals(runningServiceInfo.service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String i(n5 n5Var) throws Throwable {
        Throwable th2;
        f0 f0Var;
        Exception e7;
        f0 f0VarS;
        try {
            try {
                f0VarS = S(n5Var);
                try {
                    f0VarS.b();
                    throw null;
                } catch (Exception e10) {
                    e7 = e10;
                    e7.printStackTrace();
                    String message = e7.getMessage();
                    if (message == null || message.isEmpty()) {
                        message = "连接失败";
                    }
                    if (f0VarS != null && f0VarS.f487h) {
                        f0VarS.c();
                    }
                    return message;
                }
            } catch (Throwable th3) {
                th2 = th3;
                f0Var = n5Var;
                if (f0Var != 0 || !f0Var.f487h) {
                    throw th2;
                }
                f0Var.c();
                throw th2;
            }
        } catch (Exception e11) {
            e7 = e11;
            f0VarS = null;
        } catch (Throwable th4) {
            th2 = th4;
            f0Var = 0;
            if (f0Var != 0) {
                throw th2;
            }
            throw th2;
        }
    }

    public static boolean i0(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return false;
        }
        String lowerCase = strTrim.toLowerCase();
        DecimalFormat decimalFormat = k.f4034u0;
        Iterator it = j.f4033a.f4063o0.iterator();
        while (it.hasNext()) {
            if (lowerCase.endsWith("." + ((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public static boolean j(f[] fVarArr, f[] fVarArr2) {
        if (fVarArr == null || fVarArr2 == null || fVarArr.length != fVarArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < fVarArr.length; i10++) {
            f fVar = fVarArr[i10];
            char c7 = fVar.f12545a;
            f fVar2 = fVarArr2[i10];
            if (c7 != fVar2.f12545a || fVar.f12546b.length != fVar2.f12546b.length) {
                return false;
            }
        }
        return true;
    }

    public static boolean j0(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return false;
        }
        String lowerCase = strTrim.toLowerCase();
        DecimalFormat decimalFormat = k.f4034u0;
        Iterator it = j.f4033a.f4065p0.iterator();
        while (it.hasNext()) {
            if (lowerCase.endsWith("." + ((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public static void k(long j10, String str) {
        if (j10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " (" + j10 + ") must be >= 0");
    }

    public static boolean k0(String str) {
        String lowerCase;
        int iLastIndexOf;
        String strTrim = str.trim();
        return !strTrim.isEmpty() && (iLastIndexOf = (lowerCase = strTrim.toLowerCase()).lastIndexOf(".")) > 0 && v.f4106a.F0.contains(lowerCase.substring(iLastIndexOf + 1));
    }

    public static void l(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    public static String l0(long j10) {
        double d10 = j10;
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        double d11 = 1048576L;
        if (d10 >= d11) {
            Double.isNaN(d10);
            Double.isNaN(d11);
            return q.n(decimalFormat, d10 / d11, new StringBuilder(), "G");
        }
        if (d10 >= 1024.0d) {
            Double.isNaN(d10);
            return q.n(decimalFormat, d10 / 1024.0d, new StringBuilder(), "M");
        }
        return d10 + "K";
    }

    public static int m(long j10, long j11) {
        if (j10 < j11) {
            return -1;
        }
        return j10 > j11 ? 1 : 0;
    }

    public static String m0(long j10) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        return j10 < 10000000000L ? simpleDateFormat.format(new Date(j10 * 1000)) : simpleDateFormat.format(new Date(j10));
    }

    public static byte[] n(byte[]... bArr) {
        int length = 0;
        for (byte[] bArr2 : bArr) {
            length += bArr2.length;
        }
        byte[] bArr3 = new byte[length];
        int length2 = 0;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte[] bArr4 = bArr[i10];
            System.arraycopy(bArr4, 0, bArr3, length2, bArr4.length);
            length2 += bArr[i10].length;
        }
        return bArr3;
    }

    public static void n0(String str) {
        int iLastIndexOf;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null || stackTrace.length < 4) {
            P("", 0, str);
            return;
        }
        String fileName = stackTrace[3].getFileName();
        if (!TextUtils.isEmpty(fileName) && (iLastIndexOf = fileName.lastIndexOf(46)) > -1 && iLastIndexOf < fileName.length()) {
            fileName.substring(0, iLastIndexOf);
        }
        P(stackTrace[3].getMethodName(), stackTrace[3].getLineNumber(), str);
    }

    public static void o0(String str) {
        int iLastIndexOf;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null || stackTrace.length < 4) {
            P("", 0, str);
            return;
        }
        String fileName = stackTrace[3].getFileName();
        if (!TextUtils.isEmpty(fileName) && (iLastIndexOf = fileName.lastIndexOf(46)) > -1 && iLastIndexOf < fileName.length()) {
            fileName.substring(0, iLastIndexOf);
        }
        P(stackTrace[3].getMethodName(), stackTrace[3].getLineNumber(), str);
    }

    public static long[] p(long[]... jArr) {
        long length = 0;
        for (long[] jArr2 : jArr) {
            length += jArr2.length;
        }
        int i10 = (int) length;
        o.j("the total number of elements (%s) in the arrays must fit in an int", length == ((long) i10), length);
        long[] jArr3 = new long[i10];
        int length2 = 0;
        for (long[] jArr4 : jArr) {
            System.arraycopy(jArr4, 0, jArr3, length2, jArr4.length);
            length2 += jArr4.length;
        }
        return jArr3;
    }

    public static String p0(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : bArrDigest) {
                String hexString = Integer.toHexString(b10 & 255);
                if (hexString.length() == 1) {
                    sb2.append('0');
                }
                sb2.append(hexString);
            }
            return sb2.toString();
        } catch (NoSuchAlgorithmException e7) {
            e7.printStackTrace();
            return "";
        }
    }

    public static lb.a q0(long j10) {
        g1 g1Var = lb.a.f10705c;
        jb.c cVar = (jb.c) ((ArrayBlockingQueue) g1Var.f176c).poll();
        if (cVar != null) {
            lb.a aVar = (lb.a) cVar;
            aVar.f10706a = 0;
            aVar.f10707b = j10;
        } else {
            cVar = (jb.c) ((jd) g1Var.f175b).f(0, Long.valueOf(j10));
        }
        return (lb.a) cVar;
    }

    public static float[] r(float[] fArr, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int iMin = Math.min(i10, length);
        float[] fArr2 = new float[i10];
        System.arraycopy(fArr, 0, fArr2, 0, iMin);
        return fArr2;
    }

    public static final List r0(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex(Name.MARK);
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        ke.c cVar = new ke.c(10);
        while (cursor.moveToNext()) {
            int i10 = cursor.getInt(columnIndex);
            int i11 = cursor.getInt(columnIndex2);
            String string = cursor.getString(columnIndex3);
            ue.d.d(string, "cursor.getString(fromColumnIndex)");
            String string2 = cursor.getString(columnIndex4);
            ue.d.d(string2, "cursor.getString(toColumnIndex)");
            cVar.add(new a4.c(string, i10, i11, string2));
        }
        ke.c cVarE = qf.c.e(cVar);
        ue.d.e(cVarE, "<this>");
        if (cVarE.a() <= 1) {
            return je.j.m0(cVarE);
        }
        Object[] array = cVarE.toArray(new Comparable[0]);
        Comparable[] comparableArr = (Comparable[]) array;
        if (comparableArr.length > 1) {
            Arrays.sort(comparableArr);
        }
        List listAsList = Arrays.asList(array);
        ue.d.d(listAsList, "asList(...)");
        return listAsList;
    }

    public static void s(Context context, String str) {
        try {
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(AnnotatedPrivateKey.LABEL, str));
        } catch (Exception unused) {
        }
    }

    public static final a4.d s0(c4.a aVar, String str, boolean z) {
        Cursor cursorS = aVar.s("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = cursorS.getColumnIndex("seqno");
            int columnIndex2 = cursorS.getColumnIndex("cid");
            int columnIndex3 = cursorS.getColumnIndex("name");
            int columnIndex4 = cursorS.getColumnIndex("desc");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex4 != -1) {
                TreeMap treeMap = new TreeMap();
                TreeMap treeMap2 = new TreeMap();
                while (cursorS.moveToNext()) {
                    if (cursorS.getInt(columnIndex2) >= 0) {
                        int i10 = cursorS.getInt(columnIndex);
                        String string = cursorS.getString(columnIndex3);
                        String str2 = cursorS.getInt(columnIndex4) > 0 ? "DESC" : "ASC";
                        Integer numValueOf = Integer.valueOf(i10);
                        ue.d.d(string, "columnName");
                        treeMap.put(numValueOf, string);
                        treeMap2.put(Integer.valueOf(i10), str2);
                    }
                }
                Collection collectionValues = treeMap.values();
                ue.d.d(collectionValues, "columnsMap.values");
                List listM0 = je.j.m0(collectionValues);
                Collection collectionValues2 = treeMap2.values();
                ue.d.d(collectionValues2, "ordersMap.values");
                a4.d dVar = new a4.d(str, z, listM0, je.j.m0(collectionValues2));
                qf.c.g(cursorS, null);
                return dVar;
            }
            qf.c.g(cursorS, null);
            return null;
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009d A[Catch: NumberFormatException -> 0x00b1, LOOP:3: B:29:0x006f->B:48:0x009d, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00b1, blocks: (B:26:0x005b, B:29:0x006f, B:31:0x0075, B:35:0x0081, B:48:0x009d, B:50:0x00a3, B:56:0x00b8, B:57:0x00bb), top: B:71:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a3 A[Catch: NumberFormatException -> 0x00b1, TryCatch #0 {NumberFormatException -> 0x00b1, blocks: (B:26:0x005b, B:29:0x006f, B:31:0x0075, B:35:0x0081, B:48:0x009d, B:50:0x00a3, B:56:0x00b8, B:57:0x00bb), top: B:71:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00b8 A[Catch: NumberFormatException -> 0x00b1, TryCatch #0 {NumberFormatException -> 0x00b1, blocks: (B:26:0x005b, B:29:0x006f, B:31:0x0075, B:35:0x0081, B:48:0x009d, B:50:0x00a3, B:56:0x00b8, B:57:0x00bb), top: B:71:0x005b }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00de A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x009c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static f[] t(String str) throws NumberFormatException {
        String strTrim;
        int i10;
        float[] fArrR;
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        while (i12 < str.length()) {
            while (i12 < str.length()) {
                char cCharAt = str.charAt(i12);
                if ((cCharAt - 'Z') * (cCharAt - 'A') > 0) {
                    if ((cCharAt - 'z') * (cCharAt - 'a') > 0) {
                        continue;
                    }
                    i12++;
                }
                if (cCharAt == 'e' || cCharAt == 'E') {
                    i12++;
                } else {
                    strTrim = str.substring(i13, i12).trim();
                    if (strTrim.length() > 0) {
                        if (strTrim.charAt(i11) == 'z' || strTrim.charAt(i11) == 'Z') {
                            i10 = 0;
                            fArrR = new float[0];
                        } else {
                            try {
                                float[] fArr = new float[strTrim.length()];
                                int length = strTrim.length();
                                int i14 = 1;
                                int i15 = 0;
                                while (i14 < length) {
                                    boolean z = false;
                                    boolean z4 = false;
                                    boolean z10 = false;
                                    boolean z11 = false;
                                    for (int i16 = i14; i16 < strTrim.length(); i16++) {
                                        char cCharAt2 = strTrim.charAt(i16);
                                        if (cCharAt2 == ' ') {
                                            z = false;
                                            z10 = true;
                                            if (z10) {
                                            }
                                        } else {
                                            if (cCharAt2 != 'E' && cCharAt2 != 'e') {
                                                switch (cCharAt2) {
                                                    case ',':
                                                        break;
                                                    case '-':
                                                        if (i16 != i14 && !z) {
                                                            z = false;
                                                            z10 = true;
                                                            z11 = true;
                                                            break;
                                                        }
                                                        z = false;
                                                        break;
                                                    case '.':
                                                        if (z4) {
                                                            z = false;
                                                            z10 = true;
                                                            z11 = true;
                                                            break;
                                                        } else {
                                                            z = false;
                                                            z4 = true;
                                                            break;
                                                        }
                                                    default:
                                                        z = false;
                                                        break;
                                                }
                                            } else {
                                                z = true;
                                            }
                                            if (z10) {
                                            }
                                        }
                                        if (i14 < i16) {
                                            fArr[i15] = Float.parseFloat(strTrim.substring(i14, i16));
                                            i15++;
                                        }
                                        i14 = !z11 ? i16 : i16 + 1;
                                    }
                                    if (i14 < i16) {
                                    }
                                    if (!z11) {
                                    }
                                }
                                fArrR = r(fArr, i15);
                                i10 = 0;
                            } catch (NumberFormatException e7) {
                                throw new RuntimeException(g.b.A("error in parsing \"", strTrim, "\""), e7);
                            }
                        }
                        arrayList.add(new f(strTrim.charAt(i10), fArrR));
                    }
                    i13 = i12;
                    i11 = 0;
                    i12++;
                }
            }
            strTrim = str.substring(i13, i12).trim();
            if (strTrim.length() > 0) {
            }
            i13 = i12;
            i11 = 0;
            i12++;
        }
        if (i12 - i13 == 1 && i13 < str.length()) {
            arrayList.add(new f(str.charAt(i13), new float[0]));
        }
        return (f[]) arrayList.toArray(new f[arrayList.size()]);
    }

    public static void t0(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str.concat(" must not be null"));
        }
    }

    public static long u0(long j10, long j11) {
        long j12 = j10 + j11;
        if ((j10 ^ j12) >= 0 || (j10 ^ j11) < 0) {
            return j12;
        }
        StringBuilder sbW = android.support.v4.media.session.a.w(j10, "Addition overflows a long: ", " + ");
        sbW.append(j11);
        throw new ArithmeticException(sbW.toString());
    }

    public static Path v(String str) throws NumberFormatException {
        Path path = new Path();
        f[] fVarArrT = t(str);
        if (fVarArrT == null) {
            return null;
        }
        try {
            f.b(fVarArrT, path);
            return path;
        } catch (RuntimeException e7) {
            throw new RuntimeException(da.b.c("Error in parsing ", str), e7);
        }
    }

    public static long v0(int i10, long j10) {
        if (i10 == -1) {
            if (j10 != Long.MIN_VALUE) {
                return -j10;
            }
            throw new ArithmeticException("Multiplication overflows a long: " + j10 + " * " + i10);
        }
        if (i10 == 0) {
            return 0L;
        }
        if (i10 == 1) {
            return j10;
        }
        long j11 = i10;
        long j12 = j10 * j11;
        if (j12 / j11 == j10) {
            return j12;
        }
        throw new ArithmeticException("Multiplication overflows a long: " + j10 + " * " + i10);
    }

    public static void w(File file, String str, String str2, b bVar) {
        if (!str.endsWith("/")) {
            str = str.concat("/");
        }
        try {
            new File(str).mkdirs();
            x(file, str, str2, bVar);
        } catch (Exception e7) {
            e7.printStackTrace();
            b0.f5652a.getClass();
            w0.B(str);
            String strZ = g.b.z(e7, new StringBuilder(""));
            if (!strZ.contains(" password") && !strZ.contains("Password is") && !strZ.contains("can't be opened with") && !strZ.contains("extracting all items") && !strZ.contains("Compressed data is corrupt")) {
                throw e7;
            }
            throw new Exception((str2 == null || str2.isEmpty()) ? "需要密码" : "密码错误");
        }
    }

    public static String w0(int i10) {
        switch (i10) {
            case 5:
                return "2.0";
            case 6:
                return "2.0.1";
            case 7:
                return "2.1";
            case 8:
                return "2.2";
            case 9:
                return "2.3";
            case 10:
                return "2.33";
            case 11:
                return "3.0";
            case 12:
                return "3.1";
            case 13:
                return "3.2";
            case 14:
                return "4.0";
            case 15:
                return "4.0.3";
            case 16:
                return "4.1";
            case 17:
                return "4.2";
            case 18:
                return "4.3";
            case 19:
                return "4.4";
            case 20:
                return "4.4w";
            case 21:
                return "5.0";
            case 22:
                return "5.1";
            case 23:
                return "6.0";
            case 24:
                return "7.0";
            case 25:
                return "7.1";
            case 26:
                return "8.0";
            case 27:
                return "8.1";
            case 28:
                return "9.0";
            case 29:
                return "10";
            case 30:
                return "11";
            case 31:
                return "12";
            case 32:
                return "12+";
            case 33:
                return "13";
            case 34:
                return "14";
            case 35:
                return "15";
            case 36:
                return "16";
            case 37:
                return "17";
            case 38:
                return "18";
            default:
                return i10 < 5 ? "1.0" : i10 > 38 ? "18+" : "未知";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x0284, code lost:
    
        if (r11.startsWith(r10) == false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0286, code lost:
    
        r14 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void x(File file, String str, String str2, b bVar) throws Exception {
        ArrayList arrayList;
        cg.a aVar;
        String lowerCase = file.getName().toLowerCase(Locale.ROOT);
        if (!lowerCase.endsWith(".zip") && !lowerCase.endsWith(".jar") && !lowerCase.endsWith(".apk") && !lowerCase.endsWith(".apk.1") && !lowerCase.endsWith(".apks") && !lowerCase.endsWith(".apkm") && !lowerCase.endsWith(".xapk")) {
            if (!lowerCase.endsWith(".7z")) {
                if (lowerCase.endsWith(".tar")) {
                    B(new FileInputStream(file), str, bVar);
                    return;
                }
                if (lowerCase.endsWith(".tar.gz") || lowerCase.endsWith(".tgz")) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    pg.c cVar = new pg.c();
                    cVar.f15098b = new tg.a(1, fileInputStream);
                    B(new pg.d(cVar), str, bVar);
                    return;
                }
                if (lowerCase.endsWith(".tar.bz2") || lowerCase.endsWith(".tbz2")) {
                    B(new ng.b(new FileInputStream(file)), str, bVar);
                    return;
                }
                if (!lowerCase.endsWith(".tar.xz") && !lowerCase.endsWith(".txz")) {
                    throw new IOException("不支持此格式");
                }
                FileInputStream fileInputStream2 = new FileInputStream(file);
                qg.a aVar2 = new qg.a();
                aVar2.f15098b = new tg.a(1, fileInputStream2);
                B(new qg.b(aVar2), str, bVar);
                return;
            }
            jg.s sVar = new jg.s();
            sVar.f15098b = new tg.a(0, file);
            if (str2 != null) {
                sVar.f9953e = jg.k.i(str2.toCharArray());
            }
            if (((tg.b) sVar.f15098b) == null) {
                throw new IllegalStateException("origin == null");
            }
            OpenOption[] openOptionArrQ0 = sVar.Q0();
            if (zg.a.b(openOptionArrQ0)) {
                openOptionArrQ0 = new OpenOption[]{StandardOpenOption.READ};
            }
            tg.b bVar2 = (tg.b) sVar.f15098b;
            if (bVar2 == null) {
                throw new IllegalStateException("origin == null");
            }
            java.nio.file.Path pathO0 = bVar2.O0();
            t tVar = new t(Files.newByteChannel(pathO0, openOptionArrQ0), pathO0.toAbsolutePath().toString(), sVar.f9953e, sVar.f9954f);
            byte[] bArr = new byte[PKIFailureInfo.signerNotTrusted];
            for (jg.n nVarK = tVar.K(); nVarK != null; nVarK = tVar.K()) {
                if (bVar != null) {
                    bVar.f(nVarK.f9925a);
                }
                if (nVarK.f9927c || nVarK.f9925a.endsWith("/")) {
                    StringBuilder sbM = g.b.m(str);
                    sbM.append(nVarK.f9925a);
                    new File(sbM.toString()).mkdirs();
                } else {
                    StringBuilder sbM2 = g.b.m(str);
                    sbM2.append(nVarK.f9925a);
                    FileOutputStream fileOutputStream = new FileOutputStream(sbM2.toString());
                    try {
                        for (int i10 = tVar.read(bArr); i10 != -1; i10 = tVar.read(bArr)) {
                            fileOutputStream.write(bArr, 0, i10);
                        }
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
            }
            return;
        }
        sf.a aVar3 = str2 == null ? new sf.a(file, null) : new sf.a(file, str2.toCharArray());
        if (aVar3.f14553b == null) {
            aVar3.J();
            if (aVar3.f14553b == null) {
                throw new wf.a("Zip Model is null");
            }
        }
        ag.c cVar2 = aVar3.f14553b.f698b;
        if (cVar2 == null || (arrayList = cVar2.f665a) == null) {
            throw new wf.a("invalid zip file");
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ag.f fVar = (ag.f) it.next();
            if (fVar != null && fVar.l) {
                aVar3.f14554c = true;
                break;
            }
        }
        if (aVar3.f14554c && str2 == null) {
            throw new Exception("需要密码");
        }
        if (aVar3.f14553b == null) {
            aVar3.J();
            if (aVar3.f14553b == null) {
                throw new wf.a("Zip Model is null");
            }
        }
        if (aVar3.f14553b.f702f) {
            throw new Exception("此压缩包是拆分包，需多个一起解压");
        }
        FileInputStream fileInputStream3 = new FileInputStream(file);
        try {
            yf.j jVar = str2 == null ? new yf.j(fileInputStream3, null) : new yf.j(fileInputStream3, str2.toCharArray());
            try {
                ag.g gVarA = jVar.A(null, true);
                String str3 = "";
                int i11 = 0;
                while (true) {
                    if (gVarA == null) {
                        break;
                    }
                    i11++;
                    String str4 = gVarA.f657k;
                    if (i11 != 1) {
                        break;
                    }
                    if (!gVarA.f663t && !str4.endsWith("/")) {
                        break;
                    }
                    if (!str4.equals(new File(str).getName() + "/")) {
                        break;
                    }
                    gVarA = jVar.A(null, true);
                    str3 = str4;
                }
                boolean z = false;
                jVar.close();
                fileInputStream3.close();
                System.out.getClass();
                aVar3.f14556e = true;
                if (z) {
                    aVar3.r(new File(str).getParent());
                } else {
                    aVar3.r(str);
                }
                while (true) {
                    aVar = aVar3.f14555d;
                    if (d0.f.a(aVar.f3241a, 1)) {
                        break;
                    }
                    if (bVar != null) {
                        bVar.f(aVar.f3243c + "/" + aVar.f3242b + "   " + aVar.f3244d + "%");
                    }
                    Thread.sleep(300L);
                }
                if (d0.f.a(aVar.f3245e, 1)) {
                    return;
                }
                if (d0.f.a(aVar.f3245e, 3)) {
                    throw new Exception(g.b.z(aVar.f3246f, new StringBuilder("")));
                }
                if (!d0.f.a(aVar.f3245e, 4)) {
                    throw new Exception("解压出错");
                }
                throw new Exception("已取消");
            } finally {
                try {
                    jVar.close();
                } catch (Throwable th4) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th4);
                    } catch (Exception unused2) {
                    }
                }
            }
        } catch (Throwable th5) {
            try {
                fileInputStream3.close();
            } catch (Throwable th6) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th5, th6);
                } catch (Exception unused3) {
                }
            }
            throw th5;
        }
    }

    public static void x0(int i10, Context context, Intent intent) {
        if ((intent.getFlags() & 32) == 0) {
            intent.addFlags(32);
        }
        if (!wa.t.f17728a.f17752s) {
            int i11 = Build.VERSION.SDK_INT;
            int i12 = i11 >= 23 ? 201326592 : 134217728;
            PendingIntent activity = i10 == 1 ? PendingIntent.getActivity(context, 0, intent, i12) : i10 == 2 ? PendingIntent.getBroadcast(context, 0, intent, i12) : i11 >= 26 ? PendingIntent.getForegroundService(context, 0, intent, i12) : PendingIntent.getService(context, 0, intent, i12);
            if (i11 < 34) {
                activity.send();
                return;
            }
            ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
            activityOptionsMakeBasic.setPendingIntentBackgroundActivityStartMode(1);
            activity.send(context, 0, null, null, null, null, activityOptionsMakeBasic.toBundle());
            return;
        }
        if (i10 == 1) {
            if ((intent.getFlags() & 268435456) == 0) {
                intent.addFlags(268435456);
            }
            if ((intent.getFlags() & PKIFailureInfo.badSenderNonce) == 0) {
                intent.addFlags(PKIFailureInfo.badSenderNonce);
            }
            context.startActivity(intent);
            return;
        }
        if (i10 == 2) {
            context.sendBroadcast(intent);
        } else if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent);
        } else {
            context.startService(intent);
        }
    }

    public static f[] y(f[] fVarArr) {
        if (fVarArr == null) {
            return null;
        }
        f[] fVarArr2 = new f[fVarArr.length];
        for (int i10 = 0; i10 < fVarArr.length; i10++) {
            fVarArr2[i10] = new f(fVarArr[i10]);
        }
        return fVarArr2;
    }

    public static void y0(ContextWrapper contextWrapper, Intent intent) {
        x0(1, contextWrapper, intent);
    }

    public static boolean z(Object obj, Comparable comparable) {
        if (obj == null) {
            return comparable == null;
        }
        if (comparable == null) {
            return false;
        }
        return obj.equals(comparable);
    }

    public static void z0(Context context, String str) {
        ActivityInfo[] activityInfoArr;
        try {
            Intent leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? context.getPackageManager().getLeanbackLaunchIntentForPackage(str) : null;
            if (leanbackLaunchIntentForPackage == null) {
                leanbackLaunchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            }
            if (leanbackLaunchIntentForPackage == null && (activityInfoArr = context.getPackageManager().getPackageInfo(str, 1).activities) != null) {
                int length = activityInfoArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    ActivityInfo activityInfo = activityInfoArr[i10];
                    if (activityInfo.exported && activityInfo.enabled) {
                        leanbackLaunchIntentForPackage = new Intent();
                        leanbackLaunchIntentForPackage.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
                        break;
                    }
                    i10++;
                }
            }
            if (leanbackLaunchIntentForPackage == null) {
                System.out.getClass();
                return;
            }
            leanbackLaunchIntentForPackage.setPackage(null);
            leanbackLaunchIntentForPackage.setFlags(270532608);
            x0(1, context, leanbackLaunchIntentForPackage);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public abstract Method E(Class cls, Field field);

    public abstract Constructor F(Class cls);

    public abstract String[] Q(Class cls);

    @Override // androidx.leanback.transition.e
    public float c(View view) {
        return view.getTranslationX();
    }

    @Override // androidx.leanback.transition.e
    public Property d() {
        return View.TRANSLATION_X;
    }

    public abstract boolean g0(Class cls);
}
