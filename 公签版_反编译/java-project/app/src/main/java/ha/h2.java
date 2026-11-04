package ha;

import android.content.res.Resources;
import android.os.Build;
import android.provider.Settings;
import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAdb;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcatSet;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivityNissan;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import com.yunpan.appmanage.ui.ActivityTextHzh;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class h2 implements ec.d, c6.e, a6, p2, je {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7138a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f7139b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7140c;

    public /* synthetic */ h2(Object obj, boolean z, int i10) {
        this.f7138a = i10;
        this.f7140c = obj;
        this.f7139b = z;
    }

    @Override // ha.p2
    public void c(String str, String str2) {
        ActivityTextHzh activityTextHzh = (ActivityTextHzh) this.f7140c;
        boolean z = this.f7139b;
        if (z) {
            activityTextHzh.K = str2;
            activityTextHzh.M = 0;
            activityTextHzh.D.setText(str);
        } else {
            activityTextHzh.L = str2;
            activityTextHzh.N = 0;
            activityTextHzh.E.setText(str);
        }
        activityTextHzh.B(str2, z);
    }

    @Override // ha.je
    public void e(String str, String str2) {
        ua.q8 q8Var = (ua.q8) this.f7140c;
        q8Var.f15908g.c("压缩中");
        ArrayList arrayList = new ArrayList();
        if (this.f7139b) {
            arrayList.addAll(q8Var.L);
        } else {
            arrayList.add(q8Var.B);
        }
        File file = new File(new File(((x9.w3) arrayList.get(0)).f18365b).getParent(), str);
        za.g.b(arrayList, file, str2).b(new h3(q8Var, 18, file));
    }

    @Override // ha.a6
    public void f(x9.w3 w3Var) {
        int i10 = 0;
        ua.z3 z3Var = (ua.z3) this.f7140c;
        z3Var.getClass();
        String str = w3Var.f18365b;
        int i11 = ActivitySystemHasWrite.F;
        ActivitySystemHasWrite activitySystemHasWrite = (ActivitySystemHasWrite) z3Var.f16077e;
        activitySystemHasWrite.getClass();
        new mc.c(i10, new ua.e7(activitySystemHasWrite, str, this.f7139b, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new ua.f7(activitySystemHasWrite, i10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ec.d
    public void g(mc.b bVar) throws IllegalAccessException, InterruptedException, Resources.NotFoundException, NoSuchMethodException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z = this.f7139b;
        Object obj = this.f7140c;
        Object[] objArr = 0;
        boolean zPutInt = false;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object[] objArr6 = 0;
        Object[] objArr7 = 0;
        Object[] objArr8 = 0;
        switch (this.f7138a) {
            case 0:
                o2 o2Var = (o2) obj;
                o2Var.getClass();
                if (z) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    for (String str : com.yunpan.appmanage.util.j.f4033a.f4072u.keySet()) {
                        a2.w0 w0Var = fa.b0.f5652a;
                        StringBuilder sbD = da.b.d("pm uninstall --user ", str, " ");
                        sbD.append(o2Var.f7503h.pack);
                        String string = sbD.toString();
                        w0Var.getClass();
                        a2.w0.o(2000L, string);
                    }
                } else {
                    a2.w0 w0Var2 = fa.b0.f5652a;
                    String str2 = "pm uninstall " + o2Var.f7503h.pack;
                    w0Var2.getClass();
                    a2.w0.o(2000L, str2);
                }
                bVar.b();
                return;
            case 1:
                ActivityAdb activityAdb = (ActivityAdb) obj;
                int i10 = Settings.Global.getInt(activityAdb.F, "adb_enabled", -1);
                if (z && i10 == 1) {
                    Toaster.show((CharSequence) "已开启");
                    bVar.d(new Exception());
                    return;
                }
                if (!z && i10 == 0) {
                    Toaster.show((CharSequence) "已关闭");
                    bVar.d(new Exception());
                    return;
                }
                androidx.room.s sVarL0 = u9.d.r(da.b.a(z ? 1 : 0, "settings put global adb_enabled ")).l0();
                try {
                    zPutInt = Settings.Global.putInt(activityAdb.F, "adb_enabled", z ? 1 : 0);
                } catch (Exception unused) {
                }
                if (zPutInt || sVarL0.f2426b == 0) {
                    try {
                        Thread.sleep(1200L);
                    } catch (Exception unused2) {
                    }
                    bVar.b();
                    return;
                } else {
                    Toaster.show((CharSequence) "失败：无权限");
                    bVar.d(new Exception("修改失败"));
                    return;
                }
            case 2:
                String str3 = (String) obj;
                int i11 = ActivityAdb.G;
                try {
                    p000if.a.C0(str3, z ? "5555" : "-1");
                    Thread.sleep(333L);
                    p000if.a.C0("ctl.restart", "adbd");
                    if (z) {
                        Thread.sleep(4000L);
                    }
                    bVar.b();
                    return;
                } catch (Exception unused3) {
                    android.support.v4.media.session.a.B("修改失败，不适合您的系统", bVar);
                    return;
                }
            case 3:
            default:
                int i12 = ActivityNissan.I;
                ActivityNissan activityNissan = (ActivityNissan) obj;
                activityNissan.getClass();
                AppBean appBean = MyDb.get().getAppDao().get_appBean("com.autonavi.amapauto");
                if (appBean == null) {
                    appBean = MyDb.get().getAppDao().get_appBean_name("高德地图");
                }
                if (appBean != null) {
                    a2.w0 w0Var3 = fa.b0.f5652a;
                    String str4 = appBean.pack;
                    w0Var3.getClass();
                    a2.w0.f0(str4);
                }
                String strG = g.b.g(fa.g0.f5682a, new StringBuilder(), "/amapauto9/AutoDeviceAdapter/");
                if (!com.yunpan.appmanage.util.a0.g(strG)) {
                    new File(strG).mkdirs();
                }
                String strJ = g.b.j(strG, "AdapterFuncRepository.dat");
                String strJ2 = g.b.j(strG, "DeviceAdapterRepository.dat");
                try {
                    if (com.yunpan.appmanage.util.a0.g(strJ)) {
                        new File(strJ).delete();
                    }
                    if (com.yunpan.appmanage.util.a0.g(strJ2)) {
                        new File(strJ2).delete();
                    }
                } catch (Exception unused4) {
                }
                try {
                    InputStream inputStreamOpenRawResource = activityNissan.A.getResources().openRawResource(z ? R.raw.nissan_func : R.raw.nissan_func2);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(strJ);
                        try {
                            byte[] bArr = new byte[1048576];
                            while (true) {
                                int i13 = inputStreamOpenRawResource.read(bArr);
                                if (i13 != -1) {
                                    fileOutputStream.write(bArr, 0, i13);
                                } else {
                                    fileOutputStream.close();
                                    inputStreamOpenRawResource.close();
                                    InputStream inputStreamOpenRawResource2 = activityNissan.A.getResources().openRawResource(z ? R.raw.nissan_device : R.raw.nissan_device2);
                                    try {
                                        FileOutputStream fileOutputStream2 = new FileOutputStream(strJ2);
                                        try {
                                            byte[] bArr2 = new byte[1048576];
                                            while (true) {
                                                int i14 = inputStreamOpenRawResource2.read(bArr2);
                                                if (i14 == -1) {
                                                    fileOutputStream2.close();
                                                    inputStreamOpenRawResource2.close();
                                                    MyDb.get().lambda$addFile_thread$1(strJ);
                                                    MyDb.get().lambda$addFile_thread$1(strJ2);
                                                    if (appBean != null) {
                                                        a2.w0 w0Var4 = fa.b0.f5652a;
                                                        String str5 = appBean.pack;
                                                        w0Var4.getClass();
                                                        a2.w0.f0(str5);
                                                    }
                                                    bVar.b();
                                                    return;
                                                }
                                                fileOutputStream2.write(bArr2, 0, i14);
                                            }
                                        } finally {
                                        }
                                    } finally {
                                    }
                                }
                            }
                        } finally {
                        }
                    } finally {
                    }
                } catch (Exception unused5) {
                    android.support.v4.media.session.a.B("写入失败", bVar);
                    return;
                }
            case 4:
                int i15 = ActivityLaboratory.I;
                ActivityLaboratory activityLaboratory = (ActivityLaboratory) obj;
                activityLaboratory.getClass();
                try {
                    if (Build.VERSION.SDK_INT == 28) {
                        if (z) {
                            Settings.Global.putInt(activityLaboratory.G, "hidden_api_policy_pre_p_apps", 1);
                            Settings.Global.putInt(activityLaboratory.G, "hidden_api_policy_p_apps", 1);
                        } else {
                            fa.b0.f5652a.getClass();
                            if (a2.w0.h("settings delete global hidden_api_policy_pre_p_apps").f5648a == 0) {
                                a2.w0.h("settings delete global hidden_api_policy_p_apps");
                            } else {
                                Settings.Global.putInt(activityLaboratory.G, "hidden_api_policy_pre_p_apps", 0);
                                Settings.Global.putInt(activityLaboratory.G, "hidden_api_policy_p_apps", 0);
                            }
                        }
                    } else if (z) {
                        Settings.Global.putInt(activityLaboratory.G, "hidden_api_policy", 1);
                    } else {
                        fa.b0.f5652a.getClass();
                        if (a2.w0.h("settings delete global hidden_api_policy").f5648a != 0) {
                            Settings.Global.putInt(activityLaboratory.G, "hidden_api_policy", 0);
                        }
                    }
                    com.yunpan.appmanage.util.a0.w("设置成功");
                } catch (Exception unused6) {
                    com.yunpan.appmanage.util.a0.u("失败：无权限");
                }
                bVar.b();
                return;
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = ActivityKeyMapLogcatSet.H;
        ActivityKeyMapLogcatSet activityKeyMapLogcatSet = (ActivityKeyMapLogcatSet) this.f7140c;
        activityKeyMapLogcatSet.getClass();
        if (i10 == 0) {
            if (this.f7139b) {
                com.yunpan.appmanage.util.a0.u("已添加有按键，不能再切换模式！需清空日志后再切换");
                return;
            }
            com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
            boolean z = !wVar.W;
            wVar.W = z;
            try {
                wVar.f4123i.k("LogcatListeningNoTag", Boolean.valueOf(z));
            } catch (Exception unused) {
            }
            wVar.m();
        } else if (i10 == 1) {
            wa.u uVar = wa.t.f17728a;
            boolean z4 = !uVar.J;
            try {
                uVar.J = z4;
                uVar.f17731b.k("LogcatKeymap_BootStartTaskRunDelay", Boolean.valueOf(z4));
            } catch (Exception unused2) {
            }
            uVar.i();
        } else if (i10 == 2) {
            wa.u uVar2 = wa.t.f17728a;
            boolean z10 = !uVar2.K;
            try {
                uVar2.K = z10;
                uVar2.f17731b.k("LogcatKeymap_ScreenOnOff", Boolean.valueOf(z10));
            } catch (Exception unused3) {
            }
            uVar2.i();
        }
        ((StrIntBoolBean) activityKeyMapLogcatSet.F.t(i10)).boolValue = true ^ ((StrIntBoolBean) activityKeyMapLogcatSet.F.t(i10)).boolValue;
        activityKeyMapLogcatSet.F.e(i10);
    }
}
