package y1;

/* loaded from: classes.dex */
public final class b1 {

    /* renamed from: c, reason: collision with root package name */
    public static final b1 f18584c = new b1(0, false);

    /* renamed from: a, reason: collision with root package name */
    public final int f18585a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18586b;

    public b1(int i10, boolean z) {
        this.f18585a = i10;
        this.f18586b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b1.class != obj.getClass()) {
            return false;
        }
        b1 b1Var = (b1) obj;
        return this.f18585a == b1Var.f18585a && this.f18586b == b1Var.f18586b;
    }

    public final int hashCode() {
        return (this.f18585a << 1) + (this.f18586b ? 1 : 0);
    }
}
