package ua;

import com.yunpan.appmanage.ui.ActivitySidebar;
import ha.ea;

/* loaded from: classes.dex */
public final /* synthetic */ class o6 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivitySidebar f15866a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15867b;

    public /* synthetic */ o6(ActivitySidebar activitySidebar, int i10) {
        this.f15866a = activitySidebar;
        this.f15867b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        int i11 = ActivitySidebar.P;
        ActivitySidebar activitySidebar = this.f15866a;
        int i12 = this.f15867b;
        if (i10 == 0) {
            activitySidebar.A(i12);
            return;
        }
        activitySidebar.getClass();
        if (i10 == 1) {
            new ha.i0(activitySidebar, activitySidebar.A, (z7.s) activitySidebar.L.t(i12), new o6(activitySidebar, i12)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        ActivitySidebar activitySidebar = this.f15866a;
        x9.t2 t2Var = activitySidebar.L;
        int i10 = this.f15867b;
        t2Var.D(i10, sVar);
        activitySidebar.C.o(activitySidebar.N.strValue).g().p(activitySidebar.O.value_str2).o(i10, sVar);
        q4.a.X(activitySidebar.A, activitySidebar.C);
    }
}
