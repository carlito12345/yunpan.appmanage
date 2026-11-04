package qh;

/* loaded from: classes3.dex */
public enum j extends c0 {
    public j() {
        super("InSelect", 15);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0065  */
    @Override // qh.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean d(r0 r0Var, c cVar) {
        char c7 = 3;
        int iC = d0.f.c(r0Var.f13338a);
        if (iC == 0) {
            cVar.k(this);
            return false;
        }
        v vVar = c0.f13257d;
        if (iC == 1) {
            o0 o0Var = (o0) r0Var;
            String strM = o0Var.m();
            if (strM.equals("html")) {
                y yVar = c0.f13260g;
                cVar.getClass();
                return yVar.d(o0Var, cVar);
            }
            if (strM.equals("option")) {
                if (cVar.i("option")) {
                    cVar.I("option");
                }
                cVar.w(o0Var);
            } else {
                if (!strM.equals("optgroup")) {
                    if (strM.equals("select")) {
                        cVar.k(this);
                        return cVar.I("select");
                    }
                    if (oh.f.d(strM, b0.E)) {
                        cVar.k(this);
                        if (!cVar.q("select")) {
                            return false;
                        }
                        cVar.I("select");
                        return cVar.H(o0Var);
                    }
                    if (strM.equals("script") || strM.equals("template")) {
                        cVar.getClass();
                        return vVar.d(r0Var, cVar);
                    }
                    cVar.k(this);
                    return false;
                }
                if (cVar.i("option")) {
                    cVar.I("option");
                }
                if (cVar.i("optgroup")) {
                    cVar.I("optgroup");
                }
                cVar.w(o0Var);
            }
        } else if (iC == 2) {
            String strM2 = ((n0) r0Var).m();
            strM2.getClass();
            switch (strM2.hashCode()) {
                case -1321546630:
                    if (!strM2.equals("template")) {
                        c7 = 65535;
                        break;
                    } else {
                        c7 = 0;
                        break;
                    }
                case -1010136971:
                    if (strM2.equals("option")) {
                        c7 = 1;
                        break;
                    }
                    break;
                case -906021636:
                    if (strM2.equals("select")) {
                        c7 = 2;
                        break;
                    }
                    break;
                case -80773204:
                    if (!strM2.equals("optgroup")) {
                    }
                    break;
            }
            switch (c7) {
                case 0:
                    cVar.getClass();
                    return vVar.d(r0Var, cVar);
                case 1:
                    if (!cVar.i("option")) {
                        cVar.k(this);
                        break;
                    } else {
                        cVar.E();
                        break;
                    }
                case 2:
                    if (!cVar.q(strM2)) {
                        cVar.k(this);
                        return false;
                    }
                    cVar.F(strM2);
                    cVar.P();
                    break;
                case 3:
                    if (cVar.i("option") && cVar.a(cVar.h()) != null && cVar.a(cVar.h()).l("optgroup")) {
                        cVar.I("option");
                    }
                    if (!cVar.i("optgroup")) {
                        cVar.k(this);
                        break;
                    } else {
                        cVar.E();
                        break;
                    }
                default:
                    cVar.k(this);
                    return false;
            }
        } else if (iC == 3) {
            cVar.v((k0) r0Var);
        } else if (iC == 4) {
            j0 j0Var = (j0) r0Var;
            if (j0Var.f13291d.R().equals(c0.A)) {
                cVar.k(this);
                return false;
            }
            cVar.t(j0Var);
        } else {
            if (iC != 6) {
                cVar.k(this);
                return false;
            }
            if (!cVar.i("html")) {
                cVar.k(this);
            }
        }
        return true;
    }
}
