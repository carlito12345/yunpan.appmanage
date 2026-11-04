package ua;

import com.yunpan.appmanage.ui.ActivityDownload;
import ha.bf;

/* loaded from: classes.dex */
public final class t1 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15961b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f15962c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ x9.b6 f15963d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityDownload f15964e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t1(ActivityDownload activityDownload, String str, x9.b6 b6Var, int i10) {
        super(28);
        this.f15961b = i10;
        this.f15964e = activityDownload;
        this.f15962c = str;
        this.f15963d = b6Var;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15961b) {
            case 0:
                x9.n5 n5Var = new x9.n5(2, "123网盘");
                n5Var.f18294e = "123";
                n5Var.f18295f = "123";
                int i10 = ActivityDownload.P0;
                ActivityDownload activityDownload = this.f15964e;
                new bf(activityDownload, activityDownload.A, n5Var, new ma.b(this, 13, n5Var), 1).show();
                break;
            default:
                x9.n5 n5Var2 = new x9.n5(21, "光鸭网盘");
                n5Var2.f18294e = "";
                n5Var2.f18295f = "";
                int i11 = ActivityDownload.P0;
                ActivityDownload activityDownload2 = this.f15964e;
                new bf(activityDownload2, activityDownload2.A, n5Var2, new ma.b(this, 14, n5Var2), 0).show();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void E(Object obj) {
        switch (this.f15961b) {
            case 0:
                ActivityDownload activityDownload = this.f15964e;
                activityDownload.Y = (x9.n5) obj;
                activityDownload.E(this.f15962c, this.f15963d);
                break;
            default:
                ActivityDownload activityDownload2 = this.f15964e;
                activityDownload2.Z = (x9.n5) obj;
                activityDownload2.E(this.f15962c, this.f15963d);
                break;
        }
    }
}
