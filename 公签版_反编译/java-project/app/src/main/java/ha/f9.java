package ha;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class f9 implements ea.e, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i9 f7033a;

    public /* synthetic */ f9(i9 i9Var) {
        this.f7033a = i9Var;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f7033a.f7215w.q(sVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int iC = 0;
        i9 i9Var = this.f7033a;
        if (((z7.s) i9Var.f7215w.t(i10)).o("gnType").e() != 3) {
            if (i9Var.f7215w.b() == 1) {
                i9Var.f7209n.requestFocus();
            }
            i9Var.f7215w.C(i10);
            return;
        }
        String[] strArr = {"删除", "编辑"};
        ArrayList arrayList = new ArrayList(2);
        while (iC < 2) {
            String str = strArr[iC];
            iC = g.b.c(str, arrayList, str, iC, 1);
        }
        new fa(i9Var.f6724a, i9Var.f6725b, null, Collections.unmodifiableList(arrayList), new h9(i9Var, i10)).show();
    }
}
