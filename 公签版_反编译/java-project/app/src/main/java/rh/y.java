package rh;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class y extends c0 {

    /* renamed from: e, reason: collision with root package name */
    public static final kf.d f13819e = new kf.d(new ah.a(9));

    /* renamed from: d, reason: collision with root package name */
    public final boolean f13820d;

    public y(p pVar) {
        boolean z;
        super(pVar);
        if (pVar instanceof d) {
            Iterator it = ((d) pVar).f13780a.iterator();
            while (it.hasNext()) {
                p pVar2 = (p) it.next();
                if ((pVar2 instanceof b0) || (pVar2 instanceof a0)) {
                    z = true;
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        this.f13820d = z;
    }

    @Override // rh.p
    public final int a() {
        return this.f13777a.a() * 10;
    }

    @Override // rh.c0, rh.p
    public final boolean b(ph.l lVar, ph.l lVar2) {
        boolean z = this.f13820d;
        p pVar = this.f13777a;
        if (z) {
            ph.l lVar3 = lVar2.f12741a;
            for (ph.l lVarI = lVar3 != null ? lVar3.I() : lVar2; lVarI != null; lVarI = lVarI.m()) {
                if (lVarI != lVar2 && pVar.b(lVar2, lVarI)) {
                    return true;
                }
            }
        }
        kf.d dVar = f13819e;
        ph.r rVar = (ph.r) dVar.o();
        if (rVar.f12748f.isInstance(lVar2)) {
            rVar.f12744b = lVar2;
        }
        rVar.f12745c = lVar2;
        rVar.f12746d = lVar2;
        rVar.f12743a = lVar2;
        rVar.f12747e = lVar2.u();
        while (rVar.hasNext()) {
            try {
                rVar.a();
                ph.q qVar = rVar.f12744b;
                if (qVar == null) {
                    throw new NoSuchElementException();
                }
                rVar.f12746d = rVar.f12745c;
                rVar.f12745c = qVar;
                rVar.f12747e = qVar.u();
                rVar.f12744b = null;
                if (qVar != lVar2 && pVar.d(lVar2, qVar)) {
                    return true;
                }
            } finally {
                dVar.N(rVar);
            }
        }
        dVar.N(rVar);
        return false;
    }

    @Override // rh.c0
    public final boolean g(ph.l lVar, ph.q qVar) {
        return false;
    }

    public final String toString() {
        return String.format(":has(%s)", this.f13777a);
    }
}
