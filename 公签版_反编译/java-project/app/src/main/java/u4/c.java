package u4;

/* loaded from: classes.dex */
public final class c extends o {

    /* renamed from: b, reason: collision with root package name */
    public final x4.u f15336b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15337c;

    /* renamed from: d, reason: collision with root package name */
    public final x4.u f15338d;

    /* renamed from: e, reason: collision with root package name */
    public e0 f15339e;

    /* renamed from: f, reason: collision with root package name */
    public final x4.t f15340f;

    /* renamed from: g, reason: collision with root package name */
    public final b f15341g;

    /* renamed from: h, reason: collision with root package name */
    public g f15342h;

    /* renamed from: i, reason: collision with root package name */
    public final a f15343i;

    /* JADX WARN: Multi-variable type inference failed */
    public c(x4.u uVar, int i10, x4.u uVar2, y4.e eVar, x4.t tVar) {
        if (uVar == null) {
            throw new NullPointerException("thisClass == null");
        }
        if (eVar == 0) {
            throw new NullPointerException("interfaces == null");
        }
        this.f15336b = uVar;
        this.f15337c = i10;
        this.f15338d = uVar2;
        this.f15339e = ((b5.c) eVar).f2559b.length == 0 ? null : new e0(eVar);
        this.f15340f = tVar;
        this.f15341g = new b(uVar);
        this.f15342h = null;
        this.f15343i = new a();
    }

    @Override // u4.p
    public final void a(f fVar) {
        z zVar = fVar.f15359f;
        zVar.p(this.f15336b);
        b bVar = this.f15341g;
        if (!bVar.p()) {
            fVar.f15364k.k(bVar);
            x4.c cVarO = bVar.o();
            if (cVarO != null) {
                this.f15342h = (g) fVar.l.l(new g(cVarO));
            }
        }
        x4.u uVar = this.f15338d;
        if (uVar != null) {
            zVar.p(uVar);
        }
        e0 e0Var = this.f15339e;
        if (e0Var != null) {
            this.f15339e = (e0) fVar.f15355b.l(e0Var);
        }
        x4.t tVar = this.f15340f;
        if (tVar != null) {
            fVar.f15358e.o(tVar);
        }
        this.f15343i.getClass();
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_CLASS_DEF_ITEM;
    }

    @Override // u4.p
    public final int c() {
        return 32;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // u4.p
    public final void d(f fVar, b5.b bVar) {
        boolean zD = bVar.d();
        z zVar = fVar.f15359f;
        x4.u uVar = this.f15336b;
        int iM = zVar.m(uVar);
        x4.u uVar2 = this.f15338d;
        int iM2 = uVar2 == null ? -1 : zVar.m(uVar2);
        e0 e0Var = this.f15339e;
        int iF = e0Var == null ? 0 : e0Var.f();
        this.f15343i.getClass();
        x4.t tVar = this.f15340f;
        int iL = tVar != null ? fVar.f15358e.l(tVar) : -1;
        b bVar2 = this.f15341g;
        int iF2 = bVar2.p() ? 0 : bVar2.f();
        g gVar = this.f15342h;
        int iF3 = gVar == null ? 0 : gVar.f();
        int i10 = this.f15337c;
        if (zD) {
            bVar.b(0, f() + ' ' + uVar.f18142a.a());
            bVar.b(4, "  class_idx:           ".concat(qf.c.f0(iM)));
            StringBuilder sb2 = new StringBuilder("  access_flags:        ");
            sb2.append(android.support.v4.media.session.b.r(i10, 30257, 1));
            bVar.b(4, sb2.toString());
            StringBuilder sb3 = new StringBuilder("  superclass_idx:      ");
            sb3.append(qf.c.f0(iM2));
            sb3.append(" // ");
            sb3.append(uVar2 == null ? "<none>" : uVar2.f18142a.a());
            bVar.b(4, sb3.toString());
            bVar.b(4, "  interfaces_off:      ".concat(qf.c.f0(iF)));
            if (iF != 0) {
                y4.e eVar = this.f15339e.f15353e;
                int length = ((b5.c) eVar).f2559b.length;
                for (int i11 = 0; i11 < length; i11++) {
                    bVar.b(0, "    " + eVar.b(i11).a());
                }
            }
            StringBuilder sb4 = new StringBuilder("  source_file_idx:     ");
            sb4.append(qf.c.f0(iL));
            sb4.append(" // ");
            sb4.append(tVar != null ? tVar.a() : "<none>");
            bVar.b(4, sb4.toString());
            bVar.b(4, "  annotations_off:     ".concat(qf.c.f0(0)));
            bVar.b(4, "  class_data_off:      ".concat(qf.c.f0(iF2)));
            bVar.b(4, "  static_values_off:   ".concat(qf.c.f0(iF3)));
        }
        bVar.j(iM);
        bVar.j(i10);
        bVar.j(iM2);
        bVar.j(iF);
        bVar.j(iL);
        bVar.j(0);
        bVar.j(iF2);
        bVar.j(iF3);
    }
}
