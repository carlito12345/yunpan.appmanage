package u4;

/* loaded from: classes.dex */
public abstract class s extends n {

    /* renamed from: c, reason: collision with root package name */
    public final x4.p f15400c;

    public s(x4.p pVar) {
        super(pVar.f18129a);
        this.f15400c = pVar;
    }

    @Override // u4.p
    public final int c() {
        return 8;
    }

    @Override // u4.p
    public final void d(f fVar, b5.b bVar) {
        z zVar = fVar.f15359f;
        x4.p pVar = this.f15400c;
        x4.r rVar = pVar.f18130b;
        int iM = zVar.m(this.f15377b);
        int iL = fVar.f15358e.l(rVar.f18133a);
        int iH = h(fVar);
        if (bVar.d()) {
            bVar.b(0, f() + ' ' + pVar.a());
            bVar.b(2, "  class_idx: ".concat(qf.c.e0(iM)));
            bVar.b(2, String.format("  %-10s %s", i().concat(":"), qf.c.e0(iH)));
            bVar.b(4, "  name_idx:  ".concat(qf.c.f0(iL)));
        }
        bVar.k(iM);
        bVar.k(iH);
        bVar.j(iL);
    }

    public abstract int h(f fVar);

    public abstract String i();
}
