package ua;

import com.yunpan.appmanage.ui.ActivityFloatButton;
import ha.ea;

/* loaded from: classes.dex */
public final /* synthetic */ class x1 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityFloatButton f16029a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16030b;

    public /* synthetic */ x1(ActivityFloatButton activityFloatButton, int i10) {
        this.f16029a = activityFloatButton;
        this.f16030b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        int i11 = ActivityFloatButton.N;
        ActivityFloatButton activityFloatButton = this.f16029a;
        int i12 = this.f16030b;
        if (i10 == 0) {
            activityFloatButton.x(i12);
            return;
        }
        activityFloatButton.getClass();
        if (i10 == 1) {
            new ha.i0(activityFloatButton, activityFloatButton.A, (z7.s) activityFloatButton.K.t(i12), new x1(activityFloatButton, i12)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        ActivityFloatButton activityFloatButton = this.f16029a;
        x9.t2 t2Var = activityFloatButton.K;
        int i10 = this.f16030b;
        t2Var.D(i10, sVar);
        activityFloatButton.C.p(String.valueOf(activityFloatButton.D)).o(i10, sVar);
        q4.a.O(activityFloatButton.A, activityFloatButton.C);
    }
}
