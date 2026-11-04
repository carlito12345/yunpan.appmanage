package y1;

import android.os.Looper;

/* loaded from: classes.dex */
public final class y0 {

    /* renamed from: a, reason: collision with root package name */
    public final x0 f18873a;

    /* renamed from: b, reason: collision with root package name */
    public final w0 f18874b;

    /* renamed from: c, reason: collision with root package name */
    public int f18875c;

    /* renamed from: d, reason: collision with root package name */
    public Object f18876d;

    /* renamed from: e, reason: collision with root package name */
    public final Looper f18877e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18878f;

    public y0(w0 w0Var, x0 x0Var, r1.q0 q0Var, int i10, Looper looper) {
        this.f18874b = w0Var;
        this.f18873a = x0Var;
        this.f18877e = looper;
    }

    public final synchronized void a(boolean z) {
        notifyAll();
    }

    public final void b() {
        a9.o.t(!this.f18878f);
        this.f18878f = true;
        f0 f0Var = (f0) this.f18874b;
        if (!f0Var.M && f0Var.f18663j.getThread().isAlive()) {
            f0Var.f18660h.b(14, this).b();
        } else {
            u1.a.p("Ignoring messages sent after release.");
            a(false);
        }
    }
}
