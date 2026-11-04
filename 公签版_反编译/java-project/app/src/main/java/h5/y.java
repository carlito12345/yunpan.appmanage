package h5;

/* loaded from: classes.dex */
public final class y implements z, b6.b {

    /* renamed from: e, reason: collision with root package name */
    public static final v3.f f6674e = b6.c.a(20, new m7.e(28));

    /* renamed from: a, reason: collision with root package name */
    public final b6.d f6675a = new b6.d();

    /* renamed from: b, reason: collision with root package name */
    public z f6676b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6677c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6678d;

    @Override // h5.z
    public final Class a() {
        return this.f6676b.a();
    }

    @Override // b6.b
    public final b6.d b() {
        return this.f6675a;
    }

    public final synchronized void c() {
        this.f6675a.a();
        if (!this.f6677c) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f6677c = false;
        if (this.f6678d) {
            recycle();
        }
    }

    @Override // h5.z
    public final Object get() {
        return this.f6676b.get();
    }

    @Override // h5.z
    public final int getSize() {
        return this.f6676b.getSize();
    }

    @Override // h5.z
    public final synchronized void recycle() {
        this.f6675a.a();
        this.f6678d = true;
        if (!this.f6677c) {
            this.f6676b.recycle();
            this.f6676b = null;
            f6674e.L(this);
        }
    }
}
