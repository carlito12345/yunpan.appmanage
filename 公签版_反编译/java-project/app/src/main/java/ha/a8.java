package ha;

import android.view.View;
import com.yunpan.appmanage.bean.KeyCodeBean;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class a8 implements ea.e, c6.e, ga, ea.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d8 f6735a;

    public /* synthetic */ a8(d8 d8Var) {
        this.f6735a = d8Var;
    }

    @Override // ha.ga
    public void b(int i10) {
        d8 d8Var = this.f6735a;
        KeyCodeBean keyCodeBean = (KeyCodeBean) d8Var.A.get(i10);
        d8Var.f6900k = keyCodeBean;
        int i11 = keyCodeBean.keyCode;
        if (i11 == -1) {
            d8Var.f6900k = new KeyCodeBean(-1, "");
            d8Var.f6901m.setText("");
        } else {
            if (i11 == -2) {
                new z7(d8Var.f6724a, d8Var.f6725b).a(new a8(d8Var));
                return;
            }
            d8Var.f6901m.setText(d8Var.f6900k.keyName + "(" + d8Var.f6900k.keyCode + ")");
        }
    }

    @Override // ea.c
    public void e(int i10) {
        d8 d8Var = this.f6735a;
        if (i10 == d8Var.f6910y.o("key1").e()) {
            com.yunpan.appmanage.util.a0.u("不能和主键码一样");
            return;
        }
        d8Var.f6900k = new KeyCodeBean(i10, "");
        d8Var.f6901m.setText("(" + d8Var.f6900k.keyCode + ")");
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f6735a.f6909x.q(sVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int iC = 0;
        d8 d8Var = this.f6735a;
        if (((z7.s) d8Var.f6909x.t(i10)).o("gnType").e() != 3) {
            if (d8Var.f6909x.b() == 1) {
                d8Var.f6903p.requestFocus();
            }
            d8Var.f6909x.C(i10);
            return;
        }
        String[] strArr = {"删除", "编辑"};
        ArrayList arrayList = new ArrayList(2);
        while (iC < 2) {
            String str = strArr[iC];
            iC = g.b.c(str, arrayList, str, iC, 1);
        }
        new fa(d8Var.f6724a, d8Var.f6725b, null, Collections.unmodifiableList(arrayList), new b8(d8Var, i10)).show();
    }
}
