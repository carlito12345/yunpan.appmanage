package h;

import java.io.IOException;
import java.security.PublicKey;

/* loaded from: classes.dex */
public final class m implements e {

    /* renamed from: a, reason: collision with root package name */
    public PublicKey f6245a;

    public m(PublicKey publicKey) {
        this.f6245a = publicKey;
    }

    @Override // h.e
    public final void a(g.f fVar) throws IOException {
        g.f fVar2 = new g.f();
        fVar2.write(this.f6245a.getEncoded());
        fVar.write(fVar2.toByteArray());
    }

    @Override // h.e
    public final String getName() {
        return "key";
    }

    public final String toString() {
        PublicKey publicKey = this.f6245a;
        return publicKey == null ? "" : publicKey.toString();
    }
}
