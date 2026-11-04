package com.yunpan.appmanage.util;

import android.content.ContextWrapper;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.UUID;
import x9.w3;

/* loaded from: classes.dex */
public final class w {
    public boolean A;
    public String A0;
    public boolean B;
    public String B0;
    public boolean C;
    public String C0;
    public boolean D;
    public String D0;
    public boolean E;
    public String E0;
    public boolean F;
    public final HashSet F0;
    public boolean G;
    public boolean G0;
    public boolean H;
    public int H0;
    public boolean I;
    public int I0;
    public boolean J;
    public int J0;
    public boolean K;
    public z7.o K0;
    public boolean L;
    public String L0;
    public boolean M;
    public boolean N;
    public int O;
    public int P;
    public int Q;
    public boolean R;
    public boolean S;
    public int T;
    public String U;
    public int V;
    public boolean W;
    public String X;
    public String Y;
    public int Z;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f4108a0;

    /* renamed from: b, reason: collision with root package name */
    public ContextWrapper f4109b;

    /* renamed from: b0, reason: collision with root package name */
    public String f4110b0;

    /* renamed from: c, reason: collision with root package name */
    public String f4111c;

    /* renamed from: c0, reason: collision with root package name */
    public int f4112c0;

    /* renamed from: d, reason: collision with root package name */
    public int f4113d;

    /* renamed from: d0, reason: collision with root package name */
    public String f4114d0;

    /* renamed from: e, reason: collision with root package name */
    public UUID f4115e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f4116e0;

    /* renamed from: f, reason: collision with root package name */
    public float f4117f;

    /* renamed from: f0, reason: collision with root package name */
    public int f4118f0;

    /* renamed from: g0, reason: collision with root package name */
    public int f4120g0;

    /* renamed from: h, reason: collision with root package name */
    public File f4121h;

    /* renamed from: h0, reason: collision with root package name */
    public long f4122h0;

    /* renamed from: i0, reason: collision with root package name */
    public int f4124i0;

    /* renamed from: j, reason: collision with root package name */
    public String f4125j;

    /* renamed from: j0, reason: collision with root package name */
    public int f4126j0;

    /* renamed from: k, reason: collision with root package name */
    public int f4127k;

    /* renamed from: k0, reason: collision with root package name */
    public boolean f4128k0;

    /* renamed from: l0, reason: collision with root package name */
    public boolean f4129l0;

    /* renamed from: m0, reason: collision with root package name */
    public boolean f4131m0;

    /* renamed from: n0, reason: collision with root package name */
    public boolean f4133n0;

    /* renamed from: o0, reason: collision with root package name */
    public boolean f4135o0;

    /* renamed from: p0, reason: collision with root package name */
    public int f4137p0;

    /* renamed from: q0, reason: collision with root package name */
    public boolean f4139q0;

    /* renamed from: r0, reason: collision with root package name */
    public boolean f4140r0;
    public boolean s0;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f4143t0;

    /* renamed from: u0, reason: collision with root package name */
    public boolean f4145u0;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f4147v0;

    /* renamed from: w0, reason: collision with root package name */
    public boolean f4149w0;

    /* renamed from: x, reason: collision with root package name */
    public boolean f4150x;

    /* renamed from: x0, reason: collision with root package name */
    public boolean f4151x0;

    /* renamed from: y, reason: collision with root package name */
    public boolean f4152y;

    /* renamed from: y0, reason: collision with root package name */
    public String f4153y0;
    public boolean z;

    /* renamed from: z0, reason: collision with root package name */
    public String f4154z0;

    /* renamed from: a, reason: collision with root package name */
    public String f4107a = "";

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f4119g = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public z7.s f4123i = null;
    public String l = "adb36987";

    /* renamed from: m, reason: collision with root package name */
    public boolean f4130m = false;

    /* renamed from: n, reason: collision with root package name */
    public boolean f4132n = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f4134o = false;

    /* renamed from: p, reason: collision with root package name */
    public boolean f4136p = true;

    /* renamed from: q, reason: collision with root package name */
    public boolean f4138q = true;
    public int r = 960;

    /* renamed from: s, reason: collision with root package name */
    public String f4141s = "";

    /* renamed from: t, reason: collision with root package name */
    public boolean f4142t = true;

    /* renamed from: u, reason: collision with root package name */
    public int f4144u = -1;

