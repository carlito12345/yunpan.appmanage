package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
abstract class E3 extends H3 implements j$.util.O {
    protected abstract void e(Object obj);

    protected abstract AbstractC0101l3 f(int i10);

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

    E3(j$.util.O o10, long j10, long j11) {
        super(o10, j10, j11);
    }

    E3(j$.util.O o10, E3 e32) {
        super(o10, e32);
    }

    @Override // j$.util.O
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        while (d() != G3.NO_MORE && ((j$.util.O) this.f9239a).tryAdvance(this)) {
            if (b(1L) == 1) {
                e(obj);
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.O
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC0101l3 abstractC0101l3F = null;
        while (true) {
            G3 g3D = d();
            if (g3D == G3.NO_MORE) {
                return;
            }
            G3 g32 = G3.MAYBE_MORE;
            Spliterator spliterator = this.f9239a;
            if (g3D == g32) {
                int i10 = this.f9241c;
                if (abstractC0101l3F == null) {
                    abstractC0101l3F = f(i10);
                } else {
                    abstractC0101l3F.f9496b = 0;
                }
                long j10 = 0;
                while (((j$.util.O) spliterator).tryAdvance(abstractC0101l3F)) {
                    j10++;
                    if (j10 >= i10) {
                        break;
                    }
                }
                if (j10 == 0) {
                    return;
                } else {
                    abstractC0101l3F.b(obj, b(j10));
                }
            } else {
                ((j$.util.O) spliterator).forEachRemaining(obj);
                return;
            }
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
