package ua;

import android.provider.Settings;
import com.yunpan.appmanage.ui.ActivityAdb;
import ha.wd;

/* loaded from: classes.dex */
public final class f implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15666a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityAdb f15667b;

    public /* synthetic */ f(ActivityAdb activityAdb, int i10) {
        this.f15666a = i10;
        this.f15667b = activityAdb;
    }

    @Override // ha.wd
    public final void D() {
        int i10 = 1;
        ActivityAdb activityAdb = this.f15667b;
        switch (this.f15666a) {
            case 0:
                try {
                    Settings.Global.putInt(activityAdb.F, "adb_enabled", 1);
                    Settings.Global.putInt(activityAdb.F, "adb_wifi_enabled", 1);
                    break;
                } catch (Exception unused) {
                    com.yunpan.appmanage.util.a0.u("失败：无权限");
                    return;
                }
            case 1:
                ActivityAdb.C(activityAdb, "AUTOLINK");
                break;
            case 2:
                ActivityAdb.C(activityAdb, "DESAYSV");
                break;
            case 3:
                int i11 = ActivityAdb.G;
                activityAdb.E(true);
                break;
            case 4:
                ActivityAdb.x(activityAdb, 1);
                break;
            case 5:
                ActivityAdb.z(activityAdb, true);
                break;
            case 6:
                break;
            default:
                int i12 = ActivityAdb.G;
                activityAdb.getClass();
                new mc.c(0, new d(activityAdb, i10)).d(rc.f.f13757b).a(fc.b.a()).b(new e(activityAdb, 8));
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        int i10 = 2;
        ActivityAdb activityAdb = this.f15667b;
        switch (this.f15666a) {
            case 0:
                try {
                    Settings.Global.putInt(activityAdb.F, "adb_wifi_enabled", 0);
                    break;
                } catch (Exception unused) {
                    com.yunpan.appmanage.util.a0.u("失败：无权限");
                    return;
                }
            case 1:
                ActivityAdb.B(activityAdb, "AUTOLINK");
                break;
            case 2:
                ActivityAdb.B(activityAdb, "DESAYSV");
                break;
            case 3:
                int i11 = ActivityAdb.G;
                activityAdb.E(false);
                break;
            case 4:
                ActivityAdb.x(activityAdb, 2);
                break;
            case 5:
                int i12 = ActivityAdb.G;
                if (!pa.e.b(activityAdb.A)) {
                    ActivityAdb.z(activityAdb, false);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.t("疑是乱用，拒绝您使用此功能");
                    break;
                }
            case 6:
                int i13 = ActivityAdb.G;
                activityAdb.getClass();
                fa.b0.f5652a.getClass();
                if (!a2.w0.P()) {
                    new mc.c(0, new d(activityAdb, i10)).d(rc.f.f13757b).a(fc.b.a()).b(new e(activityAdb, 7));
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.v("您本身已经有root或者adb，无需多此一举", false);
                    break;
                }
        }
    }

    private final void a() {
    }

    private final void b() {
    }
}
