package h5;

/* loaded from: classes.dex */
public final class t implements z {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f6656a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6657b;

    /* renamed from: c, reason: collision with root package name */
    public final z f6658c;

    /* renamed from: d, reason: collision with root package name */
    public final n f6659d;

    /* renamed from: e, reason: collision with root package name */
    public final s f6660e;

    /* renamed from: f, reason: collision with root package name */
    public int f6661f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6662g;

    public t(z zVar, boolean z, boolean z4, s sVar, n nVar) {
        a6.h.c(zVar, "Argument must not be null");
        this.f6658c = zVar;
        this.f6656a = z;
        this.f6657b = z4;
        this.f6660e = sVar;
        a6.h.c(nVar, "Argument must not be null");
        this.f6659d = nVar;
    }

    @Override // h5.z
    public final Class a() {
        return this.f6658c.a();
    }

    public final synchronized void b() {
        if (this.f6662g) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f6661f++;
    }

    public final void c() {
        boolean z;
        synchronized (this) {
            int i10 = this.f6661f;
            if (i10 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z = true;
            int i11 = i10 - 1;
            this.f6661f = i11;
            if (i11 != 0) {
                z = false;
            }
        }
        if (z) {
            this.f6659d.e(this.f6660e, this);
        }
    }

    @Override // h5.z
    public final Object get() {
        return this.f6658c.get();
    }

    @Override // h5.z
    public final int getSize() {
        return this.f6658c.getSize();
    }

    @Override // h5.z
    public final synchronized void recycle() {
        if (this.f6661f > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f6662g) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f6662g = true;
        if (this.f6657b) {
            this.f6658c.recycle();
        }
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f6656a + ", listener=" + this.f6659d + ", key=" + this.f6660e + ", acquired=" + this.f6661f + ", isRecycled=" + this.f6662g + ", resource=" + this.f6658c + '}';
    }
}
