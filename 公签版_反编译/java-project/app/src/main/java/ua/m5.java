package ua;

import android.os.Build;
import android.view.View;
import com.yunpan.appmanage.bean.SpecialPermissionsBean;
import com.yunpan.appmanage.ui.ActivityPermissions;
import ha.ea;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class m5 implements ec.d, c6.e, ea {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityPermissions f15824a;

    public /* synthetic */ m5(ActivityPermissions activityPermissions) {
        this.f15824a = activityPermissions;
    }

    @Override // ha.ea
    public void b(int i10) {
        int i11 = ActivityPermissions.L;
        ActivityPermissions activityPermissions = this.f15824a;
        activityPermissions.getClass();
        if (i10 == 1 && Build.VERSION.SDK_INT < 26) {
            com.yunpan.appmanage.util.a0.u("系统低于8.0，无需管理此权限");
            return;
        }
        if (i10 == 3) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (!com.yunpan.appmanage.util.j.f4033a.f4047g) {
                com.yunpan.appmanage.util.a0.u("此功能无法管理此权限");
                return;
            }
        }
        activityPermissions.H = i10;
        ArrayList arrayList = activityPermissions.F;
        arrayList.clear();
        activityPermissions.E.E(arrayList);
        activityPermissions.u();
    }

    @Override // ec.d
    public void g(mc.b bVar) throws Exception {
        int i10 = ActivityPermissions.L;
        this.f15824a.x(bVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ActivityPermissions activityPermissions = this.f15824a;
        SpecialPermissionsBean specialPermissionsBean = (SpecialPermissionsBean) activityPermissions.E.t(i10);
        if (activityPermissions.H == 2 && specialPermissionsBean.pack.equals(activityPermissions.getPackageName())) {
            if (specialPermissionsBean.isGrant && (com.yunpan.appmanage.util.v.f4106a.R || q4.a.E(activityPermissions.A))) {
                new ha.z6(activityPermissions, activityPermissions.A, "自动化任务、开机管理、按键映射、无障碍持久等等功能，均需此权限", "", "好的", "", new s5.c(12)).show();
                return;
            } else if (specialPermissionsBean.isGrant) {
                new ha.z6(activityPermissions, activityPermissions.A, "自动化任务、开机管理、按键映射、无障碍持久等等功能，均需此权限", "您确定要取消此权限吗？", "取消", "确定", new d3.g(i10, 18, activityPermissions)).show();
                return;
            }
        }
        activityPermissions.y(i10);
    }
}
