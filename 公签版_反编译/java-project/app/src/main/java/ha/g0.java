package ha;

import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class g0 implements ea.c, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7074a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i0 f7075b;

    public /* synthetic */ g0(i0 i0Var, int i10) {
        this.f7074a = i10;
        this.f7075b = i0Var;
    }

    @Override // ea.c
    public void e(int i10) {
        this.f7075b.f7190y.setText(String.valueOf(i10));
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f7074a) {
            case 1:
                this.f7075b.l.G(i10);
                break;
            default:
                i0 i0Var = this.f7075b;
                i0Var.f7182n.G(i10);
                i0Var.f7184q.setText(((x9.x0) i0Var.f7182n.t(i10)).f18383a);
                break;
        }
    }
}
