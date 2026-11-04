package h;

import java.io.IOException;

/* loaded from: classes.dex */
public final class i implements e {

    /* renamed from: a, reason: collision with root package name */
    public u f6239a;

    public i(int i10) {
        this.f6239a = new u(i10);
    }

    @Override // h.e
    public final void a(g.f fVar) throws IOException {
        g.f fVar2 = new g.f();
        u uVar = this.f6239a;
        uVar.getClass();
        fVar2.write(2);
        byte[] byteArray = uVar.f6279a.toByteArray();
        fVar2.r(byteArray.length);
        fVar2.write(byteArray, 0, byteArray.length);
        fVar.write(fVar2.toByteArray());
    }

    @Override // h.e
    public final String getName() {
        return "serialNumber";
    }

    public final String toString() {
        u uVar = this.f6239a;
        return uVar == null ? "" : uVar.toString();
    }
}
