package y1;

import ua.i8;

/* loaded from: classes.dex */
public final /* synthetic */ class s implements u1.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18804a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r1.b1 f18805b;

    public /* synthetic */ s(r1.b1 b1Var) {
        this.f18805b = b1Var;
    }

    @Override // u1.j
    /* renamed from: a */
    public final void mo12a(Object obj) {
        switch (this.f18804a) {
            case 0:
                ((r1.k0) obj).b(this.f18805b);
                break;
            default:
                z1.h hVar = (z1.h) ((z1.b) obj);
                i8 i8Var = hVar.f19379p;
                r1.b1 b1Var = this.f18805b;
                if (i8Var != null) {
                    r1.p pVar = (r1.p) i8Var.f15742c;
                    if (pVar.f13530w == -1) {
                        r1.o oVar = new r1.o(pVar);
                        oVar.f13498u = b1Var.f13419a;
                        oVar.f13499v = b1Var.f13420b;
                        hVar.f19379p = new i8(new r1.p(oVar), 13, (String) i8Var.f15741b);
                    }
                }
                int i10 = b1Var.f13419a;
                break;
        }
    }

    public /* synthetic */ s(z1.a aVar, r1.b1 b1Var) {
        this.f18805b = b1Var;
    }
}
