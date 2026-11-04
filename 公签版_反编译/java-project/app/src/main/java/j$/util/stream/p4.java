package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
abstract class p4 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    final Spliterator f9528a;

    /* renamed from: b, reason: collision with root package name */
    final AtomicBoolean f9529b;

    /* renamed from: c, reason: collision with root package name */
    boolean f9530c;

    /* renamed from: d, reason: collision with root package name */
    int f9531d;

    abstract Spliterator c(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return j$.util.B.e(this, i10);
    }

    @Override // j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        while (tryAdvance(consumer)) {
        }
    }

    p4(Spliterator spliterator) {
        this.f9530c = true;
        this.f9528a = spliterator;
        this.f9529b = new AtomicBoolean();
    }

    p4(Spliterator spliterator, p4 p4Var) {
        this.f9530c = true;
        this.f9528a = spliterator;
        p4Var.getClass();
        this.f9529b = p4Var.f9529b;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f9528a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f9528a.characteristics() & (-16449);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f9528a.getComparator();
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f9528a.trySplit();
        if (spliteratorTrySplit != null) {
            return c(spliteratorTrySplit);
        }
        return null;
    }

    final boolean b() {
        return (this.f9531d == 0 && this.f9529b.get()) ? false : true;
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.I trySplit() {
        return (j$.util.I) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.L trySplit() {
        return (j$.util.L) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.F trySplit() {
        return (j$.util.F) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.O trySplit() {
        return (j$.util.O) trySplit();
    }
}
