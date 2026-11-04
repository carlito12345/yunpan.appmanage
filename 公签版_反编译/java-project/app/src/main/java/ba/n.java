package ba;

import android.os.SystemClock;
import r1.h0;
import u1.f0;
import u1.z;
import y1.k0;

/* loaded from: classes.dex */
public final class n implements k0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2721a;

    /* renamed from: b, reason: collision with root package name */
    public long f2722b;

    /* renamed from: c, reason: collision with root package name */
    public long f2723c;

    /* renamed from: d, reason: collision with root package name */
    public Object f2724d;

    /* renamed from: e, reason: collision with root package name */
    public Object f2725e;

    public n() {
    }

    @Override // y1.k0
    public long a() {
        long j10 = this.f2722b;
        if (!this.f2721a) {
            return j10;
        }
        ((z) this.f2724d).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f2723c;
        return j10 + (((h0) this.f2725e).f13452a == 1.0f ? f0.G(jElapsedRealtime) : jElapsedRealtime * r4.f13454c);
    }

    @Override // y1.k0
    public /* synthetic */ boolean b() {
        return false;
    }

    @Override // y1.k0
    public h0 c() {
        return (h0) this.f2725e;
    }

    public void d(long j10) {
        this.f2722b = j10;
        if (this.f2721a) {
            ((z) this.f2724d).getClass();
            this.f2723c = SystemClock.elapsedRealtime();
        }
    }

    @Override // y1.k0
    public void e(h0 h0Var) {
        if (this.f2721a) {
            d(a());
        }
        this.f2725e = h0Var;
    }

    public void f() {
        if (this.f2721a) {
            return;
        }
        ((z) this.f2724d).getClass();
        this.f2723c = SystemClock.elapsedRealtime();
        this.f2721a = true;
    }

    public n(z zVar) {
        this.f2724d = zVar;
        this.f2725e = h0.f13451d;
    }
}
