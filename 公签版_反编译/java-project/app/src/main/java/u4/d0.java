package u4;

/* loaded from: classes.dex */
public final class d0 extends n {
    public d0(x4.u uVar) {
        super(uVar);
    }

    @Override // u4.p
    public final void a(f fVar) {
        fVar.f15358e.o(this.f15377b.e());
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_TYPE_ID_ITEM;
    }

    @Override // u4.p
    public final int c() {
        return 4;
    }

    @Override // u4.p
    public final void d(f fVar, b5.b bVar) {
        x4.t tVarE = this.f15377b.e();
        int iL = fVar.f15358e.l(tVarE);
        if (bVar.d()) {
            bVar.b(0, f() + ' ' + tVarE.a());
            bVar.b(4, "  descriptor_idx: ".concat(qf.c.f0(iL)));
        }
        bVar.j(iL);
    }
}
