package s4;

/* loaded from: classes.dex */
public final class c extends b5.c implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public static final c f14298c = new c(0);

    public c(int i10) {
        super(i10);
    }

    @Override // b5.c, b5.h
    public final String a() {
        return h("", "");
    }

    @Override // java.lang.Comparable
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final int compareTo(c cVar) {
        if (this == cVar) {
            return 0;
        }
        int length = this.f2559b.length;
        int length2 = cVar.f2559b.length;
        int iMin = Math.min(length, length2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iCompareTo = ((b) d(i10)).compareTo((b) cVar.d(i10));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        if (length < length2) {
            return -1;
        }
        return length > length2 ? 1 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String h(String str, String str2) {
        StringBuilder sb2 = new StringBuilder(100);
        int length = this.f2559b.length;
        sb2.append(str);
        sb2.append(str2);
        sb2.append("catch ");
        for (int i10 = 0; i10 < length; i10++) {
            b bVar = (b) d(i10);
            if (i10 != 0) {
                sb2.append(",\n");
                sb2.append(str);
                sb2.append("  ");
            }
            if (i10 != length - 1) {
                sb2.append(bVar.f14296a.f18142a.a());
            } else {
                int length2 = this.f2559b.length;
                if (length2 == 0 ? false : ((b) d(length2 - 1)).f14296a.equals(x4.u.f18139d)) {
                    sb2.append("<any>");
                }
            }
            sb2.append(" -> ");
            int i11 = bVar.f14297b;
            sb2.append(i11 == ((char) i11) ? qf.c.e0(i11) : qf.c.f0(i11));
        }
        return sb2.toString();
    }
}
