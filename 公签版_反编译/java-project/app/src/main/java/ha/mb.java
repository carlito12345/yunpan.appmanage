package ha;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;

/* loaded from: classes.dex */
public final /* synthetic */ class mb implements c6.e, TvRecyclerView.OnInBorderKeyEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7442a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ nb f7443b;

    public /* synthetic */ mb(nb nbVar, int i10) {
        this.f7442a = i10;
        this.f7443b = nbVar;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f7442a) {
            case 2:
                nb nbVar = this.f7443b;
                if (i10 != 130) {
                    nbVar.getClass();
                    break;
                } else if (nbVar.f7480k.b() <= 0) {
                    nbVar.l.requestFocus();
                    break;
                } else {
                    nbVar.f7479j.requestFocus();
                    break;
                }
            default:
                nb nbVar2 = this.f7443b;
                if (i10 != 130) {
                    nbVar2.getClass();
                    break;
                } else {
                    nbVar2.l.requestFocus();
                    break;
                }
        }
        return false;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f7442a) {
            case 0:
                nb nbVar = this.f7443b;
                x9.g0 g0Var = nbVar.f7478i;
                if (i10 != g0Var.b() - 1) {
                    for (int iB = g0Var.b() - 1; iB > i10; iB--) {
                        g0Var.C(iB);
                    }
                    nbVar.a();
                    break;
                }
                break;
            default:
                nb nbVar2 = this.f7443b;
                nbVar2.f7478i.q((x9.w3) nbVar2.f7480k.t(i10));
                nbVar2.a();
                break;
        }
    }
}
