package ua;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.MemBean;
import com.yunpan.appmanage.bean.PssBean;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.ui.ActivityRunMemory;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class d6 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityRunMemory f15638a;

    public /* synthetic */ d6(ActivityRunMemory activityRunMemory) {
        this.f15638a = activityRunMemory;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        int i10 = ActivityRunMemory.I;
        ActivityRunMemory activityRunMemory = this.f15638a;
        activityRunMemory.getClass();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        ResolveInfo resolveInfoResolveActivity = com.yunpan.appmanage.util.j.f4033a.f4037b.resolveActivity(intent, 65536);
        if (resolveInfoResolveActivity != null) {
            String str = resolveInfoResolveActivity.activityInfo.packageName;
        }
        MemBean memBean = new MemBean();
        Iterator it = u9.d.r("cat /proc/meminfo").l0().k().iterator();
        while (it.hasNext()) {
            String strTrim = ((String) it.next()).trim();
            if (strTrim.contains("MemTotal")) {
                memBean.MemTotal = strTrim.substring(strTrim.indexOf(":") + 1, strTrim.lastIndexOf(" ")).trim();
            } else if (strTrim.contains("MemAvailable")) {
                memBean.MemAvailable = strTrim.substring(strTrim.indexOf(":") + 1, strTrim.lastIndexOf(" ")).trim();
            } else if (strTrim.contains("SwapTotal")) {
                memBean.SwapTotal = strTrim.substring(strTrim.indexOf(":") + 1, strTrim.lastIndexOf(" ")).trim();
            } else if (strTrim.contains("SwapFree")) {
                memBean.SwapFree = strTrim.substring(strTrim.indexOf(":") + 1, strTrim.lastIndexOf(" ")).trim();
            } else if (strTrim.contains("MemFree")) {
                memBean.MemFree = strTrim.substring(strTrim.indexOf(":") + 1, strTrim.lastIndexOf(" ")).trim();
            } else if (strTrim.contains("Buffers")) {
                memBean.Buffers = strTrim.substring(strTrim.indexOf(":") + 1, strTrim.lastIndexOf(" ")).trim();
            } else if (strTrim.contains("Cached")) {
                memBean.Cached = strTrim.substring(strTrim.indexOf(":") + 1, strTrim.lastIndexOf(" ")).trim();
            } else if (strTrim.contains("Slab")) {
                memBean.Slab = strTrim.substring(strTrim.indexOf(":") + 1, strTrim.lastIndexOf(" ")).trim();
            }
        }
        bVar.f(memBean);
        activityRunMemory.C.clear();
        ArrayList arrayListQ = android.support.v4.media.session.b.q();
        activityRunMemory.C = arrayListQ;
        if (arrayListQ.size() < 10) {
            activityRunMemory.C = android.support.v4.media.session.b.p(activityRunMemory.A);
        }
        for (int size = activityRunMemory.C.size() - 1; size >= 0; size--) {
            PssBean pssBean = (PssBean) activityRunMemory.C.get(size);
            if (pssBean.pack.isEmpty() || !pssBean.isCanStarted) {
                activityRunMemory.C.remove(size);
            }
            if (pssBean.pack_str.contains(":acc1")) {
                activityRunMemory.C.remove(size);
            } else {
                if (pssBean.pack_str.equals(activityRunMemory.A.getPackageName() + ":acc") && !p000if.a.h0(activityRunMemory.A, AccService.class)) {
                    activityRunMemory.C.remove(size);
                }
            }
        }
        Collections.sort(activityRunMemory.C, new qa.e(24));
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ActivityRunMemory activityRunMemory = this.f15638a;
        PssBean pssBean = (PssBean) activityRunMemory.E.t(i10);
        if (pssBean.pack.equals("system")) {
            com.yunpan.appmanage.util.a0.t("拒绝您此次危险操作");
            return;
        }
        if (pssBean.pack.equals(activityRunMemory.A.getPackageName())) {
            Toaster.show((CharSequence) "主人！您这是为何？o(╥﹏╥)o");
            return;
        }
        String strU = qf.c.u(activityRunMemory.A);
        if (strU == null || strU.isEmpty() || !strU.equals(pssBean.pack)) {
            new ha.z6(activityRunMemory, activityRunMemory, "您要关闭此进程，还是关闭整个应用？", "", "关闭进程", "强制停止", new d3.g(i10, 19, activityRunMemory)).show();
        } else {
            new ha.z6(activityRunMemory, activityRunMemory, "此应用是默认桌面，禁止使用强制停止", "因为某些烂系统，强制停止桌面的话 会无法开机自启").show();
        }
    }
}
