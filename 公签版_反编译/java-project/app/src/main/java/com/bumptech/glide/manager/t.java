package com.bumptech.glide.manager;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class t implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Set f3414a = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.bumptech.glide.manager.h
    public final void c() {
        Iterator it = a6.q.e(this.f3414a).iterator();
        while (it.hasNext()) {
            ((x5.e) it.next()).c();
        }
    }

    @Override // com.bumptech.glide.manager.h
    public final void e() {
        Iterator it = a6.q.e(this.f3414a).iterator();
        while (it.hasNext()) {
            ((x5.e) it.next()).e();
        }
    }

    @Override // com.bumptech.glide.manager.h
    public final void k() {
        Iterator it = a6.q.e(this.f3414a).iterator();
        while (it.hasNext()) {
            ((x5.e) it.next()).k();
        }
    }
}
