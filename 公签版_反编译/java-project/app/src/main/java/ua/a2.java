package ua;

import android.content.res.Resources;
import android.view.View;
import com.hjq.permissions.OnPermissionCallback;
import com.yunpan.appmanage.ui.ActivityHome;
import ha.zc;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class a2 implements zc, OnPermissionCallback, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityHome f15561a;

    @Override // ha.zc
    public void d(boolean z) {
        ActivityHome activityHome = this.f15561a;
        if (z) {
            int i10 = ActivityHome.O;
        } else {
            activityHome.C = 0L;
            activityHome.finish();
        }
        activityHome.E();
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        int i10 = ActivityHome.O;
        this.f15561a.C();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) throws Resources.NotFoundException, SecurityException, IllegalArgumentException {
        ActivityHome activityHome = this.f15561a;
        if (i10 != activityHome.E.F()) {
            activityHome.E.G(i10);
            activityHome.F.m(i10, false, false);
            ((da.h) activityHome.G.f18260h.get(i10)).m();
        }
    }
}
