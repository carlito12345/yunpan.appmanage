package ha;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class i8 implements c6.e, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t8 f7202a;

    public /* synthetic */ i8(t8 t8Var) {
        this.f7202a = t8Var;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f7202a.E.q(sVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int iC = 0;
        t8 t8Var = this.f7202a;
        if (((z7.s) t8Var.E.t(i10)).o("gnType").e() == 4000) {
            String[] strArr = {"删除", "编辑"};
            ArrayList arrayList = new ArrayList(2);
            int iC2 = 0;
            while (iC2 < 2) {
                String str = strArr[iC2];
                iC2 = g.b.c(str, arrayList, str, iC2, 1);
            }
            new fa(t8Var.f6724a, t8Var.f6725b, null, Collections.unmodifiableList(arrayList), new n8(t8Var, i10, 0)).show();
            return;
        }
        if (((z7.s) t8Var.E.t(i10)).o("gnType").e() != 3) {
            if (t8Var.E.b() == 1) {
                t8Var.f7818x.requestFocus();
            }
            t8Var.E.C(i10);
            return;
        }
        String[] strArr2 = {"删除", "编辑"};
        ArrayList arrayList2 = new ArrayList(2);
        while (iC < 2) {
            String str2 = strArr2[iC];
            iC = g.b.c(str2, arrayList2, str2, iC, 1);
        }
        new fa(t8Var.f6724a, t8Var.f6725b, null, Collections.unmodifiableList(arrayList2), new n8(t8Var, i10, 1)).show();
    }
}
