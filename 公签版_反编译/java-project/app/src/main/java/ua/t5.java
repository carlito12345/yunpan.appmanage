package ua;

import com.yunpan.appmanage.ui.ActivityPresentation2;
import java.util.List;

/* loaded from: classes.dex */
public final class t5 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15968b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityPresentation2 f15969c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t5(ActivityPresentation2 activityPresentation2, int i10) {
        super(28);
        this.f15968b = i10;
        this.f15969c = activityPresentation2;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f15968b) {
            case 1:
                this.f15969c.G.setVisibility(8);
                com.yunpan.appmanage.util.a0.u("加载失败");
                th2.printStackTrace();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15968b) {
            case 1:
                this.f15969c.D.E((List) obj);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f15968b) {
            case 1:
                this.f15969c.G.setVisibility(0);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        ActivityPresentation2 activityPresentation2 = this.f15969c;
        switch (this.f15968b) {
            case 0:
                int i10 = ActivityPresentation2.H;
                activityPresentation2.x();
                break;
            default:
                activityPresentation2.G.setVisibility(8);
                break;
        }
    }
}
