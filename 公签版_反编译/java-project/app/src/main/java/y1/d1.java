package y1;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class d1 {

    /* renamed from: g, reason: collision with root package name */
    public static final d1 f18622g = new d1(new c1());

    /* renamed from: a, reason: collision with root package name */
    public final u7.j0 f18623a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18624b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18625c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f18626d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f18627e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f18628f;

    public d1(c1 c1Var) {
        this.f18623a = c1Var.f18602a;
        this.f18624b = c1Var.f18603b;
        this.f18625c = c1Var.f18604c;
        this.f18628f = c1Var.f18605d;
        this.f18626d = c1Var.f18606e;
        this.f18627e = c1Var.f18607f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof d1)) {
            return false;
        }
        d1 d1Var = (d1) obj;
        return this.f18623a.equals(d1Var.f18623a) && this.f18625c == d1Var.f18625c && this.f18628f == d1Var.f18628f && this.f18624b == d1Var.f18624b && this.f18626d == d1Var.f18626d && this.f18627e == d1Var.f18627e;
    }

    public final int hashCode() {
        return Objects.hash(this.f18623a, null, null, Boolean.valueOf(this.f18624b), Boolean.valueOf(this.f18625c), Boolean.valueOf(this.f18628f), Boolean.valueOf(this.f18626d), Boolean.valueOf(this.f18627e));
    }
}
