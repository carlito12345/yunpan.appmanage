package ha;

import android.app.ActivityManager;
import android.os.Process;
import android.view.View;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final /* synthetic */ class s4 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t4 f7732a;

    @Override // ec.d
    public void g(mc.b bVar) throws InterruptedException {
        t4 t4Var = this.f7732a;
        t4Var.getClass();
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        ActivityManager activityManager = (ActivityManager) t4Var.f6725b.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        do {
            activityManager.getMemoryInfo(memoryInfo);
            t4Var.l = ((r4 - memoryInfo.availMem) * 100.0f) / memoryInfo.totalMem;
            bVar.f(ta.q.n(decimalFormat, t4Var.l, new StringBuilder("内存使用："), "%"));
            activityManager.getProcessMemoryInfo(new int[]{Process.myPid()})[0].getTotalPss();
            Thread.sleep(1000L);
        } while (!t4Var.f7794k);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        this.f7732a.f7791h.G(i10);
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        wVar.Z = i10;
        try {
            wVar.f4123i.l("CleanMemoryMode", Integer.valueOf(i10));
        } catch (Exception unused) {
        }
        wVar.m();
    }
}
