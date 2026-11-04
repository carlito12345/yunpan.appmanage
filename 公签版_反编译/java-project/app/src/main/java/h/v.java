package h;

import java.io.IOException;

/* loaded from: classes.dex */
public final class v extends n implements e {

    /* renamed from: c, reason: collision with root package name */
    public final o f6280c;

    public v(byte[] bArr) throws IOException {
        this.f6280c = null;
        o oVar = new o(bArr);
        this.f6280c = oVar;
        this.f6246a = r.f6255b;
        g.f fVar = new g.f();
        fVar.K((byte) 4, oVar.f6248a);
        this.f6247b = fVar.toByteArray();
    }

    @Override // h.e
    public final void a(g.f fVar) throws IOException {
        g.f fVar2 = new g.f();
        if (this.f6247b == null) {
            this.f6246a = r.f6255b;
            o oVar = this.f6280c;
            if (oVar == null) {
                this.f6247b = null;
            } else {
                g.f fVar3 = new g.f();
                fVar3.K((byte) 4, oVar.f6248a);
                this.f6247b = fVar3.toByteArray();
            }
        }
        b(fVar2);
        fVar.write(fVar2.toByteArray());
    }

    @Override // h.e
    public final String getName() {
        return "SubjectKeyIdentifier";
    }

    @Override // h.n
    public final String toString() {
        return super.toString() + "SubjectKeyIdentifier [\n" + String.valueOf(this.f6280c) + "]\n";
    }
}
