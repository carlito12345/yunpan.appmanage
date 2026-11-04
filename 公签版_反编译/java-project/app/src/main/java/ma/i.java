package ma;

import a2.c0;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.provider.Settings;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.ApkSourceBean;
import com.yunpan.appmanage.ui.ActivityOuShang;
import com.yunpan.appmanage.util.v;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Semaphore;
import l5.y;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: b, reason: collision with root package name */
    public Context f11035b;

    /* renamed from: c, reason: collision with root package name */
    public PackageInstaller f11036c;

    /* renamed from: e, reason: collision with root package name */
    public Handler f11038e;

    /* renamed from: h, reason: collision with root package name */
    public f f11041h;

    /* renamed from: k, reason: collision with root package name */
    public g f11044k;

    /* renamed from: a, reason: collision with root package name */
    public String f11034a = "";

    /* renamed from: d, reason: collision with root package name */
    public final HandlerThread f11037d = new HandlerThread("appManage Worker");

    /* renamed from: f, reason: collision with root package name */
    public boolean f11039f = false;

    /* renamed from: g, reason: collision with root package name */
    public final Semaphore f11040g = new Semaphore(0);

    /* renamed from: i, reason: collision with root package name */
    public String f11042i = "";

    /* renamed from: j, reason: collision with root package name */
    public final f f11043j = new f(this, Looper.getMainLooper(), 1);

    public static i a() {
        return h.f11033a;
    }

    public final void b(AppStart appStart) {
        Context applicationContext = appStart.getApplicationContext();
        this.f11035b = applicationContext;
        this.f11036c = applicationContext.getPackageManager().getPackageInstaller();
        j jVar = new j(this.f11035b, new y(4, this));
        HandlerThread handlerThread = this.f11037d;
        handlerThread.start();
        this.f11038e = new Handler(handlerThread.getLooper());
        this.f11041h = new f(this, handlerThread.getLooper(), 0);
        try {
            this.f11035b.getApplicationContext().registerReceiver(jVar, new IntentFilter("com.yunpan.appmanage.action.ACTION_DELIVER_PI_EVENT"), null, this.f11038e);
        } catch (Exception unused) {
            this.f11034a = "失败：注册回调失败";
            h.f11033a.f11039f = false;
            this.f11040g.release();
        }
    }

    public final void c(String str, g gVar) {
        this.f11044k = gVar;
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.f4050h0.submit(new c0(this, str, gVar));
    }

    public final String d(String str) {
        String str2;
        Class<Throwable> cls;
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return "不能在主线程中调用此方法";
        }
        if (Build.VERSION.SDK_INT < 21) {
            return "系统低于5.0无法使用管家安装器";
        }
        int i10 = ActivityOuShang.E;
        if (v.f4106a.E) {
            try {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                String string = Settings.Global.getString(kVar.f4035a.getContentResolver(), "OUSHANG_WHILTE_APP_LIST");
                if (string == null || string.equals("null")) {
                    string = "";
                }
                ef.b bVar = new ef.b(new File(str));
                try {
                    bVar.M();
                    String str3 = bVar.f4963e.f5813a;
                    if (!string.isEmpty() && !string.endsWith(",")) {
                        string = string.concat(",");
                    }
                    if (!string.contains(str3 + ",")) {
                        Settings.Global.putString(kVar.f4035a.getContentResolver(), "OUSHANG_WHILTE_APP_LIST", string + str3);
                    }
                    bVar.close();
                } finally {
                    try {
                        bVar.close();
                    } catch (Throwable th2) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                        } catch (Exception unused) {
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
        synchronized (this) {
            try {
                this.f11042i = "";
                this.f11039f = false;
                ArrayList arrayList = new ArrayList();
                String lowerCase = str.toLowerCase();
                PackageInstaller.Session session = null;
                if (lowerCase.endsWith(".apks") || lowerCase.endsWith(".apkm") || lowerCase.endsWith(".xapk") || lowerCase.endsWith(".zip")) {
                    StringBuilder sb2 = new StringBuilder();
                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                    sb2.append(com.yunpan.appmanage.util.j.f4033a.Q);
                    String str4 = File.separator;
                    sb2.append(str4);
                    sb2.append(System.currentTimeMillis());
                    sb2.append(str4);
                    String string2 = sb2.toString();
                    try {
                        if (v.f4106a.f4140r0) {
                            p000if.a.w(new File(str), string2, null, null);
                        } else {
                            za.g.e(new File(str), string2, null, null);
                        }
                        String str5 = "";
                        File[] fileArrListFiles = new File(string2).listFiles();
                        boolean z = false;
                        for (File file : fileArrListFiles) {
                            if (file.getName().toLowerCase().endsWith(".apk")) {
                                arrayList.add(new ApkSourceBean(file));
                                if (str5.isEmpty()) {
                                    try {
                                        PackageInfo packageArchiveInfo = this.f11035b.getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 1);
                                        if (packageArchiveInfo != null) {
                                            str5 = packageArchiveInfo.packageName;
                                            if (arrayList.size() > 1) {
                                                arrayList.remove(arrayList.size() - 1);
                                                arrayList.add(0, new ApkSourceBean(file));
                                            }
                                        }
                                    } catch (Exception e7) {
                                        e7.printStackTrace();
                                    }
                                }
                            } else if (file.getName().toLowerCase().endsWith(".obb")) {
                                z = true;
                            }
                        }
                        if (!str5.isEmpty() && z) {
                            for (File file2 : fileArrListFiles) {
                                if (file2.getName().toLowerCase().endsWith(".obb")) {
                                    try {
                                        new File(this.f11035b.getObbDir().getParentFile().getPath() + "/" + str5 + "/").mkdirs();
                                        if (file2.renameTo(new File(this.f11035b.getObbDir().getParentFile().getPath() + "/" + str5 + "/" + file2.getName()))) {
                                            continue;
                                        } else {
                                            FileInputStream fileInputStream = new FileInputStream(file2);
                                            try {
                                                FileOutputStream fileOutputStream = new FileOutputStream(new File(this.f11035b.getObbDir().getParentFile().getPath() + "/" + str5 + "/" + file2.getName()));
                                                try {
                                                    byte[] bArr = new byte[1048576];
                                                    while (true) {
                                                        int i11 = fileInputStream.read(bArr);
                                                        if (i11 <= 0) {
                                                            break;
                                                        }
                                                        fileOutputStream.write(bArr, 0, i11);
                                                    }
                                                    fileOutputStream.close();
                                                    fileInputStream.close();
                                                } catch (Throwable th3) {
                                                    try {
                                                        fileOutputStream.close();
                                                    } catch (Throwable th4) {
                                                        try {
                                                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th3, th4);
                                                        } catch (Exception unused3) {
                                                        }
                                                    }
                                                    throw th3;
                                                }
                                            } catch (Throwable th5) {
                                                try {
                                                    fileInputStream.close();
                                                } catch (Throwable th6) {
                                                    try {
                                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th5, th6);
                                                    } catch (Exception unused4) {
                                                    }
                                                }
                                                throw th5;
                                            }
                                        }
                                    } catch (Exception unused5) {
                                        continue;
                                    }
                                }
                            }
                        }
                    } catch (Exception unused6) {
                        return "解压失败";
                    }
                } else {
                    arrayList.add(new ApkSourceBean(new File(str)));
                }
                Iterator<PackageInstaller.SessionInfo> it = this.f11036c.getMySessions().iterator();
                while (it.hasNext()) {
                    try {
                        try {
                            this.f11036c.abandonSession(it.next().getSessionId());
                        } catch (Exception unused7) {
                        }
                    } finally {
                        if (0 != 0) {
                            session.close();
                        }
                    }
                }
                try {
                    PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
                    sessionParams.setInstallLocation(0);
                    if (Build.VERSION.SDK_INT >= 26) {
                        sessionParams.setInstallReason(4);
                    }
                    PackageInstaller.Session sessionOpenSession = this.f11036c.openSession(this.f11036c.createSession(sessionParams));
                    for (int i12 = 0; i12 < arrayList.size(); i12++) {
                        FileInputStream fileInputStream2 = new FileInputStream(((ApkSourceBean) arrayList.get(i12)).path);
                        try {
                            OutputStream outputStreamOpenWrite = sessionOpenSession.openWrite(String.format("%d.apk", Integer.valueOf(i12)), 0L, ((ApkSourceBean) arrayList.get(i12)).size);
                            try {
                                byte[] bArr2 = new byte[1048576];
                                while (true) {
                                    int i13 = fileInputStream2.read(bArr2);
                                    if (i13 <= 0) {
                                        break;
                                    }
                                    outputStreamOpenWrite.write(bArr2, 0, i13);
                                }
                                sessionOpenSession.fsync(outputStreamOpenWrite);
                                if (outputStreamOpenWrite != null) {
                                    outputStreamOpenWrite.close();
                                }
                                fileInputStream2.close();
                            } finally {
                                if (outputStreamOpenWrite != null) {
                                    try {
                                    } catch (Throwable th7) {
                                        try {
                                            cls.getDeclaredMethod("addSuppressed", cls).invoke(th, th7);
                                        } catch (Exception unused8) {
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th8) {
                            try {
                                fileInputStream2.close();
                            } catch (Throwable th9) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th8, th9);
                                } catch (Exception unused9) {
                                }
                            }
                            throw th8;
                        }
                    }
                    sessionOpenSession.commit(PendingIntent.getBroadcast(this.f11035b, 0, new Intent("com.yunpan.appmanage.action.ACTION_DELIVER_PI_EVENT"), Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728).getIntentSender());
                    try {
                        this.f11040g.acquire();
                        this.f11042i = "";
                        str2 = this.f11034a;
                        sessionOpenSession.close();
                    } catch (InterruptedException unused10) {
                        sessionOpenSession.close();
                        return "安装线程中断";
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    String str6 = "安装失败：" + e10.getMessage();
                    if (0 != 0) {
                        session.close();
                    }
                    return str6;
                }
            } catch (Throwable th10) {
                throw th10;
            }
        }
        return str2;
    }
}
