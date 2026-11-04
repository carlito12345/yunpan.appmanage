package h4;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class v extends u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a0.e f6503a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f6504b;

    public v(w wVar, a0.e eVar) {
        this.f6504b = wVar;
        this.f6503a = eVar;
    }

    @Override // h4.s
    public final void c(t tVar) {
        ((ArrayList) this.f6503a.get(this.f6504b.f6506b)).remove(tVar);
        tVar.v(this);
    }
}
