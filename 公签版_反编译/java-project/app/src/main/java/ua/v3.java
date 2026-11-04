package ua;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.view.View;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.ui.ActivityDebugLogcat;
import com.yunpan.appmanage.ui.ActivityDesktop;
import com.yunpan.appmanage.ui.ActivityInputMethod;
import com.yunpan.appmanage.ui.ActivityJiliE01;
import com.yunpan.appmanage.ui.ActivityJiliE02;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivityNezha;
import com.yunpan.appmanage.ui.ActivityNissan;
import com.yunpan.appmanage.ui.ActivityOuShang;
import com.yunpan.appmanage.ui.ActivitySeccompRoot;
import com.yunpan.appmanage.ui.ActivitySystemAnimator;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import com.yunpan.appmanage.ui.ActivityUsers;
import ha.kd;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.Iterator;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class v3 implements c6.e, ec.d, ha.n1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15996a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityLaboratory f15997b;

    public /* synthetic */ v3(ActivityLaboratory activityLaboratory, int i10) {
        this.f15996a = i10;
        this.f15997b = activityLaboratory;
    }

    @Override // ha.n1
    public void e(String str, String str2, String str3, String str4) {
        int i10 = ActivityLaboratory.I;
        ActivityLaboratory activityLaboratory = this.f15997b;
        activityLaboratory.getClass();
        if (str.equals("System")) {
            if (!XXPermissions.isGrantedPermission(activityLaboratory.A, PermissionLists.getWriteSettingsPermission())) {
                XXPermissions.with(activityLaboratory.A).permission(PermissionLists.getWriteSettingsPermission()).request(new v0(17));
                return;
            }
        } else if (!p000if.a.b0(activityLaboratory)) {
            com.yunpan.appmanage.util.a0.u("请先授予我【修改系统安全设置】权限");
            return;
        }
        try {
            com.bumptech.glide.d.D(activityLaboratory.G, str, str2, str3, str4);
            com.yunpan.appmanage.util.a0.w("设置成功");
        } catch (Exception unused) {
            com.yunpan.appmanage.util.a0.t("失败：无权限");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01f8  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws IllegalAccessException, InterruptedException, Resources.NotFoundException, NoSuchMethodException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        String str;
        fa.a0 a0VarH;
        int iPutInt;
        Response responseA;
        String str2;
        ActivityLaboratory activityLaboratory = this.f15997b;
        switch (this.f15996a) {
            case 1:
                int i10 = ActivityLaboratory.I;
                activityLaboratory.getClass();
                int i11 = 0;
                while (true) {
                    if (i11 < 2) {
                        a2.w0 w0Var = fa.b0.f5652a;
                        String str3 = i11 != 0 ? "tclroot" : "tclsu";
                        w0Var.getClass();
                        if (a2.w0.h(str3).f5648a == 0) {
                            fa.a0 a0VarH2 = a2.w0.h(Name.MARK);
                            if (a0VarH2.f5648a == 0 && a0VarH2.a().contains("uid=0(root)")) {
                                a2.w0.h("setenforce 0");
                                fa.j jVar = fa.h.f5683a;
                                if (jVar.i()) {
                                    try {
                                        jVar.f5696b.J("remount:");
                                    } catch (Exception unused) {
                                    }
                                } else {
                                    fa.l.f5712a.O("remount:");
                                }
                                try {
                                    Thread.sleep(333L);
                                } catch (Exception unused2) {
                                }
                                fa.b0.f5652a.getClass();
                                a2.w0.h("mount -o remount,rw /");
                                fa.a0 a0VarH3 = a2.w0.h("touch /system/app/111222");
                                if (a0VarH3.f5648a != 0) {
                                    if (a2.w0.h("mount -r -w -o remount -t ext4 /system").f5648a != 0) {
                                        com.yunpan.appmanage.util.a0.w("已获得root权，但系统没有写入权");
                                        bVar.b();
                                        return;
                                    }
                                    a0VarH3 = a2.w0.h("touch /system/app/111222");
                                }
                                if (a0VarH3.f5648a == 0) {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.f4058m = true;
                                    a2.w0.h("rm -rf /system/app/111222");
                                    com.yunpan.appmanage.util.a0.w("提权成功，adb拥有root权限，系统具有写入权");
                                } else {
                                    com.yunpan.appmanage.util.a0.w("提权成功，adb拥有root权限，但系统没有写入权");
                                }
                                if (a2.w0.h("touch /system/bin/111222").f5648a == 0) {
                                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.j.f4033a.l = true;
                                    a2.w0.h("rm -rf /system/bin/111222");
                                }
                                bVar.b();
                                return;
                            }
                            i = 1;
                        }
                        i11 += i;
                    } else {
                        fa.h0 h0Var = fa.g0.f5682a;
                        if (h0Var.d().isEmpty()) {
                            com.yunpan.appmanage.util.a0.u("没有内部存储(SD)");
                            bVar.b();
                            return;
                        }
                        String strG = g.b.g(h0Var, new StringBuilder(), "/tclsu");
                        try {
                            InputStream inputStreamOpenRawResource = activityLaboratory.A.getResources().openRawResource(R.raw.tclsu);
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(strG);
                                try {
                                    byte[] bArr = new byte[1024];
                                    while (true) {
                                        int i12 = inputStreamOpenRawResource.read(bArr);
                                        if (i12 == -1) {
                                            fileOutputStream.close();
                                            inputStreamOpenRawResource.close();
                                            fa.b0.f5652a.getClass();
                                            fa.a0 a0VarH4 = a2.w0.h("\\cp -R '" + strG + "' '/data/local/tmp/tclsu'");
                                            new File(strG).delete();
                                            if (a0VarH4.f5648a != 0) {
                                                com.yunpan.appmanage.util.a0.u("抱歉，此方法不适合您的系统");
                                                bVar.b();
                                                return;
                                            }
                                            if (a2.w0.h("chmod 755 /data/local/tmp/tclsu").f5648a != 0) {
                                                com.yunpan.appmanage.util.a0.u("抱歉，此方法不适合您的系统");
                                                bVar.b();
                                                return;
                                            }
                                            fa.a0 a0VarH5 = a2.w0.h("/data/local/tmp/tclsu install");
                                            if (a0VarH5.f5648a == 0) {
                                                a0VarH5 = a2.w0.h("tclsu");
                                            }
                                            if (a0VarH5.f5648a != 0) {
                                                a2.w0.h("chmod 777 /data/local/tmp/tclsu");
                                                a0VarH5 = a2.w0.h("/data/local/tmp/tclsu");
                                            }
                                            if (a0VarH5.f5648a != 0) {
                                                com.yunpan.appmanage.util.a0.u("抱歉，此方法不适合您的系统");
                                                bVar.b();
                                                return;
                                            }
                                            if (!a2.w0.h(Name.MARK).a().contains("uid=0(root)")) {
                                                com.yunpan.appmanage.util.a0.u("抱歉，此方法不适合您的系统");
                                                bVar.b();
                                                return;
                                            }
                                            fa.j jVar2 = fa.h.f5683a;
                                            if (jVar2.i()) {
                                                try {
                                                    jVar2.f5696b.J("remount:");
                                                } catch (Exception unused3) {
                                                }
                                            } else {
                                                fa.l.f5712a.O("remount:");
                                            }
                                            try {
                                                Thread.sleep(333L);
                                            } catch (Exception unused4) {
                                            }
                                            fa.b0.f5652a.getClass();
                                            fa.a0 a0VarH6 = a2.w0.h("touch /system/app/111222");
                                            if (a0VarH6.f5648a != 0 && a2.w0.h("mount -o remount,rw /").f5648a == 0) {
                                                a0VarH6 = a2.w0.h("touch /system/app/111222");
                                            }
                                            if (a0VarH6.f5648a != 0) {
                                                fa.a0 a0VarH7 = a2.w0.h("df | grep ' /system '");
                                                String str4 = "";
                                                if (a0VarH7.f5648a == 0) {
                                                    Iterator it = a0VarH7.f5649b.iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            String strReplace = (String) it.next();
                                                            if (strReplace.contains(" /system ")) {
                                                                while (strReplace.contains("  ")) {
                                                                    strReplace = strReplace.replace("  ", " ");
                                                                }
                                                                String[] strArrSplit = strReplace.split(" ");
                                                                if (strArrSplit.length >= 5) {
                                                                    str4 = strReplace.contains(" (r") ? strArrSplit[4] : strArrSplit[2];
                                                                }
                                                            }
                                                        }
                                                    }
                                                    str = str4.isEmpty() ? "ext4" : str4;
                                                    fa.b0.f5652a.getClass();
                                                    a0VarH = a2.w0.h("mount -o remount,rw -t " + str + " /system");
                                                    if (a0VarH.f5648a != 0) {
                                                        a0VarH = a2.w0.h("touch /system/app/111222");
                                                    }
                                                } else {
                                                    Iterator it2 = a2.w0.h("df | grep ' / '").f5649b.iterator();
                                                    while (true) {
                                                        if (it2.hasNext()) {
                                                            String strReplace2 = (String) it2.next();
                                                            if (strReplace2.contains(" / ")) {
                                                                while (strReplace2.contains("  ")) {
                                                                    strReplace2 = strReplace2.replace("  ", " ");
                                                                }
                                                                String[] strArrSplit2 = strReplace2.split(" ");
                                                                if (strArrSplit2.length >= 5) {
                                                                    str4 = strReplace2.contains(" (r") ? strArrSplit2[4] : strArrSplit2[2];
                                                                }
                                                            }
                                                        }
                                                    }
                                                    str = str4.isEmpty() ? "ext4" : str4;
                                                    fa.b0.f5652a.getClass();
                                                    a0VarH = a2.w0.h("mount -o remount,rw -t " + str + " /");
                                                    if (a0VarH.f5648a != 0) {
                                                        a0VarH = a2.w0.h("touch /system/app/111222");
                                                    }
                                                }
                                                if (a0VarH.f5648a != 0) {
                                                    com.yunpan.appmanage.util.a0.w("提权成功，但系统没有写入权");
                                                    bVar.b();
                                                    return;
                                                }
                                            }
                                            com.yunpan.appmanage.util.a0.w("提权成功");
                                            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                            kVar.f4058m = true;
                                            fa.b0.f5652a.getClass();
                                            a2.w0.h("rm -rf /system/app/111222");
                                            if (a2.w0.h("touch /system/bin/111222").f5648a == 0) {
                                                kVar.l = true;
                                                a2.w0.h("rm -rf /system/bin/111222");
                                            }
                                            bVar.b();
                                            return;
                                        }
                                        fileOutputStream.write(bArr, 0, i12);
                                    }
                                } finally {
                                }
                            } finally {
                            }
                        } catch (Exception unused5) {
                            com.yunpan.appmanage.util.a0.u("失败：无法写入文件");
                            bVar.b();
                            return;
                        }
                    }
                }
                break;
            case 2:
                int i13 = ActivityLaboratory.I;
                activityLaboratory.getClass();
                try {
                    iPutInt = Settings.Global.putInt(activityLaboratory.G, "adb_enabled", 1);
                } catch (Exception e7) {
                    e7.printStackTrace();
                    iPutInt = 0;
                }
                if (iPutInt == 0) {
                    fa.b0.f5652a.getClass();
                    i = a2.w0.m("settings put global adb_allowed_connection_time 0").f5648a != 0 ? iPutInt : 1;
                }
                fa.b0.f5652a.getClass();
                a2.w0.m("setprop persist.adb.tcp.timeout 0");
                if (i != 0) {
                    com.yunpan.appmanage.util.a0.w("修改成功");
                } else {
                    com.yunpan.appmanage.util.a0.s("修改失败：无权限修改", false);
                }
                bVar.b();
                return;
            default:
                int i14 = ActivityLaboratory.I;
                activityLaboratory.getClass();
                bVar.f("写入文件：su");
                String str5 = Build.CPU_ABI;
                if (Build.VERSION.SDK_INT >= 21) {
                    str5 = Build.SUPPORTED_ABIS[0];
                }
                InputStream inputStreamOpenRawResource2 = str5.contains("v7a") ? activityLaboratory.A.getResources().openRawResource(R.raw.su_v7a) : str5.contains("v8a") ? activityLaboratory.A.getResources().openRawResource(R.raw.su_v8a) : str5.contains("x86_64") ? activityLaboratory.A.getResources().openRawResource(R.raw.su_x64) : str5.contains("x86") ? activityLaboratory.A.getResources().openRawResource(R.raw.su_x86) : activityLaboratory.A.getResources().openRawResource(R.raw.su_arm);
                FileOutputStream fileOutputStream2 = new FileOutputStream(activityLaboratory.A.getCacheDir() + "/su");
                byte[] bArr2 = new byte[1048576];
                while (true) {
                    int i15 = inputStreamOpenRawResource2.read(bArr2);
                    if (i15 == -1) {
                        fileOutputStream2.close();
                        inputStreamOpenRawResource2.close();
                        a2.w0 w0Var2 = fa.b0.f5652a;
                        String str6 = "dd if='" + activityLaboratory.A.getCacheDir() + "/su' of='/system/bin/'";
                        w0Var2.getClass();
                        fa.a0 a0VarH8 = a2.w0.h(str6);
                        a2.w0.h("mv '" + activityLaboratory.A.getCacheDir() + "/su' '/system/xbin/'");
                        if (a0VarH8.f5648a == 0) {
                            fa.a0 a0VarH9 = a2.w0.h("chmod 6755 '/system/bin/su'");
                            a2.w0.h("chmod 6755 '/system/xbin/su'");
                            if (a0VarH9.f5648a == 0) {
                                bVar.f("下载中：Superuser.apk");
                                try {
                                    l9.a aVar = new l9.a("https://yunupdata-1318501551.cos.ap-guangzhou.myqcloud.com/Superuser.apk");
                                    aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                                    responseA = aVar.a();
                                } catch (Exception unused6) {
                                    responseA = null;
                                }
                                if (responseA != null) {
                                    try {
                                        ResponseBody responseBodyBody = responseA.body();
                                        if (responseBodyBody == null) {
                                            bVar.d(new Exception("下载失败：Superuser.apk"));
                                            return;
                                        }
                                        InputStream inputStreamByteStream = responseBodyBody.byteStream();
                                        FileOutputStream fileOutputStream3 = new FileOutputStream(activityLaboratory.A.getCacheDir() + "/Superuser.apk");
                                        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamByteStream);
                                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream3);
                                        while (true) {
                                            int i16 = bufferedInputStream.read(bArr2);
                                            if (i16 != -1) {
                                                bufferedOutputStream.write(bArr2, 0, i16);
                                                bufferedOutputStream.flush();
                                            } else {
                                                try {
                                                    Thread.sleep(200L);
                                                } catch (Exception unused7) {
                                                }
                                                q4.a.e(bufferedInputStream);
                                                q4.a.e(bufferedOutputStream);
                                                q4.a.e(fileOutputStream3);
                                                q4.a.e(inputStreamByteStream);
                                                a2.w0 w0Var3 = fa.b0.f5652a;
                                                String str7 = "mv '" + activityLaboratory.A.getCacheDir() + "/Superuser.apk' '/system/app/'";
                                                w0Var3.getClass();
                                                if (a2.w0.h(str7).f5648a != 0) {
                                                    str2 = "无权写入，不适用此系统";
                                                } else if (a2.w0.h("chmod 0644 '/system/app/Superuser.apk'").f5648a == 0) {
                                                    bVar.f("写入完成");
                                                    bVar.b();
                                                    return;
                                                }
                                            }
                                        }
                                    } catch (Exception unused8) {
                                    }
                                }
                                android.support.v4.media.session.a.B("下载失败：Superuser.apk", bVar);
                                return;
                            }
                            android.support.v4.media.session.a.B("无法更改权限，不适应此系统", bVar);
                            return;
                        }
                        str2 = "无权写入，请先关闭分区检测";
                        android.support.v4.media.session.a.B(str2, bVar);
                        return;
                    }
                    fileOutputStream2.write(bArr2, 0, i15);
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) throws PackageManager.NameNotFoundException {
        boolean zPutString;
        int i11 = 20;
        int i12 = 18;
        int i13 = 8;
        int i14 = 5;
        int i15 = 1;
        int i16 = 4;
        int i17 = 3;
        int i18 = 2;
        int i19 = 0;
        int i20 = ActivityLaboratory.I;
        ActivityLaboratory activityLaboratory = this.f15997b;
        activityLaboratory.getClass();
        if (i10 == 0) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (!com.yunpan.appmanage.util.j.f4033a.f4053j) {
                new ha.z6(activityLaboratory, activityLaboratory.A, "如果您是此机型，请安装公签版，方可使用此功能", "", "好的", "", new s9.a(7, false)).show();
                return;
            }
            try {
                activityLaboratory.getPackageManager().getApplicationInfo("com.ecarx.appstore", 8704);
                activityLaboratory.w(ActivityJiliE02.class);
                return;
            } catch (Exception unused) {
                com.yunpan.appmanage.util.a0.u("不适合您的车机，无需使用此功能");
                activityLaboratory.H.show();
                return;
            }
        }
        if (i10 == 1) {
            String str = Build.MODEL + Build.PRODUCT + Build.BOARD;
            if (str.toLowerCase().contains("e01") || (str.toLowerCase().contains("ecarx") && Build.VERSION.SDK_INT == 22)) {
                activityLaboratory.w(ActivityJiliE01.class);
                return;
            } else {
                Toaster.show((CharSequence) "仅适用吉利车机E01系统");
                return;
            }
        }
        if (i10 == 2) {
            fa.b0.f5652a.getClass();
            if (a2.w0.M()) {
                activityLaboratory.w(ActivityNissan.class);
                return;
            }
            if (!pa.e.b(activityLaboratory.A)) {
                Toaster.showLong((CharSequence) "非日产车机");
                return;
            }
            Toaster.showLong((CharSequence) ("日产车机请安装：" + activityLaboratory.getResources().getString(R.string.app_name) + "-公签版(飞思卡尔)"));
            return;
        }
        if (i10 == 3) {
            activityLaboratory.w(ActivityOuShang.class);
            return;
        }
        if (i10 == 4) {
            activityLaboratory.w(ActivityNezha.class);
            return;
        }
        if (i10 == 5) {
            new kd(activityLaboratory, activityLaboratory).show();
            return;
        }
        if (i10 == 6) {
            com.yunpan.appmanage.util.a0.w("待开发");
            return;
        }
        if (i10 == 7) {
            fa.b0.f5652a.getClass();
            if (a2.w0.N() || p000if.a.b0(AppStart.f3772h)) {
                new ha.z6(activityLaboratory, activityLaboratory, "如果您因使用某些工具app导致系统隔一段时间就黑屏(息屏)，那么您可以禁止自动息屏", "", "禁止自动息屏", "设置自动息屏", new w3(activityLaboratory, i14)).show();
                return;
            } else {
                com.yunpan.appmanage.util.a0.u("请先连接adb");
                return;
            }
        }
        if (i10 == 8) {
            if (com.yunpan.appmanage.util.v.f4106a.f4138q) {
                com.yunpan.appmanage.util.a0.u(AppStart.f3772h.getText(R.string.ts_hide_gn));
                return;
            } else {
                activityLaboratory.w(ActivityDesktop.class);
                return;
            }
        }
        if (i10 == 9) {
            if (!p000if.a.b0(activityLaboratory.A)) {
                fa.b0.f5652a.getClass();
                if (!a2.w0.M()) {
                    com.yunpan.appmanage.util.a0.y("首次使用需连接adb");
                    return;
                }
            }
            try {
                activityLaboratory.w(ActivitySystemAnimator.class);
                return;
            } catch (Exception unused2) {
                return;
            }
        }
        if (i10 == 10) {
            if (!activityLaboratory.C) {
                Toaster.show((CharSequence) "本人自用功能，不适合您的系统");
                int i21 = activityLaboratory.D + 1;
                activityLaboratory.D = i21;
                if (i21 >= 10) {
                    com.yunpan.appmanage.util.a0.w("已解禁，可进行测试");
                    activityLaboratory.C = true;
                    return;
                }
                return;
            }
            if (fa.g0.f5682a.f()) {
                Toaster.show((CharSequence) "您系统不是已经root了吗？");
                return;
            }
            if (!fa.h.f5683a.i() && !fa.l.f5712a.isConnected()) {
                Toaster.show((CharSequence) "请先连接adb");
                return;
            }
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            if (!com.yunpan.appmanage.util.j.f4033a.l) {
                com.yunpan.appmanage.util.a0.s("无权写入，请先关闭分区检测 并且 adb提权", false);
                return;
            } else if (Build.VERSION.SDK_INT >= 28) {
                com.yunpan.appmanage.util.a0.s("不适合您的系统，推荐使用面具ROOT(Magisk)", false);
                return;
            } else {
                new mc.c(0, new v3(activityLaboratory, i16)).d(rc.f.f13757b).a(fc.b.a()).b(new x3(activityLaboratory, 4));
                return;
            }
        }
        if (i10 == 11) {
            fa.b0.f5652a.getClass();
            if (!a2.w0.M()) {
                Toaster.show((CharSequence) "请连接adb或root");
                return;
            } else {
                da.g gVar2 = activityLaboratory.A;
                new ha.z6(gVar2, gVar2, "一般在系统设置中修改日期/时间，但是一些外贸设备或者低版本系统\n明明设置了却不对，是因为时区你可能没选对\n又或者是勾选了自动时区导致的", "如果您所有方法都试过了，觉得不行您再用此功能修改系统时间", "不改了", "我需要", new w3(activityLaboratory, i15)).show();
                return;
            }
        }
        if (i10 == 12) {
            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                com.yunpan.appmanage.util.a0.w("已有系统写入权限，无需此操作");
                return;
            }
            fa.b0.f5652a.getClass();
            if (a2.w0.P()) {
                new mc.c(0, new v0(i12)).d(rc.f.f13757b).a(fc.b.a()).b(new x3(activityLaboratory, 5));
                return;
            } else {
                Toaster.show((CharSequence) "请先连接adb");
                return;
            }
        }
        if (i10 == 13) {
            activityLaboratory.B(false);
            return;
        }
        if (i10 == 14) {
            if (Build.VERSION.SDK_INT < 29) {
                com.yunpan.appmanage.util.a0.u("此功能仅支持 Android 10 及以上版本");
                return;
            } else {
                activityLaboratory.w(ActivitySeccompRoot.class);
                return;
            }
        }
        if (i10 == 15) {
            activityLaboratory.B(true);
            return;
        }
        if (i10 == 16) {
            DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                activityLaboratory.w(ActivitySystemHasWrite.class);
                return;
            } else {
                Toaster.showLong((CharSequence) "无权限，需有系统写入权");
                return;
            }
        }
        if (i10 == 17) {
            return;
        }
        if (i10 == 18) {
            DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                Toaster.show((CharSequence) "你已经拥有写入权，无需此操作");
                return;
            }
            if (fa.g0.f5682a.f()) {
                Toaster.show((CharSequence) "你不是已经拥有root了吗？");
                return;
            } else if (fa.h.f5683a.i() || fa.l.f5712a.isConnected()) {
                new mc.c(0, new v3(activityLaboratory, i15)).d(rc.f.f13757b).a(fc.b.a()).b(new x3(activityLaboratory, 2));
                return;
            } else {
                Toaster.show((CharSequence) "请先连接adb");
                return;
            }
        }
        if (i10 == 19) {
            fa.b0.f5652a.getClass();
            if (a2.w0.P()) {
                new mc.c(0, new v0(i11)).d(rc.f.f13757b).a(fc.b.a()).b(new x3(activityLaboratory, 3));
                return;
            } else {
                Toaster.show((CharSequence) "请先连接adb");
                return;
            }
        }
        if (i10 == 20) {
            if (com.yunpan.appmanage.util.v.f4106a.f4138q) {
                com.yunpan.appmanage.util.a0.u(AppStart.f3772h.getText(R.string.ts_hide_gn));
                return;
            } else {
                da.g gVar3 = activityLaboratory.A;
                new ha.z6(gVar3, gVar3, "您了解这是干啥的不？？？  不了解的话，千万不要点击！！！\n知识讲解：关闭分区检测是为了adb挂载系统目录，从而获得系统写入权限！获得写入权是为了删除系统内置应用或更改系统文件", "警告：这是个危险操作，如果因关闭分区检测后您乱动系统文件导致系统进不去，后果自负！\n\n提示：关闭分区检测后一直有效，不需要重复点关闭！\n注意：关闭分区后，如果你更改了系统文件或删除了系统应用后，就不要再去开启分区检测了，分区检测的意思就是：系统会检测系统是否完整，不完整就无法开机等等情况", "取消", "我要关闭检测", new w3(activityLaboratory, i19)).show();
                return;
            }
        }
        if (i10 == 21) {
            if (fa.g0.f5682a.f()) {
                com.yunpan.appmanage.util.a0.w("您是尊贵的root系统用户，用不着此功能哟");
                return;
            } else if (com.yunpan.appmanage.util.v.f4106a.f4138q) {
                com.yunpan.appmanage.util.a0.u(AppStart.f3772h.getText(R.string.ts_hide_gn));
                return;
            } else {
                da.g gVar4 = activityLaboratory.A;
                new ha.z6(gVar4, gVar4, "知识：关闭分区检测是为了adb挂载系统目录，从而获得系统写入权限！获得写入权是为了删除系统内置应用或更改系统文件！\n\n重点来了：如果您删除了系统应用或更改系统目录文件后，一定不要点开启分区检测！因为开启分区检测后，系统会检测系统是否完整，如果不完整的话会进不了系统，开不了机哦！", "警告：正常情况下不要点这个，请务必认真阅读以上说明！", "取消", "我要开启分区检测", new w3(activityLaboratory, i13)).show();
                return;
            }
        }
        if (i10 == 22) {
            da.g gVar5 = activityLaboratory.A;
            new ha.z6(gVar5, gVar5, "首次连接adb时，一般系统会弹出adb授权连接的窗口，授权才能连接，但是有些系统因为厂商阉割了这个弹窗，导致无法使用adb，那么您可以在这里关闭adb的安全验证即可！", "注意：仅支持极小部分系统", "关闭安全验证", "开启安全验证", new w3(activityLaboratory, i18)).show();
            return;
        }
        if (i10 == 23) {
            if (fa.g0.f5682a.f()) {
                com.yunpan.appmanage.util.a0.w("您已是尊贵的ROOT用户，无需此操作");
                return;
            }
            if (!fa.h.f5683a.i() && !fa.l.f5712a.isConnected()) {
                try {
                    zPutString = Settings.Secure.putString(activityLaboratory.A.getContentResolver(), "fgSecure", "fangge");
                } catch (Exception unused3) {
                    zPutString = false;
                }
                if (!zPutString) {
                    Toaster.show((CharSequence) "请先连接adb");
                    return;
                }
            }
            new mc.c(0, new v3(activityLaboratory, i18)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.l2(28));
            return;
        }
        if (i10 == 24) {
            new ha.z6(activityLaboratory, activityLaboratory.A, "断开所有网络，不了解功能有啥用的话，请勿乱来", "", "屏蔽网络", "解除屏蔽", new w3(activityLaboratory, i17)).show();
            return;
        }
        if (i10 == 25) {
            if (p000if.a.b0(activityLaboratory.A)) {
                activityLaboratory.w(ActivityInputMethod.class);
                return;
            } else {
                Toaster.showLong((CharSequence) "首次使用此功能需连接adb或root或公签");
                return;
            }
        }
        if (i10 == 26) {
            if (p000if.a.h0(activityLaboratory.A, AccService.class)) {
                com.yunpan.appmanage.util.a0.u("请先关闭自动化服务");
                return;
            }
            new ha.z6(activityLaboratory, activityLaboratory.A, "是否确定要重置？", "清除" + activityLaboratory.getString(R.string.app_name) + "的所有配置和数据文件", "确定", "取消", new w3(activityLaboratory, i16)).show();
            return;
        }
        if (i10 == 27) {
            try {
                if ((activityLaboratory.getPackageManager().getApplicationInfo(activityLaboratory.getPackageName(), 0).flags & 1) != 0) {
                    new ha.z6(activityLaboratory, activityLaboratory, "由于[" + activityLaboratory.getString(R.string.app_name) + "]是系统应用，为了能正确释放系统分区空间，建议您用共存版(海信版)来卸载并删除", "").show();
                    return;
                }
            } catch (Exception unused4) {
            }
            fa.b0.f5652a.getClass();
            if (a2.w0.P()) {
                new ha.z6(activityLaboratory, activityLaboratory.A, "卸载" + activityLaboratory.getString(R.string.app_name), "", "由系统卸载", "用命令卸载", new w3(activityLaboratory, 7)).show();
                return;
            }
            try {
                Intent intent = new Intent("android.intent.action.UNINSTALL_PACKAGE");
                intent.setData(Uri.parse("package:" + activityLaboratory.getPackageName()));
                activityLaboratory.startActivity(intent);
                return;
            } catch (Exception unused5) {
                com.yunpan.appmanage.util.a0.s("调用卸载程序出错", false);
                return;
            }
        }
        if (i10 == 28) {
            if (Build.VERSION.SDK_INT < 28) {
                Toaster.showLong((CharSequence) "系统低于安卓9，无需设置");
                return;
            } else {
                new ha.z6(activityLaboratory, activityLaboratory.A, "从 Android 9（API 级别 28）开始，Android 平台对应用能使用的非 SDK 接口实施了限制！解除限制，让个人应用访问非 SDK 接口！", "", "解除限制", "恢复限制", new w3(activityLaboratory, 6)).show();
                return;
            }
        }
        if (i10 == 29) {
            new ha.o1(activityLaboratory, activityLaboratory, new v3(activityLaboratory, i17)).show();
            return;
        }
        if (i10 != 30) {
            if (i10 == 31) {
                activityLaboratory.w(ActivityDebugLogcat.class);
                return;
            } else {
                Toaster.show((CharSequence) "未开发");
                return;
            }
        }
        fa.b0.f5652a.getClass();
        if (a2.w0.L()) {
            activityLaboratory.w(ActivityUsers.class);
        } else {
            com.yunpan.appmanage.util.a0.u("请先连接adb");
        }
    }
}