    /* renamed from: v, reason: collision with root package name */
    public boolean f4146v = true;

    /* renamed from: w, reason: collision with root package name */
    public boolean f4148w = false;

    public w() {
        int i10 = Build.VERSION.SDK_INT;
        this.f4150x = i10 >= 23;
        this.f4152y = false;
        this.z = false;
        this.A = false;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = true;
        this.G = true;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = true;
        this.N = true;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = false;
        this.S = false;
        this.T = 0;
        this.U = "";
        this.V = -1;
        this.W = false;
        this.X = "";
        this.Y = "";
        this.Z = 1;
        this.f4108a0 = false;
        this.f4110b0 = "su";
        this.f4114d0 = "";
        this.f4116e0 = false;
        this.f4118f0 = 1;
        this.f4120g0 = i10 >= 21 ? 0 : 1;
        this.f4122h0 = 0L;
        this.f4124i0 = 0;
        this.f4126j0 = 0;
        this.f4128k0 = false;
        this.f4129l0 = false;
        this.f4131m0 = true;
        this.f4133n0 = false;
        this.f4135o0 = false;
        this.f4137p0 = 0;
        this.f4139q0 = true;
        this.f4140r0 = false;
        this.s0 = false;
        this.f4143t0 = false;
        this.f4145u0 = false;
        this.f4147v0 = false;
        this.f4149w0 = true;
        this.f4151x0 = true;
        this.f4153y0 = "apk|apkm|apks|gj|xapk|apk.1";
        this.f4154z0 = "png|jpg|jpeg|gif|bmp|webp|ico|kpg";
        this.A0 = "mp4|mkv|avi|flv|wmv|mov|rmvb|3gp|mpg|mpeg|rm|vob|m4v|webm|asf|vhs|xvid|divx|dv|ra|ts";
        this.B0 = "mp3|wav|ogg|flac|ape|wma|aac|amr|m4a|midi|cda|mid|kgg";
        this.C0 = "txt|pdf|ppt|pptx|xml|html|htm|log|ini|css|js|json|doc|docx|xls|xlsx";
        this.D0 = "zip|rar|7z|bz|tar|gz|bz2|tbz2|tgz|txz|xz";
        this.E0 = "ggg|kkk";
        this.F0 = new HashSet();
        this.G0 = false;
        this.H0 = 5;
        this.I0 = 0;
        this.J0 = 0;
        this.K0 = new z7.o();
        this.L0 = "";
    }

    public static w b() {
        return v.f4106a;
    }

    public final void A() {
        this.f4142t = false;
        try {
            this.f4123i.k("mIsTheFirst", Boolean.FALSE);
        } catch (Exception unused) {
        }
        m();
    }

    public final void B(String str) {
        this.f4125j = str;
        try {
            this.f4123i.m("mStartPassword", str);
        } catch (Exception unused) {
        }
        m();
    }

    public final void a(String str) {
        try {
            this.f4123i.r(str);
        } catch (Exception unused) {
        }
        m();
    }

    public final boolean c() {
        return this.F;
    }

