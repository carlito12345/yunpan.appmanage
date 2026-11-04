package ha;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class o3 implements ea.f, c6.e, ia {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r3 f7517a;

    public /* synthetic */ o3(r3 r3Var) {
        this.f7517a = r3Var;
    }

    @Override // ea.f
    public void a(x9.w3 w3Var) {
        r3 r3Var = this.f7517a;
        if (r3Var.f7677x.b() == 1 && ((x9.w3) r3Var.f7677x.t(0)).f18366c) {
            r3Var.f7677x.C(0);
        }
        r3Var.f7677x.q(w3Var);
    }

    @Override // ha.ia
    public void b(int i10) {
        r3 r3Var = this.f7517a;
        Context context = r3Var.f6725b;
        Activity activity = r3Var.f6724a;
        if (i10 == 0) {
            h4 h4Var = new h4(activity, context);
            x9.w3 w3Var = new x9.w3("内部存储", fa.g0.f5682a.d());
            h5.m mVar = new h5.m(4, r3Var);
            h4Var.show();
            h4Var.f7153s = mVar;
            h4Var.f7144g.setText("请选择文件夹");
            h4Var.f7146i.q(w3Var);
            h4Var.a();
            return;
        }
        if (i10 == 1) {
            ArrayList arrayList = new ArrayList();
            new mc.c(0, new a3(1, arrayList)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(r3Var, 1, arrayList));
        } else if (i10 == 2) {
            new vb(activity, context).c("请选择文件", new o3(r3Var));
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        r3 r3Var = this.f7517a;
        if (r3Var.f7677x.b() == 1) {
            r3Var.f7665h.requestFocus();
        }
        r3Var.f7677x.C(i10);
    }
}
