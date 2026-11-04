package f2;

/* loaded from: classes.dex */
public final class c implements a0, z {

    /* renamed from: a, reason: collision with root package name */
    public final a0 f5228a;

    /* renamed from: b, reason: collision with root package name */
    public z f5229b;

    /* renamed from: c, reason: collision with root package name */
    public b[] f5230c = new b[0];

    /* renamed from: d, reason: collision with root package name */
    public long f5231d;

    /* renamed from: e, reason: collision with root package name */
    public long f5232e;

    /* renamed from: f, reason: collision with root package name */
    public long f5233f;

    /* renamed from: g, reason: collision with root package name */
    public long f5234g;

    /* renamed from: h, reason: collision with root package name */
    public f f5235h;

    public c(a0 a0Var, boolean z, long j10, long j11) {
        this.f5228a = a0Var;
        this.f5231d = z ? j10 : -9223372036854775807L;
        this.f5232e = -9223372036854775807L;
        this.f5233f = j10;
        this.f5234g = j11;
    }

    @Override // f2.d1
    public final boolean a(y1.j0 j0Var) {
        return this.f5228a.a(j0Var);
    }

    @Override // f2.z
    public final void b(d1 d1Var) {
        z zVar = this.f5229b;
        zVar.getClass();
        zVar.b(this);
    }

    @Override // f2.d1
    public final long c() {
        long jC = this.f5228a.c();
        if (jC != Long.MIN_VALUE) {
            long j10 = this.f5234g;
            if (j10 == Long.MIN_VALUE || jC < j10) {
                return jC;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // f2.z
    public final void d(a0 a0Var) {
        if (this.f5235h != null) {
            return;
        }
        z zVar = this.f5229b;
        zVar.getClass();
        zVar.d(this);
    }

    public final boolean e() {
        return this.f5231d != -9223372036854775807L;
    }

    @Override // f2.a0
    public final void g() throws f {
        f fVar = this.f5235h;
        if (fVar != null) {
            throw fVar;
        }
        this.f5228a.g();
    }

    @Override // f2.a0
    public final long h(long j10) {
        this.f5231d = -9223372036854775807L;
        for (b bVar : this.f5230c) {
            if (bVar != null) {
                bVar.f5203b = false;
            }
        }
        long jH = this.f5228a.h(j10);
        long j11 = this.f5233f;
        long j12 = this.f5234g;
        long jMax = Math.max(jH, j11);
        return j12 != Long.MIN_VALUE ? Math.min(jMax, j12) : jMax;
    }

    @Override // f2.a0
    public final void i(long j10) {
        this.f5228a.i(j10);
    }

    @Override // f2.d1
    public final boolean j() {
        return this.f5228a.j();
    }

    @Override // f2.a0
    public final long k(long j10, y1.e1 e1Var) {
        long j11 = this.f5233f;
        if (j10 == j11) {
            return j11;
        }
        long jH = u1.f0.h(e1Var.f18647a, 0L, j10 - j11);
        long j12 = this.f5234g;
        long jH2 = u1.f0.h(e1Var.f18648b, 0L, j12 == Long.MIN_VALUE ? Long.MAX_VALUE : j12 - j10);
        if (jH != e1Var.f18647a || jH2 != e1Var.f18648b) {
            e1Var = new y1.e1(jH, jH2);
        }
        return this.f5228a.k(j10, e1Var);
    }

    @Override // f2.a0
    public final void l(z zVar, long j10) {
        this.f5229b = zVar;
        this.f5228a.l(this, j10);
    }

    @Override // f2.a0
    public final long m() {
        if (e()) {
            long j10 = this.f5231d;
            this.f5231d = -9223372036854775807L;
            this.f5232e = j10;
            long jM = m();
            return jM != -9223372036854775807L ? jM : j10;
        }
        long jM2 = this.f5228a.m();
        if (jM2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j11 = this.f5233f;
        long j12 = this.f5234g;
        long jMax = Math.max(jM2, j11);
        if (j12 != Long.MIN_VALUE) {
            jMax = Math.min(jMax, j12);
        }
        if (jMax == this.f5232e) {
            return -9223372036854775807L;
        }
        this.f5232e = jMax;
        return jMax;
    }

    @Override // f2.a0
    public final j1 n() {
        return this.f5228a.n();
    }

    @Override // f2.a0
    public final long o(h2.p[] pVarArr, boolean[] zArr, c1[] c1VarArr, boolean[] zArr2, long j10) {
        long j11;
        this.f5230c = new b[c1VarArr.length];
        c1[] c1VarArr2 = new c1[c1VarArr.length];
        int i10 = 0;
        while (true) {
            c1 c1Var = null;
            if (i10 >= c1VarArr.length) {
                break;
            }
            b[] bVarArr = this.f5230c;
            b bVar = (b) c1VarArr[i10];
            bVarArr[i10] = bVar;
            if (bVar != null) {
                c1Var = bVar.f5202a;
            }
            c1VarArr2[i10] = c1Var;
            i10++;
        }
        long jO = this.f5228a.o(pVarArr, zArr, c1VarArr2, zArr2, j10);
        long j12 = this.f5234g;
        long jMax = Math.max(jO, j10);
        if (j12 != Long.MIN_VALUE) {
            jMax = Math.min(jMax, j12);
        }
        if (e()) {
            if (jO >= j10) {
                if (jO != 0) {
                    for (h2.p pVar : pVarArr) {
                        if (pVar != null) {
                            r1.p pVarH = pVar.h();
                            if (!r1.e0.a(pVarH.f13523o, pVarH.f13520k)) {
                            }
                        }
                    }
                }
                j11 = -9223372036854775807L;
            }
            j11 = jMax;
            break;
        } else {
            j11 = -9223372036854775807L;
        }
        this.f5231d = j11;
        for (int i11 = 0; i11 < c1VarArr.length; i11++) {
            c1 c1Var2 = c1VarArr2[i11];
            if (c1Var2 == null) {
                this.f5230c[i11] = null;
            } else {
                b[] bVarArr2 = this.f5230c;
                b bVar2 = bVarArr2[i11];
                if (bVar2 == null || bVar2.f5202a != c1Var2) {
                    bVarArr2[i11] = new b(this, c1Var2);
                }
            }
            c1VarArr[i11] = this.f5230c[i11];
        }
        return jMax;
    }

    @Override // f2.d1
    public final long p() {
        long jP = this.f5228a.p();
        if (jP != Long.MIN_VALUE) {
            long j10 = this.f5234g;
            if (j10 == Long.MIN_VALUE || jP < j10) {
                return jP;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // f2.d1
    public final void r(long j10) {
        this.f5228a.r(j10);
    }
}
