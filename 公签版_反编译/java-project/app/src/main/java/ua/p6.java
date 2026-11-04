package ua;

import com.yunpan.appmanage.ui.ActivitySidebar;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class p6 implements e6.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivitySidebar f15884a;

    public p6(ActivitySidebar activitySidebar) {
        this.f15884a = activitySidebar;
    }

    @Override // e6.b
    public final void a(int i10) {
        ActivitySidebar activitySidebar = this.f15884a;
        if (activitySidebar.M == i10) {
            return;
        }
        z7.o oVarP = activitySidebar.C.q(activitySidebar.N.strValue).p(activitySidebar.O.value_str2);
        z7.s sVarG = oVarP.l(activitySidebar.M).g();
        oVarP.n(activitySidebar.M);
        ArrayList arrayList = oVarP.f19478a;
        if (i10 == arrayList.size()) {
            oVarP.k(sVarG);
        } else {
            z7.o oVar = new z7.o();
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                if (i11 == i10) {
                    oVar.k(sVarG);
                }
                oVar.k(oVarP.l(i11));
            }
            activitySidebar.C.q(activitySidebar.N.strValue).j(activitySidebar.O.value_str2, oVar);
        }
        q4.a.X(activitySidebar.A, activitySidebar.C);
    }

    @Override // e6.b
    public final void c(int i10) {
        this.f15884a.M = i10;
    }

    @Override // e6.b
    public final void b(int i10, int i11) {
    }
}
