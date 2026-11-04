package u4;

/* loaded from: classes.dex */
public final class h extends i implements Comparable {

    /* renamed from: b, reason: collision with root package name */
    public final x4.h f15372b;

    public h(x4.h hVar, int i10) {
        super(i10);
        if (hVar == null) {
            throw new NullPointerException("field == null");
        }
        this.f15372b = hVar;
    }

    @Override // b5.h
    public final String a() {
        return this.f15372b.a();
    }

    @Override // u4.i
    public final int b(f fVar, b5.b bVar, int i10, int i11) {
        l lVar = fVar.f15361h;
        x4.h hVar = this.f15372b;
        int iL = lVar.l(hVar);
        int i12 = iL - i10;
        boolean zD = bVar.d();
        int i13 = this.f15373a;
        if (zD) {
            bVar.b(0, String.format("  [%x] %s", Integer.valueOf(i11), hVar.a()));
            bVar.b(com.bumptech.glide.c.l0(i12), "    field_idx:    ".concat(qf.c.f0(iL)));
            bVar.b(com.bumptech.glide.c.l0(i13), "    access_flags: " + android.support.v4.media.session.b.r(i13, 20703, 2));
        }
        bVar.m(i12);
        bVar.m(i13);
        return iL;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f15372b.compareTo(((h) obj).f15372b);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof h) && this.f15372b.compareTo(((h) obj).f15372b) == 0;
    }

    public final int hashCode() {
        return this.f15372b.hashCode();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append(h.class.getName());
        sb2.append('{');
        sb2.append(qf.c.e0(this.f15373a));
        sb2.append(' ');
        sb2.append(this.f15372b);
        sb2.append('}');
        return sb2.toString();
    }
}
