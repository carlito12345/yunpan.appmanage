package ha;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class x1 implements ea.e, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z1 f8032a;

    public /* synthetic */ x1(z1 z1Var) {
        this.f8032a = z1Var;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f8032a.f8126m.q(sVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int iC = 0;
        z1 z1Var = this.f8032a;
        if (((z7.s) z1Var.f8126m.t(i10)).o("gnType").e() != 3) {
            if (z1Var.f8126m.b() == 1) {
                z1Var.f8125k.requestFocus();
            }
            z1Var.f8126m.C(i10);
            return;
        }
        String[] strArr = {"删除", "编辑"};
        ArrayList arrayList = new ArrayList(2);
        while (iC < 2) {
            String str = strArr[iC];
            iC = g.b.c(str, arrayList, str, iC, 1);
        }
        new fa(z1Var.f6724a, z1Var.f6725b, null, Collections.unmodifiableList(arrayList), new y1(z1Var, i10)).show();
    }
}
