package s4;

/* loaded from: classes.dex */
public final class b implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final x4.u f14296a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14297b;

    public b(x4.u uVar, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("handler < 0");
        }
        this.f14297b = i10;
        this.f14296a = uVar;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(b bVar) {
        int i10 = bVar.f14297b;
        int i11 = this.f14297b;
        if (i11 < i10) {
            return -1;
        }
        if (i11 > i10) {
            return 1;
        }
        return this.f14296a.compareTo(bVar.f14296a);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof b) && compareTo((b) obj) == 0;
    }

    public final int hashCode() {
        return this.f14296a.hashCode() + (this.f14297b * 31);
    }
}
