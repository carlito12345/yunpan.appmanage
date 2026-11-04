package rh;

/* loaded from: classes3.dex */
public abstract class p {
    public int a() {
        return 5;
    }

    public abstract boolean b(ph.l lVar, ph.l lVar2);

    public boolean c(ph.l lVar, ph.p pVar) {
        return false;
    }

    public final boolean d(ph.l lVar, ph.q qVar) {
        if (qVar instanceof ph.l) {
            return b(lVar, (ph.l) qVar);
        }
        if ((qVar instanceof ph.p) && f()) {
            return c(lVar, (ph.p) qVar);
        }
        return false;
    }

    public boolean f() {
        return false;
    }

    public void e() {
    }
}
