package androidx.emoji2.text;

import a2.g1;
import a2.w0;

/* loaded from: classes.dex */
public final class g extends a9.o {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f1104b;

    public g(h hVar) {
        this.f1104b = hVar;
    }

    @Override // a9.o
    public final void S(Throwable th2) {
        ((l) this.f1104b.f76b).d(th2);
    }

    @Override // a9.o
    public final void T(w0 w0Var) {
        h hVar = this.f1104b;
        hVar.f1106d = w0Var;
        hVar.f1105c = new g1(hVar.f1106d, new m7.e(3), ((l) hVar.f76b).f1119h);
        ((l) hVar.f76b).e();
    }
}
