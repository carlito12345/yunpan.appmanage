package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum p1 extends k3 {
    public p1() {
        super("CharacterReferenceInData", 1);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        e1 e1Var = k3.f13293a;
        int[] iArrC = t0Var.c(null, false);
        if (iArrC == null) {
            t0Var.f('&');
        } else {
            t0Var.g(new String(iArrC, 0, iArrC.length));
        }
        t0Var.o(e1Var);
    }
}
