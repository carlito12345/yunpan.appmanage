package u4;

/* loaded from: classes.dex */
public final class a extends x {
    public a() {
        super(4, -1);
    }

    @Override // u4.p
    public final void a(f fVar) {
        w wVar = fVar.f15354a;
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_ANNOTATIONS_DIRECTORY_ITEM;
    }

    @Override // u4.x
    public final int e(x xVar) {
        throw new UnsupportedOperationException("uninternable instance");
    }

    public final int hashCode() {
        return 0;
    }

    @Override // u4.x
    public final void i(w wVar, int i10) {
        j(16);
    }

    @Override // u4.x
    public final void k(f fVar, b5.b bVar) {
        if (bVar.d()) {
            bVar.b(0, g() + " annotations directory");
            bVar.b(4, "  class_annotations_off: ".concat(qf.c.f0(0)));
            bVar.b(4, "  fields_size:           ".concat(qf.c.f0(0)));
            bVar.b(4, "  methods_size:          ".concat(qf.c.f0(0)));
            bVar.b(4, "  parameters_size:       ".concat(qf.c.f0(0)));
        }
        bVar.j(0);
        bVar.j(0);
        bVar.j(0);
        bVar.j(0);
    }
}
