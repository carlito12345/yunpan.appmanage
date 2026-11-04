package y1;

/* loaded from: classes.dex */
public final class e1 {

    /* renamed from: c, reason: collision with root package name */
    public static final e1 f18645c;

    /* renamed from: d, reason: collision with root package name */
    public static final e1 f18646d;

    /* renamed from: a, reason: collision with root package name */
    public final long f18647a;

    /* renamed from: b, reason: collision with root package name */
    public final long f18648b;

    static {
        e1 e1Var = new e1(0L, 0L);
        new e1(Long.MAX_VALUE, Long.MAX_VALUE);
        f18645c = new e1(Long.MAX_VALUE, 0L);
        new e1(0L, Long.MAX_VALUE);
        f18646d = e1Var;
    }

    public e1(long j10, long j11) {
        a9.o.k(j10 >= 0);
        a9.o.k(j11 >= 0);
        this.f18647a = j10;
        this.f18648b = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e1.class != obj.getClass()) {
            return false;
        }
        e1 e1Var = (e1) obj;
        return this.f18647a == e1Var.f18647a && this.f18648b == e1Var.f18648b;
    }

    public final int hashCode() {
        return (((int) this.f18647a) * 31) + ((int) this.f18648b);
    }
}
