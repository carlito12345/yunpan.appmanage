package qh;

import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public final class e0 implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public final c f13279a;

    /* renamed from: b, reason: collision with root package name */
    public final ph.k f13280b;

    /* renamed from: c, reason: collision with root package name */
    public final d0 f13281c;

    /* renamed from: d, reason: collision with root package name */
    public h0 f13282d;

    public e0(c cVar) {
        new ReentrantLock();
        this.f13279a = cVar;
        this.f13281c = d0.f13275c;
        this.f13280b = new ph.k();
    }

    public final Object clone() {
        return new e0(this);
    }

    public e0(e0 e0Var) {
        new ReentrantLock();
        e0Var.f13279a.getClass();
        this.f13279a = new c();
        e0Var.f13280b.getClass();
        this.f13280b = new ph.k();
        d0 d0Var = e0Var.f13281c;
        this.f13281c = new d0(d0Var.f13277a, d0Var.f13278b);
    }
}
