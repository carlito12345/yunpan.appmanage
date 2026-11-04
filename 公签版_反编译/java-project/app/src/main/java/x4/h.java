package x4;

/* loaded from: classes.dex */
public final class h extends p {
    public h(u uVar, r rVar) {
        super(uVar, rVar);
    }

    @Override // x4.a
    public final int c(a aVar) {
        p pVar = (p) aVar;
        int iCompareTo = this.f18129a.compareTo(pVar.f18129a);
        r rVar = this.f18130b;
        if (iCompareTo == 0) {
            iCompareTo = rVar.f18133a.compareTo(pVar.f18130b.f18133a);
        }
        return iCompareTo != 0 ? iCompareTo : rVar.f18134b.compareTo(((h) aVar).f18130b.f18134b);
    }

    @Override // x4.a
    public final String d() {
        return "field";
    }

    public final y4.c e() {
        return y4.c.e(this.f18130b.f18134b.f18136a);
    }
}
