package ua;

import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityJiliE01;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DecimalFormat;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class d3 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15633a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityJiliE01 f15634b;

    public /* synthetic */ d3(ActivityJiliE01 activityJiliE01, int i10) {
        this.f15633a = i10;
        this.f15634b = activityJiliE01;
    }

    /* JADX WARN: Not initialized variable reg: 17, insn: 0x02d7: MOVE (r1 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY]) (LINE:728), block:B:100:0x02d7 */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:165:? A[Catch: Exception -> 0x016c, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x016c, blocks: (B:18:0x008a, B:31:0x00ce, B:70:0x01bf), top: B:133:0x008a }] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws Throwable {
        String str;
        InputStream inputStreamOpenRawResource;
        Class cls;
        String str2;
        Throwable th2;
        String str3 = "rm -rf /system/bin/111222";
        ActivityJiliE01 activityJiliE01 = this.f15634b;
        switch (this.f15633a) {
            case 1:
                String str4 = "写入su失败";
                int i10 = ActivityJiliE01.F;
                activityJiliE01.getClass();
                try {
                    try {
                        inputStreamOpenRawResource = activityJiliE01.A.getResources().openRawResource(R.raw.su_xingrui);
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    str4 = str;
                }
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fa.g0.f5682a.d() + "/su1");
                    try {
                        try {
                            byte[] bArr = new byte[1048576];
                            while (true) {
                                int i11 = inputStreamOpenRawResource.read(bArr);
                                String str5 = str4;
                                if (i11 == -1) {
                                    fileOutputStream.close();
                                    inputStreamOpenRawResource.close();
                                    a2.w0 w0Var = fa.b0.f5652a;
                                    StringBuilder sb2 = new StringBuilder("dd if='");
                                    fa.h0 h0Var = fa.g0.f5682a;
                                    sb2.append(h0Var.d());
                                    sb2.append("/su1' of='/system/bin/su'");
                                    String string = sb2.toString();
                                    w0Var.getClass();
                                    a2.w0.h(string);
                                    a2.w0.h("mv '" + h0Var.d() + "/su1' '/system/bin/'");
                                    a2.w0.h("rm -rf " + h0Var.d() + "/su1");
                                    str4 = "root失败";
                                    if (a2.w0.h("chmod 755 '/system/bin/su'").f5648a == 0 && u9.d.r("su").l0().f2426b == 0) {
                                        u9.d.r("mount -o remount,rw -t ext4 /system").l0();
                                        if (u9.d.r("touch /system/app/111222").l0().f2426b == 0) {
                                            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                            kVar.f4058m = true;
                                            u9.d.r("rm -rf /system/app/111222").l0();
                                            if (u9.d.r("touch /system/bin/111222").l0().f2426b == 0) {
                                                kVar.l = true;
                                                u9.d.r("rm -rf /system/bin/111222").l0();
                                            }
                                        }
                                        bVar.b();
                                        return;
                                    }
                                    android.support.v4.media.session.a.B(str4, bVar);
                                    return;
                                }
                                try {
                                    fileOutputStream.write(bArr, 0, i11);
                                    str4 = str5;
                                } catch (Throwable th3) {
                                    th = th3;
                                    Throwable th4 = th;
                                    try {
                                        fileOutputStream.close();
                                        throw th4;
                                    } catch (Throwable th5) {
                                        try {
                                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                                            throw th4;
                                        } catch (Exception unused3) {
                                            throw th4;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            Throwable th7 = th;
                            if (inputStreamOpenRawResource == null) {
                                throw th7;
                            }
                            try {
                                inputStreamOpenRawResource.close();
                                throw th7;
                            } catch (Throwable th8) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th7, th8);
                                    throw th7;
                                } catch (Exception unused4) {
                                    throw th7;
                                }
                            }
                        }
                    } catch (Throwable th9) {
                        th = th9;
                    }
                } catch (Throwable th10) {
                    th = th10;
                }
                break;
            default:
                int i12 = ActivityJiliE01.F;
                activityJiliE01.getClass();
                fa.b0.f5652a.getClass();
                if (a2.w0.h(Name.MARK).a().contains("uid=0(root)")) {
                    a2.w0.h("mount -o remount,rw -t ext4 /system");
                    if (a2.w0.h("touch /system/app/111222").f5648a == 0) {
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                        kVar2.f4058m = true;
                        a2.w0.h("rm -rf /system/app/111222");
                        if (a2.w0.h("touch /system/bin/111222").f5648a == 0) {
                            kVar2.l = true;
                            a2.w0.h("rm -rf /system/bin/111222");
                        }
                        bVar.b();
                        return;
                    }
                    if (!fa.g0.f5682a.f()) {
                        fa.h0 h0Var2 = fa.g0.f5682a;
                        if (h0Var2.d().isEmpty()) {
                            android.support.v4.media.session.a.B("不是星瑞车机", bVar);
                            return;
                        }
                        try {
                            InputStream inputStreamOpenRawResource2 = activityJiliE01.A.getResources().openRawResource(R.raw.su_xingrui);
                            try {
                                try {
                                    FileOutputStream fileOutputStream2 = new FileOutputStream(h0Var2.d() + "/su_xingrui");
                                    try {
                                        byte[] bArr2 = new byte[1048576];
                                        while (true) {
                                            int i13 = inputStreamOpenRawResource2.read(bArr2);
                                            String str6 = str3;
                                            if (i13 != -1) {
                                                fileOutputStream2.write(bArr2, 0, i13);
                                                str3 = str6;
                                            } else {
                                                try {
                                                    fileOutputStream2.close();
                                                    inputStreamOpenRawResource2.close();
                                                    a2.w0 w0Var2 = fa.b0.f5652a;
                                                    StringBuilder sb3 = new StringBuilder("dd if='");
                                                    fa.h0 h0Var3 = fa.g0.f5682a;
                                                    sb3.append(h0Var3.d());
                                                    sb3.append("/su_xingrui' of='/data/local/tmp/su_xingrui'");
                                                    String string2 = sb3.toString();
                                                    w0Var2.getClass();
                                                    a2.w0.h(string2);
                                                    a2.w0.h("mv '" + h0Var3.d() + "/su_xingrui' '/data/local/tmp/'");
                                                    a2.w0.h("rm -rf " + h0Var3.d() + "/su_xingrui");
                                                    a2.w0.h("chmod 777 '/data/local/tmp/su_xingrui'");
                                                    if (a2.w0.h("/data/local/tmp/su_xingrui").f5648a != 0 || !a2.w0.h(Name.MARK).a().contains("uid=0(root)")) {
                                                        android.support.v4.media.session.a.B("提权失败", bVar);
                                                        return;
                                                    }
                                                    a2.w0.h("mount -o remount,rw -t ext4 /system");
                                                    if (a2.w0.h("touch /system/app/111222").f5648a == 0) {
                                                        DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                                                        com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
                                                        kVar3.f4058m = true;
                                                        a2.w0.h("rm -rf /system/app/111222");
                                                        if (a2.w0.h("touch /system/bin/111222").f5648a == 0) {
                                                            kVar3.l = true;
                                                            a2.w0.h(str6);
                                                        }
                                                        bVar.b();
                                                        return;
                                                    }
                                                } catch (Throwable th11) {
                                                    th2 = th11;
                                                    str2 = "addSuppressed";
                                                    cls = Throwable.class;
                                                    if (inputStreamOpenRawResource2 != null) {
                                                        throw th2;
                                                    }
                                                    try {
                                                        inputStreamOpenRawResource2.close();
                                                        throw th2;
                                                    } catch (Throwable th12) {
                                                        try {
                                                            cls.getDeclaredMethod(str2, cls).invoke(th2, th12);
                                                            throw th2;
                                                        } catch (Exception unused5) {
                                                            throw th2;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } catch (Throwable th13) {
                                        try {
                                            fileOutputStream2.close();
                                            str2 = "addSuppressed";
                                            cls = Throwable.class;
                                            throw th13;
                                        } catch (Throwable th14) {
                                            try {
                                                str2 = "addSuppressed";
                                                cls = Throwable.class;
                                                try {
                                                    try {
                                                        cls.getDeclaredMethod(str2, Throwable.class).invoke(th13, th14);
                                                        throw th13;
                                                    } catch (Exception unused6) {
                                                        throw th13;
                                                    }
                                                } catch (Throwable th15) {
                                                    th = th15;
                                                    th2 = th;
                                                    if (inputStreamOpenRawResource2 != null) {
                                                    }
                                                }
                                            } catch (Exception unused7) {
                                                str2 = "addSuppressed";
                                                cls = Throwable.class;
                                                throw th13;
                                            }
                                        }
                                    }
                                } catch (Throwable th16) {
                                    th = th16;
                                    str2 = "addSuppressed";
                                    cls = Throwable.class;
                                }
                            } catch (Throwable th17) {
                                th = th17;
                                cls = Throwable.class;
                                str2 = "addSuppressed";
                            }
                        } catch (Exception unused8) {
                            android.support.v4.media.session.a.B("写入su失败", bVar);
                            return;
                        }
                    }
                }
                android.support.v4.media.session.a.B("提权失败，不适合此系统", bVar);
                return;
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 1;
        int i12 = 2;
        int i13 = ActivityJiliE01.F;
        ActivityJiliE01 activityJiliE01 = this.f15634b;
        activityJiliE01.getClass();
        if (i10 == 0) {
            if (fa.g0.f5682a.f() || fa.h.f5683a.i() || fa.l.f5712a.isConnected()) {
                new mc.c(0, new d3(activityJiliE01, i12)).d(rc.f.f13757b).a(fc.b.a()).b(new f3(activityJiliE01, 1));
                return;
            } else {
                Toaster.show((CharSequence) "请先连接adb");
                return;
            }
        }
        if (i10 == 1) {
            Toaster.show((CharSequence) "此功能暂未开放");
            return;
        }
        if (i10 == 2) {
            if (fa.g0.f5682a.f()) {
                Toaster.show((CharSequence) "您不是已root了吗？");
                return;
            }
            fa.b0.f5652a.getClass();
            if (!a2.w0.P()) {
                Toaster.show((CharSequence) "请先连接adb");
                return;
            }
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.l) {
                new mc.c(0, new d3(activityJiliE01, i11)).d(rc.f.f13757b).a(fc.b.a()).b(new f3(activityJiliE01, 2));
                return;
            } else {
                Toaster.show((CharSequence) "请先提权");
                return;
            }
        }
        if (i10 == 3) {
            fa.b0.f5652a.getClass();
            if (!a2.w0.P()) {
                Toaster.show((CharSequence) "请先连接adb");
                return;
            }
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.l) {
                new mc.c(0, new v0(8)).d(rc.f.f13757b).a(fc.b.a()).b(new f3(activityJiliE01, 5));
                return;
            } else {
                Toaster.show((CharSequence) "请先提权");
                return;
            }
        }
        if (i10 == 4) {
            DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.l) {
                new mc.c(0, new v0(10)).d(rc.f.f13757b).a(fc.b.a()).b(new f3(activityJiliE01, 3));
                return;
            } else {
                Toaster.show((CharSequence) "请先提权");
                return;
            }
        }
        if (i10 == 5) {
            DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.l) {
                new mc.c(0, new v0(9)).d(rc.f.f13757b).a(fc.b.a()).b(new f3(activityJiliE01, 4));
                return;
            } else {
                Toaster.show((CharSequence) "请先提权");
                return;
            }
        }
        if (i10 == 6) {
            activityJiliE01.y(true);
        } else if (i10 == 7) {
            activityJiliE01.y(false);
        } else {
            Toaster.show((CharSequence) "此功能暂未开放");
        }
    }
}
