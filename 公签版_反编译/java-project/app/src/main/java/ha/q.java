package ha;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class q implements c6.e, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f7593a;

    public /* synthetic */ q(s sVar) {
        this.f7593a = sVar;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f7593a.f7717n.q(sVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int iC = 0;
        s sVar = this.f7593a;
        if (((z7.s) sVar.f7717n.t(i10)).o("gnType").e() != 3) {
            if (sVar.f7717n.b() == 1) {
                sVar.f7715k.requestFocus();
            }
            sVar.f7717n.C(i10);
            return;
        }
        String[] strArr = {"删除", "编辑"};
        ArrayList arrayList = new ArrayList(2);
        while (iC < 2) {
            String str = strArr[iC];
            iC = g.b.c(str, arrayList, str, iC, 1);
        }
        new fa(sVar.f6724a, sVar.f6725b, null, Collections.unmodifiableList(arrayList), new r(sVar, i10)).show();
    }
}
