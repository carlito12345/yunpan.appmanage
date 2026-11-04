package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
interface L0 {
    L0 b(int i10);

    long count();

    void forEach(Consumer consumer);

    L0 i(long j10, long j11, IntFunction intFunction);

    void j(Object[] objArr, int i10);

    Object[] l(IntFunction intFunction);

    int r();

    Spliterator spliterator();
}
