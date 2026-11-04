package ha;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class o9 implements c6.e, ga {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q9 f7533a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7534b;

    public /* synthetic */ o9(q9 q9Var, ArrayList arrayList) {
        this.f7533a = q9Var;
        this.f7534b = arrayList;
    }

    @Override // ha.ga
    public void b(int i10) {
        q9 q9Var = this.f7533a;
        q9Var.getClass();
        ArrayList arrayList = this.f7534b;
        String strValueOf = String.valueOf(((KeyCodeBean) arrayList.get(i10)).keyCode);
        z7.s sVar = q9Var.f7624h;
        if (sVar.f19480a.containsKey(strValueOf)) {
            Toaster.show((CharSequence) "已存在此按键");
            return;
        }
        z7.s sVar2 = new z7.s();
        sVar2.m("name", ((KeyCodeBean) arrayList.get(i10)).keyName);
        sVar2.j("maps", new z7.o());
        sVar.j(String.valueOf(((KeyCodeBean) arrayList.get(i10)).keyCode), sVar2);
        StrIntBoolBean strIntBoolBean = new StrIntBoolBean(((KeyCodeBean) arrayList.get(i10)).keyName, ((KeyCodeBean) arrayList.get(i10)).keyCode);
        x9.u0 u0Var = q9Var.f7628m;
        u0Var.q(strIntBoolBean);
        int iB = u0Var.b() - 1;
        q9Var.f7625i = iB;
        u0Var.F(iB);
        q9Var.l.smoothScrollToPositionWithOffset(q9Var.f7625i, 0, true);
        q9Var.f7630p.E(new ArrayList());
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        q9 q9Var = this.f7533a;
        Context context = q9Var.f6725b;
        Activity activity = q9Var.f6724a;
        if (i10 == 0) {
            new m9(activity, context, new p9(q9Var, 5)).show();
            return;
        }
        if (i10 == 1) {
            ArrayList arrayList = this.f7534b;
            new ha(activity, context, null, arrayList, new o9(q9Var, arrayList)).show();
            return;
        }
        if (i10 == 2) {
            if (q9Var.f7625i == -1) {
                com.yunpan.appmanage.util.a0.u("请选择按键");
                return;
            } else {
                t8.a(activity, context, 0, false, new p9(q9Var, 6));
                return;
            }
        }
        if (i10 != 3) {
            if (i10 == 4) {
                q9Var.dismiss();
            }
        } else {
            z7.s sVar = q9Var.f7624h;
            if (!sVar.f19480a.isEmpty()) {
                q9Var.f7623g.k(sVar);
            }
            q9Var.dismiss();
        }
    }
}
