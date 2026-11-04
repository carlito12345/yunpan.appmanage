package qh;

/* loaded from: classes3.dex */
public enum f extends c0 {
    public f() {
        super("InColumnGroup", 11);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0087  */
    @Override // qh.c0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean d(r0 r0Var, c cVar) {
        char c7 = 0;
        if (c0.a(r0Var)) {
            cVar.t((j0) r0Var);
            return true;
        }
        int iC = d0.f.c(r0Var.f13338a);
        if (iC != 0) {
            v vVar = c0.f13257d;
            if (iC == 1) {
                o0 o0Var = (o0) r0Var;
                String strM = o0Var.m();
                strM.getClass();
                switch (strM.hashCode()) {
                    case -1321546630:
                        if (!strM.equals("template")) {
                            c7 = 65535;
                            break;
                        }
                        break;
                    case 98688:
                        if (strM.equals("col")) {
                            c7 = 1;
                            break;
                        }
                        break;
                    case 3213227:
                        if (strM.equals("html")) {
                            c7 = 2;
                            break;
                        }
                        break;
                }
                switch (c7) {
                    case 0:
                        cVar.getClass();
                        vVar.d(r0Var, cVar);
                        break;
                    case 1:
                        cVar.x(o0Var);
                        break;
                    case 2:
                        y yVar = c0.f13260g;
                        cVar.getClass();
                        return yVar.d(r0Var, cVar);
                    default:
                        return f(r0Var, cVar);
                }
            } else if (iC == 2) {
                String strM2 = ((n0) r0Var).m();
                strM2.getClass();
                if (strM2.equals("template")) {
                    cVar.getClass();
                    vVar.d(r0Var, cVar);
                } else {
                    if (!strM2.equals("colgroup")) {
                        return f(r0Var, cVar);
                    }
                    if (!cVar.i(strM2)) {
                        cVar.k(this);
                        return false;
                    }
                    cVar.E();
                    cVar.l = c0.f13262i;
                }
            } else {
                if (iC != 3) {
                    if (iC != 6) {
                        return f(r0Var, cVar);
                    }
                    if (cVar.i("html")) {
                        return true;
                    }
                    return f(r0Var, cVar);
                }
                cVar.v((k0) r0Var);
            }
        } else {
            cVar.k(this);
        }
        return true;
    }

    public final boolean f(r0 r0Var, c cVar) {
        if (!cVar.i("colgroup")) {
            cVar.k(this);
            return false;
        }
        cVar.E();
        cVar.l = c0.f13262i;
        cVar.H(r0Var);
        return true;
    }
}
