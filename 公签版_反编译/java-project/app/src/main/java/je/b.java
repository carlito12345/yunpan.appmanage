package je;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class b extends a implements ListIterator {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d f9859d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(d dVar, int i10) {
        super(dVar);
        this.f9859d = dVar;
        int iA = dVar.a();
        if (i10 < 0 || i10 > iA) {
            throw new IndexOutOfBoundsException(android.support.v4.media.session.a.o("index: ", i10, iA, ", size: "));
        }
        this.f9857b = i10;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f9857b > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f9857b;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f9857b - 1;
        this.f9857b = i10;
        return this.f9859d.get(i10);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f9857b - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
