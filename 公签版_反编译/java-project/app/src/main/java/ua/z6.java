package ua;

import android.content.res.Resources;
import android.view.View;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivitySystemAnimator;
import com.yunpan.appmanage.ui.ActivityTextAiOnY;
import com.yunpan.appmanage.ui.ActivityTextAiOnYP;
import com.yunpan.appmanage.ui.ActivityTextIflytek;
import com.yunpan.appmanage.ui.ActivityUsers;
import com.yunpan.appmanage.ui.ActivityWindowInputAdbPair;

/* loaded from: classes.dex */
public final /* synthetic */ class z6 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16082a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16083b;

    public /* synthetic */ z6(int i10, Object obj) {
        this.f16082a = i10;
        this.f16083b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Resources.NotFoundException {
        Object obj = this.f16083b;
        switch (this.f16082a) {
            case 0:
                int i10 = ActivitySystemAnimator.K;
                ((ActivitySystemAnimator) obj).finish();
                break;
            case 1:
                int i11 = ActivityTextAiOnY.S0;
                ((ActivityTextAiOnY) obj).finish();
                break;
            case 2:
                int i12 = ActivityTextAiOnYP.S;
                ((ActivityTextAiOnYP) obj).finish();
                break;
            case 3:
                int i13 = ActivityTextIflytek.I;
                ((ActivityTextIflytek) obj).finish();
                break;
            case 4:
                int i14 = ActivityUsers.G;
                ((ActivityUsers) obj).finish();
                break;
            case 5:
                int i15 = ActivityWindowInputAdbPair.E;
                ((ActivityWindowInputAdbPair) obj).finish();
                break;
            case 6:
                ((v3.t) obj).o(!r2.f16561i1);
                break;
            case 7:
                v3.t tVar = ((v3.g) obj).f16478f;
                r1.m0 m0Var = tVar.g1;
                if (m0Var != null && ((a.b) m0Var).i(29)) {
                    r1.v0 v0VarM = ((y1.x) tVar.g1).M();
                    r1.m0 m0Var2 = tVar.g1;
                    h2.i iVar = (h2.i) v0VarM;
                    iVar.getClass();
                    h2.h hVar = new h2.h(iVar);
                    hVar.b(1);
                    hVar.i(1, false);
                    ((y1.x) m0Var2).a0(hVar.a());
                    tVar.f16567m.f16523e[1] = tVar.getResources().getString(R.string.exo_track_selection_auto);
                    tVar.f16577s.dismiss();
                    break;
                }
                break;
            case 8:
                v3.m mVar = (v3.m) obj;
                int bindingAdapterPosition = mVar.getBindingAdapterPosition();
                v3.t tVar2 = mVar.f16521d;
                View view2 = tVar2.I;
                if (bindingAdapterPosition != 0) {
                    if (bindingAdapterPosition != 1) {
                        tVar2.f16577s.dismiss();
                        break;
                    } else {
                        view2.getClass();
                        tVar2.e(tVar2.f16574q, view2);
                        break;
                    }
                } else {
                    view2.getClass();
                    tVar2.e(tVar2.f16569n, view2);
                    break;
                }
            case 9:
                v3.t tVar3 = ((v3.p) obj).f16530f;
                r1.m0 m0Var3 = tVar3.g1;
                if (m0Var3 != null && ((a.b) m0Var3).i(29)) {
                    r1.v0 v0VarM2 = ((y1.x) tVar3.g1).M();
                    r1.m0 m0Var4 = tVar3.g1;
                    h2.i iVar2 = (h2.i) v0VarM2;
                    iVar2.getClass();
                    h2.h hVar2 = new h2.h(iVar2);
                    hVar2.b(3);
                    hVar2.d();
                    hVar2.f();
                    hVar2.h();
                    ((y1.x) m0Var4).a0(hVar2.a());
                    tVar3.f16577s.dismiss();
                    break;
                }
                break;
            default:
                v3.y yVar = (v3.y) obj;
                yVar.g();
                if (view.getId() != R.id.exo_overflow_show) {
                    if (view.getId() == R.id.exo_overflow_hide) {
                        yVar.f16615s.start();
                        break;
                    }
                } else {
                    yVar.r.start();
                    break;
                }
                break;
        }
    }
}
