package com.bumptech.glide.manager;

import androidx.lifecycle.b0;
import androidx.lifecycle.v;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
final class LifecycleLifecycle implements g, androidx.lifecycle.s {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f3380a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public final v f3381b;

    public LifecycleLifecycle(v vVar) {
        this.f3381b = vVar;
        vVar.a(this);
    }

    @Override // com.bumptech.glide.manager.g
    public final void h(h hVar) {
        this.f3380a.add(hVar);
        androidx.lifecycle.n nVar = this.f3381b.f1818c;
        if (nVar == androidx.lifecycle.n.DESTROYED) {
            hVar.c();
        } else if (nVar.compareTo(androidx.lifecycle.n.STARTED) >= 0) {
            hVar.k();
        } else {
            hVar.e();
        }
    }

    @Override // com.bumptech.glide.manager.g
    public final void l(h hVar) {
        this.f3380a.remove(hVar);
    }

    @b0(androidx.lifecycle.m.ON_DESTROY)
    public void onDestroy(androidx.lifecycle.t tVar) {
        Iterator it = a6.q.e(this.f3380a).iterator();
        while (it.hasNext()) {
            ((h) it.next()).c();
        }
        tVar.getLifecycle().b(this);
    }

    @b0(androidx.lifecycle.m.ON_START)
    public void onStart(androidx.lifecycle.t tVar) {
        Iterator it = a6.q.e(this.f3380a).iterator();
        while (it.hasNext()) {
            ((h) it.next()).k();
        }
    }

    @b0(androidx.lifecycle.m.ON_STOP)
    public void onStop(androidx.lifecycle.t tVar) {
        Iterator it = a6.q.e(this.f3380a).iterator();
        while (it.hasNext()) {
            ((h) it.next()).e();
        }
    }
}
