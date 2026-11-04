package s4;

/* loaded from: classes.dex */
public final class e extends b5.c implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public static final e f14302c = new e(0);

    public e(int i10) {
        super(i10);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        e eVar = (e) obj;
        if (this == eVar) {
            return 0;
        }
        int length = this.f2559b.length;
        int length2 = eVar.f2559b.length;
        int iMin = Math.min(length, length2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iCompareTo = ((d) d(i10)).compareTo((d) eVar.d(i10));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        if (length < length2) {
            return -1;
        }
        return length > length2 ? 1 : 0;
    }
}
