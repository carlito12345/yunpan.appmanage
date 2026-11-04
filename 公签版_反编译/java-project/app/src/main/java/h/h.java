package h;

import java.io.IOException;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes.dex */
public final class h implements e {

    /* renamed from: a, reason: collision with root package name */
    public w f6237a;

    /* renamed from: b, reason: collision with root package name */
    public X500Principal f6238b;

    public h(w wVar) {
        this.f6237a = wVar;
    }

    @Override // h.e
    public final void a(g.f fVar) throws IOException {
        g.f fVar2 = new g.f();
        this.f6237a.b(fVar2);
        fVar.write(fVar2.toByteArray());
    }

    @Override // h.e
    public final String getName() {
        return "issuer";
    }

    public final String toString() {
        w wVar = this.f6237a;
        return wVar == null ? "" : wVar.toString();
    }
}
