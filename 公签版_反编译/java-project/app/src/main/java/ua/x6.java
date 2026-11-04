package ua;

import android.content.Intent;
import com.yunpan.appmanage.ui.ActivityStudy;
import ha.wd;

/* loaded from: classes.dex */
public final class x6 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16038a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityStudy f16039b;

    public /* synthetic */ x6(ActivityStudy activityStudy, int i10) {
        this.f16038a = i10;
        this.f16039b = activityStudy;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f16038a) {
            case 0:
                break;
            default:
                int i10 = ActivityStudy.I;
                ActivityStudy activityStudy = this.f16039b;
                activityStudy.getClass();
                Intent intent = new Intent();
                intent.setAction("com.baidu.naviauto.action.recv");
                intent.setPackage(com.yunpan.appmanage.carsdk.i.e(activityStudy.A));
                intent.putExtra("CMD_TYPE", 10009);
                intent.putExtra("DAY_NIGHT_MODE", 2);
                intent.setFlags(32);
                activityStudy.sendBroadcast(intent);
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        switch (this.f16038a) {
            case 0:
                i1 i1Var = new i1(17, this);
                ActivityStudy activityStudy = this.f16039b;
                new ha.z6(activityStudy, activityStudy, "再次严重警告", "此功能可能会导致无法开机，变砖头，请勿尝试", "好的", "我想试试", i1Var).show();
                break;
            default:
                Intent intent = new Intent();
                intent.setAction("com.baidu.naviauto.action.recv");
                intent.putExtra("CMD_TYPE", 10009);
                intent.putExtra("DAY_NIGHT_MODE", 3);
                this.f16039b.sendBroadcast(intent);
                break;
        }
    }

    private final void a() {
    }
}
