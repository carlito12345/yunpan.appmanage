package ha;

import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class u8 implements c6.e, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v8 f7866a;

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f7866a.f7926n.q(sVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        v8 v8Var = this.f7866a;
        if (v8Var.f7926n.b() == 1) {
            v8Var.f7923j.requestFocus();
        }
        v8Var.f7926n.C(i10);
    }
}
