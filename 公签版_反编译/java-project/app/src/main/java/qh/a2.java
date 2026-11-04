package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum a2 extends k3 {
    public a2() {
        super("Rcdata", 2);
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
        if (cQ == '&') {
            t0Var.a(k3.f13299d);
            return;
        }
        if (cQ == '<') {
            t0Var.a(k3.f13313k);
            return;
        }
        if (cQ == 65535) {
            t0Var.h(new m0());
            return;
        }
        bVar.A();
        int i10 = bVar.f13199d;
        int i11 = bVar.f13200e;
        char[] cArr = bVar.f13198c;
        int i12 = i10;
        while (i12 < i11) {
            char c7 = cArr[i12];
            if (c7 == '&' || c7 == '<' || c7 == 0) {
                break;
            } else {
                i12++;
            }
        }
        bVar.f13199d = i12;
        t0Var.g(i12 > i10 ? b.J(bVar.f13198c, bVar.f13196a, i10, i12 - i10) : "");
    }
}
