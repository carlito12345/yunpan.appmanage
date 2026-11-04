package u4;

/* loaded from: classes.dex */
public final class e0 extends x {

    /* renamed from: e, reason: collision with root package name */
    public final y4.e f15353e;

    /* JADX WARN: Multi-variable type inference failed */
    public e0(y4.e eVar) {
        super(4, (((b5.c) eVar).f2559b.length * 2) + 4);
        this.f15353e = eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // u4.p
    public final void a(f fVar) {
        z zVar = fVar.f15359f;
        y4.e eVar = this.f15353e;
        int length = ((b5.c) eVar).f2559b.length;
        for (int i10 = 0; i10 < length; i10++) {
            zVar.q(eVar.b(i10));
        }
    }

    @Override // u4.p
    public final q b() {
        return q.TYPE_TYPE_LIST;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // u4.x
    public final int e(x xVar) {
        y4.e eVar = ((e0) xVar).f15353e;
        y4.b bVar = y4.b.f18928c;
        y4.e eVar2 = this.f15353e;
        int length = ((b5.c) eVar2).f2559b.length;
        int length2 = ((b5.c) eVar).f2559b.length;
        int iMin = Math.min(length, length2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iCompareTo = eVar2.b(i10).f18963a.compareTo(eVar.b(i10).f18963a);
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        if (length == length2) {
            return 0;
        }
        return length < length2 ? -1 : 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        y4.b bVar = y4.b.f18928c;
        y4.e eVar = this.f15353e;
        int length = ((b5.c) eVar).f2559b.length;
        int iHashCode = 0;
        for (int i10 = 0; i10 < length; i10++) {
            iHashCode = (iHashCode * 31) + eVar.b(i10).f18963a.hashCode();
        }
        return iHashCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // u4.x
    public final void k(f fVar, b5.b bVar) {
        z zVar = fVar.f15359f;
        y4.e eVar = this.f15353e;
        int length = ((b5.c) eVar).f2559b.length;
        if (bVar.d()) {
            bVar.b(0, g() + " type_list");
            bVar.b(4, "  size: ".concat(qf.c.f0(length)));
            for (int i10 = 0; i10 < length; i10++) {
                y4.c cVarB = eVar.b(i10);
                bVar.b(2, "  " + qf.c.e0(zVar.n(cVarB)) + " // " + cVarB.a());
            }
        }
        bVar.j(length);
        for (int i11 = 0; i11 < length; i11++) {
            bVar.k(zVar.n(eVar.b(i11)));
        }
    }
}
