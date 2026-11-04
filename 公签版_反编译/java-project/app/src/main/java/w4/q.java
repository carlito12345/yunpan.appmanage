package w4;

import x4.t;

/* loaded from: classes.dex */
public final class q extends c {

    /* renamed from: f, reason: collision with root package name */
    public final y4.e f17565f;

    public q(n nVar, p pVar, l lVar, y4.e eVar, x4.a aVar) {
        super(nVar, pVar, null, lVar, aVar);
        int i10 = nVar.f17475e;
        if (i10 != 6) {
            throw new IllegalArgumentException(da.b.a(i10, "opcode with invalid branchingness: "));
        }
        if (eVar == null) {
            throw new NullPointerException("catches == null");
        }
        this.f17565f = eVar;
    }

    @Override // w4.f
    public final void b(e eVar) {
        eVar.a(this);
    }

    @Override // w4.f
    public final y4.e c() {
        return this.f17565f;
    }

    @Override // w4.c, w4.f
    public final String d() {
        x4.a aVar = this.f17449e;
        String strA = aVar.a();
        if (aVar instanceof t) {
            strA = ((t) aVar).e();
        }
        StringBuilder sbB = d0.f.b(strA, " ");
        sbB.append(r.e(this.f17565f));
        return sbB.toString();
    }
}
