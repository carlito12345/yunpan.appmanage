package ha;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;

/* loaded from: classes.dex */
public final /* synthetic */ class sd implements c6.e, TvRecyclerView.OnInBorderKeyEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7766a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ud f7767b;

    public /* synthetic */ sd(ud udVar, int i10) {
        this.f7766a = i10;
        this.f7767b = udVar;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f7766a) {
            case 2:
                ud udVar = this.f7767b;
                if (i10 != 130) {
                    udVar.getClass();
                    break;
                } else if (udVar.l.b() <= 0) {
                    udVar.f7883m.requestFocus();
                    break;
                } else {
                    udVar.f7882k.requestFocus();
                    break;
                }
            default:
                ud udVar2 = this.f7767b;
                if (i10 != 130) {
                    udVar2.getClass();
                    break;
                } else {
                    udVar2.f7883m.requestFocus();
                    break;
                }
        }
        return false;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f7766a) {
            case 0:
                ud udVar = this.f7767b;
                x9.g0 g0Var = udVar.f7881j;
                if (i10 != g0Var.b() - 1) {
                    for (int iB = g0Var.b() - 1; iB > i10; iB--) {
                        g0Var.C(iB);
                    }
                    udVar.a();
                    break;
                }
                break;
            default:
                ud udVar2 = this.f7767b;
                udVar2.f7881j.q((x9.w3) udVar2.l.t(i10));
                udVar2.a();
                break;
        }
    }
}
