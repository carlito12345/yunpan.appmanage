package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class w1 implements androidx.lifecycle.i, b4.g, androidx.lifecycle.w0 {

    /* renamed from: a, reason: collision with root package name */
    public final Fragment f1417a;

    /* renamed from: b, reason: collision with root package name */
    public final androidx.lifecycle.v0 f1418b;

    /* renamed from: c, reason: collision with root package name */
    public final t f1419c;

    /* renamed from: d, reason: collision with root package name */
    public androidx.lifecycle.v f1420d = null;

    /* renamed from: e, reason: collision with root package name */
    public b4.f f1421e = null;

    public w1(Fragment fragment, androidx.lifecycle.v0 v0Var, t tVar) {
        this.f1417a = fragment;
        this.f1418b = v0Var;
        this.f1419c = tVar;
    }

    public final void b(androidx.lifecycle.m mVar) {
        this.f1420d.e(mVar);
    }

    public final void c() {
        if (this.f1420d == null) {
            this.f1420d = new androidx.lifecycle.v(this);
            b4.f fVar = new b4.f(this);
            this.f1421e = fVar;
            fVar.a();
            this.f1419c.run();
        }
    }

    @Override // androidx.lifecycle.i
    public final p1.b getDefaultViewModelCreationExtras() {
        Application application;
        Fragment fragment = this.f1417a;
        Context applicationContext = fragment.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        p1.c cVar = new p1.c();
        LinkedHashMap linkedHashMap = cVar.f12565a;
        if (application != null) {
            linkedHashMap.put(androidx.lifecycle.s0.f1809a, application);
        }
        linkedHashMap.put(androidx.lifecycle.l0.f1782a, fragment);
        linkedHashMap.put(androidx.lifecycle.l0.f1783b, this);
        if (fragment.getArguments() != null) {
            linkedHashMap.put(androidx.lifecycle.l0.f1784c, fragment.getArguments());
        }
        return cVar;
    }

    @Override // androidx.lifecycle.t
    public final androidx.lifecycle.o getLifecycle() {
        c();
        return this.f1420d;
    }

    @Override // b4.g
    public final b4.e getSavedStateRegistry() {
        c();
        return this.f1421e.f2550b;
    }

    @Override // androidx.lifecycle.w0
    public final androidx.lifecycle.v0 getViewModelStore() {
        c();
        return this.f1418b;
    }
}
