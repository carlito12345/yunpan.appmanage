package a9;

import java.util.Vector;

/* loaded from: classes.dex */
public final class z implements j {

    /* renamed from: a, reason: collision with root package name */
    public final Vector f562a = new Vector();

    /* renamed from: b, reason: collision with root package name */
    public final m7.e f563b;

    public z(m7.e eVar) {
        this.f563b = eVar;
    }

    @Override // a9.j
    public final synchronized boolean a(byte[] bArr) {
        try {
            b(new i("from remote:", r.j(this.f563b, bArr, null)));
        } catch (n unused) {
            return false;
        }
        return true;
    }

    public final synchronized void b(i iVar) {
        if (!this.f562a.contains(iVar)) {
            byte[] bArrH = iVar.f504a.h();
            if (bArrH == null) {
                this.f562a.addElement(iVar);
                return;
            }
            for (int i10 = 0; i10 < this.f562a.size(); i10++) {
                byte[] bArrH2 = ((i) this.f562a.elementAt(i10)).f504a.h();
                if (bArrH2 != null && h0.a(bArrH, bArrH2)) {
                    if (iVar.f504a.f520d || !((i) this.f562a.elementAt(i10)).f504a.f520d) {
                        return;
                    } else {
                        c(bArrH2);
                    }
                }
            }
            this.f562a.addElement(iVar);
        }
    }

    public final synchronized boolean c(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        for (int i10 = 0; i10 < this.f562a.size(); i10++) {
            i iVar = (i) this.f562a.elementAt(i10);
            byte[] bArrH = iVar.f504a.h();
            if (bArrH != null && h0.a(bArr, bArrH)) {
                this.f562a.removeElement(iVar);
                iVar.f504a.d();
                iVar.f504a = null;
                return true;
            }
        }
        return false;
    }
}
