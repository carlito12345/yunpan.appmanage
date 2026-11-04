package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.n1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0109n1 extends AbstractC0119p1 implements j$.util.O {
    AbstractC0109n1(K0 k02) {
        super(k02);
    }

    @Override // j$.util.O
    public final boolean tryAdvance(Object obj) {
        K0 k02;
        if (!c()) {
            return false;
        }
        boolean zTryAdvance = ((j$.util.O) this.f9524d).tryAdvance(obj);
        if (!zTryAdvance) {
            if (this.f9523c == null && (k02 = (K0) AbstractC0119p1.a(this.f9525e)) != null) {
                j$.util.O oSpliterator = k02.spliterator();
                this.f9524d = oSpliterator;
                return oSpliterator.tryAdvance(obj);
            }
            this.f9521a = null;
        }
        return zTryAdvance;
    }

    @Override // j$.util.O
    public final void forEachRemaining(Object obj) {
        if (this.f9521a == null) {
            return;
        }
        if (this.f9524d == null) {
            Spliterator spliterator = this.f9523c;
            if (spliterator == null) {
                ArrayDeque arrayDequeB = b();
                while (true) {
                    K0 k02 = (K0) AbstractC0119p1.a(arrayDequeB);
                    if (k02 != null) {
                        k02.f(obj);
                    } else {
                        this.f9521a = null;
                        return;
                    }
                }
            } else {
                ((j$.util.O) spliterator).forEachRemaining(obj);
            }
        } else {
            while (tryAdvance(obj)) {
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
