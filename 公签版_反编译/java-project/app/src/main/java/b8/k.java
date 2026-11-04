package b8;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class k implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public m f2632a;

    /* renamed from: b, reason: collision with root package name */
    public m f2633b;

    /* renamed from: c, reason: collision with root package name */
    public int f2634c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ n f2635d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f2636e;

    public k(n nVar) {
        this.f2635d = nVar;
        this.f2632a = nVar.f2654f.f2642d;
        this.f2633b = null;
        this.f2634c = nVar.f2653e;
    }

    public final Object a() {
        return b();
    }

    public final m b() {
        m mVar = this.f2632a;
        n nVar = this.f2635d;
        if (mVar == nVar.f2654f) {
            throw new NoSuchElementException();
        }
        if (nVar.f2653e != this.f2634c) {
            throw new ConcurrentModificationException();
        }
        this.f2632a = mVar.f2642d;
        this.f2633b = mVar;
        return mVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2632a != this.f2635d.f2654f;
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.f2636e) {
            case 1:
                return b().f2644f;
            default:
                return a();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        m mVar = this.f2633b;
        if (mVar == null) {
            throw new IllegalStateException();
        }
        n nVar = this.f2635d;
        nVar.c(mVar, true);
        this.f2633b = null;
        this.f2634c = nVar.f2653e;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k(l lVar) {
        this((n) lVar.f2638b);
        this.f2636e = 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public k(l lVar, byte b10) {
        this((n) lVar.f2638b);
        this.f2636e = 1;
    }
}
