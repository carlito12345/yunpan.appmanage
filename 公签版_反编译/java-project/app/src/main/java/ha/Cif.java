package ha;

import com.yunpan.appmanage.base.AppStart;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.Socket;

/* renamed from: ha.if, reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class Cif implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7227a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v8.a f7228b;

    public /* synthetic */ Cif(v8.a aVar, int i10) {
        this.f7227a = 5;
        this.f7228b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalAccessException, NoSuchMethodException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        y9.c cVarA;
        v8.a aVar = this.f7228b;
        switch (this.f7227a) {
            case 0:
                try {
                    cVarA = y9.c.a(new jd(8));
                } catch (Exception unused) {
                    cVarA = null;
                }
                if (cVarA == null) {
                    com.yunpan.appmanage.util.a0.u("生成密钥失败");
                    return;
                }
                try {
                    Socket socket = new Socket("", com.yunpan.appmanage.util.v.f4106a.f4127k);
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
                            fa.h0 h0Var = fa.g0.f5682a;
                            if (!h0Var.d().isEmpty()) {
                                new File(h0Var.d() + "/." + packageName + "/key/").mkdirs();
                                com.yunpan.appmanage.util.a0.e(file.getAbsolutePath(), h0Var.d() + "/." + packageName + "/key/privateKey");
                                com.yunpan.appmanage.util.a0.e(file2.getAbsolutePath(), h0Var.d() + "/." + packageName + "/key/publicKey");
                            }
                            com.yunpan.appmanage.util.a0.w("授权成功");
                            aVar.c(1L);
                            System.exit(0);
                            bVarA.close();
                            socket.close();
                            return;
                        } finally {
                        }
                    } finally {
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            case 1:
                aVar.t();
                return;
            case 2:
                aVar.b();
                return;
            case 3:
                aVar.u();
                return;
            case 4:
                aVar.g();
                return;
            default:
                aVar.getClass();
                return;
        }
    }

    public /* synthetic */ Cif(v8.a aVar, int i10, byte b10) {
        this.f7227a = i10;
        this.f7228b = aVar;
    }
}