    public final ArrayList d() {
        ArrayList arrayList = new ArrayList();
        try {
            z7.o oVarF = this.f4123i.o("CollDir").f();
            for (int i10 = 0; i10 < oVarF.f19478a.size(); i10++) {
                arrayList.add(new w3(new File(oVarF.l(i10).i())));
            }
            if (!arrayList.isEmpty()) {
                this.f4123i.r("CollDir");
                z7.o oVar = new z7.o();
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    z7.s sVar = new z7.s();
                    sVar.m("file_name", ((w3) arrayList.get(i11)).f18364a);
                    sVar.m("file_path", ((w3) arrayList.get(i11)).f18365b);
                    sVar.k("isDir", Boolean.valueOf(((w3) arrayList.get(i11)).f18366c));
                    oVar.k(sVar);
                }
                this.f4123i.j("CollDirs", oVar);
                m();
            }
        } catch (Exception unused) {
        }
        arrayList.clear();
        try {
            z7.o oVarF2 = this.f4123i.o("CollDirs").f();
            for (int i12 = 0; i12 < oVarF2.f19478a.size(); i12++) {
                z7.s sVarG = oVarF2.l(i12).g();
                w3 w3Var = new w3();
                w3Var.f18364a = sVarG.o("file_name").i();
                w3Var.f18365b = sVarG.o("file_path").i();
                try {
                    w3Var.f18368e = new File(w3Var.f18365b).getParentFile().getPath();
                } catch (Exception unused2) {
                }
                w3Var.f18366c = sVarG.o("isDir").b();
                arrayList.add(w3Var);
            }
        } catch (Exception unused3) {
        }
        return arrayList;
    }

    public final boolean e() {
        return this.f4140r0;
    }

    public final boolean f() {
        return this.f4142t;
    }

    public final boolean g() {
        return this.E;
    }

    public final String h(String str) {
        try {
            return this.f4123i.o(str).i();
        } catch (Exception unused) {
            return "";
        }
    }

    public final boolean i() {
        return this.f4134o;
    }

    public final void j(AppStart appStart) {
        this.f4109b = appStart;
        this.f4117f = appStart.getResources().getDisplayMetrics().density;
        this.f4115e = d.b.J(this.f4109b);
        this.f4107a = appStart.getFilesDir().getAbsolutePath() + "/ico/";
        try {
            new File(this.f4107a).mkdirs();
        } catch (Exception unused) {
        }
        try {
            PackageInfo packageInfo = this.f4109b.getPackageManager().getPackageInfo(this.f4109b.getPackageName(), 0);
            this.f4111c = packageInfo.versionName;
            this.f4113d = packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException | Exception unused2) {
        }
        l();
        try {
            if (this.f4123i.o("mReadDirMode") == null) {
                this.f4123i.l("mReadDirMode", -1);
            }
            this.f4144u = this.f4123i.o("mReadDirMode").e();
        } catch (Exception unused3) {
            this.f4144u = -1;
        }
        try {
            if (this.f4123i.o("installTime") == null) {
                this.f4123i.l("installTime", Long.valueOf(System.currentTimeMillis()));
            }
            this.f4123i.o("installTime").e();
        } catch (Exception unused4) {
            System.currentTimeMillis();
        }
        try {
            if (this.f4123i.o("mIsTheFirst") == null) {
                this.f4123i.k("mIsTheFirst", Boolean.TRUE);
            }
            this.f4142t = this.f4123i.o("mIsTheFirst").b();
        } catch (Exception unused5) {
            this.f4142t = true;
        }
        try {
            if (this.f4123i.o("mReturnKeyNoClose") == null) {
                this.f4123i.k("mReturnKeyNoClose", Boolean.FALSE);
            }
            this.f4146v = this.f4123i.o("mReturnKeyNoClose").b();
        } catch (Exception unused6) {
            this.f4146v = false;
        }
        try {
            if (this.f4123i.o("mNoAdbInstall") == null) {
                this.f4123i.k("mNoAdbInstall", Boolean.FALSE);
            }
            this.f4152y = this.f4123i.o("mNoAdbInstall").b();
        } catch (Exception unused7) {
            this.f4152y = false;
        }
        try {
            if (this.f4123i.o("InstallSource") != null) {
                this.X = this.f4123i.o("InstallSource").i();
            }
        } catch (Exception unused8) {
        }
        try {
            this.Y = this.f4123i.o("OtgAdbShellPassword").i();
        } catch (Exception unused9) {
        }
        try {
            this.F = this.f4123i.o("AdbConnectSuccessToast").b();
        } catch (Exception unused10) {
        }
        try {
            this.G = this.f4123i.o("ShellPasswordErrorToast").b();
        } catch (Exception unused11) {
        }
        try {
            this.H = this.f4123i.o("DialogShowNoComplete").b();
        } catch (Exception unused12) {
        }
        try {
            this.I = this.f4123i.o("FixedMutualPreachIP").b();
        } catch (Exception unused13) {
        }
        try {
            this.N = this.f4123i.o("IsOneRunning").b();
        } catch (Exception unused14) {
        }
        try {
            this.M = this.f4123i.o("Share_file_success_prompt").b();
        } catch (Exception unused15) {
        }
        try {
            this.J = this.f4123i.o("Auto_xingrui_adb_root").b();
        } catch (Exception unused16) {
        }
        try {
            this.K = this.f4123i.o("Jili_open_lifted_install").b();
        } catch (Exception unused17) {
        }
        try {
            this.L = this.f4123i.o("Jili_close_recovery_install").b();
        } catch (Exception unused18) {
        }
        try {
            this.z = this.f4123i.o("Auto_Open_Adb").b();
        } catch (Exception unused19) {
        }
        try {
            this.A = this.f4123i.o("Auto_Open_Adb2").b();
        } catch (Exception unused20) {
        }
        try {
            this.f4123i.o("DefaultInstallToSystem").b();
        } catch (Exception unused21) {
        }
        try {
            this.B = this.f4123i.o("Auto_Open_Wifi_Adb").b();
            if (wa.u.a().f17755v) {
                wa.w.b("自动勾选无线调试：" + this.B);
            }
        } catch (Exception unused22) {
            if (wa.u.a().f17755v) {
                wa.w.b("读取配置出错");
            }
        }
        try {
            this.C = this.f4123i.o("Auto_set_adb_port_5555").b();
        } catch (Exception unused23) {
        }
        try {
            this.D = this.f4123i.o("BoYueLAutoAdb").b();
        } catch (Exception unused24) {
        }
        try {
            try {
                this.E = this.f4123i.o("OuShangAutoAddWhitelist").b();
            } catch (Exception unused25) {
                String string = Settings.Global.getString(k.f().f4035a.getContentResolver(), "OUSHANG_WHILTE_APP_LIST");
                if (string.contains(".") || string.contains(",")) {
                    this.E = true;
                }
            }
        } catch (Exception unused26) {
        }
        try {
            if (this.f4123i.o("Adb_root_mode") == null) {
                String str = Build.BRAND + " " + Build.MANUFACTURER;
                if (Build.VERSION.SDK_INT == 22 && str.toLowerCase().contains("struments")) {
                    if ((Build.PRODUCT + Build.BOARD + Build.MODEL).contains("jacinto6evm")) {
                        this.O = 2;
                    }
                }
                this.f4123i.l("Adb_root_mode", Integer.valueOf(this.O));
            }
            this.O = this.f4123i.o("Adb_root_mode").e();
        } catch (Exception unused27) {
        }
        try {
            if (this.f4123i.o("Adb_remount_mode") == null) {
                String str2 = Build.BRAND + " " + Build.MANUFACTURER;
                if (Build.VERSION.SDK_INT == 22 && str2.toLowerCase().contains("struments")) {
                    if ((Build.PRODUCT + Build.BOARD + Build.MODEL).contains("jacinto6evm")) {
                        this.P = 2;
                    }
                }
                this.f4123i.l("Adb_remount_mode", Integer.valueOf(this.P));
            }
            this.P = this.f4123i.o("Adb_remount_mode").e();
        } catch (Exception unused28) {
        }
        try {
            this.Q = this.f4123i.o("Pss_mode").e();
        } catch (Exception unused29) {
        }
        try {
            this.R = this.f4123i.o("Accessibility_boot_task").b();
        } catch (Exception unused30) {
        }
        try {
            this.S = this.f4123i.o("Accessibility_root_mode").b();
        } catch (Exception unused31) {
        }
        try {
            this.W = this.f4123i.o("LogcatListeningNoTag").b();
        } catch (Exception unused32) {
        }
        try {
            this.Z = this.f4123i.o("CleanMemoryMode").e();
        } catch (Exception unused33) {
        }
        try {
            if (this.f4123i.o("mDoNotUseRoot") == null) {
                this.f4123i.k("mDoNotUseRoot", Boolean.FALSE);
            }
            this.f4108a0 = this.f4123i.o("mDoNotUseRoot").b();
        } catch (Exception unused34) {
            this.f4108a0 = false;
        }
        try {
            this.f4110b0 = this.f4123i.o("SuCommand").i();
        } catch (Exception unused35) {
        }
        try {
            if (this.f4123i.o("mFileListStyle") == null) {
                this.f4123i.l("mFileListStyle", 1);
            }
            this.f4118f0 = this.f4123i.o("mFileListStyle").e();
        } catch (Exception unused36) {
            this.f4118f0 = 1;
        }
        try {
            if (this.f4123i.o("mAdbPort") == null) {
                this.f4123i.l("mAdbPort", 5555);
            }
            this.f4127k = this.f4123i.o("mAdbPort").e();
        } catch (Exception unused37) {
            this.f4127k = 2;
        }
        try {
            this.f4130m = this.f4123i.o("NezhaAutoOpenAdb").b();
        } catch (Exception unused38) {
        }
        try {
            this.f4132n = this.f4123i.o("AutoOpenAdb_lynkco").b();
        } catch (Exception unused39) {
        }
        try {
            this.f4134o = this.f4123i.o("UseAdbPair").b();
        } catch (Exception unused40) {
        }
        try {
            this.f4136p = this.f4123i.o("NotUseShizuku").b();
        } catch (Exception unused41) {
        }
        try {
            this.f4138q = this.f4123i.o("IsHideGn").b();
        } catch (Exception unused42) {
        }
        try {
            this.U = this.f4123i.o("Nezha_VIN").i();
        } catch (Exception unused43) {
        }
        try {
            this.V = this.f4123i.o("IsJiliE02").e();
        } catch (Exception unused44) {
        }
        try {
            this.T = this.f4123i.o("Tcl_install_mode").e();
        } catch (Exception unused45) {
        }
        try {
            this.r = this.f4123i.o("AutoSizeWidthDp").e();
        } catch (Exception unused46) {
        }
        try {
            this.l = this.f4123i.o("AdbShellPassword").i();
        } catch (Exception unused47) {
        }
        try {
            this.f4141s = this.f4123i.o("policy_control").i();
        } catch (Exception unused48) {
        }
        try {
            this.f4148w = this.f4123i.o("InstallSuccessShowDialog").b();
        } catch (Exception unused49) {
        }
        try {
            if (this.f4123i.o("InstallAuthorized") != null) {
                this.f4150x = this.f4123i.o("InstallAuthorized").b();
            }
        } catch (Exception unused50) {
        }
        try {
            this.f4112c0 = this.f4123i.o("InstallerMode").e();
        } catch (Exception unused51) {
            this.f4112c0 = 1;
            if (Build.VERSION.SDK_INT >= 21 && this.f4109b.getPackageManager().checkPermission("android.permission.DEVICE_POWER", this.f4109b.getPackageName()) == 0) {
                this.f4112c0 = 0;
            }
        }
        try {
            this.f4114d0 = this.f4123i.o("InstallerClass").i();
        } catch (Exception unused52) {
        }
        try {
            this.f4123i.o("InstallerFrontDeskService").b();
        } catch (Exception unused53) {
        }
        try {
            this.f4116e0 = this.f4123i.o("NonShowDeviceDiscovery").b();
        } catch (Exception unused54) {
        }
        try {
            this.f4120g0 = this.f4123i.o("mBarMode").e();
        } catch (Exception unused55) {
        }
        if (appStart.getResources().getBoolean(R.bool.isDisplayOnlyBackgroundImage)) {
            this.f4120g0 = 6;
        }
        try {
            this.f4122h0 = this.f4123i.o("IcoUpdateTime").h();
        } catch (Exception unused56) {
        }
        try {
            this.f4124i0 = this.f4123i.o("AppsSortMode").e();
        } catch (Exception unused57) {
        }
        try {
            if (this.f4123i.o("mStartPassword") == null) {
                this.f4123i.m("mStartPassword", "");
            }
            this.f4125j = this.f4123i.o("mStartPassword").i();
        } catch (Exception unused58) {
            this.f4125j = "";
        }
        try {
            if (this.f4123i.o("CollDirs") == null) {
                this.f4123i.j("CollDirs", new z7.o());
            }
        } catch (Exception unused59) {
        }
        k();
        try {
            if (this.f4123i.o("Auto_task_switch_app") != null) {
                this.K0 = this.f4123i.o("Auto_task_switch_app").f();
            }
        } catch (Exception unused60) {
        }
        try {
            if (this.f4123i.o("Auto_task_desktop_selected_appName") != null) {
                this.L0 = this.f4123i.o("Auto_task_desktop_selected_appName").i();
            }
        } catch (Exception unused61) {
        }
        if (this.f4112c0 == 0 || Build.VERSION.SDK_INT < 21 || Process.myUid() != 1000) {
            return;
        }
        this.f4112c0 = 0;
    }

    public final void k() {
        try {
            if (this.f4123i.o("wpFileListMode") == null) {
                this.f4123i.l("wpFileListMode", 0);
            }
            this.I0 = this.f4123i.o("wpFileListMode").e();
        } catch (Exception unused) {
            this.I0 = 0;
        }
        try {
            if (this.f4123i.o("bdFileListMode") == null) {
                this.f4123i.l("bdFileListMode", 0);
            }
            this.J0 = this.f4123i.o("bdFileListMode").e();
        } catch (Exception unused2) {
            this.J0 = 0;
        }
        try {
            if (this.f4123i.o("image_auto") == null) {
                this.f4123i.k("image_auto", Boolean.valueOf(this.G0));
            }
            this.G0 = this.f4123i.o("image_auto").b();
        } catch (Exception unused3) {
        }
        try {
            if (this.f4123i.o("image_time") == null) {
                this.f4123i.l("image_time", Integer.valueOf(this.H0));
            }
            this.H0 = this.f4123i.o("image_time").e();
        } catch (Exception unused4) {
        }
        try {
            this.f4128k0 = this.f4123i.o("mFile_hideImage").b();
        } catch (Exception unused5) {
        }
        try {
            this.f4126j0 = this.f4123i.o("mFile_menu_gravity").e();
        } catch (Exception unused6) {
        }
        int i10 = this.f4126j0;
        if (i10 < 0 || i10 > 2) {
            this.f4126j0 = 0;
        }
        try {
            this.f4137p0 = this.f4123i.o("ImageThumbnailMode").e();
        } catch (Exception unused7) {
        }
        try {
            if (this.f4123i.o("mFile_hide") == null) {
                this.f4123i.k("mFile_hide", Boolean.FALSE);
            }
            this.f4129l0 = this.f4123i.o("mFile_hide").b();
        } catch (Exception unused8) {
            this.f4129l0 = false;
        }
        try {
            if (this.f4123i.o("mFile_ico") == null) {
                this.f4123i.k("mFile_ico", Boolean.TRUE);
            }
            this.f4131m0 = this.f4123i.o("mFile_ico").b();
        } catch (Exception unused9) {
            this.f4131m0 = true;
        }
        try {
            if (this.f4123i.o("mFile_sort") == null) {
                this.f4123i.k("mFile_sort", Boolean.TRUE);
            }
            this.f4133n0 = this.f4123i.o("mFile_sort").b();
        } catch (Exception unused10) {
            this.f4133n0 = true;
        }
        try {
            if (this.f4123i.o("mFile_copyMulti") == null) {
                this.f4123i.k("mFile_copyMulti", Boolean.FALSE);
            }
            this.f4135o0 = this.f4123i.o("mFile_copyMulti").b();
        } catch (Exception unused11) {
            this.f4135o0 = false;
        }
        try {
            this.f4140r0 = this.f4123i.o("File_new_extract").b();
        } catch (Exception unused12) {
        }
        try {
            this.s0 = this.f4123i.o("File_new_compression").b();
        } catch (Exception unused13) {
        }
        try {
            this.f4123i.o("File_jni_mode").b();
        } catch (Exception unused14) {
        }
        try {
            this.f4139q0 = this.f4123i.o("File_not_scanning_usb").b();
        } catch (Exception unused15) {
        }
        try {
            this.f4143t0 = this.f4123i.o("mFile_search_sort").b();
        } catch (Exception unused16) {
        }
        try {
            this.f4145u0 = this.f4123i.o("File_search_including_hide_file").b();
        } catch (Exception unused17) {
        }
        try {
            this.f4147v0 = this.f4123i.o("File_search_including_android_data").b();
        } catch (Exception unused18) {
        }
        try {
            this.f4149w0 = this.f4123i.o("File_search_image_filtration").b();
        } catch (Exception unused19) {
        }
        try {
            if (this.f4123i.o("mFile_search_usb") == null) {
                this.f4123i.k("mFile_search_usb", Boolean.TRUE);
            }
            this.f4151x0 = this.f4123i.o("mFile_search_usb").b();
        } catch (Exception unused20) {
            this.f4151x0 = true;
        }
        try {
            if (this.f4123i.o("mFileType_apk") == null) {
                this.f4123i.m("mFileType_apk", this.f4153y0);
            }
            this.f4153y0 = this.f4123i.o("mFileType_apk").i();
        } catch (Exception unused21) {
        }
        try {
            if (this.f4123i.o("mFileType_image") == null) {
                this.f4123i.m("mFileType_image", this.f4154z0);
            }
            this.f4154z0 = this.f4123i.o("mFileType_image").i();
        } catch (Exception unused22) {
        }
        try {
            if (this.f4123i.o("mFileType_txt") == null) {
                this.f4123i.m("mFileType_txt", this.C0);
            }
            this.C0 = this.f4123i.o("mFileType_txt").i();
        } catch (Exception unused23) {
        }
        try {
            if (this.f4123i.o("mFileType_music") == null) {
                this.f4123i.m("mFileType_music", this.B0);
            }
            this.B0 = this.f4123i.o("mFileType_music").i();
        } catch (Exception unused24) {
        }
        try {
            if (this.f4123i.o("mFileType_video") == null) {
                this.f4123i.m("mFileType_video", this.A0);
            }
            this.A0 = this.f4123i.o("mFileType_video").i();
        } catch (Exception unused25) {
        }
        try {
            if (this.f4123i.o("mFileType_zip") == null) {
                this.f4123i.m("mFileType_zip", this.D0);
            }
            this.D0 = this.f4123i.o("mFileType_zip").i();
        } catch (Exception unused26) {
        }
        try {
            this.E0 = this.f4123i.o("mFileType_wp_apk").i();
        } catch (Exception unused27) {
        }
        this.F0.addAll(Arrays.asList(this.E0.split("\\|")));
    }

    public final void l() throws IOException {
        File file = new File(this.f4109b.getFilesDir().getAbsolutePath(), "config.json");
        this.f4121h = file;
        if (!file.exists()) {
            try {
                this.f4121h.getParentFile().mkdirs();
                this.f4121h.createNewFile();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        this.f4121h.lastModified();
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.f4121h));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb2.append(line);
                sb2.append(SignParameters.NEW_LINE);
            }
            bufferedReader.close();
        } catch (FileNotFoundException e10) {
            e10.printStackTrace();
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        String strTrim = sb2.toString().trim();
        try {
            if (strTrim.isEmpty()) {
                this.f4123i = new z7.s();
            } else {
                this.f4123i = d.b.b0(strTrim).g();
            }
        } catch (Exception unused) {
        }
    }

    public final void m() {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.f4121h));
            bufferedWriter.write(this.f4123i.toString());
            bufferedWriter.close();
        } catch (IOException e7) {
            e7.printStackTrace();
        }
    }

    public final void n(int i10) {
        this.f4127k = i10;
        try {
            this.f4123i.l("mAdbPort", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        m();
    }

    public final void o(int i10) {
        this.P = i10;
        try {
            this.f4123i.l("Adb_remount_mode", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        m();
    }

    public final void p(int i10) {
        this.O = i10;
        try {
            this.f4123i.l("Adb_root_mode", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        m();
    }

    public final void q(int i10) {
        this.f4124i0 = i10;
        try {
            this.f4123i.l("AppsSortMode", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        m();
    }

    public final void r(boolean z) {
        this.B = z;
        try {
            this.f4123i.k("Auto_Open_Wifi_Adb", Boolean.valueOf(z));
        } catch (Exception unused) {
        }
        m();
    }

    public final void s(boolean z) {
        this.f4152y = z;
        try {
            this.f4123i.k("mNoAdbInstall", Boolean.valueOf(z));
        } catch (Exception unused) {
        }
        m();
    }

    public final void t(int i10) {
        this.f4126j0 = i10;
        try {
            this.f4123i.l("mFile_menu_gravity", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        m();
    }

    public final void u(boolean z) {
        this.s0 = z;
        try {
            this.f4123i.k("File_new_compression", Boolean.valueOf(z));
        } catch (Exception unused) {
        }
        m();
    }

    public final void v(boolean z) {
        this.f4140r0 = z;
        try {
            this.f4123i.k("File_new_extract", Boolean.valueOf(z));
        } catch (Exception unused) {
        }
        m();
    }

    public final void w(boolean z) {
        this.G0 = z;
        try {
            this.f4123i.k("image_auto", Boolean.valueOf(z));
        } catch (Exception unused) {
        }
        m();
    }

    public final void x(int i10) {
        this.H0 = i10;
        try {
            this.f4123i.l("image_time", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        m();
    }

    public final void y(int i10) {
        this.f4112c0 = i10;
        try {
            this.f4123i.l("InstallerMode", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        m();
    }

    public final void z(int i10) {
        this.V = i10;
        try {
            this.f4123i.l("IsJiliE02", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        m();
    }
}
