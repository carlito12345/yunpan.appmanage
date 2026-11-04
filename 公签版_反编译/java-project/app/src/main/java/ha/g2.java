package ha;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.SignatureBean;
import com.yunpan.appmanage.db.ApkFileBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAppDetails;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes.dex */
public final /* synthetic */ class g2 implements fa.w, ec.d, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7091a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o2 f7092b;

    public /* synthetic */ g2(o2 o2Var, int i10) {
        this.f7091a = i10;
        this.f7092b = o2Var;
    }

    @Override // fa.w
    public void c(String str, boolean z) {
        o2 o2Var = this.f7092b;
        switch (this.f7091a) {
            case 0:
                o2Var.getClass();
                if (!z) {
                    com.yunpan.appmanage.util.a0.s("设置失败：" + str, false);
                    break;
                } else {
                    Toaster.showShort((CharSequence) str);
                    o2Var.dismiss();
                    break;
                }
            case 1:
            case 4:
            case 5:
            case 6:
            default:
                o2Var.getClass();
                if (!z) {
                    com.yunpan.appmanage.util.a0.s("设置失败：" + str, false);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.v(str, true);
                    o2Var.dismiss();
                    break;
                }
            case 2:
                o2Var.getClass();
                if (z) {
                    com.yunpan.appmanage.util.a0.v("卸载成功", true);
                    break;
                } else if (str.contains("设备管理员") || str.contains("请先解锁再卸载")) {
                    new z6(o2Var.f6724a, o2Var.f6725b, str, "", "明白了", "", new j2(1)).show();
                    break;
                } else if (o2Var.f7503h.isSystem) {
                    com.yunpan.appmanage.util.a0.t(str);
                    break;
                } else {
                    try {
                        Intent intent = new Intent("android.intent.action.UNINSTALL_PACKAGE");
                        intent.setData(Uri.parse("package:" + o2Var.f7503h.pack));
                        intent.addFlags(268435456);
                        o2Var.f6724a.startActivity(intent);
                        break;
                    } catch (Exception unused) {
                        com.yunpan.appmanage.util.a0.s("调用卸载程序出错", false);
                        return;
                    }
                }
                break;
            case 3:
                if (!z) {
                    o2Var.getClass();
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    if (!com.yunpan.appmanage.util.j.f4033a.f4058m) {
                        com.yunpan.appmanage.util.a0.s("数据清理失败：" + str, false);
                        break;
                    } else {
                        new z6(o2Var.f6724a, o2Var.f6725b, da.b.c("数据清理失败：", str), "是否采用root方式强制删除此应用数据？？？", "取消", "强制清除数据", new i2(o2Var, 5)).show();
                        break;
                    }
                } else {
                    l5.y yVar = o2Var.f7509p;
                    if (yVar != null) {
                        yVar.L(o2Var.f7502g);
                    }
                    com.yunpan.appmanage.util.a0.v("应用重置：app数据和缓存已清理！", false);
                    break;
                }
            case 7:
                o2Var.dismiss();
                if (!z) {
                    new z6(o2Var.f6724a, o2Var.f6725b, str, "", "明白了", "", new l2(1)).show();
                    break;
                } else {
                    Toaster.showShort((CharSequence) "应用已恢复安装");
                    break;
                }
            case 8:
                l5.y yVar2 = o2Var.f7509p;
                if (yVar2 != null) {
                    yVar2.L(o2Var.f7502g);
                }
                if (!z) {
                    Toaster.show((CharSequence) str);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.v("缓存清理完成", true);
                    break;
                }
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) throws Throwable {
        String strJ;
        String str;
        Throwable th2;
        ApkFileBean apkFileBean;
        boolean z;
        ActivityInfo activityInfo;
        String str2;
        o2 o2Var = this.f7092b;
        switch (this.f7091a) {
            case 1:
                o2Var.getClass();
                fa.h0 h0Var = fa.g0.f5682a;
                if (h0Var.d().isEmpty()) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    Iterator it = com.yunpan.appmanage.util.j.f4033a.f4073v.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            String str3 = (String) it.next();
                            if (com.yunpan.appmanage.util.a0.d(str3)) {
                                strJ = g.b.j(str3, "/Download");
                            }
                        } else {
                            strJ = "";
                        }
                    }
                    if (strJ.isEmpty()) {
                        str = "没有可用的存储设备(sd卡、U盘)";
                    }
                    android.support.v4.media.session.a.B(str, bVar);
                    return;
                }
                strJ = g.b.g(h0Var, new StringBuilder(), "/Download");
                if (!new File(strJ).exists()) {
                    new File(strJ).mkdir();
                    MyDb.get().lambda$addFile_thread$1(strJ);
                }
                File file = new File(o2Var.f7503h.apkPath);
                boolean zExists = file.exists();
                Context context = o2Var.f6725b;
                if (!zExists) {
                    file = new File(o2Var.f7504i.sourceDir);
                    if (!file.exists()) {
                        bVar.d(new Exception("找不到apk文件，请重启" + context.getString(R.string.app_name)));
                        return;
                    }
                }
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 21 && o2Var.f7504i.splitSourceDirs != null && o2Var.f7504i.splitSourceDirs.length > 0) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(file.getPath());
                    for (String str4 : o2Var.f7504i.splitSourceDirs) {
                        arrayList.add(str4);
                        System.out.getClass();
                    }
                    if (com.yunpan.appmanage.util.a0.g(context.getObbDir().getParentFile().getPath() + "/" + o2Var.f7503h.pack + "/")) {
                        try {
                            File[] fileArrListFiles = new File(context.getObbDir().getParentFile().getPath() + "/" + o2Var.f7503h.pack + "/").listFiles();
                            z = false;
                            for (File file2 : fileArrListFiles) {
                                try {
                                    if (file2.getName().endsWith(".obb")) {
                                        arrayList.add(file2.getPath());
                                        z = true;
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        } catch (Exception unused2) {
                        }
                    } else {
                        z = false;
                    }
                    StringBuilder sbB = d0.f.b(strJ, "/");
                    sbB.append(o2Var.f7503h.name);
                    sbB.append("_");
                    sbB.append(o2Var.f7505j.versionName);
                    sbB.append(z ? "xapk" : ".apks");
                    File file3 = new File(sbB.toString());
                    if (file3.exists()) {
                        if (file3.delete()) {
                            MyDb.get().getFileInfoDao().delete(file3.getPath());
                        } else {
                            StringBuilder sbB2 = d0.f.b(strJ, "/");
                            sbB2.append(o2Var.f7503h.name);
                            sbB2.append("_");
                            sbB2.append(o2Var.f7505j.versionName);
                            sbB2.append(z ? "(1).xapk" : "(1).apks");
                            file3 = new File(sbB2.toString());
                            if (file3.exists() && file3.delete()) {
                                MyDb.get().getFileInfoDao().delete(file3.getPath());
                            }
                        }
                    }
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file3.getPath());
                        ZipOutputStream zipOutputStream = new ZipOutputStream(fileOutputStream);
                        byte[] bArr = new byte[3145728];
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            File file4 = new File((String) it2.next());
                            FileInputStream fileInputStream = new FileInputStream(file4);
                            zipOutputStream.putNextEntry(new ZipEntry(file4.getName()));
                            while (true) {
                                int i11 = fileInputStream.read(bArr);
                                if (i11 >= 0) {
                                    zipOutputStream.write(bArr, 0, i11);
                                }
                            }
                            fileInputStream.close();
                        }
                        zipOutputStream.close();
                        fileOutputStream.close();
                        MyDb.get().lambda$addFile_thread$1(file3.getPath());
                        bVar.b();
                        return;
                    } catch (Exception unused3) {
                        android.support.v4.media.session.a.B("打包失败", bVar);
                        return;
                    }
                }
                if (!o2Var.f7503h.isSystem || com.yunpan.appmanage.util.a0.m(file.getPath())) {
                    StringBuilder sbB3 = d0.f.b(strJ, "/");
                    sbB3.append(o2Var.f7503h.name);
                    sbB3.append("_");
                    File file5 = new File(g.b.l(o2Var.f7505j.versionName, ".apk", sbB3));
                    if (file5.exists()) {
                        if (file5.delete()) {
                            MyDb.get().getFileInfoDao().delete(file5.getPath());
                        } else {
                            StringBuilder sbB4 = d0.f.b(strJ, "/");
                            sbB4.append(o2Var.f7503h.name);
                            sbB4.append("_");
                            file5 = new File(g.b.l(o2Var.f7505j.versionName, "(1).apk", sbB4));
                            if (file5.exists() && file5.delete()) {
                                MyDb.get().getFileInfoDao().delete(file5.getPath());
                            }
                        }
                    }
                    file5.getPath();
                    try {
                        android.support.v4.media.session.b.c(file, file5);
                        MyDb.get().lambda$addFile_thread$1(file5.getPath());
                        bVar.b();
                        return;
                    } catch (Exception e7) {
                        bVar.d(new Exception(e7.getMessage()));
                        return;
                    }
                }
                if (i10 < 21) {
                    str = "低于android5.0，不能提取此应用，此应用非完整的apk";
                } else {
                    StringBuilder sbB5 = d0.f.b(strJ, "/");
                    sbB5.append(o2Var.f7503h.name);
                    sbB5.append("_");
                    File file6 = new File(g.b.l(o2Var.f7505j.versionName, ".gj", sbB5));
                    if (file6.exists()) {
                        if (file6.delete()) {
                            MyDb.get().getFileInfoDao().delete(file6.getPath());
                        } else {
                            StringBuilder sbB6 = d0.f.b(strJ, "/");
                            sbB6.append(o2Var.f7503h.name);
                            sbB6.append("_");
                            file6 = new File(g.b.l(o2Var.f7505j.versionName, "(1).gj", sbB6));
                            if (file6.exists() && file6.delete()) {
                                MyDb.get().getFileInfoDao().delete(file6.getPath());
                            }
                        }
                    }
                    try {
                        if (file.getParentFile().listFiles().length > 8) {
                            bVar.d(new Exception("此apk文件不完整，无法提取"));
                            return;
                        }
                        if (com.yunpan.appmanage.util.a0.n(file.getParentFile())) {
                            String path = file6.getPath();
                            try {
                                try {
                                    FileOutputStream fileOutputStream2 = new FileOutputStream(path);
                                    try {
                                        try {
                                            ZipOutputStream zipOutputStream2 = new ZipOutputStream(fileOutputStream2);
                                            try {
                                                o2.i(file.getParentFile(), file.getParentFile().getPath() + "/", zipOutputStream2);
                                                o2.h(new File(com.yunpan.appmanage.util.v.f4106a.f4107a + o2Var.f7503h.pack + ".png"), "logo.png", zipOutputStream2);
                                                apkFileBean = new ApkFileBean();
                                                AppBean appBean = o2Var.f7503h;
                                                apkFileBean.apkName = appBean.name;
                                                apkFileBean.path = path;
                                                apkFileBean.packageName = appBean.pack;
                                                apkFileBean.versionName = o2Var.f7505j.versionName;
                                            } catch (Throwable th3) {
                                                th = th3;
                                            }
                                            try {
                                                apkFileBean.versionCode = r2.versionCode;
                                                apkFileBean.lastModified = System.currentTimeMillis();
                                                if (i10 >= 24) {
                                                    apkFileBean.minSdk = o2Var.f7504i.minSdkVersion;
                                                }
                                                apkFileBean.insertTime = System.currentTimeMillis();
                                                apkFileBean.sign = "";
                                                apkFileBean.abi = "";
                                                z7.s sVar = new z7.s();
                                                sVar.m("name", o2Var.f7503h.name);
                                                sVar.m("packageName", o2Var.f7503h.pack);
                                                sVar.m("versionName", o2Var.f7505j.versionName);
                                                sVar.l("versionCode", Integer.valueOf(o2Var.f7505j.versionCode));
                                                sVar.m("sourceDirPath", file.getParentFile().getPath());
                                                if (i10 >= 24) {
                                                    sVar.l("minSdkVersion", Integer.valueOf(o2Var.f7504i.minSdkVersion));
                                                    sVar.l("targetSdkVersion", Integer.valueOf(o2Var.f7504i.targetSdkVersion));
                                                }
                                                if (i10 >= 21) {
                                                    sVar.m("abi", Build.SUPPORTED_ABIS[0]);
                                                } else {
                                                    sVar.m("abi", Build.CPU_ABI);
                                                }
                                                try {
                                                    StringBuilder sb2 = new StringBuilder();
                                                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                                                    sb2.append(com.yunpan.appmanage.util.j.f4033a.Q);
                                                    sb2.append("/AndroidManifest.json");
                                                    String string = sb2.toString();
                                                    BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(string));
                                                    bufferedWriter.write(sVar.toString());
                                                    bufferedWriter.close();
                                                    o2.h(new File(string), "AndroidManifest.json", zipOutputStream2);
                                                } catch (Exception unused4) {
                                                }
                                                zipOutputStream2.close();
                                                fileOutputStream2.close();
                                                StringBuilder sb3 = new StringBuilder("\\cp -R '");
                                                sb3.append(com.yunpan.appmanage.util.v.f4106a.f4107a);
                                                sb3.append(o2Var.f7503h.pack);
                                                sb3.append(".png' '");
                                                DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                                sb3.append(com.yunpan.appmanage.util.j.f4033a.z);
                                                sb3.append("apk_ico_cache/");
                                                sb3.append(apkFileBean.packageName);
                                                sb3.append("'");
                                                u9.d.r(sb3.toString()).e0(null);
                                                MyDb.get().getApkFileDao().insert(apkFileBean);
                                                MyDb.get().lambda$addFile_thread$1(path);
                                                zipOutputStream2.close();
                                                fileOutputStream2.close();
                                                bVar.b();
                                                return;
                                            } catch (Throwable th4) {
                                                th = th4;
                                                Throwable th5 = th;
                                                try {
                                                    zipOutputStream2.close();
                                                    throw th5;
                                                } catch (Throwable th6) {
                                                    try {
                                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th5, th6);
                                                        throw th5;
                                                    } catch (Exception unused5) {
                                                        throw th5;
                                                    }
                                                }
                                            }
                                        } catch (Throwable th7) {
                                            th = th7;
                                            th2 = th;
                                            try {
                                                fileOutputStream2.close();
                                                throw th2;
                                            } catch (Throwable th8) {
                                                try {
                                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th8);
                                                    throw th2;
                                                } catch (Exception unused6) {
                                                    throw th2;
                                                }
                                            }
                                        }
                                    } catch (Throwable th9) {
                                        th = th9;
                                        th2 = th;
                                        fileOutputStream2.close();
                                        throw th2;
                                    }
                                } catch (Exception unused7) {
                                    try {
                                        file6.delete();
                                    } catch (Exception unused8) {
                                    }
                                    android.support.v4.media.session.a.B("打包失败", bVar);
                                    return;
                                }
                            } catch (Exception unused9) {
                                file6.delete();
                                android.support.v4.media.session.a.B("打包失败", bVar);
                                return;
                            }
                        }
                        str = "找不到.odex文件";
                    } catch (Exception unused10) {
                        android.support.v4.media.session.a.B("此apk文件不完整，无法提取", bVar);
                        return;
                    }
                }
                android.support.v4.media.session.a.B(str, bVar);
                return;
            case 4:
                o2Var.getClass();
                try {
                    DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                    o2Var.f7504i = kVar.f4037b.getApplicationInfo(o2Var.f7503h.pack, 8192);
                    if (kVar.f4066q != null) {
                        if (Build.VERSION.SDK_INT >= 28) {
                            o2Var.f7505j = kVar.f4037b.getPackageInfo(o2Var.f7503h.pack, 134230020);
                        } else {
                            o2Var.f7505j = kVar.f4037b.getPackageInfo(o2Var.f7503h.pack, 12356);
                        }
                        try {
                            o2Var.f7506k = d.b.c0(o2Var.f7505j);
                        } catch (Exception unused11) {
                        }
                    } else {
                        o2Var.f7505j = kVar.f4037b.getPackageInfo(o2Var.f7503h.pack, 12292);
                    }
                    Intent intent = new Intent("android.intent.action.MAIN");
                    intent.addCategory("android.intent.category.HOME");
                    ResolveInfo resolveInfoResolveActivity = com.yunpan.appmanage.util.j.f4033a.f4037b.resolveActivity(intent, 65536);
                    if (resolveInfoResolveActivity != null && (activityInfo = resolveInfoResolveActivity.activityInfo) != null && (str2 = activityInfo.packageName) != null && str2.equals(o2Var.f7503h.pack)) {
                        o2Var.r = true;
                    }
                    bVar.b();
                    return;
                } catch (Exception e10) {
                    bVar.d(e10);
                    return;
                }
            default:
                if (com.yunpan.appmanage.util.a0.m(o2Var.f7503h.apkPath)) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B("不是apk文件", bVar);
                    return;
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        SignatureBean signatureBean;
        int iIntValue;
        int i11 = 7;
        int i12 = 6;
        int i13 = 4;
        int i14 = 2;
        int i15 = 1;
        int i16 = 0;
        o2 o2Var = this.f7092b;
        o2Var.getClass();
        com.bumptech.glide.c.i(666, view);
        String str = ((x9.l3) o2Var.f7507m.t(i10)).f18272b;
        if (str.contains("返回")) {
            o2Var.dismiss();
            return;
        }
        boolean zContains = str.contains("隐藏");
        HashSet hashSet = o2Var.f7511s;
        if (zContains) {
            if (str.contains("取消隐藏")) {
                o2Var.c();
                return;
            }
            AppBean appBean = o2Var.f7503h;
            boolean z = appBean.isSystem;
            if (z && com.yunpan.appmanage.util.v.f4106a.f4138q) {
                com.yunpan.appmanage.util.a0.u(AppStart.f3772h.getText(R.string.ts_hide_gn));
                return;
            } else if (z && hashSet.contains(appBean.pack)) {
                com.yunpan.appmanage.util.a0.s("这个系统应用极其重要，我拒绝你这么做", false);
                return;
            } else {
                new z6(o2Var.f6724a, o2Var.f6725b, o2Var.f7503h.isSystem ? "隐藏(冻结应用)：此功能并非是单纯的隐藏，是直接从桌面上消失，对于系统应用请慎用！\n警告：请勿随意冻结系统应用，如果乱冻结导致无法开机，后果自负" : "隐藏(冻结应用)：此功能并非是单纯的隐藏，是直接从桌面上消失，相当于冻结应用", "", "取消", "确定", new i2(o2Var, i12)).show();
                return;
            }
        }
        if (str.contains("提取")) {
            AppBean appBean2 = o2Var.f7503h;
            if (appBean2.isSystem && !appBean2.apkPath.startsWith("/data/app/")) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (!com.yunpan.appmanage.util.j.f4033a.f4058m && new File(o2Var.f7503h.apkPath).length() < 104857600) {
                    if (Build.VERSION.SDK_INT < 21 || o2Var.f7504i.splitSourceDirs == null || o2Var.f7504i.splitSourceDirs.length <= 0) {
                        new mc.c(0, new g2(o2Var, i12)).d(rc.f.f13757b).a(fc.b.a()).b(new n2(o2Var, i10, 1));
                        return;
                    } else {
                        o2Var.b(i10);
                        return;
                    }
                }
            }
            o2Var.b(i10);
            return;
        }
        if (str.contains("恢复安装")) {
            a2.w0 w0Var = fa.b0.f5652a;
            w0Var.getClass();
            if (!a2.w0.N()) {
                Toaster.showLong((CharSequence) "需要root或者adb方可使用此功能");
                return;
            }
            int i17 = Build.VERSION.SDK_INT;
            if (i17 >= 24) {
                String str2 = o2Var.f7503h.pack;
                w0Var.f347c = new g2(o2Var, i11);
                u9.d.f15554a.execute(new fa.u(w0Var, str2, 5));
            } else {
                try {
                    Object objInvoke = Class.forName("android.content.pm.IPackageManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "package"));
                    if (i17 >= 26) {
                        Class<?> cls = objInvoke.getClass();
                        Class<?> cls2 = Integer.TYPE;
                        iIntValue = ((Integer) cls.getMethod("installExistingPackageAsUser", String.class, cls2, cls2, cls2).invoke(objInvoke, o2Var.f7503h.pack, 0, 0, 0)).intValue();
                    } else {
                        iIntValue = ((Integer) objInvoke.getClass().getMethod("installExistingPackageAsUser", String.class, Integer.TYPE).invoke(objInvoke, o2Var.f7503h.pack, 0)).intValue();
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    iIntValue = -1;
                }
                if (iIntValue == 1) {
                    Toaster.showShort((CharSequence) "应用已恢复安装");
                } else {
                    new z6(o2Var.f6724a, o2Var.f6725b, "低版本系统无法使用此功能，如需恢复请恢复出厂设置", "", "明白了", "", new j2(2)).show();
                }
            }
            o2Var.dismiss();
            return;
        }
        if (str.contains("强制删除") || str.contains("强删")) {
            if (com.yunpan.appmanage.util.v.f4106a.f4138q) {
                com.yunpan.appmanage.util.a0.u(AppStart.f3772h.getText(R.string.ts_hide_gn));
                return;
            }
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            if (!com.yunpan.appmanage.util.j.f4033a.f4058m) {
                com.yunpan.appmanage.util.a0.z("无法挂载系统目录，无法使用此功能", false);
                return;
            }
            AppBean appBean3 = o2Var.f7503h;
            if (appBean3.isSystem && hashSet.contains(appBean3.pack)) {
                com.yunpan.appmanage.util.a0.s("这个系统应用极其重要，我拒绝你这么做", false);
                return;
            } else {
                new z6(o2Var.f6724a, o2Var.f6725b, "此应用是系统应用，你确定要强制删除此应用？？？\n\n强力删除后需重启系统方可彻底消失哦", "警告：请勿乱删系统应用，否则可能会导致系统无法开机", "取消强删", "确定强删", new i2(o2Var, i11)).show();
                return;
            }
        }
        if (str.equals("卸载数据")) {
            fa.b0.f5652a.getClass();
            if (!a2.w0.O()) {
                com.yunpan.appmanage.util.a0.u("需连接adb");
                return;
            }
            o2Var.dismiss();
            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4072u.size() > 1) {
                new z6(o2Var.f6724a, o2Var.f6725b, "您系统中有多个用户，请问是否把系统中其它用户里的同款应用也一同卸载？", "", "只卸载当前用户", "全部卸载(推荐)", new i2(o2Var, i13)).show();
                return;
            } else {
                o2Var.g(false);
                return;
            }
        }
        if (str.equals("卸载")) {
            AppBean appBean4 = o2Var.f7503h;
            boolean z4 = appBean4.isSystem;
            if (z4 && com.yunpan.appmanage.util.v.f4106a.f4138q) {
                com.yunpan.appmanage.util.a0.u(AppStart.f3772h.getText(R.string.ts_hide_gn));
                return;
            }
            if (z4 && hashSet.contains(appBean4.pack)) {
                com.yunpan.appmanage.util.a0.s("这个系统应用极其重要，我拒绝你这么做", false);
                return;
            }
            AppBean appBean5 = o2Var.f7503h;
            if (appBean5.isSystem && appBean5.apkPath.startsWith("/data/app/")) {
                new z6(o2Var.f6724a, o2Var.f6725b, "此款应用装有两个版本，一款是系统自带的，一款是你自己安装的或升级的！\n", "此次卸载将会先卸载您后来安装的，明白吗？", "知道了", "", new i2(o2Var, 8)).show();
                return;
            }
            if (o2Var.r) {
                new z6(o2Var.f6724a, o2Var.f6725b, "检测到当前应用是默认桌面应用，你确定要卸载此桌面吗？\n\n注意：卸载默认桌面前，请确保您已经安装有其他桌面应用，并且已经启动了\n因为某些系统安装桌面应用后，如果没启动过的话，系统不会自动打开\n\n严重警告：不建议禁用系统桌面，", o2Var.f7503h.isSystem ? "特别警告：请勿乱禁用系统应用，特别是系统自带桌面，有无法开机的风险" : "", "确定卸载", "取消卸载", new i2(o2Var, 9)).show();
                return;
            }
            if (o2Var.f7503h.isSystem) {
                fa.b0.f5652a.getClass();
                if (!a2.w0.L()) {
                    DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                    if (!com.yunpan.appmanage.util.j.f4033a.f4053j || Build.VERSION.SDK_INT >= 23) {
                        i15 = 0;
                    }
                }
                if (i15 != 0) {
                    new z6(o2Var.f6724a, o2Var.f6725b, "此应用是系统应用，你确定要卸载？？？\n请勿乱卸载系统应用，否则可能会导致系统无法开机".concat(Build.VERSION.SDK_INT < 24 ? "\n注：由于您的系统版本低于Android7.0，系统应用伪卸载后将无法恢复，后面如需恢复系统应用，只能恢复出厂设置" : ""), "注意：卸载系统应用是伪卸载，卸载后无法使用，但应用依然在系统里".concat(o2Var.f7504i.uid % 100000 < 10000 ? "\n警告：此应用是系统重要应用，请三思！！！" : ""), "取消", "确定", new i2(o2Var, 10)).show();
                    return;
                }
            }
            o2Var.d();
            return;
        }
        boolean zContains2 = str.contains("还原");
        Activity activity = o2Var.f6724a;
        if (zContains2) {
            try {
                Intent intent = new Intent("android.intent.action.UNINSTALL_PACKAGE");
                intent.setData(Uri.parse("package:" + o2Var.f7503h.pack));
                intent.addFlags(268435456);
                activity.startActivity(intent);
            } catch (Exception unused) {
                com.yunpan.appmanage.util.a0.s("调用卸载程序出错！", false);
            }
            o2Var.dismiss();
            return;
        }
        if (str.contains("解禁")) {
            o2Var.a();
            return;
        }
        if (str.contains("禁用")) {
            if (o2Var.r) {
                new z6(o2Var.f6724a, o2Var.f6725b, "检测到当前应用是默认桌面应用，你确定要禁用此桌面吗？", "注意：禁用默认桌面前，请确保您已经安装有其他桌面应用，并且已经启动了\n因为某些系统安装桌面应用后，如果没启动过的话，系统不会自动打开\n\n严重警告：不建议禁用系统桌面，否则无法开机，后果自负", "确定禁用", "取消禁用", new i2(o2Var, i16)).show();
                return;
            }
            AppBean appBean6 = o2Var.f7503h;
            if (!appBean6.isSystem) {
                o2Var.a();
                return;
            }
            if (com.yunpan.appmanage.util.v.f4106a.f4138q) {
                com.yunpan.appmanage.util.a0.u(AppStart.f3772h.getText(R.string.ts_hide_gn));
                return;
            } else if (hashSet.contains(appBean6.pack)) {
                com.yunpan.appmanage.util.a0.s("这个系统应用极其重要，我拒绝你这么做", false);
                return;
            } else {
                new z6(o2Var.f6724a, o2Var.f6725b, o2Var.f7504i.uid % 100000 < 10000 ? "警告：此应用是系统重要应用，请三思！！！" : "注意：此应用是系统应用，你确定要禁用此应用吗？？？", "不了解的可千万不要乱禁用系统内置的东西", "确定禁用", "取消禁用", new i2(o2Var, i15)).show();
                return;
            }
        }
        if (str.contains("重置")) {
            fa.b0.f5652a.getClass();
            if (a2.w0.O()) {
                new z6(o2Var.f6724a, o2Var.f6725b, "确定要清理此应用的所有数据以及配置信息？？？", "", "确定", "取消", new i2(o2Var, i14)).show();
                return;
            } else {
                com.yunpan.appmanage.util.a0.z("此功能需开启usb调试或者root系统！", true);
                return;
            }
        }
        if (str.contains("详情")) {
            try {
                o2Var.dismiss();
                Intent data = new Intent().setAction("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", o2Var.f7503h.pack, null));
                data.addFlags(268435456);
                activity.startActivity(data);
                return;
            } catch (Exception unused2) {
                com.yunpan.appmanage.util.a0.z("此系统没有详情页面！", false);
                return;
            }
        }
        if (str.contains("权限")) {
            if (o2Var.f7504i.uid % 100000 == 1000) {
                new z6(o2Var.f6724a, o2Var.f6725b, "此应用拥有系统签名，管家无法接管权限管理\n\n此类应用无需管理权限，因为本身拥有全部权限", "", "好的", "", new j2(0)).show();
                return;
            }
            DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
            SignatureBean signatureBean2 = com.yunpan.appmanage.util.j.f4033a.f4066q;
            boolean z10 = (signatureBean2 == null || (signatureBean = o2Var.f7506k) == null || !signatureBean.str_md5.equals(signatureBean2.str_md5)) ? false : true;
            o2Var.dismiss();
            new za(o2Var.f6724a, o2Var.f6725b, o2Var.f7505j, o2Var.f7504i.uid, z10).show();
            return;
        }
        if (str.contains("启动")) {
            if (o2Var.f7503h.isDisable) {
                com.yunpan.appmanage.util.a0.z("此应用已被禁用无法打开", true);
                return;
            } else {
                o2Var.dismiss();
                p000if.a.E0(activity, o2Var.f6725b, o2Var.f7503h);
                return;
            }
        }
        if (str.contains("缓存")) {
            o2Var.dismiss();
            Toaster.show((CharSequence) "清理中");
            a2.w0 w0Var2 = fa.b0.f5652a;
            String str3 = o2Var.f7503h.pack;
            w0Var2.f347c = new g2(o2Var, 8);
            u9.d.f15554a.execute(new fa.u(w0Var2, str3, 0));
            return;
        }
        if (str.contains("组件")) {
            o2Var.dismiss();
            DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.j.f4033a.f4075x = o2Var.f7503h.pack;
            ((da.g) activity).w(ActivityAppDetails.class);
        }
    }
}
