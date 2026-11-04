package u7;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class e0 extends o1 implements ListIterator {

    /* renamed from: a, reason: collision with root package name */
    public final int f15456a;

    /* renamed from: b, reason: collision with root package name */
    public int f15457b;

    /* renamed from: c, reason: collision with root package name */
    public final g0 f15458c;

    public e0(g0 g0Var, int i10) {
        int size = g0Var.size();
        a9.o.p(i10, size);
        this.f15456a = size;
        this.f15457b = i10;
        this.f15458c = g0Var;
    }

    public final Object a(int i10) {
        return this.f15458c.get(i10);
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f15457b < this.f15456a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f15457b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f15457b;
        this.f15457b = i10 + 1;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f15457b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f15457b - 1;
        this.f15457b = i10;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f15457b - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
