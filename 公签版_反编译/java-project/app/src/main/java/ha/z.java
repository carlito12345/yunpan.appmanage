package ha;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class z implements c6.e, p2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8116a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b0 f8117b;

    public /* synthetic */ z(b0 b0Var, int i10) {
        this.f8116a = i10;
        this.f8117b = b0Var;
    }

    @Override // ha.p2
    public void c(String str, String str2) {
        b0 b0Var = this.f8117b;
        b0Var.f6768h.setText(str);
        z7.s sVar = b0Var.r;
        sVar.m("app_name", str);
        sVar.m("app_package", str2);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        b0 b0Var = this.f8117b;
        int iC = 0;
        int i11 = 1;
        switch (this.f8116a) {
            case 0:
                if (((z7.s) b0Var.f6774p.t(i10)).o("gnType").e() != 3) {
                    if (b0Var.f6774p.b() == 1) {
                        b0Var.f6770j.requestFocus();
                    }
                    b0Var.f6774p.C(i10);
                    break;
                } else {
                    String[] strArr = {"删除", "编辑"};
                    ArrayList arrayList = new ArrayList(2);
                    int iC2 = 0;
                    while (iC2 < 2) {
                        String str = strArr[iC2];
                        iC2 = g.b.c(str, arrayList, str, iC2, 1);
                    }
                    new fa(b0Var.f6724a, b0Var.f6725b, null, Collections.unmodifiableList(arrayList), new a0(b0Var, i10, iC)).show();
                    break;
                }
            default:
                if (((z7.s) b0Var.f6775q.t(i10)).o("gnType").e() != 3) {
                    if (b0Var.f6775q.b() == 1) {
                        b0Var.l.requestFocus();
                    }
                    b0Var.f6775q.C(i10);
                    break;
                } else {
                    String[] strArr2 = {"删除", "编辑"};
                    ArrayList arrayList2 = new ArrayList(2);
                    while (iC < 2) {
                        String str2 = strArr2[iC];
                        iC = g.b.c(str2, arrayList2, str2, iC, 1);
                    }
                    new fa(b0Var.f6724a, b0Var.f6725b, null, Collections.unmodifiableList(arrayList2), new a0(b0Var, i10, i11)).show();
                    break;
                }
        }
    }
}
