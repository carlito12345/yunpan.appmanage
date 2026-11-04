package ha;

import com.yunpan.appmanage.bean.LogcatBean;
import com.yunpan.appmanage.db.MyDb;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final /* synthetic */ class y9 implements y6, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ba f8097a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ File f8098b;

    public /* synthetic */ y9(ba baVar, File file) {
        this.f8097a = baVar;
        this.f8098b = file;
    }

    @Override // ec.d
    public void g(mc.b bVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        File file = this.f8098b;
        ba baVar = this.f8097a;
        baVar.getClass();
        try {
            FileWriter fileWriter = new FileWriter(file);
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                for (int i10 = 0; i10 < baVar.f6811i.b(); i10++) {
                    try {
                        bufferedWriter.write(((LogcatBean) baVar.f6811i.t(i10)).log);
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
                com.yunpan.appmanage.util.a0.v("保存成功！在Download目录内", false);
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
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        ba baVar = this.f8097a;
        baVar.getClass();
        if (z) {
            new mc.c(0, new y9(baVar, this.f8098b)).d(rc.f.f13757b).a(fc.b.a()).b(new m6(1));
        }
    }
}
