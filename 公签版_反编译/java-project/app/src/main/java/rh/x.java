package rh;

/* loaded from: classes3.dex */
public final class x extends c0 {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f13818d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x(p pVar, int i10) {
        super(pVar);
        this.f13818d = i10;
    }

    @Override // rh.p
    public final int a() {
        switch (this.f13818d) {
        }
        return this.f13777a.a() + 2;
    }

    @Override // rh.c0
    public final boolean g(ph.l lVar, ph.q qVar) {
        switch (this.f13818d) {
            case 0:
                if (lVar == qVar) {
                    return false;
                }
                for (ph.l lVarU = qVar.u(); lVarU != null; lVarU = lVarU.f12741a) {
                    if (h(lVar, lVarU)) {
                        return true;
                    }
                    if (lVarU == lVar) {
                        return false;
                    }
                }
                return false;
            case 1:
                return this.f13777a.d(lVar, qVar);
            default:
                return !h(lVar, qVar);
        }
    }

    public final String toString() {
        p pVar = this.f13777a;
        switch (this.f13818d) {
            case 0:
                return String.format("%s ", pVar);
            case 1:
                return String.format(":is(%s)", pVar);
            default:
                return String.format(":not(%s)", pVar);
        }
    }
}
