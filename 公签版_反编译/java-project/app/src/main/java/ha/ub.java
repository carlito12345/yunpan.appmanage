package ha;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class ub implements c6.e, TvRecyclerView.OnInBorderKeyEventListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7874a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ vb f7875b;

    public /* synthetic */ ub(vb vbVar, int i10) {
        this.f7874a = i10;
        this.f7875b = vbVar;
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        vb vbVar = this.f7875b;
        if (i10 != 130) {
            vbVar.getClass();
            return false;
        }
        if (vbVar.f7952m.b() > 0) {
            vbVar.l.requestFocus();
        }
        return true;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f7874a) {
            case 0:
                vb vbVar = this.f7875b;
                vbVar.getClass();
                ArrayList arrayList = new ArrayList();
                x9.g2 g2Var = vbVar.f7949i;
                arrayList.add(new x9.w3(((x9.w3) g2Var.t(i10)).f18364a, ((x9.w3) g2Var.t(i10)).f18365b));
                vbVar.f7951k.E(arrayList);
                vbVar.a();
                break;
            case 1:
                vb vbVar2 = this.f7875b;
                x9.g0 g0Var = vbVar2.f7951k;
                if (i10 != g0Var.b() - 1) {
                    for (int iB = g0Var.b() - 1; iB > i10; iB--) {
                        g0Var.C(iB);
                    }
                    vbVar2.a();
                    break;
                }
                break;
            default:
                vb vbVar3 = this.f7875b;
                if (((x9.w3) vbVar3.f7952m.t(i10)).f18366c) {
                    vbVar3.f7951k.q((x9.w3) vbVar3.f7952m.t(i10));
                    vbVar3.a();
                    break;
                } else {
                    vbVar3.f7956s.a((x9.w3) vbVar3.f7952m.t(i10));
                    vbVar3.dismiss();
                    break;
                }
        }
    }
}
