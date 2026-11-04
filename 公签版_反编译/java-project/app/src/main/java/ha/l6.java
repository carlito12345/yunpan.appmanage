package ha;

import android.os.Build;
import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.db.MyDb;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/* loaded from: classes.dex */
public final /* synthetic */ class l6 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7358a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n6 f7359b;

    public /* synthetic */ l6(n6 n6Var, int i10) {
        this.f7358a = i10;
        this.f7359b = n6Var;
    }

    public void a(String str, boolean z) {
        switch (this.f7358a) {
            case 1:
                n6 n6Var = this.f7359b;
                n6Var.getClass();
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    v8.a aVar = new v8.a(AppStart.f3772h);
                    aVar.j(R.layout.window_logcat);
                    aVar.f16661h = "Logcat";
                    aVar.a(256);
                    aVar.l(Build.VERSION.SDK_INT >= 28 ? 1 : 0);
                    aVar.q(new w8.b(0));
                    aVar.p();
                    aVar.m(R.id.v_btn_start, new com.hjq.permissions.b(n6Var, arrayList, str, 2));
                    aVar.d();
                    break;
                }
                break;
            default:
                n6 n6Var2 = this.f7359b;
                if (!z) {
                    n6Var2.getClass();
                    break;
                } else {
                    n6Var2.f7466h.setText("停止监听");
                    n6Var2.f7468j.E(new ArrayList());
                    g0.e eVar = n6Var2.f7469k;
                    boolean z4 = com.yunpan.appmanage.util.v.f4106a.W;
                    eVar.getClass();
                    new mc.c(0, new fa.c0(eVar, z4, str)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(11, n6Var2));
                    break;
                }
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        File file;
        String str;
        n6 n6Var = this.f7359b;
        n6Var.getClass();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM月dd日HH时mm分ss秒");
        fa.h0 h0Var = fa.g0.f5682a;
        if (h0Var.d().isEmpty()) {
            file = null;
            str = "导出成功";
        } else {
            file = new File(g.b.g(h0Var, new StringBuilder(), "/Download"), "日志_" + simpleDateFormat.format(new Date()) + ".log");
            str = "保存成功！在Download目录内";
        }
        if (file == null) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            if (!kVar.f4073v.isEmpty()) {
                file = new File(g.b.l((String) kVar.f4073v.iterator().next(), "/Download", new StringBuilder()), "日志_" + simpleDateFormat.format(new Date()) + ".log");
                str = "保存成功！在U盘Download目录内";
            }
        }
        if (file == null) {
            com.yunpan.appmanage.util.a0.u("没有内部存储，无法保存");
            bVar.d(new Exception());
            return;
        }
        try {
            file.getParentFile().mkdir();
            try {
                FileWriter fileWriter = new FileWriter(file);
                try {
                    BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                    for (int i10 = 0; i10 < n6Var.f7468j.b(); i10++) {
                        try {
                            bufferedWriter.write((String) n6Var.f7468j.t(i10));
                            bufferedWriter.newLine();
                        } catch (Throwable th2) {
                            try {
                                bufferedWriter.close();
                            } catch (Throwable th3) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                } catch (Exception unused) {
                                }
                            }
                            throw th2;
                        }
                    }
                    bufferedWriter.close();
                    fileWriter.close();
                    MyDb.get().lambda$addFile_thread$1(file.getAbsolutePath());
                    com.yunpan.appmanage.util.a0.v(str, false);
                    bVar.b();
                } catch (Throwable th4) {
                    try {
                        fileWriter.close();
                    } catch (Throwable th5) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                        } catch (Exception unused2) {
                        }
                    }
                    throw th4;
                }
            } catch (Exception unused3) {
                com.yunpan.appmanage.util.a0.u("保存失败");
                bVar.d(new Exception());
            }
        } catch (Exception unused4) {
            com.yunpan.appmanage.util.a0.u("保存失败");
            bVar.d(new Exception());
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        n6 n6Var = this.f7359b;
        String strTrim = ((String) n6Var.f7468j.t(i10)).trim();
        if (com.yunpan.appmanage.util.v.f4106a.W) {
            if (strTrim.charAt(1) != ' ') {
                Toaster.show((CharSequence) "此条日志不符合");
                return;
            }
        } else if (strTrim.charAt(1) != '/') {
            Toaster.show((CharSequence) "此条日志不符合");
            return;
        }
        if (strTrim.indexOf(":") == -1) {
            Toaster.show((CharSequence) "此条日志不符合");
        } else {
            n6Var.f7465g.a(strTrim);
            n6Var.dismiss();
        }
    }
}
