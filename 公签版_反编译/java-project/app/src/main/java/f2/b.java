package f2;

import ua.i8;

/* loaded from: classes.dex */
public final class b implements c1 {

    /* renamed from: a, reason: collision with root package name */
    public final c1 f5202a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5203b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f5204c;

    public b(c cVar, c1 c1Var) {
        this.f5204c = cVar;
        this.f5202a = c1Var;
    }

    @Override // f2.c1
    public final boolean isReady() {
        return !this.f5204c.e() && this.f5202a.isReady();
    }

    @Override // f2.c1
    public final void j() {
        this.f5202a.j();
    }

    @Override // f2.c1
    public final int m(long j10) {
        if (this.f5204c.e()) {
            return -3;
        }
        return this.f5202a.m(j10);
    }

    @Override // f2.c1
    public final int n(i8 i8Var, x1.g gVar, int i10) {
        c cVar = this.f5204c;
        if (cVar.e()) {
            return -3;
        }
        c1 c1Var = this.f5202a;
        if (this.f5203b) {
            gVar.f567b = 4;
            return -4;
        }
        long jP = cVar.p();
        int iN = c1Var.n(i8Var, gVar, i10);
        if (cVar.f5232e != -9223372036854775807L && iN != -3) {
            cVar.f5232e = -9223372036854775807L;
        }
        if (iN != -5) {
            long j10 = cVar.f5234g;
            if (j10 == Long.MIN_VALUE || ((iN != -4 || gVar.f18089g < j10) && !(iN == -3 && jP == Long.MIN_VALUE && !gVar.f18088f))) {
                return iN;
            }
            gVar.g();
            gVar.f567b = 4;
            this.f5203b = true;
            return -4;
        }
        long j11 = cVar.f5233f;
        long j12 = cVar.f5234g;
        r1.p pVar = (r1.p) i8Var.f15742c;
        pVar.getClass();
        int i11 = pVar.K;
        int i12 = pVar.J;
        if (i12 != 0 || i11 != 0) {
            if (j11 != 0) {
                i12 = 0;
            }
            if (j12 != Long.MIN_VALUE) {
                i11 = 0;
            }
            r1.o oVar = new r1.o(pVar);
            oVar.I = i12;
            oVar.J = i11;
            i8Var.f15742c = new r1.p(oVar);
        }
        return -5;
    }
}
