package ha;

import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements c6.e, p2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f7229a;

    @Override // ha.p2
    public void c(String str, String str2) {
        this.f7229a.f7338h.q(new x9.n3(str, str2));
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        l lVar = this.f7229a;
        if (lVar.f7338h.b() == 1) {
            lVar.f7340j.requestFocus();
        }
        lVar.f7338h.C(i10);
    }
}
