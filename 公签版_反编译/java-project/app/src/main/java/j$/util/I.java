package j$.util;

import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public interface I extends O {
    void forEachRemaining(IntConsumer intConsumer);

    boolean tryAdvance(IntConsumer intConsumer);

    @Override // j$.util.O, j$.util.Spliterator
    I trySplit();
}
