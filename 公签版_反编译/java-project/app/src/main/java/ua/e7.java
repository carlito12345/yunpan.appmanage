package ua;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import java.io.File;
import java.io.PrintStream;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class e7 implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15659a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivitySystemHasWrite f15660b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f15661c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f15662d;

    public /* synthetic */ e7(ActivitySystemHasWrite activitySystemHasWrite, String str, boolean z, int i10) {
        this.f15659a = i10;
        this.f15660b = activitySystemHasWrite;
        this.f15661c = str;
        this.f15662d = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d6, code lost:
    
        if (a2.w0.h(r0).f5648a != 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0113, code lost:
    
        if (a2.w0.h(r0).f5648a != 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0140, code lost:
    
        if (a2.w0.h(r0).f5648a != 0) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02cb  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(mc.b bVar) throws PackageManager.NameNotFoundException {
        String str;
        ApplicationInfo applicationInfo;
        String str2;
        String str3;
        ApplicationInfo applicationInfo2;
        String str4;
        String str5;
        String str6;
        boolean z;
        String str7 = "不存在超级系统应用目录";
        boolean z4 = this.f15662d;
        String str8 = "此应用已被您伪卸载，请先恢复或强删";
        ActivitySystemHasWrite activitySystemHasWrite = this.f15660b;
        String str9 = this.f15661c;
        switch (this.f15659a) {
            case 0:
                int i10 = ActivitySystemHasWrite.F;
                activitySystemHasWrite.getClass();
                try {
                    str = "'";
                    try {
                        applicationInfo = activitySystemHasWrite.A.getPackageManager().getApplicationInfo(str9, 0);
                    } catch (Exception unused) {
                        applicationInfo = null;
                        if (applicationInfo == null) {
                        }
                    }
                } catch (Exception unused2) {
                    str = "'";
                }
                if (applicationInfo == null) {
                    String str10 = applicationInfo.sourceDir;
                    if (str10 != null && !str10.isEmpty()) {
                        if (!com.yunpan.appmanage.util.a0.g(applicationInfo.sourceDir)) {
                            str2 = "文件不存在，请重启系统";
                        } else if (!applicationInfo.enabled) {
                            android.support.v4.media.session.a.B("此应用已被您禁用，请先解禁", bVar);
                            break;
                        } else if ((applicationInfo.flags & 1) != 0 && !applicationInfo.sourceDir.startsWith("/data/app/")) {
                            android.support.v4.media.session.a.B("本身就是系统应用 ", bVar);
                            break;
                        } else if ((applicationInfo.flags & 8388608) != 0) {
                            File file = new File("/system/app");
                            if (!z4) {
                                file = new File("/system/priv-app");
                                if (com.yunpan.appmanage.util.a0.f(file)) {
                                }
                                android.support.v4.media.session.a.B(str7, bVar);
                                break;
                            }
                            long j10 = com.yunpan.appmanage.util.a0.j(file.getPath());
                            if (j10 >= 20971520) {
                                if (new File(applicationInfo.sourceDir).getParentFile().getParentFile().getPath().startsWith("/data/app")) {
                                    long jK = android.support.v4.media.session.b.k(new File(applicationInfo.sourceDir).getParentFile().getPath());
                                    System.out.getClass();
                                    if (j10 >= jK + 20971520) {
                                        a2.w0 w0Var = fa.b0.f5652a;
                                        StringBuilder sb2 = new StringBuilder("rm -rf '");
                                        sb2.append(file.getPath());
                                        sb2.append("/");
                                        sb2.append(str9);
                                        String str11 = str;
                                        sb2.append(str11);
                                        String string = sb2.toString();
                                        w0Var.getClass();
                                        a2.w0.h(string);
                                        fa.a0 a0VarH = a2.w0.h("mv " + new File(applicationInfo.sourceDir).getParentFile().getPath() + " " + file.getPath());
                                        str7 = "转移失败，请重试";
                                        if (a0VarH.f5648a != 0) {
                                            a0VarH.a();
                                            bVar.d(new Exception("转移失败，请重试"));
                                            break;
                                        } else {
                                            File file2 = new File(file, new File(applicationInfo.sourceDir).getParentFile().getName());
                                            if (com.yunpan.appmanage.util.a0.f(file2)) {
                                                if (!file2.getName().equals(str9) && !com.yunpan.appmanage.util.a0.f(new File(file2.getParentFile(), str9))) {
                                                    try {
                                                        a2.w0.C(file2.getPath(), str9);
                                                        file2 = new File(file2.getParentFile(), str9);
                                                    } catch (Exception unused3) {
                                                    }
                                                }
                                                a2.w0 w0Var2 = fa.b0.f5652a;
                                                String str12 = "chown -R root:root '" + file2.getPath() + str11;
                                                w0Var2.getClass();
                                                a2.w0.h(str12);
                                                bVar.b();
                                                break;
                                            }
                                            android.support.v4.media.session.a.B(str7, bVar);
                                        }
                                    }
                                } else {
                                    str2 = "此应用安装目录不正确，避免出错，禁止转换";
                                }
                            }
                            android.support.v4.media.session.a.B("系统分区存储空间不足", bVar);
                            break;
                        } else {
                            android.support.v4.media.session.a.B("此应用已被您伪卸载，请先恢复或强删", bVar);
                            break;
                        }
                    } else {
                        str2 = "未找到此应用";
                    }
                    android.support.v4.media.session.a.B(str2, bVar);
                    break;
                } else {
                    android.support.v4.media.session.a.B("未找到此应用", bVar);
                    break;
                }
                break;
            default:
                int i11 = ActivitySystemHasWrite.F;
                activitySystemHasWrite.getClass();
                try {
                    ef.b bVar2 = new ef.b(str9);
                    bVar2.M();
                    String str13 = bVar2.f4963e.f5813a;
                    bVar2.M();
                    if (Integer.valueOf(bVar2.f4963e.f5819g).intValue() <= Build.VERSION.SDK_INT) {
                        try {
                            applicationInfo2 = activitySystemHasWrite.A.getPackageManager().getApplicationInfo(str13, 0);
                        } catch (Exception unused4) {
                            applicationInfo2 = null;
                        }
                        if (applicationInfo2 != null) {
                            if (!applicationInfo2.enabled) {
                                android.support.v4.media.session.a.B("此应用已被您禁用，请先解禁", bVar);
                                break;
                            } else if ((applicationInfo2.flags & 1) != 0 && !applicationInfo2.sourceDir.startsWith("/data/app/")) {
                                android.support.v4.media.session.a.B("本身就是系统应用 ", bVar);
                                break;
                            } else {
                                if ((applicationInfo2.flags & 8388608) != 0) {
                                    String str14 = applicationInfo2.sourceDir;
                                    if (str14 != null && !str14.isEmpty()) {
                                        System.out.getClass();
                                        str8 = "删除旧应用文件失败";
                                        if (!new File(applicationInfo2.sourceDir).getParent().equals("/data/app")) {
                                            if (!new File(applicationInfo2.sourceDir).getParentFile().getParent().equals("/data/app")) {
                                                a2.w0 w0Var3 = fa.b0.f5652a;
                                                String str15 = "rm -rf '" + new File(applicationInfo2.sourceDir).getParentFile().getParent() + "'";
                                                w0Var3.getClass();
                                                break;
                                            } else {
                                                a2.w0 w0Var4 = fa.b0.f5652a;
                                                String str16 = "rm -rf '" + new File(applicationInfo2.sourceDir).getParent() + "'";
                                                w0Var4.getClass();
                                                break;
                                            }
                                        } else {
                                            a2.w0 w0Var5 = fa.b0.f5652a;
                                            String str17 = "rm -rf '" + applicationInfo2.sourceDir + "'";
                                            w0Var5.getClass();
                                            break;
                                        }
                                    }
                                }
                                android.support.v4.media.session.a.B(str8, bVar);
                                break;
                            }
                        }
                        File file3 = new File("/system/app");
                        if (!z4) {
                            file3 = new File("/system/priv-app");
                            if (!com.yunpan.appmanage.util.a0.f(file3)) {
                                android.support.v4.media.session.a.B("不存在超级系统应用目录", bVar);
                                break;
                            }
                        }
                        long j11 = com.yunpan.appmanage.util.a0.j(file3.getPath());
                        if (j11 < 20971520) {
                            str4 = "系统分区存储空间不足";
                        } else {
                            str4 = "系统分区存储空间不足";
                            if (j11 >= com.yunpan.appmanage.util.a0.p(new File(str9)) + 20971520) {
                                a2.w0 w0Var6 = fa.b0.f5652a;
                                String str18 = "rm -rf '" + file3.getPath() + "/" + str13 + "'";
                                w0Var6.getClass();
                                a2.w0.h(str18);
                                if (a2.w0.h("mkdir '" + file3.getPath() + "/" + str13 + "'").f5648a != 0) {
                                    str3 = "创建文件夹失败";
                                } else {
                                    PrintStream printStream = System.out;
                                    file3.getPath();
                                    printStream.getClass();
                                    if (a2.w0.h("chmod 755 '" + file3.getPath() + "/" + str13 + "'").f5648a != 0) {
                                        str3 = "设置文件夹权限失败";
                                    } else {
                                        try {
                                            StringBuilder sb3 = new StringBuilder();
                                            sb3.append(file3.getPath());
                                            sb3.append("/");
                                            sb3.append(str13);
                                            str5 = "/base.apk";
                                            try {
                                                sb3.append(str5);
                                                a2.w0.z(str9, sb3.toString());
                                            } catch (Exception unused5) {
                                                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                                if (com.yunpan.appmanage.util.j.f4033a.f4060n > 0) {
                                                    try {
                                                        a2.w0 w0Var7 = fa.b0.f5652a;
                                                        String str19 = file3.getPath() + "/" + str13 + str5;
                                                        w0Var7.getClass();
                                                        a2.w0.z(str9, str19);
                                                    } catch (Exception unused6) {
                                                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                                        if (kVar.f4060n != 0) {
                                                            fa.h0 h0Var = fa.g0.f5682a;
                                                            if (str9.startsWith(h0Var.d())) {
                                                                try {
                                                                    a2.w0 w0Var8 = fa.b0.f5652a;
                                                                    String str20 = kVar.f4062o + str9.substring(h0Var.d().length());
                                                                    String str21 = file3.getPath() + "/" + str13 + str5;
                                                                    w0Var8.getClass();
                                                                    a2.w0.z(str20, str21);
                                                                } catch (Exception unused7) {
                                                                    android.support.v4.media.session.a.B("拷贝文件到系统目录 失败", bVar);
                                                                    return;
                                                                }
                                                            }
                                                        }
                                                        android.support.v4.media.session.a.B("拷贝文件到系统目录 失败", bVar);
                                                        return;
                                                    }
                                                    a2.w0 w0Var9 = fa.b0.f5652a;
                                                    str6 = "chmod 644 '" + file3.getPath() + "/" + str13 + "/base.apk'";
                                                    w0Var9.getClass();
                                                    if (a2.w0.h(str6).f5648a == 0) {
                                                    }
                                                }
                                                android.support.v4.media.session.a.B("拷贝文件到系统目录 失败", bVar);
                                                return;
                                            }
                                        } catch (Exception unused8) {
                                            str5 = "/base.apk";
                                        }
                                        a2.w0 w0Var92 = fa.b0.f5652a;
                                        str6 = "chmod 644 '" + file3.getPath() + "/" + str13 + "/base.apk'";
                                        w0Var92.getClass();
                                        if (a2.w0.h(str6).f5648a == 0) {
                                            str3 = "修改文件权限失败";
                                        } else if (Build.VERSION.SDK_INT < 21) {
                                            bVar.b();
                                            break;
                                        } else {
                                            String str22 = AppStart.f3772h.getCacheDir().getPath() + "/111/";
                                            try {
                                                if (com.yunpan.appmanage.util.v.f4106a.f4140r0) {
                                                    p000if.a.w(new File(str9), str22, null, null);
                                                } else {
                                                    za.g.e(new File(str9), str22, null, null);
                                                }
                                                if (com.yunpan.appmanage.util.a0.g(str22 + "lib")) {
                                                    String[] strArr = Build.SUPPORTED_ABIS;
                                                    int length = strArr.length;
                                                    int i12 = 0;
                                                    while (true) {
                                                        if (i12 < length) {
                                                            String str23 = strArr[i12];
                                                            if (com.yunpan.appmanage.util.a0.g(str22 + "lib/" + str23)) {
                                                                StringBuilder sb4 = new StringBuilder();
                                                                sb4.append(file3.getPath());
                                                                sb4.append("/");
                                                                sb4.append(str13);
                                                                sb4.append("/lib/");
                                                                sb4.append(str23.equals("armeabi-v7a") ? "arm" : str23.equals("arm64-v8a") ? "arm64" : str23);
                                                                File file4 = new File(sb4.toString());
                                                                a2.w0 w0Var10 = fa.b0.f5652a;
                                                                String str24 = "mkdir -p '" + file4.getPath() + "'";
                                                                w0Var10.getClass();
                                                                if (a2.w0.h(str24).f5648a == 0) {
                                                                    a2.w0.h("chmod -R 755 '" + file4.getParent() + "'");
                                                                    File[] fileArrListFiles = new File(g.b.k(str22, "lib/", str23)).listFiles();
                                                                    int length2 = fileArrListFiles.length;
                                                                    int i13 = 0;
                                                                    boolean z10 = false;
                                                                    while (i13 < length2) {
                                                                        File file5 = fileArrListFiles[i13];
                                                                        a2.w0 w0Var11 = fa.b0.f5652a;
                                                                        String str25 = "\\cp -R '" + file5.getPath() + "' '" + file4.getPath() + "'";
                                                                        w0Var11.getClass();
                                                                        a2.w0.h(str25);
                                                                        a2.w0.h("chmod -R 644 '" + file4.getPath() + "/" + file5.getName() + "'");
                                                                        i13++;
                                                                        z10 = true;
                                                                    }
                                                                    z = z10;
                                                                }
                                                            } else {
                                                                i12++;
                                                            }
                                                        }
                                                    }
                                                    z = false;
                                                    if (!z) {
                                                        com.yunpan.appmanage.util.a0.u("检测到此应用可能不兼容您的系统");
                                                        bVar.f(file3.getPath() + "/" + str13);
                                                    }
                                                }
                                                fa.b0.f5652a.getClass();
                                                a2.w0.h("rm -rf '" + str22 + "'");
                                                bVar.b();
                                                break;
                                            } catch (Exception unused9) {
                                                fa.b0.f5652a.getClass();
                                                a2.w0.h("rm -rf '" + str22 + "'");
                                                bVar.b();
                                                return;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        android.support.v4.media.session.a.B(str4, bVar);
                        break;
                    } else {
                        str3 = "此应用不兼容您的系统";
                    }
                } catch (Exception unused10) {
                    str3 = "失败：无法分析此应用";
                }
                android.support.v4.media.session.a.B(str3, bVar);
                break;
        }
    }
}
