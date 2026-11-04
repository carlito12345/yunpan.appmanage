package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum l2 extends k3 {
    public l2() {
        super("CharacterReferenceInRcdata", 3);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        a2 a2Var = k3.f13297c;
        int[] iArrC = t0Var.c(null, false);
        if (iArrC == null) {
            t0Var.f('&');
        } else {
            t0Var.g(new String(iArrC, 0, iArrC.length));
        }
        t0Var.o(a2Var);
    }
}
