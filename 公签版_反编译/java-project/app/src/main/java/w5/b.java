package w5;

/* loaded from: classes.dex */
public final class b implements d, c {

    /* renamed from: a, reason: collision with root package name */
    public final Object f17582a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f17583b;

    /* renamed from: c, reason: collision with root package name */
    public volatile c f17584c;

    /* renamed from: d, reason: collision with root package name */
    public volatile c f17585d;

    /* renamed from: e, reason: collision with root package name */
    public int f17586e = 3;

    /* renamed from: f, reason: collision with root package name */
    public int f17587f = 3;

    public b(Object obj, d dVar) {
        this.f17582a = obj;
        this.f17583b = dVar;
    }

    @Override // w5.d, w5.c
    public final boolean a() {
        boolean z;
        synchronized (this.f17582a) {
            try {
                z = this.f17584c.a() || this.f17585d.a();
            } finally {
            }
        }
        return z;
    }

    @Override // w5.c
    public final boolean b(c cVar) {
        if (!(cVar instanceof b)) {
            return false;
        }
        b bVar = (b) cVar;
        return this.f17584c.b(bVar.f17584c) && this.f17585d.b(bVar.f17585d);
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object, w5.d] */
    @Override // w5.d
    public final void c(c cVar) {
        synchronized (this.f17582a) {
            try {
                if (cVar.equals(this.f17584c)) {
                    this.f17586e = 4;
                } else if (cVar.equals(this.f17585d)) {
                    this.f17587f = 4;
                }
                ?? r4 = this.f17583b;
                if (r4 != 0) {
                    r4.c(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // w5.c
    public final void clear() {
        synchronized (this.f17582a) {
            try {
                this.f17586e = 3;
                this.f17584c.clear();
                if (this.f17587f != 3) {
                    this.f17587f = 3;
                    this.f17585d.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, w5.d] */
    @Override // w5.d
    public final boolean d(c cVar) {
        boolean z;
        synchronized (this.f17582a) {
            ?? r02 = this.f17583b;
            z = r02 == 0 || r02.d(this);
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, w5.d] */
    @Override // w5.d
    public final boolean e(c cVar) {
        boolean z;
        synchronized (this.f17582a) {
            ?? r12 = this.f17583b;
            z = (r12 == 0 || r12.e(this)) && cVar.equals(this.f17584c);
        }
        return z;
    }

    @Override // w5.c
    public final boolean f() {
        boolean z;
        synchronized (this.f17582a) {
            try {
                z = this.f17586e == 3 && this.f17587f == 3;
            } finally {
            }
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, w5.d] */
    @Override // w5.d
    public final boolean g(c cVar) {
        boolean z;
        int i10;
        synchronized (this.f17582a) {
            ?? r12 = this.f17583b;
            z = false;
            if (r12 == 0 || r12.g(this)) {
                if (this.f17586e != 5 ? cVar.equals(this.f17584c) : cVar.equals(this.f17585d) && ((i10 = this.f17587f) == 4 || i10 == 5)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, w5.d] */
    @Override // w5.d
    public final d getRoot() {
        d root;
        synchronized (this.f17582a) {
            try {
                ?? r12 = this.f17583b;
                root = r12 != 0 ? r12.getRoot() : this;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return root;
    }

    @Override // w5.c
    public final void h() {
        synchronized (this.f17582a) {
            try {
                if (this.f17586e != 1) {
                    this.f17586e = 1;
                    this.f17584c.h();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, w5.d] */
    @Override // w5.d
    public final void i(c cVar) {
        synchronized (this.f17582a) {
            try {
                if (cVar.equals(this.f17585d)) {
                    this.f17587f = 5;
                    ?? r32 = this.f17583b;
                    if (r32 != 0) {
                        r32.i(this);
                    }
                    return;
                }
                this.f17586e = 5;
                if (this.f17587f != 1) {
                    this.f17587f = 1;
                    this.f17585d.h();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // w5.c
    public final boolean isRunning() {
        boolean z;
        synchronized (this.f17582a) {
            try {
                z = true;
                if (this.f17586e != 1 && this.f17587f != 1) {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // w5.c
    public final boolean j() {
        boolean z;
        synchronized (this.f17582a) {
            try {
                z = this.f17586e == 4 || this.f17587f == 4;
            } finally {
            }
        }
        return z;
    }

    @Override // w5.c
    public final void pause() {
        synchronized (this.f17582a) {
            try {
                if (this.f17586e == 1) {
                    this.f17586e = 2;
                    this.f17584c.pause();
                }
                if (this.f17587f == 1) {
                    this.f17587f = 2;
                    this.f17585d.pause();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
