package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum v1 extends k3 {
    public v1() {
        super("AttributeName", 34);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        bVar.a0();
        String strO = bVar.O(k3.g1);
        p0 p0Var = t0Var.f13354j;
        p0Var.getClass();
        p0Var.f13334h.n(strO.replace((char) 0, (char) 65533));
        char cK = bVar.K();
        w1 w1Var = k3.M;
        if (cK == '\t' || cK == '\n' || cK == '\f' || cK == '\r' || cK == ' ') {
            t0Var.o(w1Var);
            return;
        }
        if (cK != '\"' && cK != '\'') {
            if (cK == '/') {
                t0Var.o(k3.T);
                return;
            }
            e1 e1Var = k3.f13293a;
            if (cK == 65535) {
                t0Var.l(this);
                t0Var.o(e1Var);
                return;
            }
            switch (cK) {
                case '=':
                    t0Var.o(k3.N);
                    return;
                case '>':
                    t0Var.k();
                    t0Var.o(e1Var);
                    return;
                case '?':
                    if (t0Var.f13351g == 2 && (t0Var.f13354j instanceof q0)) {
                        t0Var.o(w1Var);
                        return;
                    }
                    break;
            }
            t0Var.f13354j.f13334h.m(cK);
            return;
        }
        t0Var.m(this);
        t0Var.f13354j.f13334h.m(cK);
    }
}
