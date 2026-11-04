package s4;

/* loaded from: classes.dex */
public abstract class l extends h {
    public l(j jVar, w4.p pVar, w4.l lVar) {
        super(jVar, pVar, lVar);
    }

    @Override // s4.h
    public final int b() {
        return this.f14307b.f14314d.i();
    }

    @Override // s4.h
    public final String g() {
        j jVar = this.f14307b;
        d.b bVar = jVar.f14314d;
        bVar.getClass();
        String strA = jVar.a();
        String strO = bVar.O(this);
        String strP = bVar.P(this);
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(strA);
        if (strO.length() != 0) {
            sb2.append(' ');
            sb2.append(strO);
        }
        if (strP.length() != 0) {
            sb2.append(" // ");
            sb2.append(strP);
        }
        return sb2.toString();
    }

    @Override // s4.h
    public final h j(int i10) {
        return k(this.f14309d.j(i10));
    }

    @Override // s4.h
    public final void l(b5.b bVar) {
        this.f14307b.f14314d.z0(bVar, this);
    }
}
