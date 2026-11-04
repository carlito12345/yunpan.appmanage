package com.gj.server;

import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivityShell;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.z;
import fa.g0;
import fa.h;
import fa.h0;
import fa.l;
import fa.m;
import fa.n0;
import ha.e6;
import ha.jd;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.Socket;
import java.text.DecimalFormat;
import java.util.Iterator;
import rikka.shizuku.ShizukuProvider;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3434a;

    public /* synthetic */ a(int i10) {
        this.f3434a = i10;
    }

    private final void a() {
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalAccessException, InterruptedException, IOException, IllegalArgumentException, InvocationTargetException {
        y9.c cVarA;
        switch (this.f3434a) {
            case 0:
                Thread.sleep(60000L);
                return;
            case 1:
                try {
                    Thread.sleep(10000L);
                    ShizukuProvider.b(AppStart.f3772h);
                    n0.f5722a.d();
                    return;
                } catch (Exception unused) {
                    return;
                }
            case 2:
                e6.a();
                return;
            case 3:
                MyDb.get().getFileInfoDao().deleteAll();
                DecimalFormat decimalFormat = k.f4034u0;
                k kVar = j.f4033a;
                kVar.f4046f0.submit(new z(new File(g0.f5682a.d())));
                Iterator it = kVar.f4073v.iterator();
                while (it.hasNext()) {
                    j.f4033a.f4046f0.submit(new z(new File((String) it.next())));
                }
                return;
            case 4:
                try {
                    cVarA = y9.c.a(new jd(7));
                } catch (Exception unused2) {
                    cVarA = null;
                }
                if (cVarA == null) {
                    a0.u("生成密钥失败");
                    return;
                }
                try {
                    Socket socket = new Socket("", v.f4106a.f4127k);
                    try {
                        y9.b bVarA = y9.b.A(socket, cVarA);
                        try {
                            bVarA.r();
                            String str = AppStart.f3772h.getFilesDir().getAbsolutePath() + "/key/";
                            if (!new File(str).exists()) {
                                new File(str).mkdirs();
                            }
                            File file = new File(str + "privateKey");
                            File file2 = new File(str + "publicKey");
                            String packageName = AppStart.f3772h.getPackageName();
                            cVarA.d(file, file2);
                            h0 h0Var = g0.f5682a;
                            if (!h0Var.d().isEmpty()) {
                                new File(h0Var.d() + "/." + packageName + "/key/").mkdirs();
                                a0.e(file.getAbsolutePath(), h0Var.d() + "/." + packageName + "/key/privateKey");
                                a0.e(file2.getAbsolutePath(), h0Var.d() + "/." + packageName + "/key/publicKey");
                            }
                            System.exit(0);
                            bVarA.close();
                            socket.close();
                            return;
                        } catch (Throwable th2) {
                            try {
                                bVarA.close();
                            } catch (Throwable th3) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                } catch (Exception unused3) {
                                }
                            }
                            throw th2;
                        }
                    } catch (Throwable th4) {
                        try {
                            socket.close();
                        } catch (Throwable th5) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                            } catch (Exception unused4) {
                            }
                        }
                        throw th4;
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            case 5:
                int i10 = ActivityLaboratory.I;
                m mVar = l.f5712a;
                if (mVar.isConnected()) {
                    mVar.L("su");
                    return;
                } else {
                    h.f5683a.c("su");
                    return;
                }
            case 6:
                int i11 = ActivityShell.M;
                fa.j jVar = h.f5683a;
                if (jVar.i()) {
                    jVar.o();
                    return;
                }
                m mVar2 = l.f5712a;
                if (mVar2.isConnected()) {
                    mVar2.V();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
