package j$.time.format;

/* loaded from: classes2.dex */
final class m implements g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8859a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f8860b;

    public /* synthetic */ m(Object obj, int i10) {
        this.f8859a = i10;
        this.f8860b = obj;
    }

    @Override // j$.time.format.g
    public final boolean j(q qVar, StringBuilder sb2) {
        switch (this.f8859a) {
            case 0:
                sb2.append((String) this.f8860b);
                break;
            default:
                j$.time.w wVar = (j$.time.w) qVar.f((b) this.f8860b);
                if (wVar != null) {
                    sb2.append(wVar.i());
                    break;
                }
                break;
        }
        return true;
    }

    public final String toString() {
        switch (this.f8859a) {
            case 0:
                return "'" + ((String) this.f8860b).replace("'", "''") + "'";
            default:
                return "ZoneRegionId()";
        }
    }
}
