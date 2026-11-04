package j$.util.stream;

import j$.util.Collection;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class P0 implements L0 {

    /* renamed from: a, reason: collision with root package name */
    private final Collection f9307a;

    @Override // j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.U(this, j10, j11, intFunction);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ int r() {
        return 0;
    }

    @Override // j$.util.stream.L0
    public final L0 b(int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.L0
    public final void forEach(Consumer consumer) {
        Collection collection = this.f9307a;
        if (collection instanceof j$.util.Collection) {
            ((j$.util.Collection) collection).forEach(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            consumer.q(it.next());
        }
    }

    P0(Collection collection) {
        this.f9307a = collection;
    }

    @Override // j$.util.stream.L0
    public final Spliterator spliterator() {
        return Collection.EL.stream(this.f9307a).spliterator();
    }

    @Override // j$.util.stream.L0
    public final void j(Object[] objArr, int i10) {
        Iterator it = this.f9307a.iterator();
        while (it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
    }

    @Override // j$.util.stream.L0
    public final Object[] l(IntFunction intFunction) {
        java.util.Collection collection = this.f9307a;
        return collection.toArray((Object[]) intFunction.apply(collection.size()));
    }

    @Override // j$.util.stream.L0
    public final long count() {
        return this.f9307a.size();
    }

    public final String toString() {
        java.util.Collection collection = this.f9307a;
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(collection.size()), collection);
    }
}
