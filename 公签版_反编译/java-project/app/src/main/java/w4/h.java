package w4;

import x4.v;

/* loaded from: classes.dex */
public final class h extends c {
    public h(n nVar, p pVar, k kVar, l lVar, v vVar) {
        super(nVar, pVar, kVar, lVar, vVar);
        int i10 = nVar.f17475e;
        if (i10 != 1) {
            throw new IllegalArgumentException(da.b.a(i10, "opcode with invalid branchingness: "));
        }
    }

    @Override // w4.f
    public final void b(e eVar) {
        eVar.d(this);
    }

    @Override // w4.f
    public final y4.e c() {
        return y4.b.f18928c;
    }
}
