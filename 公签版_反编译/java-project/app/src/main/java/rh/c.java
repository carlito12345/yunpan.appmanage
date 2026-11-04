package rh;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class c extends d {
    public c(p... pVarArr) {
        List listAsList = Arrays.asList(pVarArr);
        if (this.f13782c > 1) {
            this.f13780a.add(new b(listAsList));
        } else {
            this.f13780a.addAll(listAsList);
        }
        g();
    }

    @Override // rh.p
    public final boolean b(ph.l lVar, ph.l lVar2) {
        for (int i10 = 0; i10 < this.f13782c; i10++) {
            if (((p) this.f13781b.get(i10)).b(lVar, lVar2)) {
                return true;
            }
        }
        return false;
    }

    @Override // rh.p
    public final boolean c(ph.l lVar, ph.p pVar) {
        for (int i10 = 0; i10 < this.f13782c; i10++) {
            if (((p) this.f13781b.get(i10)).c(lVar, pVar)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return oh.f.j(", ", this.f13780a);
    }
}
