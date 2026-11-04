package u1;

/* loaded from: classes.dex */
public final class y extends IllegalStateException {

    /* renamed from: a, reason: collision with root package name */
    public final int f15313a;

    /* renamed from: b, reason: collision with root package name */
    public final int f15314b;

    /* JADX WARN: Illegal instructions before constructor call */
    public y(int i10, int i11) {
        String strI;
        if (i10 == 0) {
            strI = g.b.i("Player stuck buffering and not loading for ", i11, " ms");
        } else if (i10 == 1) {
            strI = g.b.i("Player stuck buffering with no progress for ", i11, " ms");
        } else if (i10 == 2) {
            strI = g.b.i("Player stuck playing with no progress for ", i11, " ms");
        } else if (i10 == 3) {
            strI = g.b.i("Player stuck playing without ending for ", i11, " ms");
        } else {
            if (i10 != 4) {
                throw new IllegalStateException();
            }
            strI = g.b.i("Player stuck suppressed for ", i11, " ms");
        }
        super(strI);
        this.f15313a = i10;
        this.f15314b = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || y.class != obj.getClass()) {
            return false;
        }
        y yVar = (y) obj;
        return this.f15313a == yVar.f15313a && this.f15314b == yVar.f15314b;
    }

    public final int hashCode() {
        return ((527 + this.f15313a) * 31) + this.f15314b;
    }
}
