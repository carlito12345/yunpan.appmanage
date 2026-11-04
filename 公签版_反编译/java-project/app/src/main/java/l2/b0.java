package l2;

/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: a, reason: collision with root package name */
    public final d0 f10421a;

    /* renamed from: b, reason: collision with root package name */
    public final d0 f10422b;

    public b0(d0 d0Var, d0 d0Var2) {
        this.f10421a = d0Var;
        this.f10422b = d0Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b0.class != obj.getClass()) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return this.f10421a.equals(b0Var.f10421a) && this.f10422b.equals(b0Var.f10422b);
    }

    public final int hashCode() {
        return this.f10422b.hashCode() + (this.f10421a.hashCode() * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("[");
        d0 d0Var = this.f10421a;
        sb2.append(d0Var);
        d0 d0Var2 = this.f10422b;
        if (d0Var.equals(d0Var2)) {
            str = "";
        } else {
            str = ", " + d0Var2;
        }
        return g.b.l(str, "]", sb2);
    }
}
