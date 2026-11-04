package u4;

import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* loaded from: classes.dex */
public final class y extends o {

    /* renamed from: b, reason: collision with root package name */
    public final y4.a f15411b;

    /* renamed from: c, reason: collision with root package name */
    public final x4.t f15412c;

    /* renamed from: d, reason: collision with root package name */
    public e0 f15413d;

    public y(y4.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("prototype == null");
        }
        this.f15411b = aVar;
        y4.b bVar = aVar.f18926c;
        int length = bVar.f2559b.length;
        StringBuilder sb2 = new StringBuilder(length + 1);
        char cCharAt = aVar.f18925b.f18963a.charAt(0);
        sb2.append(cCharAt == '[' ? Matrix.MATRIX_TYPE_RANDOM_LT : cCharAt);
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt2 = ((y4.c) bVar.d(i10)).f18963a.charAt(0);
            if (cCharAt2 == '[') {
                cCharAt2 = Matrix.MATRIX_TYPE_RANDOM_LT;
            }
            sb2.append(cCharAt2);
        }
        this.f15412c = new x4.t(sb2.toString());
        this.f15413d = bVar.f2559b.length == 0 ? null : new e0(bVar);
    }

    @Override // u4.p
    public final void a(f fVar) {
        z zVar = fVar.f15358e;
        fVar.f15359f.q(this.f15411b.f18925b);
        zVar.o(this.f15412c);
        e0 e0Var = this.f15413d;
        if (e0Var != null) {
            this.f15413d = (e0) fVar.f15355b.l(e0Var);
        }
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_PROTO_ID_ITEM;
    }

    @Override // u4.p
    public final int c() {
        return 12;
    }

    @Override // u4.p
    public final void d(f fVar, b5.b bVar) {
        z zVar = fVar.f15358e;
        x4.t tVar = this.f15412c;
        int iL = zVar.l(tVar);
        y4.a aVar = this.f15411b;
        int iN = fVar.f15359f.n(aVar.f18925b);
        e0 e0Var = this.f15413d;
        int iF = e0Var == null ? 0 : e0Var.f();
        if (bVar.d()) {
            StringBuilder sb2 = new StringBuilder();
            y4.c cVar = aVar.f18925b;
            sb2.append(cVar.a());
            sb2.append(" proto(");
            y4.b bVar2 = aVar.f18926c;
            int length = bVar2.f2559b.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 != 0) {
                    sb2.append(", ");
                }
                sb2.append(((y4.c) bVar2.d(i10)).a());
            }
            sb2.append(")");
            bVar.b(0, f() + ' ' + sb2.toString());
            bVar.b(4, "  shorty_idx:      " + qf.c.f0(iL) + " // " + tVar.e());
            bVar.b(4, "  return_type_idx: " + qf.c.f0(iN) + " // " + cVar.a());
            bVar.b(4, "  parameters_off:  ".concat(qf.c.f0(iF)));
        }
        bVar.j(iL);
        bVar.j(iN);
        bVar.j(iF);
    }
}
