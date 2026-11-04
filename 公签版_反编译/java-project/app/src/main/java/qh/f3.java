package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum f3 extends k3 {
    public f3() {
        super("CdataSection", 67);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        String strJ;
        int iZ = bVar.Z("]]>");
        if (iZ != -1) {
            strJ = b.J(bVar.f13198c, bVar.f13196a, bVar.f13199d, iZ);
            bVar.f13199d += iZ;
        } else {
            int i10 = bVar.f13200e;
            int i11 = bVar.f13199d;
            if (i10 - i11 < 3) {
                strJ = bVar.P();
            } else {
                int i12 = i10 - 2;
                strJ = b.J(bVar.f13198c, bVar.f13196a, i11, i12 - i11);
                bVar.f13199d = i12;
            }
        }
        t0Var.f13350f.n(strJ);
        if (bVar.T("]]>") || bVar.R()) {
            t0Var.h(new i0(t0Var.f13350f.R()));
            t0Var.o(k3.f13293a);
        }
    }
}
