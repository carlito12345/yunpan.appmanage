package ha;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import java.io.File;

/* loaded from: classes.dex */
public final /* synthetic */ class j9 implements c6.e, TvRecyclerView.OnInBorderKeyEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7281a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k9 f7282b;

    public /* synthetic */ j9(k9 k9Var, int i10) {
        this.f7281a = i10;
        this.f7282b = k9Var;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        k9 k9Var = this.f7282b;
        if (i10 != 130) {
            k9Var.getClass();
            return false;
        }
        if (k9Var.f7321j.b() > 0) {
            k9Var.f7320i.requestFocus();
        }
        return true;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f7281a) {
            case 0:
                k9 k9Var = this.f7282b;
                x9.g0 g0Var = k9Var.f7319h;
                if (i10 != g0Var.b() - 1) {
                    for (int iB = g0Var.b() - 1; iB > i10; iB--) {
                        g0Var.C(iB);
                    }
                    k9Var.a();
                    break;
                }
                break;
            default:
                k9 k9Var2 = this.f7282b;
                x9.u2 u2Var = k9Var2.f7321j;
                x9.w3 w3Var = (x9.w3) u2Var.t(i10);
                if (w3Var.f18366c) {
                    k9Var2.f7319h.q((x9.w3) u2Var.t(i10));
                    k9Var2.a();
                    break;
                } else {
                    androidx.leanback.widget.h0 h0Var = (androidx.leanback.widget.h0) k9Var2.f7325p.f6611b;
                    w wVar = (w) h0Var.f1645b;
                    ((x9.n5) wVar.f7972k).D = w3Var.f18365b;
                    wVar.f7969h.setText("密钥：" + new File(((x9.n5) ((w) h0Var.f1645b).f7972k).D).getName());
                    k9Var2.dismiss();
                    break;
                }
        }
    }
}
