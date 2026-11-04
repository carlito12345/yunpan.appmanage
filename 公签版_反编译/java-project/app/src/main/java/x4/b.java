package x4;

/* loaded from: classes.dex */
public final class b extends b5.c implements Comparable {
    public b(int i10) {
        super(i10);
    }

    @Override // java.lang.Comparable
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final int compareTo(b bVar) {
        int length = this.f2559b.length;
        int length2 = bVar.f2559b.length;
        int i10 = length < length2 ? length : length2;
        for (int i11 = 0; i11 < i10; i11++) {
            int iCompareTo = ((a) d(i11)).compareTo((a) bVar.d(i11));
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
