package y1;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f18708a;

    /* renamed from: b, reason: collision with root package name */
    public final float f18709b;

    /* renamed from: c, reason: collision with root package name */
    public final long f18710c;

    public j0(i0 i0Var) {
        this.f18708a = i0Var.f18705a;
        this.f18709b = i0Var.f18706b;
        this.f18710c = i0Var.f18707c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j0)) {
            return false;
        }
        j0 j0Var = (j0) obj;
        return this.f18708a == j0Var.f18708a && this.f18709b == j0Var.f18709b && this.f18710c == j0Var.f18710c;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f18708a), Float.valueOf(this.f18709b), Long.valueOf(this.f18710c));
    }
}
