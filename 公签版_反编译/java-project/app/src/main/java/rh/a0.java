package rh;

/* loaded from: classes3.dex */
public final class a0 extends c0 {
    public a0(p pVar) {
        super(pVar);
    }

    @Override // rh.p
    public final int a() {
        return this.f13777a.a() + 2;
    }

    @Override // rh.c0
    public final boolean g(ph.l lVar, ph.q qVar) {
        ph.q qVarV;
        if (lVar == qVar) {
            return false;
        }
        if (!this.f13778b) {
            qVar.getClass();
            while (true) {
                qVar = qVar.v();
                if (qVar == null) {
                    qVarV = null;
                    break;
                }
                if (qVar instanceof ph.l) {
                    qVarV = (ph.l) qVar;
                    break;
                }
            }
        } else {
            qVarV = qVar.v();
        }
        return qVarV != null && h(lVar, qVarV);
    }

    public final String toString() {
        return String.format("%s + ", this.f13777a);
    }
}
