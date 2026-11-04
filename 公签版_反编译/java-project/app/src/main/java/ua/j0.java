package ua;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.ui.ActivityApps;
import java.util.List;

/* loaded from: classes.dex */
public final class j0 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15758b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityApps f15759c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j0(ActivityApps activityApps, int i10) {
        super(28);
        this.f15758b = i10;
        this.f15759c = activityApps;
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15758b) {
            case 1:
                ActivityApps activityApps = this.f15759c;
                activityApps.F.E((List) obj);
                activityApps.G.setVisibility(activityApps.F.b() == 0 ? 0 : 8);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f15758b) {
            case 0:
                Toaster.showLong((CharSequence) "刷新图标中...");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f15758b) {
            case 0:
                com.yunpan.appmanage.util.a0.w("刷新完成");
                ActivityApps activityApps = this.f15759c;
                int iF = activityApps.D.F();
                if (iF == 0) {
                    activityApps.C.setVisibility(0);
                    activityApps.I.setVisibility(8);
                    activityApps.D.G(2);
                }
                activityApps.x(iF);
                break;
        }
    }
}
