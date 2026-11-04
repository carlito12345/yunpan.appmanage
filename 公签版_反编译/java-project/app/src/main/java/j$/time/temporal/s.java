package j$.time.temporal;

import j$.time.x;

/* loaded from: classes2.dex */
final class s implements t {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8945a;

    public /* synthetic */ s(int i10) {
        this.f8945a = i10;
    }

    @Override // j$.time.temporal.t
    public final Object a(o oVar) {
        switch (this.f8945a) {
            case 0:
                return (j$.time.w) oVar.v(n.f8936a);
            case 1:
                return (j$.time.chrono.n) oVar.v(n.f8937b);
            case 2:
                return (u) oVar.v(n.f8938c);
            case 3:
                a aVar = a.OFFSET_SECONDS;
                if (oVar.f(aVar)) {
                    return x.L(oVar.k(aVar));
                }
                return null;
            case 4:
                j$.time.w wVar = (j$.time.w) oVar.v(n.f8936a);
                return wVar != null ? wVar : (j$.time.w) oVar.v(n.f8939d);
            case 5:
                a aVar2 = a.EPOCH_DAY;
                if (oVar.f(aVar2)) {
                    return j$.time.e.P(oVar.s(aVar2));
                }
                return null;
            default:
                a aVar3 = a.NANO_OF_DAY;
                if (oVar.f(aVar3)) {
                    return j$.time.i.K(oVar.s(aVar3));
                }
                return null;
        }
    }

    public final String toString() {
        switch (this.f8945a) {
            case 0:
                return "ZoneId";
            case 1:
                return "Chronology";
            case 2:
                return "Precision";
            case 3:
                return "ZoneOffset";
            case 4:
                return "Zone";
            case 5:
                return "LocalDate";
            default:
                return "LocalTime";
        }
    }
}
