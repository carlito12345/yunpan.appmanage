package rh;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class z extends c0 {

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f13821d;

    /* renamed from: e, reason: collision with root package name */
    public int f13822e;

    public z(p pVar) {
        super(pVar);
        ArrayList arrayList = new ArrayList();
        this.f13821d = arrayList;
        this.f13822e = 2;
        arrayList.add(pVar);
        this.f13822e = pVar.a() + this.f13822e;
    }

    @Override // rh.p
    public final int a() {
        return this.f13822e;
    }

    @Override // rh.c0, rh.p
    public final void e() {
        Iterator it = this.f13821d.iterator();
        while (it.hasNext()) {
            ((p) it.next()).e();
        }
        super.e();
    }

    @Override // rh.c0
    public final boolean g(ph.l lVar, ph.q qVar) {
        if (qVar == lVar) {
            return false;
        }
        ArrayList arrayList = this.f13821d;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (qVar == null || !((p) arrayList.get(size)).d(lVar, qVar)) {
                return false;
            }
            qVar = qVar.u();
        }
        return true;
    }

    public final String toString() {
        return oh.f.j(" > ", this.f13821d);
    }
}
