package t4;

import s4.h;
import s4.l;
import s4.v;

/* loaded from: classes.dex */
public final class b extends d.b {

    /* renamed from: d, reason: collision with root package name */
    public static final b f14776d = new b();

    @Override // d.b
    public final String O(l lVar) {
        return d.b.e(lVar);
    }

    @Override // d.b
    public final String P(l lVar) {
        return d.b.c(lVar);
    }

    @Override // d.b
    public final boolean Q(h hVar) {
        return (hVar instanceof v) && hVar.f14309d.f2559b.length == 0;
    }

    @Override // d.b
    public final int i() {
        return 3;
    }

    @Override // d.b
    public final void z0(b5.b bVar, l lVar) {
        int iM = ((v) lVar).m();
        bVar.k(d.b.Y(lVar, 0));
        bVar.k((short) iM);
        bVar.k((short) (iM >> 16));
    }
}
