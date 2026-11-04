package androidx.fragment.app;

import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public final class i0 extends o0 implements n0.j, n0.k, m0.j0, m0.k0, androidx.lifecycle.w0, androidx.activity.x, androidx.activity.result.h, b4.g, h1, x0.q {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ q.i f1291e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(q.i iVar) {
        super(iVar);
        this.f1291e = iVar;
    }

    @Override // androidx.activity.x
    public final androidx.activity.w a() {
        return this.f1291e.a();
    }

    @Override // n0.j
    public final void b(w0.a aVar) {
        this.f1291e.b(aVar);
    }

    @Override // n0.k
    public final void c(s0 s0Var) {
        this.f1291e.c(s0Var);
    }

    @Override // n0.j
    public final void d(s0 s0Var) {
        this.f1291e.d(s0Var);
    }

    @Override // androidx.activity.result.h
    public final androidx.activity.result.g e() {
        return this.f1291e.f813k;
    }

    @Override // n0.k
    public final void f(s0 s0Var) {
        this.f1291e.f(s0Var);
    }

    @Override // m0.k0
    public final void g(s0 s0Var) {
        this.f1291e.g(s0Var);
    }

    @Override // androidx.lifecycle.t
    public final androidx.lifecycle.o getLifecycle() {
        return this.f1291e.f1308v;
    }

    @Override // b4.g
    public final b4.e getSavedStateRegistry() {
        return this.f1291e.f807e.f2550b;
    }

    @Override // androidx.lifecycle.w0
    public final androidx.lifecycle.v0 getViewModelStore() {
        return this.f1291e.getViewModelStore();
    }

    @Override // m0.j0
    public final void h(s0 s0Var) {
        this.f1291e.h(s0Var);
    }

    @Override // x0.q
    public final void i(v0 v0Var) {
        this.f1291e.i(v0Var);
    }

    @Override // x0.q
    public final void k(v0 v0Var) {
        this.f1291e.k(v0Var);
    }

    @Override // m0.k0
    public final void l(s0 s0Var) {
        this.f1291e.l(s0Var);
    }

    @Override // m0.j0
    public final void m(s0 s0Var) {
        this.f1291e.m(s0Var);
    }

    @Override // androidx.fragment.app.m0
    public final View n(int i10) {
        return this.f1291e.findViewById(i10);
    }

    @Override // androidx.fragment.app.m0
    public final boolean o() {
        Window window = this.f1291e.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // androidx.fragment.app.h1
    public final void j(Fragment fragment) {
    }
}
