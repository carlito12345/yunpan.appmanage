package ph;

import qh.f0;

/* loaded from: classes3.dex */
public class s extends v3.f {

    /* renamed from: f, reason: collision with root package name */
    public boolean f12749f;

    public s(q qVar, oh.a aVar, g gVar) {
        super(25, qVar, aVar, gVar, false);
        this.f12749f = false;
        while (qVar != null) {
            if ((qVar instanceof l) && ((l) qVar).f12722d.b(64)) {
                this.f12749f = true;
                return;
            }
            qVar = qVar.f12741a;
        }
    }

    public static boolean Y(q qVar) {
        return (qVar instanceof x) && oh.f.f(((x) qVar).A());
    }

    public boolean Z(q qVar) {
        if (qVar == null || !(qVar instanceof l)) {
            return false;
        }
        l lVar = (l) qVar;
        f0 f0Var = lVar.f12722d;
        if ((f0Var.f13286d & 4) == 0) {
            if (f0Var.c()) {
                return false;
            }
            if (!(lVar.f12741a instanceof h)) {
                l lVarI = lVar.I();
                for (int i10 = 0; i10 < 5 && lVarI != null; i10++) {
                    f0 f0Var2 = lVarI.f12722d;
                    if ((f0Var2.f13286d & 4) == 0 && f0Var2.c()) {
                        lVarI = lVarI.m();
                    }
                }
                return false;
            }
        }
        return true;
    }

    public boolean a0(q qVar) {
        if (qVar != null && qVar != ((q) this.f16474b) && !this.f12749f && !Y(qVar)) {
            if (Z(qVar)) {
                return true;
            }
            q qVarV = qVar.v();
            while (Y(qVarV)) {
                qVarV = qVarV.v();
            }
            if (Z(qVarV)) {
                return true;
            }
            l lVar = qVar.f12741a;
            if (Z(lVar) && !lVar.f12722d.b(8)) {
                q qVarI = lVar.i();
                for (int i10 = 0; i10 < 5 && qVarI != null; i10++) {
                    if (!(qVarI instanceof x)) {
                        if (qVarV != null) {
                            if (qVarV instanceof x) {
                                return false;
                            }
                            if (!Z(qVarV) && (qVarV instanceof l)) {
                                return false;
                            }
                        }
                        return true;
                    }
                    qVarI = qVarI.n();
                }
            }
        }
        return false;
    }

    @Override // v3.f
    public final void n(l lVar, int i10) {
        if (a0(lVar)) {
            B(i10);
        }
        lVar.s((oh.a) this.f16475c, (g) this.f16476d);
        if (lVar.f12722d.b(64)) {
            this.f12749f = true;
        }
    }

    @Override // v3.f
    public final void o(p pVar, int i10) {
        if (a0(pVar)) {
            B(i10);
        }
        pVar.s((oh.a) this.f16475c, (g) this.f16476d);
    }

    @Override // v3.f
    public final void q(l lVar, int i10) {
        q qVarI = lVar.i();
        while (Y(qVarI)) {
            qVarI = qVarI.n();
        }
        if (a0(qVarI)) {
            B(i10);
        }
        lVar.J((oh.a) this.f16475c, (g) this.f16476d);
        if (this.f12749f && lVar.f12722d.b(64)) {
            do {
                lVar = lVar.f12741a;
                if (lVar == null) {
                    this.f12749f = false;
                    return;
                }
            } while ((lVar.f12722d.f13286d & 64) == 0);
        }
    }

    @Override // v3.f
    public final void r(x xVar, int i10, int i11) {
        int i12;
        if (this.f12749f) {
            i12 = 0;
        } else {
            i12 = 4;
            if (Z(xVar.f12741a)) {
                q qVarV = xVar.v();
                q qVarN = xVar.n();
                if ((!(qVarV instanceof l) || Z(qVarV)) && (qVarV == null || (!(qVarV instanceof x) && a0(qVarV)))) {
                    i12 = 12;
                }
                if (qVarN == null || (!(qVarN instanceof x) && a0(qVarN))) {
                    i12 |= 16;
                }
            }
            if (!oh.f.f(xVar.A()) && Z(xVar.f12741a) && a0(xVar)) {
                B(i11);
            }
        }
        super.r(xVar, i12, i11);
    }
}
