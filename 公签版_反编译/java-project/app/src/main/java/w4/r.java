package w4;

/* loaded from: classes.dex */
public final class r extends f {

    /* renamed from: e, reason: collision with root package name */
    public final y4.e f17566e;

    public r(n nVar, p pVar, l lVar, y4.e eVar) {
        super(nVar, pVar, null, lVar);
        int i10 = nVar.f17475e;
        if (i10 != 6) {
            throw new IllegalArgumentException(da.b.a(i10, "opcode with invalid branchingness: "));
        }
        if (eVar == null) {
            throw new NullPointerException("catches == null");
        }
        this.f17566e = eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String e(y4.e eVar) {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append("catch");
        int length = ((b5.c) eVar).f2559b.length;
        for (int i10 = 0; i10 < length; i10++) {
            sb2.append(" ");
            sb2.append(eVar.b(i10).a());
        }
        return sb2.toString();
    }

    @Override // w4.f
    public final void b(e eVar) {
        eVar.i(this);
    }

    @Override // w4.f
    public final y4.e c() {
        return this.f17566e;
    }

    @Override // w4.f
    public final String d() {
        return e(this.f17566e);
    }
}
