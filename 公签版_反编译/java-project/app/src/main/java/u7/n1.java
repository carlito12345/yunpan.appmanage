package u7;

import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class n1 implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator f15507a;

    public n1(Iterator it) {
        it.getClass();
        this.f15507a = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f15507a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f15507a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f15507a.remove();
    }
}
