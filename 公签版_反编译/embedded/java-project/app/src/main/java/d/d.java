package d;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class d implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final int f71a;

    /* renamed from: b, reason: collision with root package name */
    public int f72b;

    /* renamed from: c, reason: collision with root package name */
    public int f73c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f74d = false;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ a f75e;

    public d(a aVar, int i) {
        this.f75e = aVar;
        this.f71a = i;
        this.f72b = aVar.f62d.f67c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f73c < this.f72b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objA = this.f75e.a(this.f73c, this.f71a);
        this.f73c++;
        this.f74d = true;
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f74d) {
            throw new IllegalStateException();
        }
        int i = this.f73c - 1;
        this.f73c = i;
        this.f72b--;
        this.f74d = false;
        this.f75e.b(i);
    }
}
