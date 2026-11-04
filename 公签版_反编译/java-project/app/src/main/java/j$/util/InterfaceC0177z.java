package j$.util;

import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC0177z extends A {
    @Override // java.util.Iterator, j$.util.InterfaceC0033j
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(LongConsumer longConsumer);

    @Override // java.util.Iterator
    Long next();

    long nextLong();
}
