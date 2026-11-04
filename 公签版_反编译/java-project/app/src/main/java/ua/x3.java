package ua;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.ui.ActivityLaboratory;

/* loaded from: classes.dex */
public final class x3 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16032b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityLaboratory f16033c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x3(ActivityLaboratory activityLaboratory, int i10) {
        super(28);
        this.f16032b = i10;
        this.f16033c = activityLaboratory;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f16032b) {
            case 0:
                this.f16033c.H.a();
                Toaster.show((CharSequence) (th2.getMessage() + ""));
                break;
            case 1:
                this.f16033c.H.a();
                com.yunpan.appmanage.util.a0.u(th2.getMessage() + "");
                break;
            case 2:
                this.f16033c.H.a();
                com.yunpan.appmanage.util.a0.y("提权失败：不适合此系统");
                break;
            case 4:
                StringBuilder sbR = l2.z.r(this.f16033c.H, "失败：");
                sbR.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.y(sbR.toString());
                break;
            case 5:
                StringBuilder sbR2 = l2.z.r(this.f16033c.H, "");
                sbR2.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.y(sbR2.toString());
                break;
            case 6:
                this.f16033c.H.a();
                Toaster.show((CharSequence) (th2.getMessage() + ""));
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        ActivityLaboratory activityLaboratory = this.f16033c;
        switch (this.f16032b) {
            case 3:
                String str = obj.equals(1) ? "宽容模式" : "强制模式";
                int i10 = ActivityLaboratory.I;
                da.g gVar = activityLaboratory.A;
                new ha.z6(gVar, gVar, "当前状态：".concat(str), "您了解这是干啥的不？不了解的话，请勿点击！\n宽容模式能解除系统更多限制\n宽容模式：setenforce 1\n强制模式：setenforce 0", "宽容模式", "强制模式", new i1(12, this)).show();
                break;
            case 4:
                activityLaboratory.H.b((String) obj);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f16032b) {
            case 0:
                this.f16033c.H.c("更改中");
                break;
            case 1:
                this.f16033c.H.c("提权中");
                break;
            case 2:
                this.f16033c.H.c("提权中");
                break;
            case 4:
                this.f16033c.H.c("操作中");
                break;
            case 5:
                this.f16033c.H.c("提权中");
                break;
            case 6:
                this.f16033c.H.c("更改中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f16032b) {
            case 0:
                ActivityLaboratory activityLaboratory = this.f16033c;
                activityLaboratory.H.a();
                new ha.z6(activityLaboratory, activityLaboratory.A, "更改此设置后需要重启", "", "立即重启", "稍后再说", new s5.c(7)).show();
                break;
            case 1:
                this.f16033c.H.a();
                com.yunpan.appmanage.util.a0.w("提权成功");
                break;
            case 2:
                this.f16033c.H.a();
                break;
            case 4:
                ActivityLaboratory activityLaboratory2 = this.f16033c;
                activityLaboratory2.H.a();
                new ha.z6(activityLaboratory2, activityLaboratory2.A, "成功写入su文件，请重启系统", "", "立即重启", "稍后再说", new s5.c(8)).show();
                break;
            case 5:
                this.f16033c.H.a();
                com.yunpan.appmanage.util.a0.w("提权成功");
                break;
            case 6:
                ActivityLaboratory activityLaboratory3 = this.f16033c;
                activityLaboratory3.H.a();
                new ha.z6(activityLaboratory3, activityLaboratory3.A, "更改此设置后需要重启", "", "立即重启", "稍后再说", new s9.a(8, false)).show();
                break;
        }
    }
}
