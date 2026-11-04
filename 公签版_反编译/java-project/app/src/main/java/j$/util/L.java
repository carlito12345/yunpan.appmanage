package j$.util;

import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public interface L extends O {
    void forEachRemaining(LongConsumer longConsumer);

    boolean tryAdvance(LongConsumer longConsumer);

    @Override // j$.util.O, j$.util.Spliterator
    L trySplit();
}
