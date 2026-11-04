package ua;

import com.yunpan.appmanage.ui.ActivitySystemHasWrite;

/* loaded from: classes.dex */
public final class f7 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15675b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivitySystemHasWrite f15676c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f7(ActivitySystemHasWrite activitySystemHasWrite, int i10) {
        super(28);
        this.f15675b = i10;
        this.f15676c = activitySystemHasWrite;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15675b) {
            case 0:
                StringBuilder sbR = l2.z.r(this.f15676c.E, "");
                sbR.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.z(sbR.toString(), false);
                break;
            case 1:
                StringBuilder sbR2 = l2.z.r(this.f15676c.E, "");
                sbR2.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.z(sbR2.toString(), false);
                break;
            case 2:
                StringBuilder sbR3 = l2.z.r(this.f15676c.E, "");
                sbR3.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.z(sbR3.toString(), false);
                break;
            default:
                StringBuilder sbR4 = l2.z.r(this.f15676c.E, "");
                sbR4.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.z(sbR4.toString(), false);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15675b) {
            case 0:
                int i10 = ActivitySystemHasWrite.F;
                ActivitySystemHasWrite activitySystemHasWrite = this.f15676c;
                new ha.z6(activitySystemHasWrite, activitySystemHasWrite.A, "检测到此应用可能不兼容您的系统", "apk架构与系统架构不一致", "保留", "删除", new kh.h(obj)).show();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f15675b) {
            case 0:
                this.f15676c.E.c("安装中");
                break;
            case 1:
                this.f15676c.E.c("转移中");
                break;
            case 2:
                this.f15676c.E.c("删除中");
                break;
            default:
                this.f15676c.E.c("删除中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15675b) {
            case 0:
                ActivitySystemHasWrite activitySystemHasWrite = this.f15676c;
                activitySystemHasWrite.E.a();
                da.g gVar = activitySystemHasWrite.A;
                new ha.z6(gVar, gVar, "转换成功！需重启方可生效", "", "立即重启", "稍后再说", new s9.a(13, false)).show();
                break;
            case 1:
                ActivitySystemHasWrite activitySystemHasWrite2 = this.f15676c;
                activitySystemHasWrite2.E.a();
                da.g gVar2 = activitySystemHasWrite2.A;
                new ha.z6(gVar2, gVar2, "转换成功！需重启方可生效", "", "立即重启", "稍后再说", new s5.c(14)).show();
                break;
            case 2:
                ActivitySystemHasWrite activitySystemHasWrite3 = this.f15676c;
                activitySystemHasWrite3.E.a();
                da.g gVar3 = activitySystemHasWrite3.A;
                new ha.z6(gVar3, gVar3, "删除成功！需重启方可生效", "", "立即重启", "稍后再说", new s9.a(14, false)).show();
                break;
            default:
                ActivitySystemHasWrite activitySystemHasWrite4 = this.f15676c;
                activitySystemHasWrite4.E.a();
                da.g gVar4 = activitySystemHasWrite4.A;
                new ha.z6(gVar4, gVar4, "删除成功！需重启方可生效", "", "立即重启", "稍后再说", new s5.c(15)).show();
                break;
        }
    }
}
