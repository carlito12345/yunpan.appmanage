package ua;

import com.yunpan.appmanage.ui.ActivityPresentation;
import java.util.List;

/* loaded from: classes.dex */
public final class r5 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15935b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityPresentation f15936c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r5(ActivityPresentation activityPresentation, int i10) {
        super(28);
        this.f15935b = i10;
        this.f15936c = activityPresentation;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f15935b) {
            case 1:
                this.f15936c.G.setVisibility(8);
                com.yunpan.appmanage.util.a0.u("加载失败");
                th2.printStackTrace();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15935b) {
            case 1:
                this.f15936c.D.E((List) obj);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f15935b) {
            case 1:
                this.f15936c.G.setVisibility(0);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        ActivityPresentation activityPresentation = this.f15936c;
        switch (this.f15935b) {
            case 0:
                int i10 = ActivityPresentation.H;
                activityPresentation.x();
                break;
            default:
                activityPresentation.G.setVisibility(8);
                break;
        }
    }
}
