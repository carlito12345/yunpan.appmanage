package u1;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final Object f15239a;

    /* renamed from: b, reason: collision with root package name */
    public h5.d0 f15240b = new h5.d0(1);

    /* renamed from: c, reason: collision with root package name */
    public boolean f15241c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f15242d;

    public l(Object obj) {
        this.f15239a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        return this.f15239a.equals(((l) obj).f15239a);
    }

    public final int hashCode() {
        return this.f15239a.hashCode();
    }
}
