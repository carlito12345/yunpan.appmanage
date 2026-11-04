package f2;

/* loaded from: classes.dex */
public final class c0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f5236a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5237b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5238c;

    /* renamed from: d, reason: collision with root package name */
    public final long f5239d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5240e;

    public c0(Object obj) {
        this(obj, -1L);
    }

    public final c0 a(Object obj) {
        if (this.f5236a.equals(obj)) {
            return this;
        }
        return new c0(obj, this.f5237b, this.f5238c, this.f5239d, this.f5240e);
    }

    public final boolean b() {
        return this.f5237b != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f5236a.equals(c0Var.f5236a) && this.f5237b == c0Var.f5237b && this.f5238c == c0Var.f5238c && this.f5239d == c0Var.f5239d && this.f5240e == c0Var.f5240e;
    }

    public final int hashCode() {
        return ((((((((this.f5236a.hashCode() + 527) * 31) + this.f5237b) * 31) + this.f5238c) * 31) + ((int) this.f5239d)) * 31) + this.f5240e;
    }

    public c0(Object obj, long j10) {
        this(obj, -1, -1, j10, -1);
    }

    public c0(int i10, long j10, Object obj) {
        this(obj, -1, -1, j10, i10);
    }

    public c0(Object obj, int i10, int i11, long j10, int i12) {
        this.f5236a = obj;
        this.f5237b = i10;
        this.f5238c = i11;
        this.f5239d = j10;
        this.f5240e = i12;
    }
}
