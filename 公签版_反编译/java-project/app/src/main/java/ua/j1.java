package ua;

import com.yunpan.appmanage.ui.ActivityDesktop;
import java.util.List;

/* loaded from: classes.dex */
public final class j1 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15760b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityDesktop f15761c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j1(ActivityDesktop activityDesktop, int i10) {
        super(28);
        this.f15760b = i10;
        this.f15761c = activityDesktop;
    }

    @Override // ha.l2, ec.e
    public final void E(Object obj) {
        ActivityDesktop activityDesktop = this.f15761c;
        switch (this.f15760b) {
            case 0:
                activityDesktop.D.E((List) obj);
                break;
            default:
                int i10 = ActivityDesktop.G;
                activityDesktop.x();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        int i10 = this.f15760b;
    }

    private final void Y() {
    }
}
