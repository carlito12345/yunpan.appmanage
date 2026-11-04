package ua;

import com.yunpan.appmanage.ui.ActivityAppsPermissionsAllow;
import java.util.List;

/* loaded from: classes.dex */
public final class o0 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15857b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityAppsPermissionsAllow f15858c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o0(ActivityAppsPermissionsAllow activityAppsPermissionsAllow, int i10) {
        super(28);
        this.f15857b = i10;
        this.f15858c = activityAppsPermissionsAllow;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15857b) {
            case 0:
                ActivityAppsPermissionsAllow activityAppsPermissionsAllow = this.f15858c;
                activityAppsPermissionsAllow.E.setVisibility(8);
                com.yunpan.appmanage.util.a0.u(String.valueOf(th2.getMessage()));
                activityAppsPermissionsAllow.finish();
                break;
            default:
                com.yunpan.appmanage.util.a0.t(String.valueOf(th2.getMessage()));
                ActivityAppsPermissionsAllow activityAppsPermissionsAllow2 = this.f15858c;
                activityAppsPermissionsAllow2.E.setVisibility(8);
                activityAppsPermissionsAllow2.F.D(1, "开始授权");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void E(Object obj) {
        switch (this.f15857b) {
            case 0:
                ActivityAppsPermissionsAllow activityAppsPermissionsAllow = this.f15858c;
                activityAppsPermissionsAllow.E.setVisibility(8);
                activityAppsPermissionsAllow.I.E((List) obj);
                if (activityAppsPermissionsAllow.I.b() == 0) {
                    com.yunpan.appmanage.util.a0.w("此应用无需管理权限");
                    activityAppsPermissionsAllow.finish();
                    break;
                }
                break;
            default:
                this.f15858c.I.e(((Integer) obj).intValue());
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f15857b) {
            case 0:
                this.f15858c.E.setVisibility(0);
                break;
            default:
                this.f15858c.E.setVisibility(0);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f15857b) {
            case 1:
                ActivityAppsPermissionsAllow activityAppsPermissionsAllow = this.f15858c;
                activityAppsPermissionsAllow.E.setVisibility(8);
                activityAppsPermissionsAllow.F.D(1, "开始授权");
                com.yunpan.appmanage.util.a0.v("授权完毕", false);
                break;
        }
    }
}
