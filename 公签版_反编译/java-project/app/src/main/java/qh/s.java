package qh;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public enum s extends c0 {
    public s() {
        super("ForeignContent", 23);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        ph.c cVar2;
        ph.c cVar3;
        ph.c cVar4;
        ph.l lVarH;
        int iC = d0.f.c(r0Var.f13338a);
        if (iC == 0) {
            cVar.k(this);
        } else if (iC == 1) {
            o0 o0Var = (o0) r0Var;
            if (oh.f.c(o0Var.f13331e, b0.L)) {
                return cVar.l.d(r0Var, cVar);
            }
            if (o0Var.f13331e.equals("font") && (((cVar2 = o0Var.f13333g) != null && cVar2.h("color") != -1) || (((cVar3 = o0Var.f13333g) != null && cVar3.h("face") != -1) || ((cVar4 = o0Var.f13333g) != null && cVar4.h("size") != -1)))) {
                return cVar.l.d(r0Var, cVar);
            }
            String str = cVar.h().f12722d.f13283a;
            cVar.y(o0Var, str);
            k3 k3VarF = cVar.f13241i.d(o0Var.f13330d.R(), o0Var.f13331e, str, cVar.f13240h.f13277a).f();
            if (k3VarF != null) {
                if (o0Var.f13331e.equals("script")) {
                    cVar.f13235c.o(k3.f13303f);
                } else {
                    cVar.f13235c.o(k3VarF);
                }
                cVar.f13244m = cVar.l;
                cVar.l = c0.f13261h;
            }
        } else if (iC == 2) {
            n0 n0Var = (n0) r0Var;
            if (n0Var.f13331e.equals("br") || n0Var.f13331e.equals("p")) {
                return cVar.l.d(r0Var, cVar);
            }
            if (n0Var.f13331e.equals("script") && cVar.f13237e.size() != 0 && (lVarH = cVar.h()) != null) {
                f0 f0Var = lVarH.f12722d;
                if (f0Var.f13285c.equals("script") && f0Var.f13283a.equals("http://www.w3.org/2000/svg")) {
                    cVar.E();
                    return true;
                }
            }
            ArrayList arrayList = cVar.f13237e;
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("Stack unexpectedly empty");
            }
            int size = arrayList.size() - 1;
            ph.l lVar = (ph.l) arrayList.get(size);
            if (!lVar.l(n0Var.f13331e)) {
                cVar.k(this);
            }
            while (size != 0) {
                if (lVar.l(n0Var.f13331e)) {
                    String str2 = lVar.f12722d.f13285c;
                    for (int size2 = cVar.f13237e.size() - 1; size2 >= 0 && !cVar.E().l(str2); size2--) {
                    }
                    return true;
                }
                size--;
                lVar = (ph.l) arrayList.get(size);
                if (lVar.f12722d.f13283a.equals("http://www.w3.org/1999/xhtml")) {
                    return cVar.l.d(r0Var, cVar);
                }
            }
        } else if (iC == 3) {
            cVar.v((k0) r0Var);
        } else if (iC == 4) {
            j0 j0Var = (j0) r0Var;
            if (j0Var.f13291d.R().equals(c0.A)) {
                cVar.k(this);
            } else if (c0.a(j0Var)) {
                cVar.t(j0Var);
            } else {
                cVar.t(j0Var);
                cVar.f13251u = false;
            }
        } else if (iC != 6) {
            throw new IllegalStateException("Unexpected state: ".concat(org.bouncycastle.jcajce.provider.digest.a.x(r0Var.f13338a)));
        }
        return true;
    }
}
