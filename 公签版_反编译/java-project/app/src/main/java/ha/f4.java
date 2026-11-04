package ha;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;

/* loaded from: classes.dex */
public final /* synthetic */ class f4 implements c6.e, TvRecyclerView.OnInBorderKeyEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7017a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h4 f7018b;

    public /* synthetic */ f4(h4 h4Var, int i10) {
        this.f7017a = i10;
        this.f7018b = h4Var;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f7017a) {
            case 2:
                h4 h4Var = this.f7018b;
                if (i10 != 130) {
                    h4Var.getClass();
                    break;
                } else if (h4Var.f7148k.b() <= 0) {
                    h4Var.l.requestFocus();
                    break;
                } else {
                    h4Var.f7147j.requestFocus();
                    break;
                }
            default:
                h4 h4Var2 = this.f7018b;
                if (i10 != 130) {
                    h4Var2.getClass();
                    break;
                } else {
                    h4Var2.l.requestFocus();
                    break;
                }
        }
        return false;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f7017a) {
            case 0:
                h4 h4Var = this.f7018b;
                x9.g0 g0Var = h4Var.f7146i;
                if (i10 != g0Var.b() - 1) {
                    for (int iB = g0Var.b() - 1; iB > i10; iB--) {
                        g0Var.C(iB);
                    }
                    h4Var.a();
                    break;
                }
                break;
            default:
                h4 h4Var2 = this.f7018b;
                h4Var2.f7146i.q((x9.w3) h4Var2.f7148k.t(i10));
                h4Var2.a();
                break;
        }
    }
}
