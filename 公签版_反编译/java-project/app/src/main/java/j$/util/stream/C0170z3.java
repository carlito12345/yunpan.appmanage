package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.z3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0170z3 extends A3 implements Spliterator {
    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.util.B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return j$.util.B.e(this, i10);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    C0170z3(Spliterator spliterator, long j10, long j11) {
        super(spliterator, j10, j11, 0L, Math.min(spliterator.estimateSize(), j11));
    }

    private C0170z3(Spliterator spliterator, long j10, long j11, long j12, long j13) {
        super(spliterator, j10, j11, j12, j13);
    }

    @Override // j$.util.stream.A3
    protected final Spliterator a(Spliterator spliterator, long j10, long j11, long j12, long j13) {
        return new C0170z3(spliterator, j10, j11, j12, j13);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        long j10;
        Objects.requireNonNull(consumer);
        long j11 = this.f9192e;
        long j12 = this.f9188a;
        if (j12 >= j11) {
            return false;
        }
        while (true) {
            j10 = this.f9191d;
            if (j12 <= j10) {
                break;
            }
            this.f9190c.tryAdvance(new C0068f0(10));
            this.f9191d++;
        }
        if (j10 >= this.f9192e) {
            return false;
        }
        this.f9191d = j10 + 1;
        return this.f9190c.tryAdvance(consumer);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j10 = this.f9192e;
        long j11 = this.f9188a;
        if (j11 >= j10) {
            return;
        }
        long j12 = this.f9191d;
        if (j12 >= j10) {
            return;
        }
        if (j12 >= j11 && this.f9190c.estimateSize() + j12 <= this.f9189b) {
            this.f9190c.forEachRemaining(consumer);
            this.f9191d = this.f9192e;
            return;
        }
        while (j11 > this.f9191d) {
            this.f9190c.tryAdvance(new C0068f0(11));
            this.f9191d++;
        }
        while (this.f9191d < this.f9192e) {
            this.f9190c.tryAdvance(consumer);
            this.f9191d++;
        }
    }
}
