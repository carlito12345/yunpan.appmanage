package ua;

import android.view.View;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.yunpan.appmanage.bean.AppDetailHistoryLogBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAppDetailHistoryLog;
import ha.ea;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements ec.d, ea, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15773a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityAppDetailHistoryLog f15774b;

    public /* synthetic */ k(ActivityAppDetailHistoryLog activityAppDetailHistoryLog, int i10) {
        this.f15773a = i10;
        this.f15774b = activityAppDetailHistoryLog;
    }

    @Override // ha.ea
    public void b(int i10) {
        ActivityAppDetailHistoryLog activityAppDetailHistoryLog = this.f15774b;
        activityAppDetailHistoryLog.K = i10;
        activityAppDetailHistoryLog.z();
    }

    @Override // ec.d
    public void g(mc.b bVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        BufferedWriter bufferedWriter;
        ActivityAppDetailHistoryLog activityAppDetailHistoryLog = this.f15774b;
        switch (this.f15773a) {
            case 0:
                ActivityAppDetailHistoryLog.x(activityAppDetailHistoryLog, bVar);
                return;
            default:
                int i10 = ActivityAppDetailHistoryLog.L;
                activityAppDetailHistoryLog.getClass();
                String strD = fa.g0.f5682a.d();
                if (strD.isEmpty()) {
                    com.yunpan.appmanage.util.a0.u("没有内部存储，无法导出");
                    bVar.b();
                    return;
                }
                File file = new File(strD, "/Download/详细使用记录.txt");
                try {
                    file.getParentFile().mkdirs();
                } catch (Exception unused) {
                }
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(file));
                } catch (Exception e7) {
                    com.yunpan.appmanage.util.a0.u("出错：" + e7.getMessage());
                }
                try {
                    Iterator it = activityAppDetailHistoryLog.E.iterator();
                    while (it.hasNext()) {
                        AppDetailHistoryLogBean appDetailHistoryLogBean = (AppDetailHistoryLogBean) it.next();
                        bufferedWriter.write(appDetailHistoryLogBean.timeStr + " " + appDetailHistoryLogBean.state + " " + appDetailHistoryLogBean.packageName + " " + appDetailHistoryLogBean.className + SignParameters.NEW_LINE);
                    }
                    bufferedWriter.flush();
                    com.yunpan.appmanage.util.a0.w("导出完成！/Download/详细使用记录.txt");
                    MyDb.get().lambda$addFile_thread$1(file.getPath());
                    bufferedWriter.close();
                    bVar.b();
                    return;
                } catch (Throwable th2) {
                    try {
                        bufferedWriter.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused2) {
                        }
                    }
                    throw th2;
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        AppDetailHistoryLogBean appDetailHistoryLogBean = (AppDetailHistoryLogBean) this.f15774b.D.t(i10);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.c(appDetailHistoryLogBean.className.isEmpty() ? appDetailHistoryLogBean.packageName : appDetailHistoryLogBean.className);
        com.yunpan.appmanage.util.a0.w("复制成功");
    }
}
