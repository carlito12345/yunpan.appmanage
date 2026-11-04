package ha;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class y8 implements ea.e, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8095a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a9 f8096b;

    public /* synthetic */ y8(a9 a9Var, int i10) {
        this.f8095a = i10;
        this.f8096b = a9Var;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        switch (this.f8095a) {
            case 0:
                a9 a9Var = this.f8096b;
                a9Var.getClass();
                a9Var.b(sVar.o("name").i());
                String strI = sVar.o("name").i();
                z7.s sVar2 = a9Var.f6745s;
                sVar2.m("name", strI);
                sVar2.j("event", sVar);
                break;
            case 1:
                a9 a9Var2 = this.f8096b;
                a9Var2.getClass();
                a9Var2.b(sVar.o("name").i());
                String strI2 = sVar.o("name").i();
                z7.s sVar3 = a9Var2.f6745s;
                sVar3.m("name", strI2);
                sVar3.j("event", sVar);
                break;
            case 2:
            default:
                a9 a9Var3 = this.f8096b;
                a9Var3.getClass();
                a9Var3.b(sVar.o("name").i());
                String strI3 = sVar.o("name").i();
                z7.s sVar4 = a9Var3.f6745s;
                sVar4.m("name", strI3);
                sVar4.j("event", sVar);
                break;
            case 3:
                this.f8096b.f6743p.q(sVar);
                break;
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int iC = 0;
        a9 a9Var = this.f8096b;
        if (((z7.s) a9Var.f6743p.t(i10)).o("gnType").e() != 3) {
            if (a9Var.f6743p.b() == 1) {
                a9Var.f6740k.requestFocus();
            }
            a9Var.f6743p.C(i10);
            return;
        }
        String[] strArr = {"删除", "编辑"};
        ArrayList arrayList = new ArrayList(2);
        while (iC < 2) {
            String str = strArr[iC];
            iC = g.b.c(str, arrayList, str, iC, 1);
        }
        new fa(a9Var.f6724a, a9Var.f6725b, null, Collections.unmodifiableList(arrayList), new z8(a9Var, i10)).show();
    }
}
