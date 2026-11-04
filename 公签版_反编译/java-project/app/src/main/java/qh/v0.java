package qh;

import java.io.IOException;
import java.util.Locale;

/* loaded from: classes3.dex */
public enum v0 extends k3 {
    public v0() {
        super("RcdataLessthanSign", 10);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0078  */
    @Override // qh.k3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(t0 t0Var, b bVar) throws IOException {
        if (bVar.V('/')) {
            t0Var.e();
            t0Var.a(k3.l);
            return;
        }
        if (bVar.f13204i && bVar.X() && t0Var.f13358o != null) {
            if (t0Var.f13359p == null) {
                t0Var.f13359p = "</" + t0Var.f13358o;
            }
            String str = t0Var.f13359p;
            if (str.equals(bVar.l)) {
                int i10 = bVar.f13207m;
                if (i10 == -1) {
                    z = false;
                } else if (i10 < bVar.f13199d) {
                }
                if (!z) {
                }
            } else {
                bVar.l = str;
                Locale locale = Locale.ENGLISH;
                int iZ = bVar.Z(str.toLowerCase(locale));
                if (iZ > -1) {
                    bVar.f13207m = bVar.f13199d + iZ;
                } else {
                    int iZ2 = bVar.Z(str.toUpperCase(locale));
                    z = iZ2 > -1;
                    bVar.f13207m = z ? bVar.f13199d + iZ2 : -1;
                }
                if (!z) {
                    p0 p0VarD = t0Var.d(false);
                    p0VarD.k(t0Var.f13358o);
                    t0Var.f13354j = p0VarD;
                    t0Var.k();
                    t0Var.o(k3.f13306h);
                    return;
                }
            }
        }
        t0Var.f('<');
        t0Var.o(k3.f13297c);
    }
}
