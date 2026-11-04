package qh;

import java.util.Iterator;

/* loaded from: classes3.dex */
public enum d extends c0 {
    public d() {
        super("InTableText", 9);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (r0Var.f13338a == 5) {
            j0 j0Var = (j0) r0Var;
            if (j0Var.f13291d.R().equals(c0.A)) {
                cVar.k(this);
                return false;
            }
            cVar.getClass();
            cVar.f13249s.add(new j0(j0Var));
            return true;
        }
        if (cVar.f13249s.size() > 0) {
            r0 r0Var2 = cVar.f13239g;
            Iterator it = cVar.f13249s.iterator();
            while (it.hasNext()) {
                j0 j0Var2 = (j0) it.next();
                cVar.f13239g = j0Var2;
                if (c0.a(j0Var2)) {
                    cVar.t(j0Var2);
                } else {
                    cVar.k(this);
                    boolean zD = oh.f.d(cVar.h().f12722d.f13285c, b0.z);
                    y yVar = c0.f13260g;
                    if (zD) {
                        cVar.f13252v = true;
                        yVar.d(j0Var2, cVar);
                        cVar.f13252v = false;
                    } else {
                        yVar.d(j0Var2, cVar);
                    }
                }
            }
            cVar.f13239g = r0Var2;
            cVar.f13249s.clear();
        }
        cVar.l = cVar.f13244m;
        return cVar.H(r0Var);
    }
}
