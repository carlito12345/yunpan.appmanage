package ua;

import com.yunpan.appmanage.ui.ActivityFloatButton;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class y1 implements e6.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityFloatButton f16050a;

    public y1(ActivityFloatButton activityFloatButton) {
        this.f16050a = activityFloatButton;
    }

    @Override // e6.b
    public final void a(int i10) {
        ActivityFloatButton activityFloatButton = this.f16050a;
        if (activityFloatButton.L == i10) {
            return;
        }
        z7.o oVarP = activityFloatButton.C.p(String.valueOf(activityFloatButton.D));
        z7.s sVarG = oVarP.l(activityFloatButton.L).g();
        oVarP.n(activityFloatButton.L);
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
            activityFloatButton.C.j(String.valueOf(activityFloatButton.D), oVar);
        }
        q4.a.O(activityFloatButton.A, activityFloatButton.C);
    }

    @Override // e6.b
    public final void c(int i10) {
        this.f16050a.L = i10;
    }

    @Override // e6.b
    public final void b(int i10, int i11) {
    }
}
