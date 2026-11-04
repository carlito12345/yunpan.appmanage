package f2;

/* loaded from: classes.dex */
public final class t0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f5383a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5384b;

    public t0(int i10, boolean z) {
        this.f5383a = i10;
        this.f5384b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t0.class != obj.getClass()) {
            return false;
        }
        t0 t0Var = (t0) obj;
        return this.f5383a == t0Var.f5383a && this.f5384b == t0Var.f5384b;
    }

    public final int hashCode() {
        return (this.f5383a * 31) + (this.f5384b ? 1 : 0);
    }
}
