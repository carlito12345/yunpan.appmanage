package ua;

import com.yunpan.appmanage.ui.ActivityStudy;
import java.util.List;

/* loaded from: classes.dex */
public final class y6 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16059b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityStudy f16060c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ y6(ActivityStudy activityStudy, int i10) {
        super(28);
        this.f16059b = i10;
        this.f16060c = activityStudy;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f16059b) {
            case 0:
                this.f16060c.E.a();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void E(Object obj) {
        ActivityStudy activityStudy = this.f16060c;
        switch (this.f16059b) {
            case 0:
                if (obj instanceof za.a) {
                    activityStudy.E.b(((za.a) obj).f19515c);
                    break;
                }
                break;
            case 1:
                List list = (List) obj;
                if (!list.isEmpty()) {
                    int i10 = ActivityStudy.I;
                    new ha.b6(activityStudy, activityStudy.A, list, new g5(5, this)).show();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.t("没有找到安装包文件");
                    break;
                }
            default:
                List list2 = (List) obj;
                if (!list2.isEmpty()) {
                    int i11 = ActivityStudy.I;
                    new ha.b6(activityStudy, activityStudy.A, list2, new g5(6, this)).show();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.t("没有找到安装包文件");
                    break;
                }
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f16059b) {
            case 0:
                this.f16060c.E.c("导出中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f16059b) {
            case 0:
                this.f16060c.E.a();
                break;
        }
    }
}
