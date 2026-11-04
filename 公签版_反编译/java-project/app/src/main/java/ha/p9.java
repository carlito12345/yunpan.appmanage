package ha;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class p9 implements c6.e, c6.f, TvRecyclerView.OnInBorderKeyEventListener, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7582a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q9 f7583b;

    public /* synthetic */ p9(q9 q9Var, int i10) {
        this.f7582a = i10;
        this.f7583b = q9Var;
    }

    @Override // c6.f
    public boolean c(int i10, View view) {
        q9 q9Var = this.f7583b;
        x9.u0 u0Var = q9Var.f7628m;
        if (u0Var.b() == 1) {
            q9Var.f7625i = -1;
            q9Var.f7630p.E(new ArrayList());
            q9Var.f7626j.requestFocus();
        } else if (i10 == 0) {
            q9Var.f7625i = 1;
            q9Var.a(1);
        } else {
            int i11 = i10 - 1;
            q9Var.f7625i = i11;
            q9Var.a(i11);
        }
        q9Var.f7624h.r(String.valueOf(((StrIntBoolBean) u0Var.t(i10)).intValue));
        u0Var.C(i10);
        com.yunpan.appmanage.util.a0.w("删除成功");
        return false;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        q9 q9Var = this.f7583b;
        q9Var.f7630p.q(sVar);
        q9Var.f7624h.q(String.valueOf(((StrIntBoolBean) q9Var.f7628m.t(q9Var.f7625i)).intValue)).p("maps").k(sVar);
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f7582a) {
            case 3:
                q9 q9Var = this.f7583b;
                if (i10 != 130) {
                    q9Var.getClass();
                    break;
                } else if (q9Var.f7628m.b() > 0) {
                    q9Var.l.requestFocus();
                    break;
                }
                break;
            default:
                q9 q9Var2 = this.f7583b;
                if (i10 != 66) {
                    q9Var2.getClass();
                    break;
                } else if (q9Var2.f7630p.b() <= 0) {
                    q9Var2.f7626j.setSelectionWithSmooth(2);
                    break;
                } else {
                    q9Var2.f7629n.requestFocus();
                    break;
                }
        }
        return false;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f7582a) {
            case 0:
                this.f7583b.a(i10);
                break;
            default:
                q9 q9Var = this.f7583b;
                x9.t2 t2Var = q9Var.f7630p;
                if (t2Var.b() == 1) {
                    q9Var.f7626j.requestFocus();
                }
                t2Var.C(i10);
                q9Var.f7624h.q(String.valueOf(((StrIntBoolBean) q9Var.f7628m.t(q9Var.f7625i)).intValue)).p("maps").n(i10);
                break;
        }
    }
}
