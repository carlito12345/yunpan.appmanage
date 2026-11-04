package ua;

import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import ha.wd;

/* loaded from: classes.dex */
public final class g7 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15698a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f15699b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivitySystemHasWrite f15700c;

    public /* synthetic */ g7(ActivitySystemHasWrite activitySystemHasWrite, boolean z, int i10) {
        this.f15698a = i10;
        this.f15700c = activitySystemHasWrite;
        this.f15699b = z;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f15698a) {
            case 0:
                boolean z = this.f15699b;
                ActivitySystemHasWrite activitySystemHasWrite = this.f15700c;
                if (!z) {
                    new ha.q2(activitySystemHasWrite, activitySystemHasWrite, 1, new g5(7, this)).show();
                    break;
                } else {
                    String packageName = activitySystemHasWrite.getPackageName();
                    int i10 = ActivitySystemHasWrite.F;
                    new ha.z6(activitySystemHasWrite, activitySystemHasWrite, "可以将应用转为普通系统应用 或 超级系统应用", "有些车机要转为超级系统应用才能使用(2代哈佛H6)", "普通系统应用", "超级系统应用", new kf.d(28, activitySystemHasWrite, packageName, false)).show();
                    break;
                }
        }
    }

    @Override // ha.wd
    public final void t() {
        switch (this.f15698a) {
            case 0:
                break;
            default:
                int i10 = ActivitySystemHasWrite.F;
                ActivitySystemHasWrite activitySystemHasWrite = this.f15700c;
                new ha.z6(activitySystemHasWrite, activitySystemHasWrite.A, "是否确定要删除？", "", "确定", "取消", new i1(18, this)).show();
                break;
        }
    }

    private final void a() {
    }

    private final void b() {
    }
}
