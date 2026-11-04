package ua;

import android.content.Intent;
import android.view.View;
import com.yunpan.appmanage.bean.DesktopBean;
import com.yunpan.appmanage.ui.ActivityDesktopSelected;

/* loaded from: classes.dex */
public final /* synthetic */ class k1 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityDesktopSelected f15777a;

    public /* synthetic */ k1(ActivityDesktopSelected activityDesktopSelected) {
        this.f15777a = activityDesktopSelected;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        int i10 = ActivityDesktopSelected.E;
        bVar.f(qf.c.r(this.f15777a.A));
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = ActivityDesktopSelected.E;
        ActivityDesktopSelected activityDesktopSelected = this.f15777a;
        activityDesktopSelected.getClass();
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        String str = ((DesktopBean) activityDesktopSelected.D.t(i10)).name;
        wVar.L0 = str;
        try {
            wVar.f4123i.m("Auto_task_desktop_selected_appName", str);
        } catch (Exception unused) {
        }
        wVar.m();
        activityDesktopSelected.setResult(-1, new Intent());
        activityDesktopSelected.finish();
    }
}
