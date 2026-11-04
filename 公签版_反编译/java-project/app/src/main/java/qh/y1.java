package qh;

import ha.qa;
import java.io.IOException;

/* loaded from: classes3.dex */
public enum y1 extends k3 {
    public y1() {
        super("AttributeValue_doubleQuoted", 37);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        bVar.a0();
        String strM = bVar.M(new qa(1, false));
        if (strM.length() > 0) {
            t0Var.f13354j.f13335i.n(strM);
        } else {
            t0Var.f13354j.f13336j = true;
        }
        int iA0 = bVar.a0();
        char cK = bVar.K();
        if (cK == 0) {
            t0Var.m(this);
            t0Var.f13354j.h((char) 65533, iA0, bVar.a0());
            return;
        }
        if (cK == '\"') {
            t0Var.o(k3.S);
            return;
        }
        if (cK != '&') {
            if (cK != 65535) {
                t0Var.f13354j.h(cK, iA0, bVar.a0());
                return;
            } else {
                t0Var.l(this);
                t0Var.o(k3.f13293a);
                return;
            }
        }
        int[] iArrC = t0Var.c('\"', true);
        if (iArrC != null) {
            t0Var.f13354j.i(iA0, bVar.a0(), iArrC);
        } else {
            t0Var.f13354j.h('&', iA0, bVar.a0());
        }
    }
}
