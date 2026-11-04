package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum b2 extends k3 {
    public b2() {
        super("AttributeValue_unquoted", 39);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        bVar.a0();
        String strO = bVar.O(k3.f13308h1);
        if (strO.length() > 0) {
            t0Var.f13354j.f13335i.n(strO);
        }
        int iA0 = bVar.a0();
        char cK = bVar.K();
        if (cK == 0) {
            t0Var.m(this);
            t0Var.f13354j.h((char) 65533, iA0, bVar.a0());
            return;
        }
        if (cK != ' ') {
            if (cK != '\"' && cK != '`') {
                e1 e1Var = k3.f13293a;
                if (cK == 65535) {
                    t0Var.l(this);
                    t0Var.o(e1Var);
                    return;
                }
                if (cK != '\t' && cK != '\n' && cK != '\f' && cK != '\r') {
                    if (cK == '&') {
                        int[] iArrC = t0Var.c('>', true);
                        if (iArrC != null) {
                            t0Var.f13354j.i(iA0, bVar.a0(), iArrC);
                            return;
                        } else {
                            t0Var.f13354j.h('&', iA0, bVar.a0());
                            return;
                        }
                    }
                    if (cK != '\'') {
                        switch (cK) {
                            case '<':
                            case '=':
                                break;
                            case '>':
                                t0Var.k();
                                t0Var.o(e1Var);
                                break;
                            default:
                                t0Var.f13354j.h(cK, iA0, bVar.a0());
                                break;
                        }
                        return;
                    }
                }
            }
            t0Var.m(this);
            t0Var.f13354j.h(cK, iA0, bVar.a0());
            return;
        }
        t0Var.o(k3.K);
    }
}
