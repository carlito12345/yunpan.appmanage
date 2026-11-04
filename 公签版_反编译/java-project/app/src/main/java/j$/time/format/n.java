package j$.time.format;

/* loaded from: classes2.dex */
final class n implements g {

    /* renamed from: a, reason: collision with root package name */
    private final j$.time.temporal.a f8861a;

    /* renamed from: b, reason: collision with root package name */
    private final w f8862b;

    /* renamed from: c, reason: collision with root package name */
    private final c f8863c;

    /* renamed from: d, reason: collision with root package name */
    private volatile j f8864d;

    n(j$.time.temporal.a aVar, w wVar, c cVar) {
        this.f8861a = aVar;
        this.f8862b = wVar;
        this.f8863c = cVar;
    }

    @Override // j$.time.format.g
    public final boolean j(q qVar, StringBuilder sb2) {
        String strA;
        Long lE = qVar.e(this.f8861a);
        if (lE == null) {
            return false;
        }
        j$.time.chrono.n nVar = (j$.time.chrono.n) qVar.d().v(j$.time.temporal.n.e());
        if (nVar == null || nVar == j$.time.chrono.u.f8817d) {
            c cVar = this.f8863c;
            long jLongValue = lE.longValue();
            w wVar = this.f8862b;
            qVar.c();
            strA = cVar.f8841a.a(jLongValue, wVar);
        } else {
            c cVar2 = this.f8863c;
            long jLongValue2 = lE.longValue();
            w wVar2 = this.f8862b;
            qVar.c();
            strA = cVar2.f8841a.a(jLongValue2, wVar2);
        }
        if (strA != null) {
            sb2.append(strA);
            return true;
        }
        if (this.f8864d == null) {
            this.f8864d = new j(this.f8861a, 1, 19, v.NORMAL);
        }
        return this.f8864d.j(qVar, sb2);
    }

    public final String toString() {
        w wVar = w.FULL;
        j$.time.temporal.a aVar = this.f8861a;
        w wVar2 = this.f8862b;
        if (wVar2 == wVar) {
            return "Text(" + aVar + ")";
        }
        return "Text(" + aVar + "," + wVar2 + ")";
    }
}
