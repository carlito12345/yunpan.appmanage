package ua;

import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.yunpan.appmanage.ui.ActivityAutomation;
import ha.wd;

/* loaded from: classes.dex */
public final class r0 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15925a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityAutomation f15926b;

    public /* synthetic */ r0(ActivityAutomation activityAutomation, int i10) {
        this.f15925a = i10;
        this.f15926b = activityAutomation;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f15925a) {
            case 0:
                ActivityAutomation activityAutomation = this.f15926b;
                com.yunpan.appmanage.carsdk.u uVar = activityAutomation.I;
                uVar.removeMessages(0);
                uVar.removeMessages(1);
                new mc.c(0, new p0(activityAutomation, 4)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(11, activityAutomation));
                break;
            default:
                XXPermissions.with(this.f15926b).permission(PermissionLists.getSystemAlertWindowPermission()).request(new tb.v(28));
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        int i10 = this.f15925a;
    }

    private final void a() {
    }

    private final void b() {
    }
}
