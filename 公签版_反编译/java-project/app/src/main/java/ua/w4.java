package ua;

import com.yunpan.appmanage.ui.ActivityNissan;
import ha.wd;

/* loaded from: classes.dex */
public final class w4 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16015a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityNissan f16016b;

    public /* synthetic */ w4(ActivityNissan activityNissan, int i10) {
        this.f16015a = i10;
        this.f16016b = activityNissan;
    }

    @Override // ha.wd
    public final void D() {
        int i10 = 4;
        switch (this.f16015a) {
            case 0:
                new mc.c(0, new ph.j(27, this)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(21, this));
                break;
            case 1:
            case 2:
                break;
            default:
                int i11 = ActivityNissan.I;
                ActivityNissan activityNissan = this.f16016b;
                if (!pa.e.b(activityNissan.A)) {
                    com.yunpan.appmanage.util.a0.s("您不是日产[飞思卡尔]芯片系统", false);
                    break;
                } else {
                    new mc.c(0, new u4(activityNissan, i10)).d(rc.f.f13757b).a(fc.b.a()).b(new v4(activityNissan, 4));
                    break;
                }
        }
    }

    @Override // ha.wd
    public final void t() {
        switch (this.f16015a) {
            case 1:
                ActivityNissan.x(this.f16016b, true);
                break;
            case 2:
                ActivityNissan.x(this.f16016b, false);
                break;
        }
    }

    private final void a() {
    }

    private final void b() {
    }

    private final void c() {
    }

    private final void d() {
    }
}
