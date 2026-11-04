package rh;

import java.util.List;

/* loaded from: classes3.dex */
public final class b extends d {
    public b(List list) {
        this.f13780a.addAll(list);
        g();
    }

    @Override // rh.p
    public final boolean b(ph.l lVar, ph.l lVar2) {
        for (int i10 = 0; i10 < this.f13782c; i10++) {
            if (!((p) this.f13781b.get(i10)).b(lVar, lVar2)) {
                return false;
            }
        }
        return true;
    }

    @Override // rh.p
    public final boolean c(ph.l lVar, ph.p pVar) {
        for (int i10 = 0; i10 < this.f13782c; i10++) {
            if (!((p) this.f13781b.get(i10)).c(lVar, pVar)) {
                return false;
            }
        }
        return true;
    }

    public final String toString() {
        return oh.f.j("", this.f13780a);
    }
}
