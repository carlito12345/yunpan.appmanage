package ua;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityNissan;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class v4 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15998b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityNissan f15999c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v4(ActivityNissan activityNissan, int i10) {
        super(28);
        this.f15998b = i10;
        this.f15999c = activityNissan;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        ActivityNissan activityNissan = this.f15999c;
        switch (this.f15998b) {
            case 0:
                StringBuilder sbR = l2.z.r(activityNissan.F, "");
                sbR.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.z(sbR.toString(), false);
                break;
            case 1:
                com.yunpan.appmanage.util.a0.y("失败，请确保是日产车机");
                int i10 = ActivityNissan.I;
                if (pa.e.b(activityNissan.A)) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    if (!com.yunpan.appmanage.util.j.f4033a.f4053j) {
                        com.yunpan.appmanage.util.a0.z("开启失败，请安装 " + activityNissan.A.getResources().getString(R.string.app_name) + "-公签版", false);
                        break;
                    }
                }
                break;
            case 2:
                activityNissan.F.a();
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                if (!com.yunpan.appmanage.util.j.f4033a.f4053j) {
                    com.yunpan.appmanage.util.a0.z("修改失败，请使用" + activityNissan.A.getResources().getString(R.string.app_name) + "-公签版", false);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.y("修改失败，请确保是日产车型");
                    break;
                }
            case 3:
                activityNissan.F.a();
                com.yunpan.appmanage.util.a0.y(th2.getMessage() + "");
                break;
            case 5:
                StringBuilder sbR2 = l2.z.r(activityNissan.F, "");
                sbR2.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.z(sbR2.toString(), false);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f15998b) {
            case 0:
                this.f15999c.F.c("修改中");
                break;
            case 2:
                this.f15999c.F.c("修改中");
                break;
            case 3:
                this.f15999c.F.c("提权中");
                break;
            case 4:
                this.f15999c.F.c("升级中");
                break;
            case 5:
                this.f15999c.F.c("修复中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15998b) {
            case 0:
                this.f15999c.F.a();
                fa.b0.f5652a.getClass();
                if (!a2.w0.P()) {
                    com.yunpan.appmanage.util.a0.v("正在尝试连接adb", false);
                    com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                    if (wVar.f4127k != 5555) {
                        wVar.n(5555);
                    }
                    fa.h.f5683a.h(null);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.w("修改成功");
                    break;
                }
            case 1:
                com.yunpan.appmanage.util.a0.w("已关闭");
                break;
            case 2:
                this.f15999c.F.a();
                fa.b0.f5652a.getClass();
                if (!a2.w0.P()) {
                    com.yunpan.appmanage.util.a0.v("正在尝试连接adb", false);
                    com.yunpan.appmanage.util.w wVar2 = com.yunpan.appmanage.util.v.f4106a;
                    if (wVar2.f4127k != 5555) {
                        wVar2.n(5555);
                    }
                    fa.h.f5683a.h(null);
                    break;
                } else {
                    Toaster.show((CharSequence) "修改成功");
                    break;
                }
            case 3:
                this.f15999c.F.a();
                com.yunpan.appmanage.util.a0.w("提权成功");
                break;
            case 4:
                this.f15999c.F.a();
                break;
            default:
                this.f15999c.F.a();
                com.yunpan.appmanage.util.a0.w("已修复");
                break;
        }
    }
}
