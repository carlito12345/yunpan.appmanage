package q4;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final b f12999a;

    /* renamed from: b, reason: collision with root package name */
    public final j f13000b;

    /* renamed from: c, reason: collision with root package name */
    public int f13001c = -1;

    /* renamed from: d, reason: collision with root package name */
    public w4.k f13002d;

    public h(b bVar, j jVar) {
        this.f12999a = bVar;
        this.f13000b = jVar;
    }

    public final w4.k a() {
        if (this.f13002d == null) {
            this.f12999a.f();
            if (this.f13002d == null) {
                throw new AssertionError();
            }
        }
        return this.f13002d;
    }

    public final String toString() {
        return "v" + this.f13001c + "(" + this.f13000b + ")";
    }
}
