package j$.util.stream;

import j$.util.Objects;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.y3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0165y3 extends A3 implements j$.util.O {
    protected abstract Object b();

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

    AbstractC0165y3(j$.util.O o10, long j10, long j11) {
        super(o10, j10, j11, 0L, Math.min(o10.estimateSize(), j11));
    }

    AbstractC0165y3(j$.util.O o10, long j10, long j11, long j12, long j13) {
        super(o10, j10, j11, j12, j13);
    }

    @Override // j$.util.O
    public final boolean tryAdvance(Object obj) {
        long j10;
        Objects.requireNonNull(obj);
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
            ((j$.util.O) this.f9190c).tryAdvance(b());
            this.f9191d++;
        }
        if (j10 >= this.f9192e) {
            return false;
        }
        this.f9191d = j10 + 1;
        return ((j$.util.O) this.f9190c).tryAdvance(obj);
    }

    @Override // j$.util.O
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        long j10 = this.f9192e;
        long j11 = this.f9188a;
        if (j11 >= j10) {
            return;
        }
        long j12 = this.f9191d;
        if (j12 >= j10) {
            return;
        }
        if (j12 >= j11 && ((j$.util.O) this.f9190c).estimateSize() + j12 <= this.f9189b) {
            ((j$.util.O) this.f9190c).forEachRemaining(obj);
            this.f9191d = this.f9192e;
            return;
        }
        while (j11 > this.f9191d) {
            ((j$.util.O) this.f9190c).tryAdvance(b());
            this.f9191d++;
        }
        while (this.f9191d < this.f9192e) {
            ((j$.util.O) this.f9190c).tryAdvance(obj);
            this.f9191d++;
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }
}
