package ha;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class u7 implements ea.e, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x7 f7865a;

    public /* synthetic */ u7(x7 x7Var) {
        this.f7865a = x7Var;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f7865a.f8050p.q(sVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int iC = 0;
        x7 x7Var = this.f7865a;
        if (((z7.s) x7Var.f8050p.t(i10)).o("gnType").e() != 3) {
            if (x7Var.f8050p.b() == 1) {
                x7Var.f8047k.requestFocus();
            }
            x7Var.f8050p.C(i10);
            return;
        }
        String[] strArr = {"删除", "编辑"};
        ArrayList arrayList = new ArrayList(2);
        while (iC < 2) {
            String str = strArr[iC];
            iC = g.b.c(str, arrayList, str, iC, 1);
        }
        new fa(x7Var.f6724a, x7Var.f6725b, null, Collections.unmodifiableList(arrayList), new v7(x7Var, i10)).show();
    }
}
