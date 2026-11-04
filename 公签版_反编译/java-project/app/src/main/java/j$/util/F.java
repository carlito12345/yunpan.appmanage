package j$.util;

import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public interface F extends O {
    void forEachRemaining(DoubleConsumer doubleConsumer);

    boolean tryAdvance(DoubleConsumer doubleConsumer);

    @Override // j$.util.O, j$.util.Spliterator
    F trySplit();
}
