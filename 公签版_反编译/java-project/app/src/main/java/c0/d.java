package c0;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class d extends com.bumptech.glide.c {
    public final AtomicReferenceFieldUpdater l;

    /* renamed from: m, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f2828m;

    /* renamed from: n, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f2829n;

    /* renamed from: o, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f2830o;

    /* renamed from: p, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f2831p;

    public d(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.l = atomicReferenceFieldUpdater;
        this.f2828m = atomicReferenceFieldUpdater2;
        this.f2829n = atomicReferenceFieldUpdater3;
        this.f2830o = atomicReferenceFieldUpdater4;
        this.f2831p = atomicReferenceFieldUpdater5;
    }

    @Override // com.bumptech.glide.c
    public final void U(f fVar, f fVar2) {
        this.f2828m.lazySet(fVar, fVar2);
    }

    @Override // com.bumptech.glide.c
    public final void V(f fVar, Thread thread) {
        this.l.lazySet(fVar, thread);
    }

    @Override // com.bumptech.glide.c
    public final boolean f(g gVar, c cVar, c cVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f2830o;
            if (atomicReferenceFieldUpdater.compareAndSet(gVar, cVar, cVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(gVar) == cVar);
        return false;
    }

    @Override // com.bumptech.glide.c
    public final boolean g(g gVar, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f2831p;
            if (atomicReferenceFieldUpdater.compareAndSet(gVar, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(gVar) == obj);
        return false;
    }

    @Override // com.bumptech.glide.c
    public final boolean h(g gVar, f fVar, f fVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f2829n;
            if (atomicReferenceFieldUpdater.compareAndSet(gVar, fVar, fVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(gVar) == fVar);
        return false;
    }
}
