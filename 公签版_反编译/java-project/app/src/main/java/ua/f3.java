package ua;

import com.yunpan.appmanage.ui.ActivityJiliE01;

/* loaded from: classes.dex */
public final class f3 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15672b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityJiliE01 f15673c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f3(ActivityJiliE01 activityJiliE01, int i10) {
        super(28);
        this.f15672b = i10;
        this.f15673c = activityJiliE01;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15672b) {
            case 0:
                StringBuilder sbR = l2.z.r(this.f15673c.E, "");
                sbR.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.z(sbR.toString(), false);
                break;
            case 1:
                StringBuilder sbR2 = l2.z.r(this.f15673c.E, "");
                sbR2.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.y(sbR2.toString());
                break;
            case 2:
                StringBuilder sbR3 = l2.z.r(this.f15673c.E, "");
                sbR3.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.y(sbR3.toString());
                break;
            case 3:
                StringBuilder sbR4 = l2.z.r(this.f15673c.E, "");
                sbR4.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.y(sbR4.toString());
                break;
            case 4:
                StringBuilder sbR5 = l2.z.r(this.f15673c.E, "");
                sbR5.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.y(sbR5.toString());
                break;
            default:
                StringBuilder sbR6 = l2.z.r(this.f15673c.E, "");
                sbR6.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.y(sbR6.toString());
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void b(gc.b bVar) {
        switch (this.f15672b) {
            case 0:
                this.f15673c.E.c("卸载中");
                break;
            case 1:
                this.f15673c.E.c("提权中");
                break;
            case 2:
                this.f15673c.E.c("root中");
                break;
            case 3:
                this.f15673c.E.c("删除中");
                break;
            case 4:
                this.f15673c.E.c("删除中");
                break;
            default:
                this.f15673c.E.c("删除中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15672b) {
            case 0:
                ActivityJiliE01 activityJiliE01 = this.f15673c;
                activityJiliE01.E.a();
                da.g gVar = activityJiliE01.A;
                new ha.z6(gVar, gVar, "卸载成功！需重启方可消失", "", "立即重启", "稍后再说", new s5.c(5)).show();
                break;
            case 1:
                this.f15673c.E.a();
                com.yunpan.appmanage.util.a0.w("提权成功");
                break;
            case 2:
                this.f15673c.E.a();
                com.yunpan.appmanage.util.a0.w("root成功");
                break;
            case 3:
                this.f15673c.E.a();
                com.yunpan.appmanage.util.a0.w("更改成功");
                break;
            case 4:
                this.f15673c.E.a();
                com.yunpan.appmanage.util.a0.w("更改成功");
                break;
            default:
                this.f15673c.E.a();
                com.yunpan.appmanage.util.a0.w("已删除");
                break;
        }
    }
}
