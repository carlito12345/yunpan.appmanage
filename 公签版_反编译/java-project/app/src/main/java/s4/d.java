package s4;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class d implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final int f14299a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14300b;

    /* renamed from: c, reason: collision with root package name */
    public final c f14301c;

    public d(int i10, int i11, c cVar) {
        if (i10 < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (i11 <= i10) {
            throw new IllegalArgumentException("end <= start");
        }
        if (cVar.f2570a) {
            throw new IllegalArgumentException("handlers.isMutable()");
        }
        this.f14299a = i10;
        this.f14300b = i11;
        this.f14301c = cVar;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(d dVar) {
        int i10 = dVar.f14299a;
        int i11 = this.f14299a;
        if (i11 < i10) {
            return -1;
        }
        if (i11 > i10) {
            return 1;
        }
        int i12 = this.f14300b;
        int i13 = dVar.f14300b;
        if (i12 < i13) {
            return -1;
        }
        if (i12 > i13) {
            return 1;
        }
        return this.f14301c.compareTo(dVar.f14301c);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof d) && compareTo((d) obj) == 0;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f14301c.f2559b) + (((this.f14299a * 31) + this.f14300b) * 31);
    }
}
