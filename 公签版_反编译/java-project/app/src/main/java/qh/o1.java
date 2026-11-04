package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum o1 extends k3 {
    public o1() {
        super("ScriptDataDoubleEscaped", 28);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        char cQ = bVar.Q();
        if (cQ == 0) {
            t0Var.m(this);
            bVar.r();
            t0Var.f((char) 65533);
            return;
        }
        if (cQ == '-') {
            t0Var.f(cQ);
            t0Var.a(k3.F);
            return;
        }
        if (cQ == '<') {
            t0Var.f(cQ);
            t0Var.a(k3.H);
            return;
        }
        if (cQ == 65535) {
            t0Var.l(this);
            t0Var.o(k3.f13293a);
            return;
        }
        char[] cArr = {'-', '<', 0};
        bVar.A();
        int i10 = bVar.f13199d;
        int i11 = bVar.f13200e;
        char[] cArr2 = bVar.f13198c;
        int i12 = i10;
        loop0: while (i12 < i11) {
            char c7 = cArr2[i12];
            for (int i13 = 0; i13 < 3; i13++) {
                if (c7 == cArr[i13]) {
                    break loop0;
                }
            }
            i12++;
        }
        bVar.f13199d = i12;
        t0Var.g(i12 > i10 ? b.J(bVar.f13198c, bVar.f13196a, i10, i12 - i10) : "");
    }
}
