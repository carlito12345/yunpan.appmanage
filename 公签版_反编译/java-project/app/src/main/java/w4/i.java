package w4;

/* loaded from: classes.dex */
public final class i extends f {
    public i(n nVar, p pVar, k kVar, l lVar) {
        super(nVar, pVar, kVar, lVar);
        int i10 = nVar.f17475e;
        if (i10 == 5 || i10 == 6) {
            throw new IllegalArgumentException(da.b.a(i10, "opcode with invalid branchingness: "));
        }
        if (kVar != null && i10 != 1) {
            throw new IllegalArgumentException("can't mix branchingness with result");
        }
    }

    @Override // w4.f
    public final void b(e eVar) {
        eVar.j(this);
    }

    @Override // w4.f
    public final y4.e c() {
        return y4.b.f18928c;
    }
}
