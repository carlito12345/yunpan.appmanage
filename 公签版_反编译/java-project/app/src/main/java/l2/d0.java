package l2;

/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: c, reason: collision with root package name */
    public static final d0 f10441c = new d0(0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final long f10442a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10443b;

    public d0(long j10, long j11) {
        this.f10442a = j10;
        this.f10443b = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d0.class != obj.getClass()) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return this.f10442a == d0Var.f10442a && this.f10443b == d0Var.f10443b;
    }

    public final int hashCode() {
        return (((int) this.f10442a) * 31) + ((int) this.f10443b);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("[timeUs=");
        sb2.append(this.f10442a);
        sb2.append(", position=");
        return android.support.v4.media.session.a.t(sb2, this.f10443b, "]");
    }
}
