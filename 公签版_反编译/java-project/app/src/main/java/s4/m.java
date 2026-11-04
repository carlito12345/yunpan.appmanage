package s4;

/* loaded from: classes.dex */
public final class m extends h {

    /* renamed from: e, reason: collision with root package name */
    public u[] f14399e;

    public m(w4.p pVar, w4.l lVar) {
        super(k.f14320b, pVar, lVar);
        if (lVar.f2559b.length == 0) {
            throw new IllegalArgumentException("registers.size() == 0");
        }
        this.f14399e = null;
    }

    @Override // s4.h
    public final String a() {
        return null;
    }

    @Override // s4.h
    public final int b() {
        m();
        int iB = 0;
        for (u uVar : this.f14399e) {
            iB += uVar.b();
        }
        return iB;
    }

    @Override // s4.h
    public final String g() {
        w4.l lVar = this.f14309d;
        int length = lVar.f2559b.length;
        StringBuilder sb2 = new StringBuilder(100);
        int iC = 0;
        for (int i10 = 0; i10 < length; i10++) {
            w4.k kVar = (w4.k) lVar.d(i10);
            y4.c cVar = kVar.f17467b;
            cVar.getClass();
            u uVarH = h.h(w4.p.f17564a, w4.k.d(iC, cVar), kVar);
            if (i10 != 0) {
                sb2.append('\n');
            }
            sb2.append(uVarH.g());
            iC += kVar.c();
        }
        return sb2.toString();
    }

    @Override // s4.h
    public final h i(j jVar) {
        throw new RuntimeException("unsupported");
    }

    @Override // s4.h
    public final h j(int i10) {
        return k(this.f14309d.j(i10));
    }

    @Override // s4.h
    public final h k(w4.l lVar) {
        return new m(this.f14308c, lVar);
    }

    @Override // s4.h
    public final void l(b5.b bVar) {
        m();
        for (u uVar : this.f14399e) {
            uVar.l(bVar);
        }
    }

    public final void m() {
        if (this.f14399e != null) {
            return;
        }
        w4.l lVar = this.f14309d;
        int length = lVar.f2559b.length;
        this.f14399e = new u[length];
        int iC = 0;
        for (int i10 = 0; i10 < length; i10++) {
            w4.k kVar = (w4.k) lVar.d(i10);
            u[] uVarArr = this.f14399e;
            y4.c cVar = kVar.f17467b;
            cVar.getClass();
            uVarArr[i10] = h.h(w4.p.f17564a, w4.k.d(iC, cVar), kVar);
            iC += kVar.c();
        }
    }
}
