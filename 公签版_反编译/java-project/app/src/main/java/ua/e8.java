package ua;

import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class e8 implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15663a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15664b;

    public /* synthetic */ e8(int i10, Object obj) {
        this.f15663a = i10;
        this.f15664b = obj;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f15663a) {
            case 0:
                q8 q8Var = (q8) this.f15664b;
                q8Var.f15912k.requestFocus();
                q8Var.I.setVisibility(8);
                q8Var.K.setVisibility(8);
                break;
            default:
                y1.x xVar = ((ya.l) this.f15664b).f19103f;
                if (xVar != null) {
                    xVar.h0();
                    xVar.c0(null);
                    u7.y0 y0Var = u7.y0.f15549e;
                    long j10 = xVar.f18853f1.f18840s;
                    xVar.V0 = new t1.c(y0Var);
                    break;
                }
                break;
        }
        return true;
    }
}
