package qh;

/* loaded from: classes3.dex */
public enum n extends c0 {
    public n() {
        super("Initial", 0);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (c0.a(r0Var)) {
            return true;
        }
        if (r0Var.b()) {
            cVar.v((k0) r0Var);
        } else {
            boolean zC = r0Var.c();
            t tVar = c0.f13255b;
            if (!zC) {
                cVar.f13236d.l = 2;
                cVar.l = tVar;
                return cVar.H(r0Var);
            }
            l0 l0Var = (l0) r0Var;
            d0 d0Var = cVar.f13240h;
            String strR = l0Var.f13325d.R();
            d0Var.getClass();
            String strTrim = strR.trim();
            if (!d0Var.f13277a) {
                strTrim = oh.a.c(strTrim);
            }
            ph.i iVar = new ph.i(strTrim, l0Var.f13327f.R(), l0Var.f13328g.R());
            String str = l0Var.f13326e;
            if (str != null) {
                boolean z = iVar.f12739d instanceof ph.c;
                iVar.B();
                ph.h hVarT = iVar.t();
                d0 d0Var2 = hVarT != null ? hVarT.f12716k.f13281c : d0.f13275c;
                d0Var2.getClass();
                String strC = d0Var2.f13278b ? "pubSysKey" : oh.a.c("pubSysKey");
                ph.c cVarC = iVar.c();
                int iH = cVarC.h(strC);
                if (iH != -1) {
                    cVarC.f12708c[iH] = str;
                    if (!cVarC.f12707b[iH].equals(strC)) {
                        cVarC.f12707b[iH] = strC;
                    }
                } else {
                    cVarC.a(strC, str);
                }
            }
            cVar.f13236d.A(iVar);
            if (l0Var.f13329h || !iVar.b("name").equals("html") || iVar.b("publicId").equalsIgnoreCase("HTML")) {
                cVar.f13236d.l = 2;
            }
            cVar.l = tVar;
        }
        return true;
    }
}
