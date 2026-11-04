package ha;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.bean.WpPathBean;

/* loaded from: classes.dex */
public final /* synthetic */ class ef implements c6.e, TvRecyclerView.OnInBorderKeyEventListener, y6 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6993a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ff f6994b;

    public /* synthetic */ ef(ff ffVar, int i10) {
        this.f6993a = i10;
        this.f6994b = ffVar;
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        mc.g gVarA;
        ff ffVar = this.f6994b;
        ffVar.getClass();
        if (!z || str.isEmpty()) {
            return;
        }
        WpPathBean wpPathBean = new WpPathBean(str, "");
        x9.a6 a6Var = ffVar.f7063i;
        WpPathBean wpPathBean2 = (WpPathBean) a6Var.t(a6Var.b() - 1);
        x9.n5 n5Var = ffVar.f7070s;
        int i10 = n5Var.f18290a;
        if (i10 == 1) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 2)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 2) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 3)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 20) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 4)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 21) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 0)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 3) {
            gVarA = new mc.c(0, new ba.d(wpPathBean, wpPathBean2, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 4) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 5)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 5) {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 6)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 6) {
            gVarA = new mc.c(0, new ba.b(wpPathBean2, wpPathBean, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 != 7) {
            return;
        } else {
            gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 11)).d(rc.f.f13757b).a(fc.b.a());
        }
        gVarA.b(new h3(ffVar, 8, wpPathBean));
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f6993a) {
            case 2:
                ff ffVar = this.f6994b;
                if (i10 != 130) {
                    ffVar.getClass();
                    break;
                } else if (ffVar.f7065k.b() <= 0) {
                    ffVar.l.requestFocus();
                    break;
                } else {
                    ffVar.f7064j.requestFocus();
                    break;
                }
            default:
                ff ffVar2 = this.f6994b;
                if (i10 != 130) {
                    ffVar2.getClass();
                    break;
                } else {
                    ffVar2.l.requestFocus();
                    break;
                }
        }
        return false;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f6993a) {
            case 0:
                ff ffVar = this.f6994b;
                x9.a6 a6Var = ffVar.f7063i;
                if (i10 != a6Var.b() - 1) {
                    for (int iB = a6Var.b() - 1; iB > i10; iB--) {
                        a6Var.C(iB);
                    }
                    ffVar.a();
                    break;
                }
                break;
            default:
                ff ffVar2 = this.f6994b;
                ffVar2.f7063i.q((WpPathBean) ffVar2.f7065k.t(i10));
                ffVar2.a();
                break;
        }
    }
}
