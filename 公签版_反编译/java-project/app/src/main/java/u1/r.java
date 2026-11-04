package u1;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: c, reason: collision with root package name */
    public static final r f15269c = new r(-1, -1);

    /* renamed from: a, reason: collision with root package name */
    public final int f15270a;

    /* renamed from: b, reason: collision with root package name */
    public final int f15271b;

    static {
        new r(0, 0);
        f0.B(0);
        f0.B(1);
    }

    public r(int i10, int i11) {
        a9.o.k((i10 == -1 || i10 >= 0) && (i11 == -1 || i11 >= 0));
        this.f15270a = i10;
        this.f15271b = i11;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f15270a == rVar.f15270a && this.f15271b == rVar.f15271b;
    }

    public final int hashCode() {
        int i10 = this.f15270a;
        return ((i10 >>> 16) | (i10 << 16)) ^ this.f15271b;
    }

    public final String toString() {
        return this.f15270a + "x" + this.f15271b;
    }
}
