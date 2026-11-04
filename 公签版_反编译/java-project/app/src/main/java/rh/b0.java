package rh;

/* loaded from: classes3.dex */
public final class b0 extends c0 {
    public b0(p pVar) {
        super(pVar);
    }

    @Override // rh.p
    public final int a() {
        return this.f13777a.a() * 3;
    }

    @Override // rh.c0
    public final boolean g(ph.l lVar, ph.q qVar) {
        if (lVar == qVar) {
            return false;
        }
        ph.l lVar2 = qVar.f12741a;
        for (ph.q qVarI = lVar2 != null ? lVar2.i() : qVar; qVarI != null && qVarI != qVar; qVarI = qVarI.n()) {
            if (h(lVar, qVarI)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return String.format("%s ~ ", this.f13777a);
    }
}
