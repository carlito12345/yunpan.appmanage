package ha;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class a2 implements ea.e, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c2 f6720a;

    public /* synthetic */ a2(c2 c2Var) {
        this.f6720a = c2Var;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f6720a.f6842k.q(sVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int iC = 0;
        c2 c2Var = this.f6720a;
        if (((z7.s) c2Var.f6842k.t(i10)).o("gnType").e() != 3) {
            if (c2Var.f6842k.b() == 1) {
                c2Var.f6839h.requestFocus();
            }
            c2Var.f6842k.C(i10);
            return;
        }
        String[] strArr = {"删除", "编辑"};
        ArrayList arrayList = new ArrayList(2);
        while (iC < 2) {
            String str = strArr[iC];
            iC = g.b.c(str, arrayList, str, iC, 1);
        }
        new fa(c2Var.f6724a, c2Var.f6725b, null, Collections.unmodifiableList(arrayList), new b2(c2Var, i10)).show();
    }
}
