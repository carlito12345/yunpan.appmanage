package w5;

import ta.q;

/* loaded from: classes.dex */
public final class g implements d, c {

    /* renamed from: a, reason: collision with root package name */
    public final d f17611a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f17612b;

    /* renamed from: c, reason: collision with root package name */
    public volatile f f17613c;

    /* renamed from: d, reason: collision with root package name */
    public volatile c f17614d;

    /* renamed from: e, reason: collision with root package name */
    public int f17615e = 3;

    /* renamed from: f, reason: collision with root package name */
    public int f17616f = 3;

    /* renamed from: g, reason: collision with root package name */
    public boolean f17617g;

    public g(Object obj, d dVar) {
        this.f17612b = obj;
        this.f17611a = dVar;
    }

    @Override // w5.d, w5.c
    public final boolean a() {
        boolean z;
        synchronized (this.f17612b) {
            try {
                z = this.f17614d.a() || this.f17613c.a();
            } finally {
            }
        }
        return z;
    }

    @Override // w5.c
    public final boolean b(c cVar) {
        if (!(cVar instanceof g)) {
            return false;
        }
        g gVar = (g) cVar;
        if (this.f17613c == null) {
            if (gVar.f17613c != null) {
                return false;
            }
        } else if (!this.f17613c.b(gVar.f17613c)) {
            return false;
        }
        if (this.f17614d == null) {
            if (gVar.f17614d != null) {
                return false;
            }
        } else if (!this.f17614d.b(gVar.f17614d)) {
            return false;
        }
        return true;
    }

    @Override // w5.d
    public final void c(c cVar) {
        synchronized (this.f17612b) {
            try {
                if (cVar.equals(this.f17614d)) {
                    this.f17616f = 4;
                    return;
                }
                this.f17615e = 4;
                d dVar = this.f17611a;
                if (dVar != null) {
                    dVar.c(this);
                }
                if (!q.d(this.f17616f)) {
                    this.f17614d.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // w5.c
    public final void clear() {
        synchronized (this.f17612b) {
            this.f17617g = false;
            this.f17615e = 3;
            this.f17616f = 3;
            this.f17614d.clear();
            this.f17613c.clear();
        }
    }

    @Override // w5.d
    public final boolean d(c cVar) {
        boolean z;
        synchronized (this.f17612b) {
            try {
                d dVar = this.f17611a;
                z = (dVar == null || dVar.d(this)) && (cVar.equals(this.f17613c) || this.f17615e != 4);
            } finally {
            }
        }
        return z;
    }

    @Override // w5.d
    public final boolean e(c cVar) {
        boolean z;
        synchronized (this.f17612b) {
            try {
                d dVar = this.f17611a;
                z = (dVar == null || dVar.e(this)) && cVar.equals(this.f17613c) && this.f17615e != 2;
            } finally {
            }
        }
        return z;
    }

    @Override // w5.c
    public final boolean f() {
        boolean z;
        synchronized (this.f17612b) {
            z = this.f17615e == 3;
        }
        return z;
    }

    @Override // w5.d
    public final boolean g(c cVar) {
        boolean z;
        synchronized (this.f17612b) {
            try {
                d dVar = this.f17611a;
                z = (dVar == null || dVar.g(this)) && cVar.equals(this.f17613c) && !a();
            } finally {
            }
        }
        return z;
    }

    @Override // w5.d
    public final d getRoot() {
        d root;
        synchronized (this.f17612b) {
            try {
                d dVar = this.f17611a;
                root = dVar != null ? dVar.getRoot() : this;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return root;
    }

    @Override // w5.c
    public final void h() {
        synchronized (this.f17612b) {
            try {
                this.f17617g = true;
                try {
                    if (this.f17615e != 4 && this.f17616f != 1) {
                        this.f17616f = 1;
                        this.f17614d.h();
                    }
                    if (this.f17617g && this.f17615e != 1) {
                        this.f17615e = 1;
                        this.f17613c.h();
                    }
                    this.f17617g = false;
                } catch (Throwable th2) {
                    this.f17617g = false;
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // w5.d
    public final void i(c cVar) {
        synchronized (this.f17612b) {
            try {
                if (!cVar.equals(this.f17613c)) {
                    this.f17616f = 5;
                    return;
                }
                this.f17615e = 5;
                d dVar = this.f17611a;
                if (dVar != null) {
                    dVar.i(this);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // w5.c
    public final boolean isRunning() {
        boolean z;
        synchronized (this.f17612b) {
            z = true;
            if (this.f17615e != 1) {
                z = false;
            }
        }
        return z;
    }

    @Override // w5.c
    public final boolean j() {
        boolean z;
        synchronized (this.f17612b) {
            z = this.f17615e == 4;
        }
        return z;
    }

    @Override // w5.c
    public final void pause() {
        synchronized (this.f17612b) {
            try {
                if (!q.d(this.f17616f)) {
                    this.f17616f = 2;
                    this.f17614d.pause();
                }
                if (!q.d(this.f17615e)) {
                    this.f17615e = 2;
                    this.f17613c.pause();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
