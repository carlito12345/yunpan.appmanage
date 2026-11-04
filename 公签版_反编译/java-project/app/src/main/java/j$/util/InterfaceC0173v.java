package j$.util;

import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC0173v extends A {
    @Override // java.util.Iterator, j$.util.InterfaceC0033j
    void forEachRemaining(Consumer consumer);

    void forEachRemaining(IntConsumer intConsumer);

    @Override // java.util.Iterator
    Integer next();

    int nextInt();
}
