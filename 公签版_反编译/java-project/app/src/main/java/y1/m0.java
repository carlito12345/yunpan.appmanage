package y1;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class m0 {

    /* renamed from: a, reason: collision with root package name */
    public final f2.c0 f18758a;

    /* renamed from: b, reason: collision with root package name */
    public final long f18759b;

    /* renamed from: c, reason: collision with root package name */
    public final long f18760c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18761d;

    /* renamed from: e, reason: collision with root package name */
    public final long f18762e;

    /* renamed from: f, reason: collision with root package name */
    public final long f18763f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f18764g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f18765h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f18766i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f18767j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f18768k;

    public m0(f2.c0 c0Var, long j10, long j11, long j12, long j13, long j14, boolean z, boolean z4, boolean z10, boolean z11, boolean z12) {
        boolean z13 = true;
        a9.o.k(!z12 || z10);
        a9.o.k(!z11 || z10);
        if (z4 && (z10 || z11 || z12)) {
            z13 = false;
        }
        a9.o.k(z13);
        this.f18758a = c0Var;
        this.f18759b = j10;
        this.f18760c = j11;
        this.f18761d = j12;
        this.f18762e = j13;
        this.f18763f = j14;
        this.f18764g = z;
        this.f18765h = z4;
        this.f18766i = z10;
        this.f18767j = z11;
        this.f18768k = z12;
    }

    public final m0 a(long j10) {
        if (j10 == this.f18761d) {
            return this;
        }
        return new m0(this.f18758a, this.f18759b, this.f18760c, j10, this.f18762e, this.f18763f, this.f18764g, this.f18765h, this.f18766i, this.f18767j, this.f18768k);
    }

    public final m0 b(long j10, long j11) {
        if (j10 == this.f18759b && j11 == this.f18760c) {
            return this;
        }
        return new m0(this.f18758a, j10, j11, this.f18761d, this.f18762e, this.f18763f, this.f18764g, this.f18765h, this.f18766i, this.f18767j, this.f18768k);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m0.class != obj.getClass()) {
            return false;
        }
        m0 m0Var = (m0) obj;
        return this.f18759b == m0Var.f18759b && this.f18761d == m0Var.f18761d && this.f18762e == m0Var.f18762e && this.f18763f == m0Var.f18763f && this.f18764g == m0Var.f18764g && this.f18765h == m0Var.f18765h && this.f18766i == m0Var.f18766i && this.f18767j == m0Var.f18767j && this.f18768k == m0Var.f18768k && Objects.equals(this.f18758a, m0Var.f18758a);
    }

    public final int hashCode() {
        return ((((((((((((((((((this.f18758a.hashCode() + 527) * 31) + ((int) this.f18759b)) * 31) + ((int) this.f18761d)) * 31) + ((int) this.f18762e)) * 31) + ((int) this.f18763f)) * 31) + (this.f18764g ? 1 : 0)) * 31) + (this.f18765h ? 1 : 0)) * 31) + (this.f18766i ? 1 : 0)) * 31) + (this.f18767j ? 1 : 0)) * 31) + (this.f18768k ? 1 : 0);
    }
}
