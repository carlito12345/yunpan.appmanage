package com.yunpan.appmanage.util;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.base.AppStart;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class a implements Thread.UncaughtExceptionHandler {

    /* renamed from: d, reason: collision with root package name */
    public static final a f3992d = new a();

    /* renamed from: a, reason: collision with root package name */
    public Thread.UncaughtExceptionHandler f3993a;

    /* renamed from: b, reason: collision with root package name */
    public AppStart f3994b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f3995c = new HashMap();

    public static a a() {
        return f3992d;
    }

    public final void b(AppStart appStart) {
        this.f3994b = appStart;
        this.f3993a = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th2) throws IllegalAccessException, PackageManager.NameNotFoundException, SecurityException, IOException, IllegalArgumentException, InvocationTargetException {
        if (th2 == null) {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f3993a;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th2);
                return;
            }
        } else {
            AppStart appStart = this.f3994b;
            HashMap map = this.f3995c;
            try {
                map.put("品牌：", Build.BRAND + " 型号：" + Build.MODEL + "  系统：" + p000if.a.w0(Build.VERSION.SDK_INT));
                PackageInfo packageInfo = appStart.getPackageManager().getPackageInfo(appStart.getPackageName(), 1);
                if (packageInfo != null) {
                    System.out.getClass();
                    map.put("应用版本号：", packageInfo.versionCode + "");
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            for (Field field : Build.class.getDeclaredFields()) {
                try {
                    field.setAccessible(true);
                    map.put(field.getName(), field.get(null).toString());
                    field.getName();
                    Object obj = field.get(null);
                    if (obj != null) {
                        obj.toString();
                    }
                } catch (Exception unused2) {
                }
            }
            th2.printStackTrace();
            MyLog.d("error:" + th2.getMessage());
            th2.getMessage();
            wa.t.f17728a.d(System.currentTimeMillis());
            StringBuffer stringBuffer = new StringBuffer();
            for (Map.Entry entry : map.entrySet()) {
                stringBuffer.append((String) entry.getKey());
                stringBuffer.append("=");
                stringBuffer.append((String) entry.getValue());
                stringBuffer.append(SignParameters.NEW_LINE);
            }
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th2.printStackTrace(printWriter);
            for (Throwable cause = th2.getCause(); cause != null; cause = cause.getCause()) {
                cause.printStackTrace(printWriter);
            }
            printWriter.close();
            stringBuffer.append(stringWriter.toString());
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(Environment.getExternalStorageState().equals("mounted") ? Environment.getExternalStorageDirectory().getAbsolutePath() + "/闪退报告.txt" : this.f3994b.getCacheDir().getParentFile().getPath() + "/闪退报告.txt");
                fileOutputStream.write(stringBuffer.toString().getBytes());
                fileOutputStream.close();
            } catch (Exception unused3) {
            }
        }
        try {
            Process.killProcess(Process.myPid());
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        System.exit(1);
    }
}
