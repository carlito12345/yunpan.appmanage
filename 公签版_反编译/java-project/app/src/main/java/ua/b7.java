package ua;

import com.yunpan.appmanage.ui.ActivitySystemAnimator;

/* loaded from: classes.dex */
public final class b7 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15588b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15589c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ActivitySystemAnimator f15590d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b7(ActivitySystemAnimator activitySystemAnimator, int i10, int i11) {
        super(28);
        this.f15590d = activitySystemAnimator;
        this.f15588b = i10;
        this.f15589c = i11;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        com.yunpan.appmanage.util.a0.y("设置失败");
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        int i10 = this.f15589c;
        ActivitySystemAnimator activitySystemAnimator = this.f15590d;
        int i11 = this.f15588b;
        if (i11 == 0) {
            activitySystemAnimator.E.G(i10);
        } else if (i11 == 1) {
            activitySystemAnimator.G.G(i10);
        } else if (i11 == 2) {
            activitySystemAnimator.I.G(i10);
        }
    }
}
