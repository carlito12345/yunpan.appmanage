package j$.util.stream;

import j$.util.C0034k;
import j$.util.C0035l;
import j$.util.C0037n;
import j$.util.InterfaceC0177z;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public interface LongStream extends BaseStream<Long, LongStream> {
    LongStream a();

    E asDoubleStream();

    C0035l average();

    LongStream b();

    Stream boxed();

    LongStream c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    LongStream d(C0042a c0042a);

    LongStream distinct();

    LongStream e();

    C0037n findAny();

    C0037n findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    InterfaceC0177z iterator();

    LongStream limit(long j10);

    E m();

    Stream mapToObj(LongFunction longFunction);

    C0037n max();

    C0037n min();

    boolean n();

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    LongStream parallel();

    LongStream peek(LongConsumer longConsumer);

    boolean r();

    long reduce(long j10, LongBinaryOperator longBinaryOperator);

    C0037n reduce(LongBinaryOperator longBinaryOperator);

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    LongStream sequential();

    LongStream skip(long j10);

    LongStream sorted();

    @Override // j$.util.stream.BaseStream
    j$.util.L spliterator();

    long sum();

    C0034k summaryStatistics();

    long[] toArray();

    boolean w();

    IntStream x();
}
